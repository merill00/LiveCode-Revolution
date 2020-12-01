/*
 * This source file is part of the bstring string library.  This code was
 * written by Paul Hsieh in 2002-2003, and is covered by the BSD open source 
 * license. Refer to the accompanying documentation for details on usage and 
 * license.
 */

/*
 * bstraux.c
 *
 * This file is not necessarily part of the core bstring library itself, but
 * is just an auxilliary module which includes miscellaneous or trivial 
 * functions.
 */

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include "bstrlib.h"
#include "bstraux.h"

#define   upcase(c) ((c) + (('a' <= (c) && (c) <= 'z') ? ('A'-'a') : 0))
#define downcase(c) ((c) + (('A' <= (c) && (c) <= 'Z') ? ('a'-'A') : 0))

/*  int bUppercase (bstring b)
 *
 *  Convert contents of bstring to upper case.
 */
int bUppercase (bstring b) {
int i, len;
	if (b == NULL || b->mlen < b->slen) return -__LINE__;
	for (i=0, len = b->slen; i < len; i++) {
		b->data[i] = (unsigned char) upcase (b->data[i]);
	}
	return 0;
}

/*  int bLowercase (bstring b)
 *
 *  Convert contents of bstring to lower case.
 */
int bLowercase (bstring b) {
int i, len;
	if (b == NULL || b->mlen < b->slen) return -__LINE__;
	for (i=0, len = b->slen; i < len; i++) {
		b->data[i] = (unsigned char) downcase (b->data[i]);
	}
	return 0;
}

/*  int bCaselessCmp (const bstring b0, const bstring b1)
 *
 *  Compare two strings without differentiating between case.
 */
int bCaselessCmp (const bstring b0, const bstring b1) {
int i, v, n;

	if (b0 == NULL || b1 == NULL) return SHRT_MIN;
	n = b0->slen; if (n > b1->slen) n = b1->slen;
	if (b0->slen == b1->slen && b0->data == b1->data) return 0;

	for (i = 0; i < n; i ++) {
		v = ((char) upcase (b0->data[i])) - ((char) upcase (b1->data[i]));
		if (v != 0) return v;
		if (b0->data[i] == '\0') return 0;
	}

	if (b0->slen > n) return 1;
	if (b1->slen > n) return -1;
	return 0;
}

/*  int bTrunc (bstring b, int n)
 *
 *  Truncate the bstring to at most n characters.
 */
int bTrunc (bstring b, int n) {
	if (b == NULL || n < 0 || b->mlen < b->slen) return -__LINE__;
	if (b->slen > n) {
		b->slen = n;
		b->data[n] = '\0';	/* Required for Clib interoperability */
	}
	return 0;
}

/*  bstring bTail (bstring b, int n)
 *
 *  Return with a string of the last n characters of b.
 */
bstring bTail (bstring b, int n) {
	if (b == NULL || n < 0 || b->mlen < b->slen) return NULL;
	if (n >= b->slen) return bstrcpy (b);
	return bmidstr (b, b->slen - n, n);
}

/*  bstring bHead (bstring b, int n)
 *
 *  Return with a string of the first n characters of b.
 */
bstring bHead (bstring b, int n) {
	if (b == NULL || n < 0 || b->mlen < b->slen) return NULL;
	if (n >= b->slen) return bstrcpy (b);
	return bmidstr (b, 0, n);
}

/*  int bAssign (bstring a, const bstring b)
 *
 *  Overwrite the string a with the contents of string b.
 */
int bAssign (bstring a, const bstring b) {
	if (a == NULL || b == NULL || a->mlen < a->slen) return -__LINE__;
	if (bsetstr (a, 0, b, '?') != BSTR_OK) return -__LINE__;
	a->slen = b->slen;
	return BSTR_OK;
}

/*  int bFill (bstring a, char c, int len)
 *
 *  Fill a given bstring with the character in parameter c, for a length n.
 */
int bFill (bstring a, char c, int len) {
	if (a == NULL || len < 0 || a->mlen < a->slen) return -__LINE__;
	a->slen = 0;
	return bsetstr (a, len, NULL, c);
}

/*  int bSubs (bstring b, int pos, int len, const bstring a, char c)
 *
 *  Replace the substring starting at position pos, and running for a length
 *  of len with the bstring a.  If pos exceeds the length of b, then it is
 *  filled with the character c.
 */
