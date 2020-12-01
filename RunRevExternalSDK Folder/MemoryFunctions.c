/* MemoryFunctons.c

   externals for Runtime Revolution

   created by External Builder on 1/17/04
   for Mark Wieder
*/

#ifdef MACOS
#else
  #include <windows.h>
#endif

#include <stdio.h>
#include "XCmdGlue.h"
#include "external.h"

char Xname[]="runrev externals";
Xternal Xtable[] =
{
 {"memFree",XCOMMAND,0,memFree,XCabort},
 {"memPutHex",XCOMMAND,0,memPutHex,XCabort},
 {"memMakePointerHex",XFUNCTION,0,memMakePointerHex,XCabort},
 {"memAllocate",XFUNCTION,0,memAllocate,XCabort},
 {"memMakeVoidPointerHex",XFUNCTION,0,memMakeVoidPointerHex,XCabort},
 {"", XNONE, 0, NULL, NULL}
};

void XCabort()
{
}

//
// put memAllocate (size) into handle
//
// XFCN - returns a (string) value in retstring
//
void memAllocate(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	char *lpMem;
	int	iSize;
	char retValue[16];

	iSize = atol(args[0]);
	lpMem = malloc(iSize);
	if (NULL == lpMem)
	{
		lpMem = 0;
	}
	sprintf(retValue, "%ld", lpMem);

	*pass = False; // don't pass the command up the chain
	*error = False; // no unhandled errors
	*retstring = istrdup(retValue);
}

//
// memFree handle
// XCMD - no return value
//
void memFree(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	char *lpMem;

	lpMem = (char*)atol(args[0]);
	free (lpMem);
	*pass = False; // don't pass the command up the chain
	*error = False; // no unhandled errors
	*retstring = calloc(1,1);
}

//
// memMaxPut()
// XFCN - returns a (string) value in retstring
//
void memMaxPut(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
 char *retValue=""; // initialize the return string

 *pass = False; // don't pass the command up the chain
 *error = False; // no unhandled errors
 *retstring = istrdup(retValue);
}

//
// memPutHex (handle, value, offset)
// XCMD - no return value
//
void memPutHex(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
 *pass = False; // don't pass the command up the chain
 *error = False; // no unhandled errors
 *retstring = calloc(1,1);
}

//
// memGetHex (handle, length, offset)
// XFCN - returns a (string) value in retstring
//
void memGetHex(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
 char *retValue=""; // initialize the return string

 *pass = False; // don't pass the command up the chain
 *error = False; // no unhandled errors
 *retstring = istrdup(retValue);
}

//
// memMakePointerHex (handle, offset)
// XFCN - returns a (string) value in retstring
//
void memMakePointerHex(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
 char *retValue=""; // initialize the return string

 *pass = False; // don't pass the command up the chain
 *error = False; // no unhandled errors
 *retstring = istrdup(retValue);
}

//
// memMakeVoidPointerHex()
// XFCN - returns a (string) value in retstring
//
void memMakeVoidPointerHex(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
 char *retValue=""; // initialize the return string

 *pass = False; // don't pass the command up the chain
 *error = False; // no unhandled errors
 *retstring = istrdup(retValue);
}
