/********************************************/
/*    Copyright 1997 MetaCard Corporation   */
/*    All Rights Reserved                   */
/********************************************/
/*
 * #defines and prototypes for MetaCard external commands and functions
 */

#pragma once

#define XCOMMAND "C"
#define XFUNCTION "F"
#define XNONE ""
#define xresSucc 0
#define xresFail 1
#define xresNotImp 2
#define xresAbort 3

#ifndef Bool
#define Bool int
#define True 1
#define False 0
#define Atom unsigned long
#define MCStack void
#endif //Bool

typedef struct _Xternal {
  char *name;
  char *type;
  Atom atom;
#ifdef __STDC__
  void (*call)(char *args[], int nargs, char **retval, Bool *pass, Bool *err);
#else //_STDC_
  void (*call)();
#endif //_STDC_
  void (*abort)();
} Xternal;

typedef struct MCstring {
  const char *sptr;
  int length;
} MCstring;


typedef struct MCarray {
  int nelements;
  MCstring *strings;
  char **keys;
} MCarray;

#ifdef __STDC__
typedef char * (*XCB)(const char *arg1, const char *arg2,
		      const char *arg3, int *retval);
#else //_STDC_
typedef char * (*XCB)();
#endif //_STDC_

#ifdef X11
#ifndef _XtIntrinsic_h
typedef struct _WidgetRec *Widget;
#endif //_XtIntrinsic_h

extern Window MCwin;
extern Display *MCdpy;
extern Bool MCquit;

#elif defined WIN32 || defined MACOS
extern Xternal Xtable[];
#ifdef __STDC__
typedef void (*DELETER)(char *data);
typedef void (*GETXTABLE)(XCB *, DELETER, const char **,
			  Xternal **, DELETER *);
#else //_STDC_
typedef void (*DELETER)();
typedef void (*GETXTABLE)();
#endif //_STDC_
#endif //defined WIN32 || defined MACOS

#ifdef __STDC__
#ifdef __cplusplus
extern "C" {
#endif //_cplusplus
extern Bool X_init(int argc, char *argv[], char *envp[],
		   Xternal table[], char *name);
extern void X_set_idle_handler(void (*function)());
extern void X_set_idle_rate(int newrate);
#ifdef X11
extern void X_set_pre_xevent_handler(Bool (*function)(XEvent *e));
extern void X_set_post_xevent_handler(void (*function)(XEvent *e));
#ifdef SELECT
extern void X_set_select_handler(int (*f)(int n, fd_set *r, fd_set *w, 
					  fd_set *e, struct timeval *t));
#else //SELECT
extern void X_set_poll_handler(int (*f)(struct pollfd fd[], 
					int nfds, int timeout));
#endif //SELECT
extern void mc_xtinit(Widget ps, char *stack);
extern void mc_xtclose();
#endif //X11
#ifdef WIN32
extern void X_set_pre_xevent_handler(Bool (*function)(MSG *e));
extern void X_set_post_xevent_handler(void (*function)(MSG *e));
#endif
#ifdef MACOS
extern void X_set_pre_xevent_handler(Bool (*function)(EventRecord *e));
extern void X_set_post_xevent_handler(void (*function)(EventRecord *e));
#endif
extern void X_set_post_poll_handler(void (*function)());
extern void X_main_loop();
extern int X_close();

extern char *istrdup(const char *sptr);
extern void SendCardMessage(const char *message, int *retval);
extern void SendMCMessage(const char *message, int *retval);
extern char *EvalExpr(const char *expression, int *retval);
extern char *GetGlobal(const char *name, int *retval);
extern void SetGlobal(const char *name, const char *value, int *retval);
extern char *GetVariable(const char *name, int *retval);
extern void SetVariable(const char *name, const char *value, int *retval);
extern void GetVariableEx(const char *name, const char *key, MCstring *value, int *retval);
extern void SetVariableEx(const char *name, const char *key, const MCstring *value, int *retval);
extern void GetArray(const char *name, int *nelements, MCstring *strings, char **keys, int *retval);
extern void SetArray(const char *name, int nelements, MCstring *strings, char **keys, int *retval);
extern char *GetFieldByName(const char *group, const char *name, int *retval);
extern char *GetFieldByNum(const char *group, int num, int *retval);
extern char *GetFieldById(const char *group, unsigned long id, int *retval);
extern void SetFieldByName(const char *group, const char *name,
			   const char *value, int *retval);
extern void SetFieldByNum(const char *group, int num,
			  const char *value, int *retval);
extern void SetFieldById(const char *group, unsigned long id,
			 const char *value, int *ret);
extern void ShowImageByName(const char *group, const char *name, int *retval);
extern void ShowImageByNum(const char *group, int num, int *retval);
extern void ShowImageById(const char *group, unsigned long id, int *ret);
extern char *GetMCStatus();
#ifdef __cplusplus
}
#endif //_cplusplus
#else //__STDC__
extern Bool X_init();
extern void X_set_idle_handler();
extern void X_set_idle_rate();
extern void X_set_pre_xevent_handler();
extern void X_set_post_xevent_handler();
extern void X_set_post_poll_handler();
#ifdef X11
#ifdef SELECT
extern void X_set_select_handler();
#else //SELECT
extern void X_set_poll_handler();
#endif //SELECT
#endif //X11
extern void X_main_loop();
extern int X_close();

extern void mc_xtinit();
extern void mc_xtclose();

extern char *istrdup();
extern void SendCardMessage();
extern void SendMCMessage();
extern char *EvalExpr();
extern char *GetGlobal();
extern void SetGlobal();
extern char *GetVariable();
extern void SetVariable();
extern void GetVariableEx();
extern void SetVariableEx();
extern void GetArray();
extern void SetArray();
extern char *GetFieldByName();
extern char *GetFieldByNum();
extern char *GetFieldById();
extern void SetFieldByName();
extern void SetFieldByNum();
extern void SetFieldById();
extern void ShowImageByName();
extern void ShowImageByNum();
extern void ShowImageById();
extern char *GetMCStatus();
#endif //_STDC_
