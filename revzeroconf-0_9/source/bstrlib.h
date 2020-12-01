/*
 * This source file is part of the bstring string library.  This code was
 * written by Paul Hsieh in 2002-2003, and is covered by the BSD open source 
 * license. Refer to the accompanying documentation for details on usage and 
 * license.
 */

/*
 * bstrlib.c
 *
 * This file is the core module for implementing the bstring functions.
 */

#ifndef BSTRLIB_INCLUDE
#define BSTRLIB_INCLUDE

#ifdef __cplusplus
extern "C" {
#endif

#include <stdarg.h>
#include <string.h>

#define BSTR_ERR (-1)
#define BSTR_OK (0)

typedef struct tagbstring * bstring;

struct bstrList {
    int qty;
    bstring entry[1];
};

extern bstring cstr2bstr (const char * str);
extern bstring blk2bstr (const void * blk, int len);
extern char * bstr2cstr (const bstring s, char z);
extern bstring bstrcpy (const bstring b1);
extern bstring bmidstr (const bstring b, int left, int len);
extern int bconcat (bstring b0, const bstring b1);
extern int bconchar (bstring b0, char c);
extern int biseq (const bstring b0, const bstring b1);
extern int bstrcmp (const bstring b0, const bstring b1);
extern int bstrncmp (const bstring b0, const bstring b1, int n);
extern int bdestroy (bstring b);
extern int binstr (const bstring s1, int pos, const bstring s2);
extern int binstrr (const bstring s1, int pos, const bstring s2);
extern int binchr (const bstring b0, int pos, const bstring b1);
extern int binchrr (const bstring b0, int pos, const bstring b1);
extern int bsetstr (bstring b0, int pos, const bstring b1, unsigned char fill);
extern int binsert (bstring s1, int pos, const bstring s2, unsigned char fill);
extern int binsertch (bstring s1, int pos, int len, unsigned char fill);
extern int bdelete (bstring s1, int pos, int len);
extern int balloc (bstring s, int len);
extern int bpattern (bstring b, int len);
extern struct bstrList * bsplit (const bstring str, unsigned char splitChar);
extern struct bstrList * bsplits (const bstring str, const bstring splitStr);
extern bstring bjoin (const struct bstrList * bl, const bstring sep);
extern int bstrListDestroy (struct bstrList * sl);
extern int bsplitcb (const bstring str, unsigned char splitChar, int pos,
	int (* cb) (void * parm, int ofs, int len), void * parm);
extern int bsplitscb (const bstring str, const bstring splitStr, int pos,
	int (* cb) (void * parm, int ofs, int len), void * parm);
extern bstring bformat (const char * fmt, ...);

typedef int (*bNgetc) (void *parm);
typedef size_t (* bNread) (void *buff, size_t elsize, size_t nelem, void *parm);

extern bstring bgets (bNgetc getcPtr, void * parm, char terminator);
extern bstring bread (bNread readPtr, void * parm);

extern struct bStream * bsopen (bNread readPtr, void * parm);
extern void * bsclose (struct bStream * s);
extern int bsbufflength (struct bStream * s, int sz);
extern int bsreadln (bstring b, struct bStream * s, char terminator);
extern int bsreadlns (bstring r, struct bStream * s, const bstring term);
extern int bsread (bstring b, struct bStream * s, int n);
extern int bsreadlna (bstring b, struct bStream * s, char terminator);
extern int bsreadlnsa (bstring r, struct bStream * s, const bstring term);
extern int bsreada (bstring b, struct bStream * s, int n);
extern int bsunread (struct bStream * s, const bstring b);
extern int bspeek (bstring r, struct bStream * s);

struct tagbstring {
	int mlen;
	int slen;
	unsigned char * data;
};

#define blen(b)		(((b) == (void *)0) ? 0 : ((b)->slen))
#define bchar(b, p)	((((unsigned)(p)) < blen(b)) ? ((b)->data[(p)]) : '\0')
#define bsStatic(q)	{-__LINE__, sizeof(q)-1, (unsigned char *)(q)}

#define cstr2tbstr(t,s) {                       \
    (t).data = (unsigned char *) (s);           \
    (t).slen = strlen ((char *)(t).data);       \
    (t).mlen = -1;                              \
}

#define blk2tbstr(t,s,l) {            \
    (t).slen = l;                     \
    (t).mlen = -1;                    \
    (t).data = (unsigned char *) (s); \
}

#define bwriteprotect(t) { if ((t).mlen >= 0) (t).mlen = -1; }
#define bwriteallow(t) { if ((t).mlen == -1) (t).mlen = (t).slen + ((t).slen == 0); }

#ifdef __cplusplus
}
#endif


#endif
