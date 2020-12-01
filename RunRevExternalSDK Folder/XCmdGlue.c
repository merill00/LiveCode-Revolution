/********************************************/
/*    Copyright 1997 MetaCard Corporation   */
/*    All Rights Reserved                   */
/********************************************/
/*
 * Support routines for MetaCard external commands and functions
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#ifdef MACOS  
#include <A4Stuff.h>
#else
#include <sys/types.h>
#endif //MACOS

#ifdef X11
#include <values.h>
#ifdef SELECT
#ifndef LINUX
/* some systems don't have select.h and/or stream.h.  If yours doesn't
   delete the offending #include */
#include <sys/select.h>
#include <sys/stream.h>
#endif //LINUX
#else
#include <poll.h>
#endif //SELECT
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#elif defined WIN32
#endif //X11

#include "XCmdGlue.h"
#include "XCmdName.h"

#define XATOMSIZE 16
#define XINTSTRSIZE 16
#define XMAXPACK 65535

int MCidleRate = 200;

#if defined WIN32 || defined MACOS
static XCB *cbs;
static DELETER deleter;
extern char Xname[];
static char *callback(int id, const char *arg1, const char *arg2,
		      const char *arg3, int *retval);
static void freer(char *data);


#ifdef MACOS
// dummy SIOUX calls
void RemoveConsole(void);
long WriteCharsToConsole(char *buffer, long n);
long ReadCharsFromConsole(char *buffer, long n);
short InstallConsole(short fd);
void RemoveConsole(void) { }
long WriteCharsToConsole(char *buffer, long n) { return n; }
long ReadCharsFromConsole(char *buffer, long n) { return 0; }
short InstallConsole(short fd) { return 0; }

/*__procinfo, a global variable is of ProcInfoType informs the Mixed Mode Manager of the *
 *parameters and return type of your main entry point (main in this case).               */

ProcInfoType __procinfo = kThinkCStackBased
                 | STACK_ROUTINE_PARAMETER(1, SIZE_CODE(sizeof(XCB*)))
		 | STACK_ROUTINE_PARAMETER(2, SIZE_CODE(sizeof(DELETER)))
		 | STACK_ROUTINE_PARAMETER(3, SIZE_CODE(sizeof(char**)))
		 | STACK_ROUTINE_PARAMETER(4, SIZE_CODE(sizeof(Xternal**)))
		 | STACK_ROUTINE_PARAMETER(5, SIZE_CODE(sizeof(DELETER*)));

#endif //MACOS
		 
/* Called from MC engine */

void getXtable(XCB icbs[], DELETER d, const char **name,
	       Xternal **table, DELETER *f)
{
#ifdef MACOS
#ifndef __powerc
#if !TARGET_API_MAC_CARBON
  	long oldA4 = SetCurrentA4();
  #endif //not carbon
#endif //_powerpc
#endif //MACOS
  cbs = icbs;
  deleter = d;
  *name = Xname;
  *table = Xtable;
  *f = freer; 
#ifdef MACOS
#ifndef __powerc
#if !TARGET_API_MAC_CARBON
  SetA4(oldA4);
 #endif //not carbon
#endif //_powerpc
#endif //MACOS
}

static char *callback(int id, const char *arg1, const char *arg2,
		      const char *arg3, int *retval)
{
  char *data = (*cbs[id])(arg1, arg2, arg3, retval);
  char *retstring = NULL;
  if (data != NULL)
    retstring = istrdup(data);
  (*deleter)(data);
  return retstring;
}

static void freer(char *data)
{
  free(data);
}

static char *getstatus()
{
  return istrdup("ready");
}

void X_set_idle_handler(void (*function)())
{
  (*cbs[MC_ID])((char *)function, NULL, NULL, NULL);
}

void X_set_idle_rate(int newrate)
{
  (*cbs[MC_REGISTER])((char *)newrate, NULL, NULL, NULL);
}

