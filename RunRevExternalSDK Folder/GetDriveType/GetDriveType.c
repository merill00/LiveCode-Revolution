/* GetDriveType.c

   External function for Runtime Revolution
   to call the Windows API function to return
   the type of the specified drive.

   created by External Builder on 5/29/04
   for Mark Wieder
*/

#include <windows.h>
#include <stdio.h>
#include "XCmdGlue.h"
#include "GetDriveType.h"

/*
	GetDriveType.h contains nothing but prototypes:

extern void XCabort();
extern char Xname[];
extern Xternal Xtable[];

extern void revGetDriveType(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
*/

char Xname[]="runrev externals";
Xternal Xtable[] =
{
 {"getDriveType",XFUNCTION,0,revGetDriveType,XCabort},
 {"", XNONE, 0, NULL, NULL}
};

// This function is called if the user aborts the external routine
// We don't need it to do anything here, so it's just an empty
// handler.
void XCabort()
{
}

//
// Get the type of the specified drive
//
// arguments:
//	arg[0] =  null-terminated drive specifier (C:, D:, etc)
// XFCN - returns a (string) value in retstring
// The return values are defined in winbase.h
// The possible return values are:
//	DRIVE_UNKNOWN		0 Unknown (drive type cannot be determined)
//	DRIVE_NO_ROOT_DIR	1 Does not exist (specified root directory does not exist)
//	DRIVE_REMOVABLE		2 Floppy disk (disk can be removed from drive)
//	DRIVE_FIXED			3 Hard disk
//	DRIVE_REMOTE		4 Network drive
//	DRIVE_CDROM			5 Compact disc
//	DRIVE_RAMDISK		6 Drive is in memory (RAM drive)
//
//	from Transcript code:
//		if getDriveType("E:\") = 5 then
//			--it's a CDROM
//		end if
//

void revGetDriveType(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
	int	iType;
	char retValue[16];

	// We could test for a null argument here, but in this case
	// passing a null value uses the root of the current directory
	// and returns the drive type, so it's also valid.
	// No harm, no foul.
	iType = GetDriveType(args[0]);
	sprintf(retValue, "%d", iType);

	*pass = False; // don't pass the command up the chain
	*error = False; // no unhandled errors
	*retstring = istrdup(retValue);
}
