/*
The layer between Revolution and CLIPS (external.h, external.c) is
Copyright 2003 Alex Rice. All Rights reserved. No warranty of fitness
or correctness or stability. Use at your own risk.

Please be aware CLIPS and Revolution each have their respective
licenses as well.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#ifdef X11
	#include <sys/time.h>
	#include <values.h>
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

#elif defined WIN32
	#include <time.h>
	#include <windows.h>
	#define snprintf _snprintf
#elif defined MACOS

#endif

#include "bstrlib.h"
#include "XCmdGlue.h"
#include "external.h"

/*
 * CLIPS expert system headers
 */

#include "clips.h"
#include "strngfun.h"


/*
 * This global table has one entry per XCMD/XFCN.
 * The first entry is the name of the handler
 * The second entry is the type (XCOMMAND or XFUNCTION)
 * The third entry is a space for the atom (used by MetaCard)
 * The fourth entry is the name of the 'C' function to call
 * The fifth entry is a callback called if the user aborts
 * Note that the last entry in the table is a NULL entry
 * which is used to measure the size of the table.
 */

Xternal Xtable[] = {
{"clipsInit", XCOMMAND, 0, XClipsInit, XCabort},
// constructing
{"clipsBuild", XCOMMAND, 0, XClipsBuild, XCabort},
{"clipsLoad", XCOMMAND, 0, XClipsLoad, XCabort},
{"clipsLoadFacts", XCOMMAND, 0, XClipsLoadFacts, XCabort},
{"clipsLoadFactsFromString", XCOMMAND, 0, XClipsLoadFactsFromString, XCabort},
{"clipsAssertString", XCOMMAND, 0, XClipsAssertString, XCabort},
// control
{"clipsRun", XFUNCTION, 0, XClipsRun, XCabort},
{"clipsEval", XCOMMAND, 0, XClipsEval, XCabort},
{"clipsClear", XCOMMAND, 0, XClipsClear, XCabort},
{"clipsReset", XCOMMAND, 0, XClipsReset, XCabort},
// enumerating
{"clipsFacts", XCOMMAND, 0, XClipsFacts, XCabort},
{"clipsSaveFacts", XCOMMAND, 0, XClipsSaveFacts, XCabort},
{"clipsGetFactsList", XCOMMAND, 0, XClipsGetFactList, XCabort},
{"clipsPrintRouter", XCOMMAND, 0, XClipsPrintRouter, XCabort},
{"", XNONE, 0, NULL, NULL}};

/*
 * This string identifies this external to the engine
 */
char Xname[] = "CLIPS externals";

/*
 * local variables
 */
#if defined X11

#elif defined WIN32

#elif defined MACOS

#endif


/*********************************************************/
/* UserFunctions: Informs the expert system environment  */
/*   of any user defined functions.                      */
/*********************************************************/
void UserFunctions() {}
  
/***********************************************************/
/* EnvUserFunctions: Informs the expert system environment */
/*   of any user defined functions.                        */
/***********************************************************/
void EnvUserFunctions(void *theEnv) {}


/*
*  Setup and teardown of CLIPS environment
*/
void XClipsInit(char *args[], int nargs, char **retstring,
	       Bool *pass, Bool *error)
{
	int res = 0;
        if(GetCurrentEnvironment() != NULL)
            DestroyEnvironment(GetCurrentEnvironment());
        
	InitializeEnvironment();
	*pass = False;
	*error = False;
	if(GetCurrentEnvironment() == NULL)
	{
		*retstring = istrdup("error: failed to initialize CLIPS environment");
		return;
	}        
        
        res = AddRouter("stdout",
				20,			// priority
				RevRouterFind,		// query fn
				RevRouterPrint, 	// print fn
				NULL,			// getc fn
				NULL,			// ungetc fn
				RevRouterExit);		// exit fn
	if(res == 0)
	{
		*retstring = istrdup("error: failed to add router \"stdout\"");
		return;
	}

	res = AddRouter("wprompt",
				20,				// priority
				RevRouterFind,	// query fn
				RevRouterPrint, // print fn
				NULL,			// getc fn
				NULL,			// ungetc fn
				RevRouterExit);		// exit fn
	if(res == 0)
	{
		*retstring = istrdup("error: failed to add router \"wprompt\"");
		return;
	}

	res = AddRouter("wdialog",
				20,				// priority
				RevRouterFind,	// query fn
				RevRouterPrint, // print fn
				NULL,			// getc fn
				NULL,			// ungetc fn
				RevRouterExit);		// exit fn
	if(res == 0)
	{
		*retstring = istrdup("error: failed to add router \"wdialog\"");
		return;
	}

	res = AddRouter("wdisplay",
				20,				// priority
				RevRouterFind,	// query fn
				RevRouterPrint, // print fn
				NULL,			// getc fn
				NULL,			// ungetc fn
				RevRouterExit);		// exit fn
	if(res == 0)
	{
		*retstring = istrdup("error: failed to add router \"wdisplay\"");
		return;
	}

	res = AddRouter("werror",
				20,				// priority
				RevRouterFind,	// query fn
				RevRouterPrint, // print fn
				NULL,			// getc fn
				NULL,			// ungetc fn
				RevRouterExit);		// exit fn
	if(res == 0)
	{
		*retstring = istrdup("error: failed to add router \"werror\"");
		return;
	}

	res = AddRouter("wwarning",
				20,				// priority
				RevRouterFind,	// query fn
				RevRouterPrint, // print fn
				NULL,			// getc fn
				NULL,			// ungetc fn
				RevRouterExit);		// exit fn
	if(res == 0)
	{
		*retstring = istrdup("error: failed to add router \"wwarning\"");
		return;
	}

	res = AddRouter("wtrace",
				20,				// priority
				RevRouterFind,	// query fn
				RevRouterPrint, // print fn
				NULL,			// getc fn
				NULL,			// ungetc fn
				RevRouterExit);		// exit fn
	if(res == 0)
	{
		*retstring = istrdup("error: failed to add router \"wtrace\"");
		return;
	}      
	*retstring = (char *) calloc(1,1); // indicate no errors
}