/********** X11 code *****************************/
#elif defined X11
static char *XCAtomNames[MC_NUM_ATOMS] = {
  MC_ID_STRING,
  MC_ABORT_STRING,
  MC_REGISTER_STRING,
  MC_CARD_MESSAGE_STRING,
  MC_MC_MESSAGE_STRING,
  MC_EVAL_EXPRESSION_STRING,
  MC_GET_GLOBAL_STRING,
  MC_SET_GLOBAL_STRING,
  MC_GET_FIELD_BY_NAME_STRING,
  MC_GET_FIELD_BY_NUMBER_STRING,
  MC_GET_FIELD_BY_ID_STRING,
  MC_SET_FIELD_BY_NAME_STRING,
  MC_SET_FIELD_BY_NUMBER_STRING,
  MC_SET_FIELD_BY_ID_STRING,
  MC_SHOW_IMAGE_BY_NAME_STRING,
  MC_SHOW_IMAGE_BY_NUMBER_STRING,
  MC_SHOW_IMAGE_BY_ID_STRING,
  MC_GET_VARIABLE_STRING,
  MC_SET_VARIABLE_STRING,
  MC_GET_VARIABLE_EX_STRING,
  MC_SET_VARIABLE_EX_STRING,
  MC_GET_ARRAY_STRING,
  MC_SET_ARRAY_STRING
};

Window MCwin = 0;
Display *MCdpy;
Bool MCQuit;
static Xternal *XternalTable;
static Atom XCAtoms[MC_NUM_ATOMS];
static Atom mcatom;
static Atom idatom = None;
static int ncalls = 0;
static int curxid = 0;
static char **binbuffers = NULL;
static int nbinbuffers = 0;
#ifdef __STDC__
static void (*idlefunc)();
static Bool (*prefunc)(XEvent *e);
static void (*postfunc)(XEvent *e);
#ifdef SELECT
static int (*selectfunc)(int n, fd_set *r, fd_set *w, 
			 fd_set *e, struct timeval *t);
#else //SELECT
static int (*pollfunc)(struct pollfd fd[], int nfds, int timeout);
#endif //SELECT
#else //_STDC_
static void (*idlefunc)();
static Bool (*prefunc)();
static void (*postfunc)();
#ifdef SELECT
static int (*selectfunc)();
#else //SELECT
static int (*pollfunc)();
#endif //SELECT
#endif //_STDC_

#ifdef __STDC__
static char *send_message(Atom atom, const char *arg1, const char *arg2,
			  const char *arg3, Bool pass, Bool error, int *retval);
			  static int xencodebinarg(MCstring *arg,char *binstring);
			  static int xdecodebinarg(char *binstring,MCstring *binaryarg);
			  static int xencodearray(MCarray *arg,char *destptr);
			  static int xdecodearray(char *binstring,MCarray *barray);
			  static void add_to_bufferlist(char *tdata);
			  static void clear_bufferlist();
			  
#else
static char *send_message();
 static int xencodebinarg();
 static int xdecodebinarg();
 static int xencodearray();
 static int xdecodearray();
 static void add_to_bufferlist();
 static void clear_bufferlist();
#endif

#ifdef __STDC__
static char *dispatch_event(XEvent *event, Atom replyatom, int *retval)
#else
static char *dispatch_event(event, replyatom, retval)
XEvent *event;
Atom replyatom;
int *retval;
#endif
{
  int i;
  Atom type;
  int format;
  unsigned long nitems, extra;
  unsigned char *uprop;
  char *prop;
  char *replystring = NULL;

  XPropertyEvent *pevent = (XPropertyEvent *)event;
  switch (event->type) {
  case PropertyNotify:
    if (pevent->state != PropertyNewValue)
      break;
    if (pevent->atom == replyatom) {
      char *sptr;
      XGetWindowProperty(MCdpy, MCwin, pevent->atom, 0, XMAXPACK,
			 False, XA_STRING, &type, &format,
			 &nitems, &extra, &uprop);
      prop = (char *)uprop;
      if (atol(prop) != (long)idatom) {
	XFree(prop);
	break;
      }
      sptr = &prop[strlen(prop) + 1];
      sptr += strlen(sptr) + 1;
      *retval = atoi(sptr);
      sptr += strlen(sptr) + 1;
         if (curxid == MC_GET_VARIABLE_EX || curxid == MC_GET_ARRAY){
/* don't bother to parse of calculate size use nitems */
	int length = sptr - prop;
	replystring = malloc(nitems - length);
	memcpy(replystring,sptr,nitems - length);
      }
      else {
	replystring = malloc(strlen(sptr) + 1);
	strcpy(replystring, sptr);
      }
      XFree(prop);
      break;
    }
    for (i = 0 ; i < ncalls ; i++)
      if (pevent->atom == XternalTable[i].atom) {
	char **strings;
	int length = 0;
	int nstrings = 0;
	Bool pass = False;
	Bool error = False;
	strings = (char **)malloc(sizeof(char *));
	XGetWindowProperty(MCdpy, MCwin, pevent->atom, 0,
			   XMAXPACK, False, XA_STRING, &type,
			   &format, &nitems, &extra, &uprop);
	prop = (char *)uprop;
	if (atol(prop) != (long)idatom) {
	  XFree(prop);
	  break;
	}
	while (length < nitems) {
	  nstrings++;
	  strings = (char **)realloc(strings, nstrings * sizeof(char *));
	  strings[nstrings - 1] = &prop[length];
	  length += strlen(strings[nstrings - 1]) + 1;
	}
	if (XternalTable[i].call != NULL) {
	  (*XternalTable[i].call)(&strings[2], nstrings - 2,
			    &replystring, &pass, &error);
	  send_message(XternalTable[i].atom, replystring, NULL, NULL,
		       pass, error, NULL);
		       clear_bufferlist();
	  if (replystring != NULL) {
	    free(replystring);
	    replystring = NULL;
	  }
	}
	free(strings);
	XFree(prop);
      }
    break;
  case DestroyNotify:
    MCQuit = True;
    break;
  default:
    break;
  }
  return replystring;
}

