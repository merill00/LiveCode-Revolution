/********************************************/
/*    Copyright 1997 MetaCard Corporation   */
/*    All Rights Reserved                   */
/********************************************/
/*
  XCMD functions
*/

/* Some Unixes don't have strdup() */
#ifdef __STDC__
char *istrdup(const char *sptr)
#else
char *istrdup(sptr)
     char *sptr;
#endif
{
  char *dptr;
  dptr = (char*) malloc(strlen(sptr) + 1);
  strcpy(dptr, sptr);
  return dptr;
}

#ifdef __STDC__
void SendCardMessage(const char *message, int *retval)
#else
void SendCardMessage(message, retval)
     char *message;
     int *retval;
#endif
{
  char *rptr = callback(MC_CARD_MESSAGE, message, NULL, NULL, retval);
  free(rptr);
}

#ifdef __STDC__
void SendMCMessage(const char *message, int *retval)
#else
void SendMCMessage(message, retval)
     char *message;
     int *retval;
#endif
{
  char *rptr = callback(MC_MC_MESSAGE, message, NULL, NULL, retval);
  free(rptr);
}

#ifdef __STDC__
char *EvalExpr(const char *expression, int *retval)
#else
char *EvalExpr(expression, retval)
     char *expression;
     int *retval;
#endif
{
  return callback(MC_EVAL_EXP, expression, NULL, NULL, retval);
}

#ifdef __STDC__
char *GetGlobal(const char *name, int *retval)
#else
char *GetGlobal(name, retval)
     char *name;
     int *retval;
#endif
{
  return callback(MC_GET_GLOBAL, name, NULL, NULL, retval);
}

#ifdef __STDC__
void SetGlobal(const char *name, const char *value, int *retval)
#else
void SetGlobal(name, value, retval)
     char *name;
     char *value;
     int *retval;
#endif
{
  char *rptr = callback(MC_SET_GLOBAL, name, value, NULL, retval);
  free(rptr);
}

#ifdef __STDC__
char *GetFieldByName(const char *group, const char *name, int *retval)
#else
char *GetFieldByName(group, name, retval)
     char *group;
     char *name;
     int *retval;
#endif
{
  return callback(MC_GET_FIELD_BY_NAME, name, group, NULL, retval);
}

#ifdef __STDC__
char *GetFieldByNum(const char *group, int num, int *retval)
#else
char *GetFieldByNum(group, num, retval)
     char *group;
     int num;
     int *retval;
#endif
{
  char *rptr;
  char *dptr = (char*) malloc(XINTSTRSIZE);
  sprintf(dptr, "%d", num);
  rptr = callback(MC_GET_FIELD_BY_NUM, dptr, group, NULL, retval);
  free(dptr);
  return rptr;
}

#ifdef __STDC__
char *GetFieldById(const char *group, unsigned long id, int *retval)
#else
char *GetFieldById(group, id, retval)
     char *group;
     unsigned long id;
     int *retval;
#endif
{
  char *rptr;
  char *dptr = (char*) malloc(XINTSTRSIZE);
  sprintf(dptr, "%ld", id);
  rptr = callback(MC_GET_FIELD_BY_ID, dptr, group, NULL, retval);
  free(dptr);
  return rptr;
}

#ifdef __STDC__
void SetFieldByName(const char *group, const char *name,
		    const char *value, int *retval)
#else
void SetFieldByName(group, name, value, retval)
     char *group;
     char *name;
     char *value;
     int *retval;
#endif
{
  char *rptr;
  rptr = callback(MC_SET_FIELD_BY_NAME, name, group, value, retval);
  free(rptr);
}

#ifdef __STDC__
void SetFieldByNum(const char *group, int num,
		   const char *value, int *retval)
#else
void SetFieldByNum(group, num, value, retval)
     char *group;
     int num;
     char *value;
     int *retval;
#endif
{
  char *rptr;
  char *dptr = (char*) malloc(XINTSTRSIZE);
  sprintf(dptr, "%d", num);
  rptr = callback(MC_SET_FIELD_BY_NUM, dptr, group, value, retval);
  free(dptr);
  free(rptr);
}

#ifdef __STDC__
void SetFieldById(const char *group, unsigned long id,
		  const char *value, int *retval)
#else
void SetFieldById(group, id, value, retval)
     char *group;
     unsigned long id;
     char *value;
     int *retval;