int bSubs (bstring b, int pos, int len, const bstring a, char c) {
struct tagbstring t;

	if (a == NULL || b == NULL || (pos | len) < 0 || b->mlen < b->slen) return -__LINE__;
	if (pos >= b->slen) return bsetstr (b, pos, a, c);
	if (pos + len > b->slen) len = b->slen - pos;

	if (len >= a->slen) {
		bsetstr (b, pos, a, c);
		if (len > a->slen) bdelete (b, pos + a->slen, len - a->slen);
		return 0;
	}

	blk2tbstr (t, a->data, len);
	bsetstr (b, pos, &t, c);
	blk2tbstr (t, a->data + len, a->slen - len);
	return binsert (b, pos + len, &t, c);
}

/*  int bReplicate (bstring b, int n)
 *
 *  Replicate the contents of b end to end n times and replace it in b.
 */
int bReplicate (bstring b, int n) {
	return bpattern (b, n * b->slen);
}

/*  int bReverse (bstring b)
 *
 *  Reverse the contents of b in place.
 */
int bReverse (bstring b) {
int i, n, m;
unsigned char t;

	if (b == NULL || b->slen < 2 || b->mlen < b->slen) return -__LINE__;
	n = b->slen;
	m = ((unsigned)n) >> 1;
	n--;
	for (i=0; i < m; i++) {
		t = b->data[n - i];
		b->data[n - i] = b->data[i];
		b->data[i] = t;
	}
	return 0;
}

/*  int bStrchr (const bstring b, int c)
 *
 *  Search for the character c in b.
 */
int bStrchr (const bstring b, int c) {
int i, n;
unsigned char t = c;

	if (b == NULL) return -__LINE__;
	n = b->slen;
	for (i=0; i < n; i++) if (b->data[i] == t) return i;
	return -1;
}

/*  int bStrchrFast (bstring b, int c)
 *
 *  Search for the character c in b.  b may be modified during the search,
 *  however, it will be restored upon returning.  Note that this is *NOT*
 *  thread safe.
 */
int bStrchrFast (bstring b, int c) {
int i, n;
unsigned char t = c;

	if (b == NULL) return -__LINE__;
	if (t != c) return -1;
	/* Modifications to a non-writable bstring is totally not allowed. */
	if (b->mlen <= 0) return bStrchr(b, c);
	n = b->slen;
	b->data[n] = t;
	for (i=0; b->data[i] != t; i++) ;
	b->data[n] = '\0';
	if (i >= n) return -1;
	return i;
}

/*  int bCatCstr (bstring b, char * s)
 *
 *  Concatenate a char * string to a bstring.
 */
int bCatCstr (bstring b, const char * s) {
struct tagbstring t;

	if (b == NULL || s == NULL) return -__LINE__;
	cstr2tbstr (t, s);
	return bconcat (b, &t);
}

/*  int bCatBlk (bstring b, unsigned char * s)
 *
 *  Concatenate a fixed length buffer to a bstring.
 */
int bCatBlk (bstring b, const unsigned char * s, int len) {
struct tagbstring t;

	if (b == NULL || s == NULL || len < 0) return -__LINE__;
	blk2tbstr (t, s, len);
	return bconcat (b, &t);
}

/*  int bReplaceAll (bstring b, const bstring find, const bstring repl, 
 *                   int pos)
 *
 *  Replace all occurrences of a find string with a replace string after a
 *  given point in a bstring.
 */
