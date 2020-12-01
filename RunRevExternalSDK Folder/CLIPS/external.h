/*
The layer between Revolution and CLIPS (external.h, external.c) is
Copyright 2003 Alex Rice. All Rights reserved. No warranty of fitness
or correctness or stability. Use at your own risk.

Please be aware CLIPS and Revolution each have their respective
licenses as well.
*/


/*
#defines and prototypes for MetaCard/Runtime Revolution template external
*/

#include "clips.h"

/*
* DOToRev
* converts a CLIPS data object into a revolution string object
*/
extern void RevMessageBox(char *msg1, char *msg2);

/*
* I/O Routers Glue. Does this obviate the need for the rest of these functions and handlers?
*/
extern int RevRouterFind(char *logicalName);
extern int RevRouterPrint(char *logicalName, char *str);
extern int RevRouterExit(int unused);
extern void XClipsPrintRouter(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern int RevRouterStdinGetc(char *logicalName);
extern int RevRouterStdinUngetc(int ch, char *logicalName);

/*
* Transcript Handlers
*/
extern void XClipsInit(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsClear(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsBuild(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsLoad(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsLoadFacts(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsAssertString(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsLoadFactsFromString(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsReset(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsFacts(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsSaveFacts(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsGetFactList(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsRun(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsEval(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);


/*
* Transcript Functions
*/
extern void XClipsFunctionCall(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsEval(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XClipsAssertString(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);

/*
* I/O
*/

extern void XCabort();
extern Xternal Xtable[];
extern char Xname[];

