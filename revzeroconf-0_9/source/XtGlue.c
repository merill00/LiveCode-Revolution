/********************************************/
/*    Copyright 1997 MetaCard Corporation   */
/*    All Rights Reserved                   */
/********************************************/
/*
 * Support routines for MetaCard external commands and functions
 */
#include <stdlib.h>
#include <stdio.h>
#include <values.h>
#include <fcntl.h>
#ifdef SELECT
#ifndef LINUX
/* some systems don't have select.h and/or stream.h.  If yours doesn't
   delete the offending #include */
#include <sys/select.h>
#include <sys/stream.h>
#endif
#else
#include <poll.h>
#endif
#include <X11/Xlib.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#include <X11/Intrinsic.h>
#include "XCmdGlue.h"
#include "XCmdName.h"

#define XATOMSIZE 16
#define XINTSTRSIZE 16
#define XMAXPACK 65535

extern int wait();

Display *MCdpy;
Window MCwin = 0;
Widget MCwidget;
int MCpid;

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
  MC_SET_VARIABLE_EX_STRING
,
MC_GET_ARRAY,
MC_SET_ARRAY
};

static Atom XCAtoms[MC_NUM_ATOMS];
static Atom mcatom;
static Atom idatom = None;

static char *XTretmess;
static int XTretval;

#ifdef __STDC__
static void propevent(Widget w, XtPointer client_data,
		      XEvent *event, Boolean *dispatch)
#else
static void propevent(w, client_data, event, dispatch)
Widget w;
XtPointer client_data;
XEvent *event;
Boolean *dispatch;
#endif
{
  XPropertyEvent *pevent = (XPropertyEvent *)event;
  if (pevent->state != PropertyNewValue)
    return;
  if (pevent->atom == (Atom)client_data) {
    Atom type;
    int format;
    unsigned long nitems, extra;
    unsigned char *uprop;
    char *prop;
    char *sptr;
    XGetWindowProperty(MCdpy, MCwin, pevent->atom, 0,
		       XMAXPACK, False, XA_STRING, &type, &format,
		       &nitems, &extra, &uprop);
    prop = (char *)uprop;
    if (atol(prop) != (long)idatom) {
      XFree(prop);
      *dispatch = True;
      return;
    }
    sptr = &prop[strlen(prop) + 1];
    sptr += strlen(sptr) + 1;
    XTretval = atoi(sptr);
    sptr += strlen(sptr) + 1;
    XTretmess = malloc(strlen(sptr) + 1);
    strcpy(XTretmess, sptr);
    XFree(prop);
    *dispatch = False;
  }
  else
    *dispatch = True;
}

#ifdef __STDC__
static char *event_wait(Atom reply, int *retval)
#else
static char *event_wait(reply, retval)
Atom reply;
int *retval;
#endif
{
  XEvent event;
  XtAppContext context;

  context = XtWidgetToApplicationContext(MCwidget);
  XFlush(MCdpy);
  XTretmess = NULL;
  while (XTretmess == NULL) {
    XtAppNextEvent(context, &event);
    XtDispatchEvent(&event);
  }
  *retval = XTretval;
  return XTretmess;
}

#ifdef __STDC__
static char *send_message(Atom atom, const char *arg1, const char *arg2,
			  const char *arg3, Bool pass, Bool error, int *reply)
#else
static char *send_message(atom, arg1, arg2, arg3, pass, error, reply)
     Atom atom;
     char *arg1;
     char *arg2;
     char *arg3;
     Bool pass;
     Bool error;
     int *reply;
#endif
{
  int i = 0;
  int length = XATOMSIZE * 2 + strlen(arg1) + 7;
  char *send;
  if (arg2 != NULL)
    length += strlen(arg2);
  if (arg3 != NULL)
    length += strlen(arg3);
  send = malloc(length);
  sprintf(&send[i], "%d", mcatom);
  i += strlen(&send[i]) + 1;
  sprintf(&send[i], "%d", idatom);
  i += strlen(&send[i]) + 1;
  sprintf(&send[i], "%d", (int)(pass != 0));
  i += strlen(&send[i]) + 1;
  sprintf(&send[i], "%d", (int)(error != 0));
  i += strlen(&send[i]) + 1;
  sprintf(&send[i], "%s", arg1);
  if (arg2 != NULL) {
    i += strlen(&send[i]) + 1;
    sprintf(&send[i], "%s", arg2);
  }
  if (arg3 != NULL) {
    i += strlen(&send[i]) + 1;
    sprintf(&send[i], "%s", arg3);
  }
  i += strlen(&send[i]) + 1;
  XtAddEventHandler(MCwidget, PropertyChangeMask, FALSE,
		    propevent, (XtPointer)atom);
  XChangeProperty(MCdpy, MCwin, atom, XA_STRING, 8,
		  PropModeReplace, (unsigned char *)send, i);
  free(send);
  if (reply != NULL)
    send = event_wait(atom, reply);
  else
    send = NULL;
  XtRemoveEventHandler(MCwidget, PropertyChangeMask, FALSE,
		       propevent, (XtPointer)atom);
  return send;
}

#ifdef __STDC__
void mc_xtinit(Widget ps, char *stack)
#else
void mc_xtinit(ps, stack)
Widget ps;
char *stack;
#endif
{
  MCwidget = ps;
  MCwin = XtWindow(ps);
  MCdpy = XtDisplay(ps);
  XSync(MCdpy, False);
  fcntl(ConnectionNumber(MCdpy), F_SETFD, 1);
  if ((MCpid = fork()) == 0) {
    char wbuf[XINTSTRSIZE];
    sprintf(wbuf, "%d", MCwin);
    execlp("mc", "mc", "-w", wbuf, "-d", DisplayString(MCdpy), stack, NULL);
    fprintf(stderr, "startup of mc with stack %s failed\n", stack);
    exit(-1);
  }
  mcatom = XInternAtom(MCdpy, XCAtomNames[MC_ID], False);
  idatom = XInternAtom(MCdpy, "XtApplication", False);
}

void mc_xtclose()
{
  int status;
  XFlush(MCdpy);
  waitpid(MCpid, &status, 0);
}

static char *callback(int id, const char *arg1, const char *arg2,
		      const char *arg3, int *retval)
{
  if (XCAtoms[id] == None)
    XCAtoms[id] = XInternAtom(MCdpy, XCAtomNames[id], False);
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

#include "XCmdFunc.c"
