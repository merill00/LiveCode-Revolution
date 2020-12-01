/********************************************/
/*    Copyright 1997 MetaCard Corporation   */
/*    All Rights Reserved                   */
/********************************************/
/*
 * #defines for property names (included both in mc and in externals)
 */
enum XCAtomIds {
  MC_ID,
  MC_ABORT,
  MC_REGISTER,
  MC_CARD_MESSAGE,
  MC_MC_MESSAGE,
  MC_EVAL_EXP,
  MC_GET_GLOBAL,
  MC_SET_GLOBAL,
  MC_GET_FIELD_BY_NAME,
  MC_GET_FIELD_BY_NUM,
  MC_GET_FIELD_BY_ID,
  MC_SET_FIELD_BY_NAME,
  MC_SET_FIELD_BY_NUM,
  MC_SET_FIELD_BY_ID,
  MC_SHOW_IMAGE_BY_NAME,
  MC_SHOW_IMAGE_BY_NUM,
  MC_SHOW_IMAGE_BY_ID,
  MC_GET_VARIABLE,
  MC_SET_VARIABLE,
  MC_GET_VARIABLE_EX,
  MC_SET_VARIABLE_EX,
  MC_GET_ARRAY,
  MC_SET_ARRAY,
  MC_NUM_ATOMS
};

#define MC_ID_STRING "MC_ID"
#define MC_ABORT_STRING "MC_Abort"
#define MC_REGISTER_STRING "MC_Register"
#define MC_CARD_MESSAGE_STRING "MC_CardMessage"
#define MC_MC_MESSAGE_STRING "MC_MCMessage"
#define MC_EVAL_EXPRESSION_STRING "MC_EvalExpression"
#define MC_GET_GLOBAL_STRING "MC_GetGlobal"
#define MC_SET_GLOBAL_STRING "MC_SetGlobal"
#define MC_GET_FIELD_BY_NAME_STRING "MC_GetFieldByName"
#define MC_GET_FIELD_BY_NUMBER_STRING "MC_GetFieldByNumber"
#define MC_GET_FIELD_BY_ID_STRING "MC_GetFieldById"
#define MC_SET_FIELD_BY_NAME_STRING "MC_SetFieldByName"
#define MC_SET_FIELD_BY_NUMBER_STRING "MC_SetFieldByNumber"
#define MC_SET_FIELD_BY_ID_STRING "MC_SetFieldById"
#define MC_SHOW_IMAGE_BY_NAME_STRING "MC_ShowImagedByName"
#define MC_SHOW_IMAGE_BY_NUMBER_STRING "MC_ShowImageByNumber"
#define MC_SHOW_IMAGE_BY_ID_STRING "MC_ShowImageById"
#define MC_GET_VARIABLE_STRING "MC_GetVariable"
#define MC_SET_VARIABLE_STRING "MC_SetVariable"
#define MC_GET_VARIABLE_EX_STRING "MC_GetVariableEx"
#define MC_SET_VARIABLE_EX_STRING "MC_SetVariableEx"
#define MC_GET_ARRAY_STRING "MC_GetArray"
#define MC_SET_ARRAY_STRING "MC_SetArray"

#define MC_GET_MC_STATUS_STRING "MC_GetMCStatus"

/* strings returned from GetMCStatus */
#define MC_STATUS_STARTUP "startup"
#define MC_STATUS_LOADING "loading"
#define MC_STATUS_FAILED "startup"
#define MC_STATUS_READY "ready"
#define MC_STATUS_DONE "done"