int bReplaceAll (bstring b, const bstring find, const bstring repl, int pos) {
int i, ret, slen, mlen, delta, acc;
int * d;

	if (b == NULL || find == NULL || repl == NULL || pos < 0 ||
	    find->slen <= 0 || b->mlen < 0 || b->slen > b->mlen || 
	    repl->slen < 0) return BSTR_ERR;
	if (pos > b->slen - find->slen) return 0;

	/* Alias with find string */
	i = find->data - b->data;
	if (pos - find->slen < i && i < b->slen) {
		bstring t;
		i = bReplaceAll (b, t = bstrcpy (find), repl, pos);
		bdestroy (t);
		return i;
	}

	/* Alias with repl string */
	i = repl->data - b->data;
	if (pos - repl->slen < i && i < b->slen) {
		bstring t;
		i = bReplaceAll (b, find, t = bstrcpy (repl), pos);
		bdestroy (t);
		return i;
	}

	delta = find->slen - repl->slen;

	/* in-place replacement since find and replace strings are of equal 
	   length */
	if (delta == 0) {
		while ((pos = binstr (b, pos, find)) >= 0) {
			memcpy (b->data + pos, repl->data, repl->slen);
			pos += find->slen;
		}
		return 0;
	}

	/* shrinking replacement since find->slen > repl->slen */
	if (delta > 0) {
		acc = 0;

		while ((i = binstr (b, pos, find)) >= 0) {
			if (acc && i > pos) {
				memmove (b->data + pos - acc, b->data + pos, 
				         i - pos);
			}
			if (repl->slen) {
				memmove (b->data + i - acc, repl->data, 
				         repl->slen);
			}
			acc += delta;
			pos = i + find->slen;
		}

		if (acc) {
			i = b->slen;
			if (i > pos) {
				memmove (b->data + pos - acc, b->data + pos, 
				         i - pos);
			}
			b->slen -= acc;
			b->data[b->slen] = '\0';
		}

		return 0;
	}

	/* expanding replacement since find->slen < repl->slen.  Its a lot 
	   more complicated. */

	mlen = 8;
	d = (int *) malloc (sizeof (int *) * mlen);
	if (d == NULL) return BSTR_ERR;
	slen = 0;

	while ((pos = binstr (b, pos, find)) >= 0) {
		int * t;
		if (slen + 1 >= mlen) {
			mlen += mlen;
			t = (int *) realloc (d, sizeof (int *) * mlen);
			if (t == NULL) {
				free (d);
				return BSTR_ERR;
			}
			d = t;
		}
		d[slen] = pos;
		slen++;
		pos += find->slen;
	}
	d[slen] = b->slen;

	acc = slen * (-delta);
	if (BSTR_OK == (ret = balloc (b, b->slen + acc + 1))) {
		b->slen += acc;
		for (i = slen-1; i >= 0; i--) {
			int s, l;
			s = d[i] + find->slen;
			l = d[i+1] - s;
			if (l) {
				memmove (b->data + s + acc, b->data + s, l);
			}
			if (repl->slen) {
				memmove (b->data + s + acc - repl->slen, 
				         repl->data, repl->slen);
			}
			acc += delta;		
		}
		b->data[b->slen] = '\0';
	}

	free (d);
	return ret;
}

/*  char * bStr2NetStr (const bstring b)
 *
 *  Convert a bstring to a netstring.  See 
 *  http://cr.yp.to/proto/netstrings.txt for a description of netstrings.
 *  Note: 1) The value returned should be freed with a call to free() at the
 *           point when it will no longer be referenced to avoid a memory 
 *           leak.
 *        2) If the returned value is non-NULL, then it also '\0' terminated
 *           in the character position one past the "," terminator.
 */
char * bStr2NetStr (const bstring b) {
char lenStr[21];
char * buff;
int l;

	if (b == NULL || b->data == NULL || b->slen < 0) return NULL;
	sprintf (lenStr, "%d:", b->slen);
	l = strlen (lenStr);
	buff = (char *) malloc (l + b->slen + 2);
	if (!buff) return NULL;
	memcpy (buff, lenStr, l);
	memcpy (buff + l, b->data, b->slen);
	buff[l+b->slen] = ',';
	buff[l+b->slen+1] = '\0';
	return buff;
}

/*  bstring bNetStr2Bstr (const char * buf)
 *
 *  Convert a netstring to a bstring.  See 
 *  http://cr.yp.to/proto/netstrings.txt for a description of netstrings.
 *  Note that the terminating "," *must* be present, however a following '\0'
 *  is *not* required.
 */
bstring bNetStr2Bstr (const char * buff) {
int i, x;
bstring b;
	if (buff == NULL) return NULL;
	x = 0;
	for (i=0; buff[i] != ':'; i++) {
		unsigned int v = buff[i] - '0';
		if (v > 9 || x > ((INT_MAX - (signed int)v) / 10)) return NULL;
		x = (x * 10) + v;
	}

	/* This thing has to be properly terminated */
	if (buff[i + 1 + x] != ',') return NULL;

	if (NULL == (b = cstr2bstr (""))) return NULL;
	if (balloc (b, x + 1) != BSTR_OK)  {
		bdestroy (b);
		return NULL;
	}
	memcpy (b->data, buff + i + 1, x);
	b->data[x] = '\0';
	b->slen = x;
	return b;
}