#endif
{
  char *rptr;
  char *dptr = (char*) malloc(XINTSTRSIZE);
  sprintf(dptr, "%ld", id);
  rptr = callback(MC_SET_FIELD_BY_ID, dptr, group, value, retval);
  free(dptr);
  free(rptr);
}

#ifdef __STDC__
void ShowImageByName(const char *group, const char *name, int *retval)
#else
void ShowImageByName(group, name, retval)
     char *group;
     char *name;
     int *retval;
#endif
{
  char *rptr = callback(MC_SHOW_IMAGE_BY_NAME, name, group, NULL, retval);
  free(rptr);
}

#ifdef __STDC__
void ShowImageByNum(const char *group, int num, int *retval)
#else
void ShowImageByNum(group, num, retval)
     char *group;
     int num;
     int *retval;
#endif
{
  char *rptr;
  char *dptr = (char*) malloc(XINTSTRSIZE);
  sprintf(dptr, "%d", num);
  rptr = callback(MC_SHOW_IMAGE_BY_NUM, dptr, group, NULL, retval);
  free(dptr);
  free(rptr);
}

#ifdef __STDC__
void ShowImageById(const char *group, unsigned long id, int *retval)
#else
void ShowImageById(group, id, retval)
     char *group;
     unsigned long id;
     int *retval;
#endif
{
  char *rptr;
  char *dptr = (char*) malloc(XINTSTRSIZE);
  sprintf(dptr, "%ld", id);
  rptr = callback(MC_SHOW_IMAGE_BY_ID, dptr, group, NULL, retval);
  free(dptr);
  free(rptr);
}

#ifdef __STDC__
char *GetVariable(const char *name, int *retval)
#else
char *GetVariable(name, retval)
     char *name;
     int *retval;
#endif
{
  return callback(MC_GET_VARIABLE, name, NULL, NULL, retval);
}

#ifdef __STDC__
void SetVariable(const char *name, const char *value, int *retval)
#else
void SetVariable(name, value, retval)
     char *name;
     char *value;
     int *retval;
#endif
{
  char *rptr = callback(MC_SET_VARIABLE, name, value, NULL, retval);
  free(rptr);
}


#ifdef __STDC__
void GetVariableEx(const char *name, const char *key, MCstring *value, int *retval)
#else
void GetVariableEx(name,  key, value, retval)
     char *name;
	 const char *key;
	 MCstring *value;
	 int *retval;
#endif
{
   callback(MC_GET_VARIABLE_EX, name, key, (char *)value, retval);
}

#ifdef __STDC__
void SetVariableEx(const char *name,  const char *key,  const MCstring *value, int *retval)
#else
void SetVariableEx(name,  key, value, retval)
     const char *name;
	 const char *key;
	 const MCstring *value;
	 int *retval;
#endif
{
  char *rptr = callback(MC_SET_VARIABLE_EX, name, key, (char *)value, retval);
  free(rptr);
}

#ifdef __STDC__
void GetArray(const char *name, int *nelements, MCstring *strings, char **keys, int *retval)
#else
     void GetArray(name,nelements,strings,keys,retval)
     const char *name;
     int *nelements;
MCstring *strings;
char **keys;
int *retval;
#endif
{
  MCarray barray;
  char *dptr = (char*) malloc(XINTSTRSIZE);
  if (strings == NULL || keys == NULL || *nelements == 0)
    *nelements = 0;
  sprintf(dptr, "%d", *nelements);
  barray.nelements = *nelements;
  barray.strings = strings;
  barray.keys = keys;
  callback(MC_GET_ARRAY,name,dptr,(char *)&barray,retval);
  free(dptr);
  *nelements = barray.nelements; 
}

#ifdef __STDC__
void SetArray(const char *name, int nelements, MCstring *strings, char **keys, int *retval)
#else
     void SetArray(name, nelements, strings, keys, retval)
     const char *name;
     int nelements;
     MCstring *strings;
     char **keys;
     int *retval;
#endif
{
  char *rptr;
  MCarray barray;
  barray.nelements = nelements;
  barray.strings = strings;
  barray.keys = keys;
  rptr = callback(MC_SET_ARRAY,name,"",(char *)&barray,retval);
  free(rptr);
}


char *GetMCStatus()
{
  return getstatus();
}