void XCabort()
{
	// do what here?
}

/*
*  IO Router Glue
*/

/*
* XClipsPrintRouter: prints a string to a router name.
*/
void XClipsPrintRouter(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
    *pass = False;
    *error = False;
    if (nargs != 2) 
    {
            /* only set error to true when a syntax error occurs, as it
                causes the script to stop execution at this point */
            *error = True;
            *retstring = istrdup("error: clipsPrintRouter takes 2 parameters");
            return;
    }
    if(! PrintRouter(args[0], args[1]))
        *retstring = istrdup("PrintRouter(): logical name not recognized.");
    else
        *retstring = (char *) calloc(1,1); // handler- empty response
}

int RevRouterFind(char *logicalName)
{
    bstring blogicalName = cstr2bstr(logicalName);
    int found = 0;
    if(biseq(blogicalName, cstr2bstr("stdin")) == 1)
        found = 1;
    else if(biseq(blogicalName, cstr2bstr("stdout")) == 1)
        found = 1;
    else if(biseq(blogicalName, cstr2bstr("wprompt")) == 1)
        found = 1;
    else if(biseq(blogicalName, cstr2bstr("wdialog")) == 1)
        found = 1;
    else if(biseq(blogicalName, cstr2bstr("wdisplay")) == 1)
        found = 1;
    else if(biseq(blogicalName, cstr2bstr("werror")) == 1)
        found = 1;
    else if(biseq(blogicalName, cstr2bstr("wwarning")) == 1)
        found = 1;
    else if(biseq(blogicalName, cstr2bstr("wtrace")) == 1)
        found = 1;
    /*
       the router messages with logical name prefixed with rev
       will be passed to Rev handler by the name of
       clipsROUTERNAME
    */
    else if(biseq(cstr2bstr("revclips"), bmidstr(blogicalName, 0, 8)) == 1)
        found = 1;
    bdestroy(blogicalName);
    return found;
}

/*
 * RevRouterPrint: send the string to the transcript handler
 * sharing the router's logical name.
 */
int RevRouterPrint(char *logicalName, char *str)
{
    bstring blogicalName = cstr2bstr(logicalName);
    int retvalue;
    /*
     * remove linefeed characters and quotes from message
     * these will interfere with the message parameter.
     */
    bstring message = cstr2bstr(str);
    bstring fixedMessage = cstr2bstr("");
    bstring delimiters = cstr2bstr("\n\v\f\r\"");
    bstring mcmessage;
    struct bstrList * tokens = bsplits(message, delimiters);
    if(tokens)
    {
    int i;
        for (i=0; i < tokens->qty; i++) 
        {
            bconcat(fixedMessage, tokens->entry[i]);
            if(i < tokens->qty - 1 )
                bconcat(fixedMessage, cstr2bstr(" "));
        }
        bstrListDestroy (tokens);
    }
    else
    {
        bconcat(fixedMessage, message);
    }   
    /* send a message to metacard, handling prefixed by clips or revclips */
    if(biseq(cstr2bstr("revclips"), bmidstr(blogicalName, 0, 8)) == 1)
    {
        mcmessage = bformat("%s \"%s\"", logicalName, fixedMessage->data);
    }
    else
    {
        mcmessage = bformat("clips%s \"%s\"", logicalName, fixedMessage->data);   
    }
    SendCardMessage(mcmessage->data, &retvalue);
    
    /* cleanup */
    bdestroy(mcmessage);
    bdestroy(message);
    bdestroy(fixedMessage);
    bdestroy(delimiters);
    return 0;
}

int RevRouterExit(int unused) 
{
    return 0;
}


/*
*  CLIPS environment, rule, agenda, etc rules
*/
void XClipsClear(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
    Clear();
    *pass = False;
    *error = False;
    *retstring = (char *) calloc(1,1);
}

