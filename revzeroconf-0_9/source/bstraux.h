/*
 * This source file is part of the bstring string library.  This code was
 * written by Paul Hsieh in 2002-2003, and is covered by the BSD open source 
 * license. Refer to the accompanying documentation for details on usage and 
 * license.
 */

/*
 * bstraux.h
 *
 * This file is not necessarily part of the core bstring library itself, but
 * is just an auxilliary module which includes miscellaneous or trivial 
 * functions.
 */

#ifndef BSTRAUX_INCLUDE
#define BSTRAUX_INCLUDE

#include "bstrlib.h"

#ifdef __cplusplus
extern "C" {
#endif

#define bstrDeclare(b) bstring (b) = NULL; 
#define bstrFree(b) {bdestroy (b); (b) = NULL;} 
#define bCatStatic(b,s) bCatBlk ((b), (s), sizeof (s) - 1)

extern int bUppercase (bstring b);
extern int bLowercase (bstring b);
extern int bCaselessCmp (const bstring b0, const bstring b1);
extern int bTrunc (bstring b, int n);
extern bstring bTail (bstring b, int n);
extern bstring bHead (bstring b, int n);
extern int bAssign (bstring a, const bstring b);
extern int bFill (bstring a, char c, int len);
extern int bSubs (bstring b, int pos, int len, const bstring a, char c);
extern int bReplicate (bstring b, int n);
extern int bReverse (bstring b);
extern int bStrchr (const bstring b, int c);
extern int bStrchrFast (bstring b, int c);
extern int bCatCstr (bstring b, const char * s);
extern int bCatBlk (bstring b, const unsigned char * s, int len);
extern int bReplaceAll (bstring b, const bstring find, const bstring repl, int pos);
extern char * bStr2NetStr (const bstring b);
extern bstring bNetStr2Bstr (const char * buf);

#ifdef __cplusplus
}
#endif

#endif