#ifdef __STDC__
static char *send_message(Atom atom, const char *arg1, const char *arg2,
			  const char *arg3, Bool pass, Bool error, int *retval)
#else
static char *send_message(atom, arg1, arg2, arg3, pass, error, retval)
Atom atom;
char *arg1;
char *arg2;
char *arg3;
Bool pass;
Bool error;
int *retval;
#endif
{
  int i = 0;
  int length = XATOMSIZE * 2 + 7;
  char *send;
  char *replystring = NULL;
  
  if (arg1 != NULL)
    length += strlen(arg1);
  if (arg2 != NULL)
    length += strlen(arg2);
  if (arg3 != NULL){
    if (curxid == MC_SET_VARIABLE_EX) {
      MCstring *binaryarg = (MCstring *)arg3;
      length += xencodebinarg(binaryarg,NULL);
    }
    else if (curxid == MC_SET_ARRAY) {
      MCarray *barray = (MCarray *)arg3;
      length += xencodearray(barray,NULL);
    }
    else
      length += strlen(arg3);
  }
  send = malloc(length);
  sprintf(&send[i], "%ld", mcatom);
  i += strlen(&send[i]) + 1;
  sprintf(&send[i], "%ld", idatom);
  i += strlen(&send[i]) + 1;
  sprintf(&send[i], "%d", (int)(pass != 0));
  i += strlen(&send[i]) + 1;
  sprintf(&send[i], "%d", (int)(error != 0));
  if (arg1 != NULL) {
    i += strlen(&send[i]) + 1;
    sprintf(&send[i], "%s", arg1);
  }
  if (arg2 != NULL) {
    i += strlen(&send[i]) + 1;
    sprintf(&send[i], "%s", arg2);
  }
 if (arg3 != NULL) {
    i += strlen(&send[i]) + 1;
    if (curxid == MC_SET_VARIABLE_EX) {
      MCstring *binaryarg = (MCstring *)arg3;
      int length = xencodebinarg(binaryarg,&send[i]);
      i += length;
    }
    else if (curxid == MC_SET_ARRAY) {
      MCarray *barray = (MCarray *)arg3;
      int length = xencodearray(barray,&send[i]);
      i+=length;
    }
    else {
      sprintf(&send[i], "%s", arg3);
      i += strlen(&send[i]) + 1;
    }
  }
  else
    i += strlen(&send[i]) + 1;
  XChangeProperty(MCdpy, MCwin, atom, XA_STRING, 8,
		  PropModeReplace, (unsigned char *)send, i);
  free(send);
  if (retval != NULL) {
    while (replystring == NULL && !MCQuit) {
      XEvent event;
      if (XCheckTypedWindowEvent(MCdpy, MCwin, PropertyNotify, &event))
	replystring = dispatch_event(&event, atom, retval);
      else
	XSync(MCdpy, False);
    }
  }
   if (curxid == MC_GET_VARIABLE_EX){
      MCstring *bstring = (MCstring *)arg3;
      xdecodebinarg(replystring,bstring);
      add_to_bufferlist(replystring);
    }
  else if (curxid == MC_GET_ARRAY){
    MCarray *barray = (MCarray *)arg3;
    xdecodearray(replystring, barray);
    add_to_bufferlist(replystring);
  } 
  curxid = 0;	
  return replystring;
}

