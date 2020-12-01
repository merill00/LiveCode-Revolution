#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "bstrlib.h"
#include "bstraux.h"

static bstring dumpOut[16];
static int rot = 0;

char * dumpBstring (const bstring b) {
	rot = (rot + 1) % (unsigned)16;
	if (dumpOut[rot] == NULL) {
		dumpOut[rot] = cstr2bstr ("");
		if (dumpOut[rot] == NULL) return "FATAL INTERNAL ERROR";
	}
	dumpOut[rot]->slen = 0;
	if (b == NULL) {
		bCatCstr (dumpOut[rot], "NULL");
	} else {
		char msg[20];
		sprintf (msg, "%p", b);
		bCatCstr (dumpOut[rot], msg);
		if (b->mlen == -1) {
			bCatCstr (dumpOut[rot], "[p]");
		} else if (b->mlen < 0) {
			bCatCstr (dumpOut[rot], "[c]");
		}
		bCatCstr (dumpOut[rot], ":");
		if (b->data == NULL) {
			bCatCstr (dumpOut[rot], "NULL");
		} else {
			bCatCstr (dumpOut[rot], "\"");
			bCatCstr (dumpOut[rot], b->data);
			bCatCstr (dumpOut[rot], "\"");
		}		
	}
	return dumpOut[rot]->data;
}

static int test0_0 (const char * s, const char * res) {
bstring b0 = cstr2bstr (s);
int ret = 0;

	if (s == NULL) {
		if (res != NULL) ret++;
		printf (".\tcstr2bstr (NULL) = %s\n", dumpBstring (b0));
		return ret;
	}

	ret += (res == NULL) || (strlen (res) != b0->slen)
	       || (0 != memcmp (res, b0->data, b0->slen));

	printf (".\tcstr2bstr (\"%s\") = %s\n", s, dumpBstring (b0));
	bdestroy (b0);
	return ret;
}

#define EMPTY_STRING ""
#define SHORT_STRING "bogus"
#define LONG_STRING  "This is a bogus but reasonably long string.  Just long enough to cause some mallocing."