void XClipsBuild(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	if (nargs != 1) 
	{
		/* only set error to true when a syntax error occurs, as it
		   causes the script to stop execution at this point */
		*error = True;
		*retstring = istrdup("error: clipsBuild takes 1 parameter");
		return;
	}
	*pass = False;
	*error = False;
	if(! Build(args[0]))
		*retstring = istrdup("error: construct could not be parsed.");
	else
		*retstring = (char *) calloc(1,1);
}

void XClipsLoad(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
    if (nargs != 1) 
    {
            /* only set error to true when a syntax error occurs, as it
                causes the script to stop execution at this point */
            *error = True;
            *retstring = istrdup("error: clipsLoad takes 1 parameter");
            return;
    }
    *pass = False;
    *error = False;
    if(Load(args[0]) != 1)
            *retstring = istrdup("error: could not load filename");
    else
            *retstring = (char *) calloc(1,1);
}

void XClipsLoadFacts(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
     if (nargs != 1) 
    {
            /* only set error to true when a syntax error occurs, as it
                causes the script to stop execution at this point */
            *error = True;
            *retstring = istrdup("error: clipsLoadFacts takes 1 parameter");
            return;
    }
    *pass = False;
    *error = False;
    if(LoadFacts(args[0]) != 1)
            *retstring = istrdup("error: could not load facts from filename");
    else
            *retstring = (char *) calloc(1,1);
}

void XClipsAssertString(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{    
	if (nargs != 1) 
	{
		/* only set error to true when a syntax error occurs, as it
		   causes the script to stop execution at this point */
		*error = True;
		*retstring = istrdup("error: clipsAssertString takes 1 parameter");
		return;
	}
        *pass = False;
	*error = False;
        if(AssertString(args[0]) != NULL)
            *retstring = (char *) calloc(1,1);
        else
        {            
            bstring message = bformat("error: AssertString() failed. arg %s", args[0]);
            *retstring = istrdup(message->data);
            bdestroy(message);
        }
}

void XClipsLoadFactsFromString(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	if (nargs != 1) 
	{
		/* only set error to true when a syntax error occurs, as it
		   causes the script to stop execution at this point */
		*error = True;
		*retstring = istrdup("error: clipsLoadFactsFromString takes 1 parameter");
		return;
	}
	*pass = False;
	*error = False;
	if(! LoadFactsFromString(args[0], -1))
		*retstring = istrdup("error: facts could not be parsed.");
	else
		*retstring = (char *) calloc(1,1); //ok
}


void XClipsReset(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	Reset();
	*pass = False;
	*error = False;
	*retstring = (char *) calloc(1,1); //ok
}

void XClipsRun(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	int rulesFired;
        if (nargs != 1) 
	{
		/* only set error to true when a syntax error occurs, as it
		   causes the script to stop execution at this point */
		*error = True;
		*retstring = istrdup("error: clipsRun takes 1 parameter");
		return;
	}
        rulesFired = Run(atoi(args[0])); /* number of rules to fire; -1 for complete agenda */
        *pass = False;
	*error = False;
	*retstring = malloc(1024);
        snprintf(*retstring, 1024, "%d", rulesFired);	
}

void XClipsFacts(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
    if (nargs != 1) 
    {
            /* only set error to true when a syntax error occurs, as it
                causes the script to stop execution at this point */
            *error = True;
            *retstring = istrdup("error: clipsFacts takes 1 parameter");
            return;
    }
    Facts(args[0],  // logical name of router
                    NULL,	// theModule
                    -1, -1, -1); // start, end, max
    *pass = False;
    *error = False;
    *retstring = (char *) calloc(1,1);
}

extern void XClipsSaveFacts(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
    if (nargs != 2) 
    {
            /* only set error to true when a syntax error occurs, as it
                causes the script to stop execution at this point */
            *error = True;
            *retstring = istrdup("error: clipsSaveFacts takes 2 parameters");
            return;
    }
    // GLOBAL_SAVE   0
    // LOCAL_SAVE    1
    // VISIBLE_SAVE  2

    if(! SaveFacts(args[0], atoi(args[1]), NULL))
        *retstring = istrdup("error: failed to save facts");
    else
        *retstring = (char *) calloc(1,1);
    *pass = False;
    *error = False;
}

void XClipsGetFactList(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
}

void XClipsEval(char *args[], int nargs, char **retstring,
	       Bool *pass, Bool *error)
{
	DATA_OBJECT rtn;
	int retval = 0;
	if (nargs != 1) 
	{
		/* only set error to true when a syntax error occurs, as it
		   causes the script to stop execution at this point */
		*error = True;
		*retstring = istrdup("error: clipsEval takes 1 parameter");
		return;
	}
	retval = Eval(args[0], &rtn);
	if(retval != 0)
	{
		*retstring = (char *) calloc(1,1);
		PrintDataObject(GetCurrentEnvironment(), "revclipsEvalResult", &rtn);
	}
	else
		*retstring = istrdup("error: unable to evaluate expression");
	*pass = False;
	*error = False;
}