#ifdef __STDC__
static void register_functions(Xternal *table, char *name)
#else
static void register_functions(table, name)
Xternal *table;
char *name;
#endif
{
  int regi = 0;
  char *regstring;
  regstring = malloc(XATOMSIZE * 2 + 4);
  
  XternalTable = table;
  mcatom = XInternAtom(MCdpy, XCAtomNames[MC_ID], False);
  idatom = XInternAtom(MCdpy, name, False);
  
  sprintf(&regstring[regi], "%ld", mcatom);
  regi += strlen(&regstring[regi]) + 1;
  sprintf(&regstring[regi], "%ld", idatom);
  regi += strlen(&regstring[regi]) + 1;
  sprintf(&regstring[regi], "%d", 0);
  regi += strlen(&regstring[regi]) + 1;
  sprintf(&regstring[regi], "%d", 0);
  regi += strlen(&regstring[regi]) + 1;
  while (strlen(XternalTable[ncalls].name) != 0) {
    XternalTable[ncalls].atom = XInternAtom(MCdpy,
					    XternalTable[ncalls].name, False);
    regstring = realloc(regstring, regi + strlen(XternalTable[ncalls].name)
			+ strlen(XternalTable[ncalls].type) + 2);
    sprintf(&regstring[regi], "%s", XternalTable[ncalls].name);
    regi += strlen(&regstring[regi]) + 1;
    sprintf(&regstring[regi], "%s", XternalTable[ncalls].type);
    regi += strlen(&regstring[regi]) + 1;
    ncalls++;
  }
  XChangeProperty(MCdpy, MCwin,
		  XInternAtom(MCdpy, XCAtomNames[MC_REGISTER], False),
		  XA_STRING, 8, PropModeReplace,
		  (unsigned char *)regstring, regi);
  free(regstring);
}

#ifdef __STDC
static char *callback(int id, const char *arg1, const char *arg2,
		      const char *arg3, int *retval)
#else
static char *callback (id, arg1, arg2, arg3, retval)
int id;
char *arg1;
char *arg2;
char *arg3;
int *retval;
#endif
{
  if (XCAtoms[id] == None)
    XCAtoms[id] = XInternAtom(MCdpy, XCAtomNames[id], False);
      curxid = id;
  return send_message(XCAtoms[id], arg1, arg2, arg3, False, False, retval);
}

static char *getstatus()
{
  Atom type;
  int format;
  unsigned long nitems, extra;
  unsigned char *uprop;
  char *newprop;
  Atom statatom = XInternAtom(MCdpy, MC_GET_MC_STATUS_STRING, False);
  XGetWindowProperty(MCdpy, MCwin, statatom, 0,
		     XMAXPACK, False, XA_STRING, &type,
		     &format, &nitems, &extra, &uprop);
  if (type == None)
    return istrdup("startup");
  newprop = (char *)uprop;
  newprop = istrdup(newprop);
  XFree(uprop);
  return newprop;
}

#ifdef __STDC__
Bool X_init(int argc, char *argv[], char *envp[], Xternal *table,
	    char *name)