int test0 (void) {
int ret = 0;

	printf ("TEST: bstring cstr2bstr (const char * str);\n");

	/* tests with NULL */
	ret += test0_0 (NULL, NULL);

	/* normal operation tests */
	ret += test0_0 (EMPTY_STRING, EMPTY_STRING);
	ret += test0_0 (SHORT_STRING, SHORT_STRING);
	ret += test0_0 (LONG_STRING, LONG_STRING);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

static int test1_0 (const void * blk, int len, const char * res) {
bstring b0 = blk2bstr (blk, len);
int ret = 0;
	if (b0 == NULL) {
		if (res != NULL) ret++;
		printf (".\tblk2bstr (NULL, len=%d) = %s\n", len, dumpBstring (b0));
	} else {
		ret += (res == NULL) || (len != b0->slen)
		       || (0 != memcmp (res, b0->data, len));
		printf (".\tblk2bstr (blk=%p, len=%d) = %s\n", blk, len, dumpBstring (b0));
	}

	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %p", __LINE__, ret, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	bdestroy (b0);
	return ret;
}

int test1 (void) {
int ret = 0;

	printf ("TEST: bstring blk2bstr (const void * blk, int len);\n");

	/* tests with NULL */
	ret += test1_0 (NULL, 10, NULL);
	ret += test1_0 (NULL, 0, NULL);
	ret += test1_0 (NULL, -1, NULL);

	/* normal operation tests */
	ret += test1_0 (SHORT_STRING, sizeof (SHORT_STRING)-1, SHORT_STRING);
	ret += test1_0 (LONG_STRING, sizeof (LONG_STRING)-1, LONG_STRING);
	ret += test1_0 (LONG_STRING, 5, "This ");
	ret += test1_0 (LONG_STRING, 0, "");
	ret += test1_0 (LONG_STRING, -1, NULL);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

static int test2_0 (const bstring b, char z, const char * res) {
char * s = bstr2cstr (b, z);
int ret = 0;
	if (s == NULL) {
		if (res != NULL) ret++;
		printf (".\tbstr2cstr (%s, %02X) = NULL\n", dumpBstring (b), z);
		free(s);
		return ret;
	}

	if (res == NULL) ret++;
	else {
		if (z != '\0') if (strlen (s) != b->slen) ret++;
		if (!ret) {
			ret += (0 != memcmp (res, b->data, b->slen));
		}
	}

	printf (".\tbstr2cstr (%s, %02X) = \"%s\"\n", dumpBstring (b), z, s);
	free (s);
	return ret;
}

struct tagbstring emptyBstring = bsStatic ("");
struct tagbstring shortBstring = bsStatic ("bogus");
struct tagbstring longBstring  = bsStatic ("This is a bogus but reasonably long string.  Just long enough to cause some mallocing.");

int test2 (void) {
int ret = 0;

	printf ("TEST: char * bstr2cstr (const bstring s, char z);\n");

	/* tests with NULL */
	ret += test2_0 (NULL, '?', NULL);

	/* normal operation tests */
	ret += test2_0 (&emptyBstring, '?', emptyBstring.data);
	ret += test2_0 (&shortBstring, '?', shortBstring.data);
	ret += test2_0 (&longBstring, '?', longBstring.data);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

static int test3_0 (const bstring b) {
bstring b0 = bstrcpy (b);
int ret = 0;
	printf (".\tbstrcpy (%s) = %s\n", dumpBstring (b), dumpBstring (b0));
	if (b0 == NULL) {
		if (b != NULL) ret++;
	} else {
		ret += (b == NULL) || (b->slen != b0->slen)
		       || (0 != memcmp (b->data, b0->data, b->slen));
	}
	bdestroy (b0);
	return ret;
}

int test3 (void) {
int ret = 0;

	printf ("TEST: bstring bstrcpy (const bstring b1);\n");

	/* tests with NULL to make sure that there is NULL propogation */
	ret += test3_0 (NULL);

	/* normal operation tests */
	ret += test3_0 (&emptyBstring);
	ret += test3_0 (&shortBstring);
	ret += test3_0 (&longBstring);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

static int test4_0 (const bstring b, int left, int len, const char * res) {
bstring b0 = bmidstr (b, left, len);
int ret = 0;
	printf (".\tbmidstr (%s, %d, %d) = %s\n", dumpBstring (b), left, len, dumpBstring (b0));
	if (b0 == NULL) {
		if (b != NULL && len >= 0) ret++;
	} else {
		ret += (b == NULL) || (res == NULL) || (b0->slen > len && len >= 0)
		       || (b0->slen != strlen (res))
		       || (b0->slen > 0 && 0 != memcmp (res, b0->data, b0->slen));
	}
	if (ret) {
		printf ("(b == NULL)                  = %d\n", (b == NULL));
		printf ("(res == NULL)                = %d\n", (res == NULL));
		printf ("(b0->slen > len && len >= 0) = %d\n", (b0->slen > len && len >= 0));
		if (res) printf ("(b0->slen != strlen (res))   = %d\n", (b0->slen != strlen (res)));
		printf ("(b0->slen > 0 && 0 != memcmp (res, b0->data, b0->slen) = %d\n", (b0->slen > 0 && 0 != memcmp (res, b0->data, b0->slen)));

		printf ("\t\tfailure(%d) = %d (res = %p", __LINE__, ret, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	bdestroy (b0);
	return ret;
}

int test4 (void) {
int ret = 0;

	printf ("TEST: bstring bmidstr (const bstring b, int left, int len);\n");

	/* tests with NULL to make sure that there is NULL propogation */
	ret += test4_0 (NULL,  0,  0, NULL);
	ret += test4_0 (NULL,  0,  2, NULL);
	ret += test4_0 (NULL,  0, -2, NULL);
	ret += test4_0 (NULL, -5,  2, NULL);
	ret += test4_0 (NULL, -5, -2, NULL);

	/* normal operation tests on all sorts of subranges */
	ret += test4_0 (&emptyBstring,  0,  0, "");
	ret += test4_0 (&emptyBstring,  0, -1, "");
	ret += test4_0 (&emptyBstring,  1,  3, "");
	ret += test4_0 (&shortBstring,  0,  0, "");
	ret += test4_0 (&shortBstring,  0, -1, "");
	ret += test4_0 (&shortBstring,  1,  3, "ogu");
	ret += test4_0 (&shortBstring, -1,  3, "bo");
	ret += test4_0 (&shortBstring, -1,  9, "bogus");
	ret += test4_0 (&shortBstring,  3, -1, "");
	ret += test4_0 (&shortBstring,  9,  3, "");
	printf ("\t# failures: %d\n", ret);
	return ret;
}

static int test5_0 (const bstring b0, const bstring b1, const char * res) {
bstring b2;
int rv, ret = 0;

	if (b0 != NULL) {
		b2 = bstrcpy (b0);
		bwriteprotect (*b2);

		printf (".\tbconcat (%s, ", dumpBstring (b2));

		rv = bconcat (b2, b1);
		ret += (rv == 0);
		if (!biseq (b0, b2)) ret++;

		printf ("%s) = %s\n", dumpBstring (b1), dumpBstring (b2));

		bwriteallow (*b2);

		printf (".\tbconcat (%s, ", dumpBstring (b2));

		rv = bconcat (b2, b1);

		printf ("%s) = %s\n", dumpBstring (b1), dumpBstring (b2));

		if (b1) ret += (b2->slen != b0->slen + b1->slen);
		ret += ((0 != rv) && (b1 != NULL)) || ((0 == rv) && (b1 == NULL));
		ret += (res == NULL) || (strlen (res) > b2->slen) 
		       || (0 != memcmp (b2->data, res, b2->slen));
		bdestroy (b2);
	} else {
		ret += (BSTR_ERR != (rv = bconcat (NULL, b1)));
		printf (".\tbconcat (%s, %s) = %d\n", dumpBstring (b0), dumpBstring (b1), rv);
	}

	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %p", __LINE__, ret, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	return ret;
}

int test5 (void) {
int ret = 0;

	printf ("TEST: int bconcat (bstring b0, const bstring b1);\n");

	/* tests with NULL */
	ret += test5_0 (NULL, NULL, NULL);
	ret += test5_0 (NULL, &emptyBstring, NULL);
	ret += test5_0 (&emptyBstring, NULL, "");

	/* normal operation tests on all sorts of subranges */
	ret += test5_0 (&emptyBstring, &emptyBstring, "");
	ret += test5_0 (&emptyBstring, &shortBstring, "bogus");
	ret += test5_0 (&shortBstring, &emptyBstring, "bogus");
	ret += test5_0 (&shortBstring, &shortBstring, "bogusbogus");
	printf ("\t# failures: %d\n", ret);
	return ret;
}

static int test6_0 (const bstring b, char c, const char * res) {
bstring b0;
int rv, ret = 0;

	if (b != NULL) {
		b0 = bstrcpy (b);
		bwriteprotect (*b0);
		rv = bconchar (b0, c);
		ret += (rv == 0);
		if (!biseq (b0, b)) ret++;

		printf (".\tbconchar (%s, %c) = %s\n", dumpBstring (b), c, dumpBstring (b0));

		bwriteallow (*b0);
		rv = bconchar (b0, c);
		ret += (0 != rv);
		ret += (b0->slen != b->slen + 1);
		ret += (res == NULL) || (strlen (res) > b0->slen) 
		       || (0 != memcmp (b0->data, res, b0->slen));
		printf (".\tbconchar (%s, %c) = %s\n", dumpBstring (b), c, dumpBstring (b0));

		bdestroy (b0);
	} else {
		ret += (BSTR_ERR != (rv = bconchar (NULL, c)));
		printf (".\tbconchar (NULL, %c) = %s\n", c, dumpBstring (b0));
	}

	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %p", __LINE__, ret, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	return ret;
}

int test6 (void) {
int ret = 0;

	printf ("TEST: int bconchar (bstring b, char c);\n");

	/* tests with NULL */
	ret += test6_0 (NULL, 'x', NULL);

	/* normal operation tests on all sorts of subranges */
	ret += test6_0 (&emptyBstring, 'x', "x");
	ret += test6_0 (&shortBstring, 'x', "bogusx");
	printf ("\t# failures: %d\n", ret);
	return ret;
}

static int test7x8_0 (char * fnname, int (* fnptr) (const bstring, const bstring), const bstring b0, const bstring b1, int res) {
int rv, ret = 0;

	ret += (res != (rv = fnptr (b0, b1)));
	printf (".\t%s (%s, %s) = %d\n", fnname, dumpBstring (b0), dumpBstring (b1), rv);
	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %d)\n", __LINE__, ret, res);
	}
	return ret;
}

int test7x8 (char * fnname, int (* fnptr) (const bstring, const bstring),
             int retFail, int retLT, int retGT, int retEQ) {
int ret = 0;

	printf ("TEST: int %s (const bstring b0, const bstring b1);\n", fnname);

	/* tests with NULL */
	ret += test7x8_0 (fnname, fnptr, NULL, NULL, retFail);
	ret += test7x8_0 (fnname, fnptr, &emptyBstring, NULL, retFail);
	ret += test7x8_0 (fnname, fnptr, NULL, &emptyBstring, retFail);
	ret += test7x8_0 (fnname, fnptr, &shortBstring, NULL, retFail);
	ret += test7x8_0 (fnname, fnptr, NULL, &shortBstring, retFail);

	/* normal operation tests on all sorts of subranges */
	ret += test7x8_0 (fnname, fnptr, &emptyBstring, &emptyBstring, retEQ);
	ret += test7x8_0 (fnname, fnptr, &shortBstring, &emptyBstring, retGT);
	ret += test7x8_0 (fnname, fnptr, &emptyBstring, &shortBstring, retLT);
	ret += test7x8_0 (fnname, fnptr, &shortBstring, &shortBstring, retEQ);

	if (fnptr == biseq) {
		ret += test7x8_0 (fnname, fnptr, &shortBstring, &longBstring, retGT);
		ret += test7x8_0 (fnname, fnptr, &longBstring, &shortBstring, retLT);
	} else {
		ret += test7x8_0 (fnname, fnptr, &shortBstring, &longBstring, 'b'-'T');
		ret += test7x8_0 (fnname, fnptr, &longBstring, &shortBstring, 'T'-'b');
	}

	printf ("\t# failures: %d\n", ret);
	return ret;
}

#define test7() test7x8 ("biseq", biseq, -1, 0, 0, 1)
#define test8() test7x8 ("bstrcmp", bstrcmp, SHRT_MIN, -1, 1, 0)

int test9_0 (const bstring b0, const bstring b1, int n, int res) {
int rv, ret = 0;

	ret += (res != (rv = bstrncmp (b0, b1, n)));
	printf (".\tbstrncmp (%s, %s, %d) = %d\n", dumpBstring (b0), dumpBstring (b1), n, rv);
	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %d)\n", __LINE__, ret, res);
	}
	return ret;
}

int test9 () {
int ret = 0;

	printf ("TEST: int bstrncmp (const bstring b0, const bstring b1, int n);\n");

	/* tests with NULL */
	ret += test9_0 (NULL, NULL, 0, SHRT_MIN);
	ret += test9_0 (NULL, NULL, -1, SHRT_MIN);
	ret += test9_0 (NULL, NULL, 1, SHRT_MIN);
	ret += test9_0 (&emptyBstring, NULL, 0, SHRT_MIN);
	ret += test9_0 (NULL, &emptyBstring, 0, SHRT_MIN);
	ret += test9_0 (&emptyBstring, NULL, 1, SHRT_MIN);
	ret += test9_0 (NULL, &emptyBstring, 1, SHRT_MIN);

	/* normal operation tests on all sorts of subranges */
	ret += test9_0 (&emptyBstring, &emptyBstring, -1, 0);
	ret += test9_0 (&emptyBstring, &emptyBstring, 0, 0);
	ret += test9_0 (&emptyBstring, &emptyBstring, 1, 0);
	ret += test9_0 (&shortBstring, &shortBstring, -1, 0);
	ret += test9_0 (&shortBstring, &shortBstring, 0, 0);
	ret += test9_0 (&shortBstring, &shortBstring, 1, 0);
	ret += test9_0 (&shortBstring, &shortBstring, 9, 0);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test10_0 (bstring b, int res, int nochange) {
struct tagbstring sb;
int rv, x, ret = 0;

	if (b) sb = *b;
	printf (".\tbdestroy (%s) = ", dumpBstring (b));
	rv = bdestroy (b);
	printf ("%d\n", rv);

	if (b != NULL) {
		x = memcmp (&sb, b, sizeof sb);
	} else x = !nochange;
	ret += (rv != res);
	ret += (!nochange) == (!x);
	if (ret) {
		printf ("\t\tfailure(%d) res = %d nochange = %d, x = %d, sb.slen = %d, sb.mlen = %d, sb.data = %p\n", __LINE__, res, nochange, x, sb.slen, sb.mlen, sb.data);
	}
	return ret;
}

int test10 () {
bstring c = bstrcpy (&shortBstring);
bstring b = bstrcpy (&emptyBstring);
struct tagbstring sb, sc;
int ret = 0;

	printf ("TEST: int bdestroy (const bstring b);\n");
	/* tests with NULL */
	ret += test10_0 (NULL, BSTR_ERR, 1);

	/* protected, constant and regular instantiations on empty or not */
	bwriteprotect (*b);
	bwriteprotect (*c);
	sb = *b;
	sc = *c;
	ret += test10_0 (b, BSTR_ERR, 1);
	ret += test10_0 (c, BSTR_ERR, 1);
	bwriteallow (*b);
	bwriteallow (*c);
	ret += test10_0 (b, BSTR_OK, 0);
	ret += test10_0 (c, BSTR_OK, 0);
	ret += test10_0 (&emptyBstring, BSTR_ERR, 1);
	bwriteallow (emptyBstring);
	ret += test10_0 (&emptyBstring, BSTR_ERR, 1);
	ret += test10_0 (&shortBstring, BSTR_ERR, 1);
	bwriteallow (emptyBstring);
	ret += test10_0 (&shortBstring, BSTR_ERR, 1);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test11_0 (bstring s1, int pos, const bstring s2, int res) {
int rv, ret = 0;

	printf (".\tbinstr (%s, %d, %s) = ", dumpBstring (s1), pos, dumpBstring (s2));
	rv = binstr (s1, pos, s2);
	printf ("%d\n", rv);
	ret += (rv != res);
	if (ret) {
		printf ("\t\tfailure(%d) res = %d\n", __LINE__, res);
	}
	return ret;
}

int test11 () {
bstring b;
int ret = 0;

	printf ("TEST: int binstr (const bstring s1, int pos, const bstring s2);\n");
	ret += test11_0 (NULL, 0, NULL, BSTR_ERR);
	ret += test11_0 (&emptyBstring, 0, NULL, BSTR_ERR);
	ret += test11_0 (NULL, 0, &emptyBstring, BSTR_ERR);

	ret += test11_0 (&emptyBstring, 0, &emptyBstring, 0);
	ret += test11_0 (&emptyBstring, 1, &emptyBstring, BSTR_ERR);
	ret += test11_0 (&shortBstring, 1, &shortBstring, BSTR_ERR);
	ret += test11_0 (&shortBstring, 5, &emptyBstring, 5);
	ret += test11_0 (&shortBstring, -1, &shortBstring, BSTR_ERR);
	ret += test11_0 (&shortBstring, 0, &shortBstring, 0);
	ret += test11_0 (&shortBstring, 0, b = bstrcpy (&shortBstring), 0);
	bdestroy (b);
	ret += test11_0 (&longBstring, 0, &shortBstring, 10);
	ret += test11_0 (&longBstring, 20, &shortBstring, BSTR_ERR);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test12_0 (bstring s1, int pos, const bstring s2, int res) {
int rv, ret = 0;

	printf (".\tbinstrr (%s, %d, %s) = ", dumpBstring (s1), pos, dumpBstring (s2));
	rv = binstrr (s1, pos, s2);
	printf ("%d\n", rv);
	ret += (rv != res);
	if (ret) {
		printf ("\t\tfailure(%d) res = %d\n", __LINE__, res);
	}
	return ret;
}

int test12 () {
bstring b;
int ret = 0;

	printf ("TEST: int binstrr (const bstring s1, int pos, const bstring s2);\n");
	ret += test12_0 (NULL, 0, NULL, BSTR_ERR);
	ret += test12_0 (&emptyBstring, 0, NULL, BSTR_ERR);
	ret += test12_0 (NULL, 0, &emptyBstring, BSTR_ERR);

	ret += test12_0 (&emptyBstring, 0, &emptyBstring, 0);
	ret += test12_0 (&emptyBstring, 1, &emptyBstring, BSTR_ERR);
	ret += test12_0 (&shortBstring, 1, &shortBstring, 0);
	ret += test12_0 (&shortBstring, 5, &emptyBstring, 5);
	ret += test12_0 (&shortBstring, -1, &shortBstring, BSTR_ERR);
	ret += test12_0 (&shortBstring, 0, &shortBstring, 0);
	ret += test12_0 (&shortBstring, 0, b = bstrcpy (&shortBstring), 0);
	bdestroy (b);
	ret += test12_0 (&longBstring, 0, &shortBstring, BSTR_ERR);
	ret += test12_0 (&longBstring, 20, &shortBstring, 10);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test13_0 (bstring s1, int pos, const bstring s2, int res) {
int rv, ret = 0;

	printf (".\tbinchr (%s, %d, %s) = ", dumpBstring (s1), pos, dumpBstring (s2));
	rv = binchr (s1, pos, s2);
	printf ("%d\n", rv);
	ret += (rv != res);
	if (ret) {
		printf ("\t\tfailure(%d) res = %d\n", __LINE__, res);
	}
	return ret;
}

struct tagbstring xxxxxBstring = bsStatic ("xxxxx");

int test13 () {
bstring b;
int ret = 0;

	printf ("TEST: int binchr (const bstring s1, int pos, const bstring s2);\n");
	ret += test13_0 (NULL, 0, NULL, BSTR_ERR);
	ret += test13_0 (&emptyBstring, 0, NULL, BSTR_ERR);
	ret += test13_0 (NULL, 0, &emptyBstring, BSTR_ERR);

	ret += test13_0 (&emptyBstring, 0, &emptyBstring, BSTR_ERR);
	ret += test13_0 (&shortBstring, 0, &emptyBstring, BSTR_ERR);

	ret += test13_0 (&shortBstring,  0, &shortBstring, 0);
	ret += test13_0 (&shortBstring, 0, b = bstrcpy (&shortBstring), 0);
	bdestroy (b);
	ret += test13_0 (&shortBstring, -1, &shortBstring, BSTR_ERR);
	ret += test13_0 (&shortBstring, 10, &shortBstring, BSTR_ERR);
	ret += test13_0 (&shortBstring, 1, &shortBstring, 1);
	ret += test13_0 (&emptyBstring, 0, &shortBstring, BSTR_ERR);
	ret += test13_0 (&xxxxxBstring, 0, &shortBstring, BSTR_ERR);
	ret += test13_0 (&longBstring, 0, &shortBstring, 3);
	ret += test13_0 (&longBstring, 10, &shortBstring, 10);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test14_0 (bstring s1, int pos, const bstring s2, int res) {
int rv, ret = 0;

	printf (".\tbinchrr (%s, %d, %s) = ", dumpBstring (s1), pos, dumpBstring (s2));
	rv = binchrr (s1, pos, s2);
	printf ("%d\n", rv);
	ret += (rv != res);
	if (ret) {
		printf ("\t\tfailure(%d) res = %d\n", __LINE__, res);
	}
	return ret;
}

int test14 () {
bstring b;
int ret = 0;

	printf ("TEST: int binchrr (const bstring s1, int pos, const bstring s2);\n");
	ret += test14_0 (NULL, 0, NULL, BSTR_ERR);
	ret += test14_0 (&emptyBstring, 0, NULL, BSTR_ERR);
	ret += test14_0 (NULL, 0, &emptyBstring, BSTR_ERR);
	ret += test14_0 (&emptyBstring, 0, &emptyBstring, BSTR_ERR);
	ret += test14_0 (&shortBstring, 0, &emptyBstring, BSTR_ERR);

	ret += test14_0 (&shortBstring,  0, &shortBstring, 0);
	ret += test14_0 (&shortBstring, 0, b = bstrcpy (&shortBstring), 0);
	bdestroy (b);
	ret += test14_0 (&shortBstring, -1, &shortBstring, BSTR_ERR);
	ret += test14_0 (&shortBstring, 5, &shortBstring, BSTR_ERR);
	ret += test14_0 (&shortBstring, 4, &shortBstring, 4);
	ret += test14_0 (&shortBstring, 1, &shortBstring, 1);
	ret += test14_0 (&emptyBstring, 0, &shortBstring, BSTR_ERR);
	ret += test14_0 (&xxxxxBstring, 4, &shortBstring, BSTR_ERR);
	ret += test14_0 (&longBstring, 0, &shortBstring, BSTR_ERR);
	ret += test14_0 (&longBstring, 10, &shortBstring, 10);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

/*
extern int bsetstr (bstring b0, int pos, const bstring b1, unsigned char fill);
extern int binsert (bstring s1, int pos, const bstring s2, unsigned char fill);
*/

int test15_0 (const bstring b0, int pos, const bstring b1, unsigned char fill, char * res) {
bstring b2;
int rv, ret = 0;

	if (b0 != NULL) {
		b2 = bstrcpy (b0);
		bwriteprotect (*b2);

		printf (".\tbsetstr (%s, ", dumpBstring (b2));

		rv = bsetstr (b2, pos, b1, fill);
		ret += (rv == 0);
		if (!biseq (b0, b2)) ret++;

		printf ("%d, %s, %02X) = %s\n", pos, dumpBstring (b1), fill, dumpBstring (b2));

		bwriteallow (*b2);

		printf (".\tbsetstr (%s, ", dumpBstring (b2));

		rv = bsetstr (b2, pos, b1, fill);
		if (b1) {
			ret += (pos >= 0) && (b2->slen != b0->slen + b1->slen) && (b2->slen != pos + b1->slen);
			ret += (pos < 0) && (b2->slen != b0->slen);
		}

		ret += ((rv == 0) != (pos >= 0));
		ret += (res == NULL) || (strlen (res) > b2->slen)
                       || (0 != memcmp (b2->data, res, b2->slen));

		printf ("%d, %s, %02X) = %s\n", pos, dumpBstring (b1), fill, dumpBstring (b2));

		bdestroy (b2);
	} else {
		ret += (BSTR_ERR != (rv = bsetstr (NULL, pos, b1, fill)));
		printf (".\tbsetstr (%s, %d, %s, %02X) = %d\n", dumpBstring (b0), pos, dumpBstring (b1), fill, rv);
	}

	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %p", __LINE__, ret, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	return ret;
}

int test15 () {
int ret = 0;
	printf ("TEST: int bsetstr (bstring b0, int pos, const bstring b1, unsigned char fill);\n");
	/* tests with NULL */
	ret += test15_0 (NULL, 0, NULL, '?', NULL);
	ret += test15_0 (NULL, 0, &emptyBstring, '?', NULL);

	/* normal operation tests */
	ret += test15_0 (&emptyBstring,  0, &emptyBstring, '?', "");
	ret += test15_0 (&emptyBstring,  5, &emptyBstring, '?', "?????");
	ret += test15_0 (&emptyBstring,  5, &shortBstring, '?', "?????bogus");
	ret += test15_0 (&shortBstring,  0, &emptyBstring, '?', "bogus");
	ret += test15_0 (&emptyBstring,  0, &shortBstring, '?', "bogus");
	ret += test15_0 (&shortBstring,  0, &shortBstring, '?', "bogus");
	ret += test15_0 (&shortBstring, -1, &shortBstring, '?', "bogus");
	ret += test15_0 (&shortBstring,  2, &shortBstring, '?', "bobogus");
	ret += test15_0 (&shortBstring,  6, &shortBstring, '?', "bogus?bogus");
	ret += test15_0 (&shortBstring,  6, NULL,          '?', "bogus?");
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test16_0 (const bstring b0, int pos, const bstring b1, unsigned char fill, char * res) {
bstring b2;
int rv, ret = 0;

	if (b0 != NULL) {
		b2 = bstrcpy (b0);
		bwriteprotect (*b2);

		printf (".\tbinsert (%s, ", dumpBstring (b2));

		rv = binsert (b2, pos, b1, fill);
		ret += (rv == 0);
		if (!biseq (b0, b2)) ret++;

		printf ("%d, %s, %02X) = %s\n", pos, dumpBstring (b1), fill, dumpBstring (b2));

		bwriteallow (*b2);

		printf (".\tbinsert (%s, ", dumpBstring (b2));

		rv = binsert (b2, pos, b1, fill);
		if (b1) {
			ret += (pos >= 0) && (b2->slen != b0->slen + b1->slen) && (b2->slen != pos + b1->slen);
			ret += (pos < 0) && (b2->slen != b0->slen);
			ret += ((rv == 0) != (pos >= 0 && pos <= b2->slen));
		}

		ret += (res == NULL) || (strlen (res) > b2->slen)
                       || (0 != memcmp (b2->data, res, b2->slen));

		printf ("%d, %s, %02X) = %s\n", pos, dumpBstring (b1), fill, dumpBstring (b2));

		bdestroy (b2);
	} else {
		ret += (BSTR_ERR != (rv = binsert (NULL, pos, b1, fill)));
		printf (".\tbinsert (%s, %d, %s, %02X) = %d\n", dumpBstring (b0), pos, dumpBstring (b1), fill, rv);
	}

	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %p", __LINE__, ret, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	return ret;
}

int test16 () {
int ret = 0;
	printf ("TEST: int binsert (bstring b0, int pos, const bstring b1, unsigned char fill);\n");
	/* tests with NULL */
	ret += test16_0 (NULL, 0, NULL, '?', NULL);
	ret += test16_0 (NULL, 0, &emptyBstring, '?', NULL);

	/* normal operation tests */
	ret += test16_0 (&emptyBstring,  0, &emptyBstring, '?', "");
	ret += test16_0 (&emptyBstring,  5, &emptyBstring, '?', "?????");
	ret += test16_0 (&emptyBstring,  5, &shortBstring, '?', "?????bogus");
	ret += test16_0 (&shortBstring,  0, &emptyBstring, '?', "bogus");
	ret += test16_0 (&emptyBstring,  0, &shortBstring, '?', "bogus");
	ret += test16_0 (&shortBstring,  0, &shortBstring, '?', "bogusbogus");
	ret += test16_0 (&shortBstring, -1, &shortBstring, '?', "bogus");
	ret += test16_0 (&shortBstring,  2, &shortBstring, '?', "bobogusgus");
	ret += test16_0 (&shortBstring,  6, &shortBstring, '?', "bogus?bogus");
	ret += test16_0 (&shortBstring,  6, NULL,          '?', "bogus");
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test17_0 (const bstring s1, int pos, int len, char * res) {
bstring b2;
int rv, ret = 0;

	if (s1 != NULL) {
		b2 = bstrcpy (s1);
		bwriteprotect (*b2);

		printf (".\tbdelete (%s, ", dumpBstring (b2));

		rv = bdelete (b2, pos, len);
		ret += (rv == 0);
		if (!biseq (s1, b2)) ret++;

		printf ("%d, %d) = %s\n", pos, len, dumpBstring (b2));

		bwriteallow (*b2);

		printf (".\tbdelete (%s, ", dumpBstring (b2));

		rv = bdelete (b2, pos, len);
		ret += (len >= 0) != (rv == 0);
		ret += (b2->slen > s1->slen) || (b2->slen < pos && s1->slen >= pos);

		ret += (res == NULL) || (strlen (res) > b2->slen)
                       || (0 != memcmp (b2->data, res, b2->slen));

		printf ("%d, %d) = %s\n", pos, len, dumpBstring (b2));

		bdestroy (b2);
	} else {
		ret += (BSTR_ERR != (rv = bdelete (NULL, pos, len)));
		printf (".\tbdelete (%s, %d, %d) = %d\n", dumpBstring (s1), pos, len, rv);
	}

	if (ret) {
		printf ("\t\tfailure(%d) = %d (res = %p", __LINE__, ret, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	return ret;
}

int test17 () {
int ret = 0;
	printf ("TEST: int bdelete (bstring s1, int pos, int len);\n");
	/* tests with NULL */
	ret += test17_0 (NULL, 0, 0, NULL);

	/* normal operation tests */
	ret += test17_0 (&emptyBstring, 0, 0, "");
	ret += test17_0 (&shortBstring, 1, 3, "bs");
	ret += test17_0 (&shortBstring, -1, 3, "gus");
	ret += test17_0 (&shortBstring, 1, -3, "bogus");
	ret += test17_0 (&shortBstring, 3, 9, "bog");
	ret += test17_0 (&shortBstring, 3, 1, "bogs");
	ret += test17_0 (&longBstring, 4, 300, "This");

	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test18_0 (bstring b, int len, int res, int mlen) {
int ret = 0;
int rv;
int ol;

	printf (".\tballoc (%s, %d) = ", dumpBstring (b), len);
	if (b) ol = b->mlen;
	rv = balloc (b, len);
	printf ("%d\n", rv);

	if (b != NULL && ol > b->mlen) {
		printf ("\t\tfailure(%d) oldmlen = %d, newmlen %d\n", __LINE__, ol, b->mlen);
		ret++;
	}

	if (rv != res) {
		printf ("\t\tfailure(%d) res = %d\n", __LINE__, res);
		ret++;
	}
	if (b != NULL && (mlen > b->mlen || b->mlen == 0)) {
		printf ("\t\tfailure(%d) b->mlen = %d mlen = %d\n", __LINE__, b->mlen, mlen);
		ret++;
	}
	return ret;
}

int test18 () {
int ret = 0;
bstring b = cstr2bstr("test");

	printf ("TEST: int balloc (bstring s, int len);\n");
	/* tests with NULL */
	ret += test18_0 (NULL, 2, BSTR_ERR, 0);

	/* normal operation tests */
	ret += test18_0 (b, 2, 0, b->mlen);
	ret += test18_0 (b, -1, BSTR_ERR, b->mlen);
	ret += test18_0 (b, 9, 0, 9);
	ret += test18_0 (b, 2, 0, 9);
	bwriteprotect (*b);
	ret += test18_0 (b, 4, BSTR_ERR, b->mlen);
	bwriteallow (*b);
	ret += test18_0 (b, 2, 0, b->mlen);
	ret += test18_0 (&emptyBstring, 9, BSTR_ERR, emptyBstring.mlen);

	bdestroy (b);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test19_0 (const bstring b, int len, const char * res, int erv) {
int rv, ret = 0;
bstring b1;

	if (b != NULL) {
		b1 = bstrcpy (b);
		bwriteprotect (*b1);
		ret += bpattern (b1, len) != BSTR_ERR;
		ret += !biseq (b1, b);
		bwriteallow (*b1);

		printf (".\tbpattern (%s, %d) = ", dumpBstring (b1), len);

		rv = bpattern (b1, len);

		printf ("%s\n", dumpBstring (b1));

		ret += (rv != erv);
		ret += (res == NULL) || (strlen (res) > b1->slen)
                       || (0 != memcmp (b1->data, res, b1->slen));
	} else {
		ret += BSTR_ERR != (rv = bpattern (NULL, len));
	}

	if (ret) {
		printf ("\t\tfailure(%d) rv = %d erv = %d (res = %p", __LINE__, rv, erv, res);
		if (res) printf (" = \"%s\"", res);
		printf (")\n");
	}
	return ret;
}

int test19 () {
int ret = 0;

	printf ("TEST: int bpattern (bstring b, int len);\n");
	/* tests with NULL */
	ret += test19_0 (NULL, 0, NULL, BSTR_ERR);
	ret += test19_0 (NULL, 5, NULL, BSTR_ERR);
	ret += test19_0 (NULL, -5, NULL, BSTR_ERR);

	/* normal operation tests */
	ret += test19_0 (&emptyBstring, 0, "", BSTR_ERR);
	ret += test19_0 (&emptyBstring, 10, "", BSTR_ERR);
	ret += test19_0 (&emptyBstring, -1, "", BSTR_ERR);
	ret += test19_0 (&shortBstring, 0, "", 0);
	ret += test19_0 (&shortBstring, 12, "bogusbogusbo", 0);
	ret += test19_0 (&shortBstring, -1, "bogus", BSTR_ERR);

	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test20 () {
int ret = 0;
bstring b, c;

	printf ("TEST: bstring bformat (const char * fmt, ...);\n");
	/* tests with NULL */
	printf (".\tbformat (NULL, 1, 2) = ");
	b = bformat (NULL, 1, 2);
	printf ("%s\n", dumpBstring (b));
	ret += b != NULL;

	/* normal operation tests */
	printf (".\tbformat (\"%%d %%s\", 1, \"xy\") = ");
	b = bformat ("%d %s", 1, "xy");
	printf ("%s\n", dumpBstring (b));
	ret += !biseq (c = cstr2bstr("1 xy"), b);
	bdestroy (b);
	printf (".\tbformat (\"%%d %%s(%%s)\", 6, %s, %s) = ", dumpBstring (c), dumpBstring (&shortBstring));
	b = bformat ("%d %s(%s)", 6, c->data, shortBstring.data);
	printf ("%s\n", dumpBstring (b));
	bdestroy (c);
	ret += !biseq (c = cstr2bstr("6 1 xy(bogus)"), b);
	bdestroy (c);
	bdestroy (b);
	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test21_0 (bstring b, char sc, int ns) {
struct bstrList * l;
int ret = 0;

	printf (".\tbsplit (%s, %02X) = ", dumpBstring (b), sc);

	if (b != NULL) {
		bstring c;
		struct tagbstring t;

		blk2tbstr(t,&sc,1);

		printf ("{");

		l = bsplit (b, sc);

		if (l) {
			int i;
			for (i=0; i < l->qty; i++) {
				if (i != 0) printf (", ");
				printf ("%s", dumpBstring (l->entry[i]));
			}
			printf (":<%d>", l->qty);
			if (ns != l->qty) ret++;
		} else {
			printf ("NULL");
			ret ++;
		}

		printf ("}\n");

		c = bjoin (l, &t);
		ret += !biseq (c, b);
		bdestroy (c);
		ret += 0 != bstrListDestroy (l);
	} else {
		l = bsplit (NULL, sc);
		ret += (l != NULL);
		printf ("%p\n", l);
	}

	if (ret) {
		printf ("\t\tfailure(%d) ns = %d\n", __LINE__, ns);
	}

	return ret;
}

int test21 () {
int ret = 0;

	printf ("TEST: struct bstrList * bsplit (const bstring str, unsigned char splitChar);\n");
	/* tests with NULL */
	ret += test21_0 (NULL, '?', 0);

	/* normal operation tests */
	ret += test21_0 (&emptyBstring, '?', 1);
	ret += test21_0 (&shortBstring, 'o', 2);
	ret += test21_0 (&longBstring, 'o', 9);

	printf ("\t# failures: %d\n", ret);
	return ret;
}

int test22_0 (const bstring b, const bstring sep, int ns, ...) {
va_list arglist;
struct bstrList * l;
int ret = 0;

	printf (".\tbsplits (%s, %s)", dumpBstring (b), dumpBstring (sep));
	if (b != NULL && sep != NULL) {
		printf (" {");

		l = bsplits (b, sep);

		if (l) {
			int i;
			va_start (arglist, ns);

			for (i=0; i < l->qty; i++) {
				char * res;

				res = va_arg (arglist, char *);

				if (i != 0) printf (", ");
				printf ("%s", dumpBstring (l->entry[i]));

				ret += (res == NULL) || (strlen (res) > l->entry[i]->slen)
		                       || (0 != memcmp (l->entry[i]->data, res, l->entry[i]->slen));

			}

			va_end (arglist);

			printf (":<%d>", l->qty);
			if (ns != l->qty) ret++;
		} else {
			printf ("NULL");
			ret += (ns != 0);
		}

		printf ("}\n");

		ret += (0 != bstrListDestroy (l) && l != NULL);
	} else {
		l = bsplits (b, sep);
		ret += (l != NULL);
		printf (" = %p\n", l);
	}

	if (ret) {
		printf ("\t\tfailure(%d) ns = %d\n", __LINE__, ns);
	}

	return ret;
}

int test22 () {
int ret = 0;
struct tagbstring o=bsStatic("o");
struct tagbstring uo=bsStatic("uo");

	printf ("TEST: extern struct bstrList * bsplits (const bstring str, const bstring splitStr);\n");
	/* tests with NULL */
	ret += test22_0 (NULL, &o, 0);
	ret += test22_0 (&o, NULL, 0);

	/* normal operation tests */
	ret += test22_0 (&emptyBstring, &o, 1, "");
	ret += test22_0 (&emptyBstring, &uo, 1, "");
	ret += test22_0 (&shortBstring, &emptyBstring, 1, "bogus");
	ret += test22_0 (&shortBstring, &o, 2, "b", "gus");
	ret += test22_0 (&longBstring, &o, 9, "This is a b", "gus but reas", "nably l", "ng string.  Just l", "ng en", "ugh t", " cause s", "me mall", "cing.");
	ret += test22_0 (&shortBstring, &uo, 3, "b", "g", "s");

	printf ("\t# failures: %d\n", ret);
	return ret;
}

struct sbstr {
    int ofs;
    bstring b;
};

size_t test23_aux_read (void *buff, size_t elsize, size_t nelem, void *parm) {
struct sbstr * sb = (struct sbstr *)parm;
int els, len;

	if (parm == NULL || elsize <= 0 || nelem <= 0) return 0;
	len = nelem * elsize; if (len <= 0) return 0;
	if (len + sb->ofs > sb->b->slen) len = sb->b->slen - sb->ofs;
	els = len / elsize;
	len = els * elsize;
	if (len > 0) {
		memcpy (buff, sb->b->data + sb->ofs, len);
		sb->ofs += len;
	}
	return els;
}

int test23_aux_open (struct sbstr * sb, bstring b) {
	if (!sb || b == NULL) return -__LINE__;
	sb->ofs = 0;
	sb->b = b;
	return 0;
}

int test23 () {
struct sbstr sb;
struct bStream * bs;
bstring b;
int l, ret = 0;


	printf ("TEST: bstream integrated test\n");
	test23_aux_open (&sb, &longBstring);
	ret += NULL != (bs = bsopen ((bNread) NULL, &sb));
	ret += NULL == (bs = bsopen ((bNread) test23_aux_read, &sb));
	ret += BSTR_ERR != bsbufflength (NULL, -1);
	ret += BSTR_ERR != bsbufflength (NULL, 1);
	ret += BSTR_ERR != bsbufflength (bs, -1);
	printf ("bsbufflength (bs, 0) -> %d\n", bsbufflength (bs, 0));
	ret += BSTR_ERR == bsbufflength (bs, 1);
	ret += BSTR_ERR != bspeek (NULL, bs);
	ret += BSTR_ERR != bsreadln (NULL, bs, '?');
	ret += BSTR_ERR != bsreadln (&emptyBstring, bs, '?');
	ret += BSTR_ERR != bspeek (&emptyBstring, bs);

	ret += BSTR_ERR == bspeek (b = cstr2bstr (""), bs);

	printf (".\tbspeek () -> %s\n", dumpBstring (b));
	ret += BSTR_ERR != bsreadln (b, NULL, '?');
	b->slen = 0;
	ret += BSTR_ERR == bsreadln (b, bs, '?');
	ret += biseq (b, &longBstring) < 0;
	printf (".\tbsreadln ('?') -> %s\n", dumpBstring (b));
	ret += BSTR_ERR == bsunread (bs, b);
	printf (".\tbsunread (%s)\n", dumpBstring (b));
	b->slen = 0;
	ret += BSTR_ERR == bspeek (b, bs);
	ret += biseq (b, &longBstring) < 0;
	printf (".\tbspeek () -> %s\n", dumpBstring (b));
	b->slen = 0;
	ret += BSTR_ERR == bsreadln (b, bs, '?');
	ret += biseq (b, &longBstring) < 0;
	printf (".\tbsreadln ('?') -> %s\n", dumpBstring (b));
	ret += NULL == bsclose (bs);
	sb.ofs = 0;

	ret += NULL == (bs = bsopen ((bNread) test23_aux_read, &sb));
	b->slen = 0;
	ret += BSTR_ERR == bsreadln (b, bs, '.');
	l = b->slen;
	ret += (0 != bstrncmp (b, &longBstring, l)) || (longBstring.data[l-1] != '.');
	printf (".\tbsreadln ('.') -> %s\n", dumpBstring (b));
	ret += BSTR_ERR == bsunread (bs, b);

	printf (".\tbsunread (%s)\n", dumpBstring (b));
	b->slen = 0;
	ret += BSTR_ERR == bspeek (b, bs);
	ret += biseq (b, &longBstring) < 0;
	printf (".\tbspeek () -> %s\n", dumpBstring (b));
	b->slen = 0;
	ret += BSTR_ERR == bsreadln (b, bs, '.');

	ret += b->slen != l || (0 != bstrncmp (b, &longBstring, l)) || (longBstring.data[l-1] != '.');
	printf (".\tbsreadln ('.') -> %s\n", dumpBstring (b));
	ret += NULL == bsclose (bs);

	bdestroy (b);

	printf ("\t# failures: %d\n", ret);
	return ret;
}

main () {
int ret = 0;

	printf ("Direct case testing of bstring core functions\n");

	ret += test0 ();
	ret += test1 ();
	ret += test2 ();
	ret += test3 ();
	ret += test4 ();
	ret += test5 ();
	ret += test6 ();
	ret += test7 ();
	ret += test8 ();
	ret += test9 ();
	ret += test10 ();
	ret += test11 ();
	ret += test12 ();
	ret += test13 ();
	ret += test14 ();
	ret += test15 ();
	ret += test16 ();
	ret += test17 ();
	ret += test18 ();
	ret += test19 ();
	ret += test20 ();
	ret += test21 ();
	ret += test22 ();
	ret += test23 ();

	printf ("# test failures: %d\n", ret);

	return 0;
}
