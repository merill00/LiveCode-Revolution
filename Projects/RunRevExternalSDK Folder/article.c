/*
	Three Windows external routines
	and one test example (working and not-working)
	for use with Runtime Revolution.

	copyright 2004 Mark Wieder and Ah, Software
	for Runtime Revolution, Ltd.
	http://www.runrev.com
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <windows.h>
#include "XCmdGlue.h"
#include "winbase.h"	// GetComputerName(), SetComputerName()
#include "external.h"

/*
 * This global table has one entry per XCMD/XFCN.
 * The first entry is the name of the handler
 * The second entry is the type (XCOMMAND or XFUNCTION)
 * The third entry is a space for the atom (used by the engine)
 * The fourth entry is the name of the 'C' function to call
 * The fifth entry is a callback called if the user aborts
 * Note that the last entry in the table is a NULL entry
 * which is used to measure the size of the table.
 */

Xternal Xtable[] = {
	{"xsetcomputername", XCOMMAND, 0, XSetName, XCabort},
	{"xgetcomputername", XFUNCTION, 0, XGetName, XCabort},
	{"xupdatehitcount", XCOMMAND, 0, UpdateHitCount, XCabort},
	{"xrevgetinput", XFUNCTION, 0, RevGetUserInput, XCabort},
	{"", XNONE, 0, NULL, NULL}
};


/*
 * This string identifies this external to the engine
 */
char Xname[] = "runrev externals";

void XCabort()
{
  fprintf(stderr, "external abort");
}

/*
	Get the Windows computer name from the OS.
	From Transcript you would call

	put xgetcomputername() into field fldName
*/
void XGetName(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	char		buffer[MAX_COMPUTERNAME_LENGTH+1];
	DWORD	dwLength;
	BOOL		blnSuccess;

	dwLength = MAX_COMPUTERNAME_LENGTH+1;
	blnSuccess = GetComputerName(buffer, &dwLength);
	*pass = False;	// don't pass the command up the chain
	if (blnSuccess)
	{
		*error = False;	// call was successful
		*retstring = istrdup (buffer);
	}
	else
	{
		*error = True;
		*retstring = istrdup ("error: GetComputerName failed");
	}
}

/*
	Set the Windows computer name from the OS.
	From Transcript you would call

	xsetcomputername "pratchett"
		or
	xsetcomputername field fldContainingTheNewName
*/
void XSetName(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	char		buffer[MAX_COMPUTERNAME_LENGTH+1];
	BOOL		blnSuccess = False;

	// get the new name from the array of arguments
	if (1 == nargs)
	{
		blnSuccess = SetComputerName(args[0]);
	}

	*pass = False;	// don't pass the command up the chain
	if (blnSuccess)
	{
		*error = False;	// call was successful
		*retstring = istrdup (buffer);
	}
	else
	{
		*error = True;
		*retstring = istrdup ("error: SetComputerName failed");
	}
}

/*
	Update the global variable whose name is passed in args[0]
	Add one to it and return.
	From Transcript you would write

	xupdatehitcounter "myVariable"

  Note: this is only to demonstrate the use of the functions:
		GetGlobal()
		EvalExpr()
		SetGlobal()
	since there are better ways of updating a variable from Transcript:

	add 1 to HitCounter
*/
void UpdateHitCount (char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	int	intRetValue;
	char	*strData, *buffer;

	// read the global variable from the stack
	strData = GetGlobal (args[0], &intRetValue);

	buffer = malloc(strlen(strData)+8);	// allocate some working storage
	// prepare to add one to the variable
	sprintf (buffer, "%s + 1", strData);
	free (strData);		// free the memory allocated by GetGlobal()

	// evaluate the expression in the buffer
	//	(which now contains "variable + 1")
	strData = EvalExpr (buffer, &intRetValue);

	// write the global variable back to the stack
	SetGlobal (args[0], strData, &intRetValue);
	free (strData);		// free the memory allocated by EvalExpr()
	free (buffer);		// free our working storage
	*pass = False;		// tell runrev we handled the external command
	*error = False;		// tell runrev there were no errors

	// The Runtime Revolution engine will clean up the stack after the XCMD call.
	// If there's nothing to clean up it will crash,
	//	so give it something to delete.
	*retstring = calloc(1, 1);	// tell runrev not to crash
}


/*
	Here's something that doesn't work.

	What if you need a cross-platform way of getting user input?
	You could use conditional compilation and spawn MessageBoxes
	or call the Mac OS for input, but runrev has the "ask" and "answer"
	functions built in. Why not use them?

	The problem is that SendMCMessage doesn't currently have a concept of
	local scope, and therefore the result of asking for user input
	is unavailable to the external function here...

void RevGetUserInput(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	int	retval;
	char	*actualResult="testing";

	// this is valid Transcript syntax...
	SendMCMessage("ask info \"your input\"; put \"x\" into tmpVar", &retval);
	// but there's no context for tmpvar, so it gets lost
	actualResult = GetVariable("tmpVar", &retval); // nothing

	*pass = False;
	*error = False;
	*retstring = istrdup(actualResult);
}
*/

/*
	...And here's how to achieve the desired result.
	This uses the combination of the EvalExpr() linkage
	and the Transcript function merge() to return the user input.
*/
void RevGetUserInput(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	int	retval;
	char	*actualResult="testing";

	// this does the same thing
	// but asks the runrev engine to evaluate the "it" variable before returning
    actualResult = EvalExpr("merge(\"<?ask info \"&quote&\"your input\"&quote&\";return it?>\")", &retval);

	*pass = False;
	*error = False;
	*retstring = istrdup(actualResult);
}