#else
Bool X_init(argc, argv, envp, table, name)
int argc;
char *argv[];
char *envp[];
Xternal *table;
char *name;
#endif
{
  int i;
  char *dname = NULL;
  
  for (i = 1; i < argc; i++) {
    if (strncmp(argv[i], "-d", 2) == 0) {
      if (++i >= argc || *argv[i] == '-') {
	fprintf(stderr, "%s: bad display name\n", argv[0]);
	return False;
      }
      dname = argv[i];
      continue;
    }
    if (strncmp(argv[i], "-w", 2) == 0) {
      if (++i >= argc || *argv[i] == '-' || 
	  (MCwin = (Window)atol(argv[i])) == 0) {
	fprintf(stderr, "%s: bad window id\n", argv[0]);
	return False;
      }
      continue;
    }
    fprintf(stderr, "%s: argument <%s> ignored\n", argv[0], argv[i]);
  }
  
  if (MCwin == 0) {
    fprintf(stderr, "Usage: %s [-display displayname] -w windowid\n",
	    argv[0]);
    return False;
  }
  
  if ((MCdpy = XOpenDisplay(dname)) == NULL) {
    fprintf(stderr, "%s: Can't open display %s\n", argv[0], dname);
    return False;
  }
  
  register_functions(table, name);
  
  XSelectInput(MCdpy, MCwin, PropertyChangeMask | StructureNotifyMask);
  return True;
}

#ifdef __STDC__
static Bool next_event(XEvent *event)
#else
static Bool next_event(event)
XEvent *event;
#endif
{
  if (!XPending(MCdpy) && (idlefunc != NULL
#ifdef SELECT
			   || selectfunc != NULL)) {
    struct timeval interval;
    fd_set rmaskfd;
    
    interval.tv_sec = MCidleRate / 1000;
    interval.tv_usec = MCidleRate % 1000 * 1000;
    
    FD_ZERO(&rmaskfd);
    FD_SET(ConnectionNumber(MCdpy), &rmaskfd);
    if (selectfunc != NULL) {
      if (!(*selectfunc)(ConnectionNumber(MCdpy) + 1, &rmaskfd,
			 NULL, NULL, &interval) == 0)
	return False;
    }
    else
      if (select(ConnectionNumber(MCdpy) + 1, &rmaskfd,
		 NULL, NULL, &interval) == 0)
	return False;
#else //SELECT
			   || pollfunc != NULL)) {
    struct pollfd fds[1];
    fds[0].fd = ConnectionNumber(MCdpy);
    fds[0].events = POLLIN;
    if (pollfunc != NULL) {
      if (!(*pollfunc)(fds, 1, MCidleRate))
	return False;
    }
    else
      if (!poll(fds, 1, MCidleRate))
	return False;
#endif //SELECT
  }
  XNextEvent(MCdpy, event);
  return True;
}

#ifdef __STDC__
void X_set_idle_handler(void (*function)())
#else
void X_set_idle_handler(function)
void (*function)();
#endif
{
  idlefunc = function;
}

#ifdef __STDC__
void X_set_idle_rate(int newrate)
#else
void X_set_idle_rate(newrate)
int newrate;
#endif
{
  MCidleRate = newrate;
}

#ifdef __STDC__
void X_set_pre_xevent_handler(Bool (*function)(XEvent *e))
#else
void X_set_pre_xevent_handler(function)
void (*function)();
#endif
{
  prefunc = function;
}

#ifdef __STDC__
void X_set_post_xevent_handler(void (*function)(XEvent *e))
#else
void X_set_post_xevent_handler(function)
void (*function)();
#endif
{
  postfunc = function;
}

#ifdef SELECT
#ifdef __STDC__
void X_set_select_handler(int (*function)(int n, fd_set *r, fd_set *w, 
					  fd_set *e, struct timeval *t))
#else //_STDC_
void X_set_select_handler(function)
void (*function)();
#endif //_STDC_
{
  selectfunc = function;
}
#else //SELECT
#ifdef __STDC__
void X_set_poll_handler(int (*function)(struct pollfd fd[], 
					int nfds, int timeout))
#else //_STDC_
void X_set_poll_handler(function)
void (*function)();
#endif //_STDC_
{
  pollfunc = function;
}
#endif //SELECT

void X_main_loop()
{
  while (!MCQuit) {
    XEvent event;
    if (next_event(&event)) {
      if (prefunc != NULL)
	if (!(*prefunc)(&event))
	  continue;
      dispatch_event(&event, 0, NULL);
      if (postfunc != NULL)
	(*postfunc)(&event);
    }
    else
      if (idlefunc != NULL)
	(*idlefunc)();
  }
}

int X_close()
{  
  XFlush(MCdpy);
  XCloseDisplay(MCdpy);
  return 0;
}

#ifdef _STDC_
static int xencodebinarg(MCstring *arg,char *binstring)
#else
     static int xencodebinarg(arg, binstring)
     MCstring *arg;
     char *binstring;
