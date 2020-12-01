/********************************************/
/*    Copyright 1997 MetaCard Corporation   */
/*    All Rights Reserved                   */
/********************************************/
/*
  Template for Xt application calling MetaCard
*/
#include <stdlib.h>
#include <stdio.h>
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
#include <X11/Xatom.h>
#include <X11/Intrinsic.h>
#include <X11/Shell.h>
#include <Xm/RowColumn.h>
#include <Xm/PushB.h>
#include <Xm/Xm.h>

#include "XCmdGlue.h"

Bool quittime = False;

void help(Widget w, XtPointer client_data, XtPointer call_data)
{
  int retval;

  printf("help callback\n");
  SendCardMessage(istrdup("go to stack \"XT Help Demo\" as modeless"),
		  &retval);
  printf("help callback done, retval was %d\n", retval);
}

void quit(Widget w, XtPointer client_data, XtPointer call_data)
{
  quittime = True;
}

void main(int argc, char *argv[])
{
    Widget psMain;
    Widget rcMain;
    Widget pbHelp;
    Widget pbQuit;
    XtAppContext context;
    XEvent event;
    
    psMain = XtVaAppInitialize(&context, "XT", NULL, 0, &argc, argv,
			       NULL, NULL);
    rcMain = XmCreateRowColumn(psMain, "rcMain", NULL, 0);
    pbHelp = XmCreatePushButton(rcMain, "Help", NULL, 0);
    XtManageChild(pbHelp);
    pbQuit = XmCreatePushButton(rcMain, "Quit", NULL, 0);
    XtManageChild(pbQuit);
    XtManageChild(rcMain);
    XtRealizeWidget(psMain);
    XtAddCallback(pbHelp, XmNactivateCallback, help, NULL);
    XtAddCallback(pbQuit, XmNactivateCallback, quit, NULL);
    mc_xtinit(psMain, "mcXThelp.mc");
    while (!quittime) {
	XtAppNextEvent(context, &event);
	XtDispatchEvent(&event);
    }
    XtUnmanageChild(rcMain);
    XtDestroyWidget(psMain);
    mc_xtclose();
    exit(0);
}
