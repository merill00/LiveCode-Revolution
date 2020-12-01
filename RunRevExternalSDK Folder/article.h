/*
	Prototypes for Runtime Revolution template external
	http://www.runrev.com

	copyright 2003 Mark Wieder and Ah, Software
*/

#ifdef __STDC__
extern void XGetName(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void XSetName(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void UpdateHitCount(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void RevGetUserInput(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);

#else

extern void XGetName();
extern void XSetName();
extern void UpdateHitCount();
extern void RevGetUserInput();

#endif

extern void XCabort();
extern Xternal Xtable[];
extern char Xname[];
