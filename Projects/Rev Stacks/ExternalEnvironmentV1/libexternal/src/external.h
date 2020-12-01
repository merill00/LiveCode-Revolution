#ifndef __REVOLUTION_EXTERNAL__
#define __REVOLUTION_EXTERNAL__

#ifdef __cplusplus
extern "C"
{
#endif

///////////////////////////////////////////////////////////////////////////////
//
// External API declarations
//

#define EXTERNAL_SUCCESS 0
#define EXTERNAL_FAILURE 1

#ifndef Bool
#define Bool int
#define True 1
#define False 0
#endif

typedef void (*ExternalHandler)(char *p_arguments[], int p_argument_count, char **r_result, Bool *r_pass, Bool *r_error);

typedef struct _ExternalDeclaration
{
	const char *name;
	const char *type;
	unsigned long __not_used_1;
	ExternalHandler handler;
	void *__not_used_2;
} ExternalDeclaration;

typedef struct _ExternalString
{
	char *buffer;
	int length;
} ExternalString;

typedef struct _ExternalArray
{
  int nelements;
  ExternalString *strings;
  char **keys;
} ExternalArray;

extern void SendCardMessage(const char *p_message, int *r_success);
extern char *EvalExpr(const char *p_expression, int *r_success);

extern char *GetGlobal(const char *p_name, int *r_success);
extern void SetGlobal(const char *p_neame, const char *p_value, int *r_success);

extern char *GetVariable(const char *p_name, int *r_success);
extern void SetVariable(const char *p_name, const char *p_value, int *r_success);

extern void GetVariableEx(const char *p_name, const char *p_key, ExternalString *r_value, int *r_success);
extern void SetVariableEx(const char *p_name, const char *p_key, const ExternalString *p_value, int *r_success);

extern void GetArray(const char *p_name, int *r_element_count, ExternalString *r_values, char **r_keys, int *r_success);
extern void SetArray(const char *p_name, int p_element_count, ExternalString *r_strings, char **r_keys, int *r_success);

extern char *GetFieldByName(const char *p_group, const char *p_name, int *r_success);
extern char *GetFieldByNum(const char *p_group, int p_index, int *r_success);
extern char *GetFieldById(const char *p_group, unsigned long p_id, int *r_success);

extern void SetFieldByName(const char *p_group, const char *p_name, const char *p_value, int *r_success);
extern void SetFieldByNum(const char *p_group, int p_index, const char *p_value, int *r_success);
extern void SetFieldById(const char *p_group, unsigned long p_id, const char *p_value, int *r_success);

extern void ShowImageByName(const char *p_group, const char *p_name, int *r_success);
extern void ShowImageByNum(const char *p_group, int p_index, int *r_success);
extern void ShowImageById(const char *p_group, unsigned long p_id, int *r_success);

#ifdef __cplusplus
};
#endif

///////////////////////////////////////////////////////////////////////////////
//
// External declaration macros
//

#ifdef _MACOSX

#define EXTERNAL_REFERENCE_LIBRARY \
  extern "C" void getXtable(void); \
	void __dummy_function(void) \
	{ \
	  getXtable(); \
	}

#else

#define EXTERNAL_REFERENCE_LIBRARY

#endif


#ifdef __cplusplus

#define EXTERNAL_BEGIN_DECLARATIONS(m_name) \
	extern "C" { \
		EXTERNAL_REFERENCE_LIBRARY \
		const char *g_external_name = m_name; \
		ExternalDeclaration g_external_table[] = \
		{ \

#define EXTERNAL_END_DECLARATIONS \
			{ "", "", 0, 0, 0 } \
		}; \
  }

#else

#define EXTERNAL_BEGIN_DECLARATIONS(m_name) \
	EXTERNAL_REFERENCE_LIBRARY \
	const char *g_external_name = m_name; \
	ExternalDeclaration g_external_table[] = \
  { \

#define EXTERNAL_END_DECLARATIONS \
		{ "", "", 0, 0, 0 } \
	};

#endif

#if defined(__cplusplus) && defined(__EXCEPTIONS)

#include <cstring>
#include <exception>

template<ExternalHandler u_handler> void ExternalWrapper(char *p_arguments[], int p_argument_count, char **r_result, Bool *r_pass, Bool *r_err)
{
	*r_result = NULL;

	try
	{
		u_handler(p_arguments, p_argument_count, r_result, r_pass, r_err);
	}
	catch(std::exception& t_exception)
	{
		if (*r_result != NULL)
			free(*r_result);

		*r_result = strdup(t_exception . what());
		*r_err = True;
	}
	catch(...)
	{
		if (*r_result != NULL)
			free(*r_result);

		*r_result = strdup("unknown C++ exception");
		*r_err = True;
	}
}

#define EXTERNAL_DECLARE_COMMAND(m_name, m_function) \
		{ m_name, "C", 0, ExternalWrapper<m_function>, NULL },

#define EXTERNAL_DECLARE_FUNCTION(m_name, m_function) \
		{ m_name, "F", 0, ExternalWrapper<m_function>, NULL },

#else

#define EXTERNAL_DECLARE_COMMAND(m_name, m_function) \
		{ m_name, "C", 0, m_function, 0 },

#define EXTERNAL_DECLARE_FUNCTION(m_name, m_function) \
		{ m_name, "F", 0, m_function, 0 },

#endif

#endif