#endif
{
  int length =0;
  if (binstring == NULL)
    return XINTSTRSIZE + arg->length;
  sprintf(&binstring[length],"%d",arg->length);
  length+=strlen(&binstring[length])+1;
  if (arg->length != 0)
  memcpy(&binstring[length],arg->sptr,arg->length);
  length += arg->length;
  return length;
}

#ifdef __STDC__ 
static int xdecodebinarg(char *binstring,MCstring *binaryarg)
#else
static int xdecodebinarg(binstring,binaryarg)
char *binstring;
MCstring *binaryarg;
#endif
{
  int length;
  binaryarg->length = atoi(binstring);
  length = strlen(binstring)+1;
  if (binaryarg->length != 0)
    binaryarg->sptr = binstring+length;
  else 
    binaryarg->sptr = NULL;
  length+=binaryarg->length;
  return length;
}

#ifdef _STDC_
static int xencodearray(MCarray *arg,char *destptr)
#else
static int xencodearray(arg, destptr)
MCarray *arg;
char *destptr;
#endif
{
  int length = 0;
  int i;
  if (destptr == NULL){
    length += XINTSTRSIZE; //nelements
    if (arg->strings != NULL && arg->nelements > 0){
      for (i = 0; i < arg->nelements; i++)
	length += xencodebinarg(&arg->strings[i],NULL);
    }
    else length += 1;
    if (arg->keys != NULL && arg->nelements > 0){
      for (i = 0; i < arg->nelements; i++){
	if (arg->keys[i] != NULL)
	  length += strlen(arg->keys[i])+1;
	else length += 1;
      }
    }
    else length += 1;
    return length;
  }
  sprintf(&destptr[length], "%d", arg->nelements);
  length += strlen(&destptr[length]) + 1;
  if (arg->strings != NULL &&  arg->nelements > 0){
    for (i = 0; i < arg->nelements; i++)
      length += xencodebinarg(&arg->strings[i],&destptr[length]);
  }
  else
    destptr[length++] = '\0';
  if (arg->keys != NULL && arg->nelements > 0){
    for (i = 0; i < arg->nelements; i++){
      if (arg->keys[i] != NULL){
	sprintf(&destptr[length],"%s",arg->keys[i]);
	length += strlen(&destptr[length])+1;
      }
      else
	destptr[length++] = '\0';
    }
  }
  else 
    destptr[length++] = '\0';
  return length;
}

#ifdef __STDC__ 
static int xdecodearray(char *binstring,MCarray *barray)
#else
     static int xdecodearray(binstring,barray)
     char *binstring;
     MCarray *barray;
#endif
{
  int length = 0;
  int i;
  barray->nelements =  atoi(&binstring[length]);
  length += strlen(&binstring[length])+1;
  if (barray->strings == NULL)
    return 0;
  if (binstring[length] != '\0'){
    for (i = 0; i < barray->nelements; i++)
      length += xdecodebinarg(&binstring[length],&barray->strings[i]);
  }
  else {
    barray->strings = NULL;
    length++;
  }
  if (binstring[length] != '\0'){
    for (i = 0; i < barray->nelements; i++){
      barray->keys[i] = &binstring[length];
      if (*(barray->keys[i]) == '\0')
	barray->keys[i] = NULL;
      length += strlen(&binstring[length])+1;
    }
  }
  else {
    barray->keys = NULL;
    length++;
  }
  return length;
}

#ifdef _STDC_
static void add_to_bufferlist(char *tdata)
#else
static void add_to_bufferlist(tdata)
char *tdata;
#endif
{
if (nbinbuffers == 0)
binbuffers = (char **)malloc(sizeof(char *)); 
else
 binbuffers = (char **)realloc(binbuffers, (nbinbuffers + 1) * sizeof(char *));
binbuffers[nbinbuffers] = tdata;
 nbinbuffers++;
}

#ifdef _STDC_
static void clear_bufferlist()
#else
static void clear_bufferlist()
#endif
{
if (binbuffers != NULL) {
int i;
for (i = 0; i < nbinbuffers ; i++)
free(binbuffers[i]);
free(binbuffers);
}
 nbinbuffers = 0;
binbuffers = NULL;
}


#endif //X11

#include "XCmdFunc.c"


