/* (c) 2003 Mindlube Software */

/* first the headers for the metacard/runrev external implementation */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#ifdef X11
#include <sys/time.h>
#include <values.h>

#ifdef SELECT
#ifndef LINUX
/* some systems don't have select.h and/or stream.h.  If yours doesn't
   delete the offending #include */
#include <sys/select.h>
#include <sys/stream.h>
#endif
#else
#include <poll.h>
#endif
#include <X11/Xlib.h>
#elif defined WIN32
#include <time.h>
#include <windows.h>
#elif defined MACOS
#ifndef MACHO
#include <Quickdraw.h>
#include <QDOffscreen.h>
#include <Events.h>
#endif
#endif
#include "XCmdGlue.h"
/* end of headers for the metacard/runrev external implementation */

/* better string library from bstring.sourceforge.net */
#include "bstrlib.h"

/* libhowl  rendezvous library from swampwolf.com */
/* ---> Howl version 0.9 <--- */
#include <rendezvous/rendezvous.h>
#include <rendezvous/text_record.h>
#include <salt/log.h>

/* header file of external.c */
#include "external.h"

Xternal Xtable[] = {
{"zconfInit",               XCOMMAND, 0, X_zconfInit,               X_zconfAbort},
{"zconfFinish",             XCOMMAND, 0, X_zconfFinish,             X_zconfAbort},
{"zconfSetStatusCallback",  XCOMMAND, 0, X_zconfSetStatusCallback,  X_zconfAbort},
{"zconfBrowseServiceType",  XCOMMAND, 0, X_zconfBrowseServiceType,  X_zconfAbort},
{"zconfBrowseDomains",      XCOMMAND, 0, X_zconfBrowseDomains,      X_zconfAbort},
{"zconfPublishService",     XCOMMAND, 0, X_zconfPublishService,     X_zconfAbort},
{"",                        XNONE,    0, NULL,                      NULL}
};

char Xname[] = "revzeroconf: libhowl 0.9 rendezvous external";

static bstring                  callbackMessage;
static bstring                  callbackControlLongId;
static const char               BSTRING_NULL_REPLACEMENT = ' ';

static sw_rendezvous            session;
static sw_salt                  salt;
static sw_rendezvous_browse_id	browseServiceId;
static sw_rendezvous_browse_id  browseDomainsId;
static sw_rendezvous_publish_id publishId;

typedef enum
{
   SW_CONTEXT_CONSOLE,
   SW_CONTEXT_GUI
} sw_context;

void X_zconfInit(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{    
    sw_result result = NULL;
    bstring answer = NULL;
    
    *pass = False;
    *error = False;
    
    session = NULL;
    salt = NULL;    
    browseServiceId = NULL;
    callbackControlLongId = NULL;
    publishId = NULL;
    
    if ((result = sw_salt_init(&salt, SW_CONTEXT_GUI, NULL)) != SW_OKAY)
    {
       answer = bformat("err: sw_salt_init failed: %d", result);
        *retstring = bstr2cstr(answer, BSTRING_NULL_REPLACEMENT);
        bdestroy(answer);
        return;
    }
    if ((result = sw_rendezvous_init(&session)) != SW_OKAY)
    {
        answer = bformat("err: sw_rendezvous_init failed: %d", result);
        *retstring = bstr2cstr(answer, BSTRING_NULL_REPLACEMENT);
        bdestroy(answer);
        return;
    }
    if ((result = sw_rendezvous_salt(session, &salt)) != SW_OKAY)
    {
        answer = bformat("err: sw_rendezvous_salt failed: %d", result);
        *retstring = bstr2cstr(answer, BSTRING_NULL_REPLACEMENT);
        bdestroy(answer);
        return;
    }
    *retstring = calloc(1,1);
}

void X_zconfSetStatusCallback(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{    
    *pass = False;
    *error = False;

    if (nargs != 2)
    {
        *retstring = istrdup("err: usage: zconfSetStatusCallback <message name>, <long id of target control>");
        *error = True;
        return;
    }
    *retstring = calloc(1,1);    
    if(callbackMessage != NULL)
    {
        bdestroy(callbackMessage); 
        callbackMessage = NULL;       
    }
    if(callbackControlLongId != NULL)
    {
        bdestroy(callbackControlLongId); 
        callbackControlLongId = NULL;     
    }
    if (nargs == 2)
    {
        callbackMessage = cstr2bstr(args[0]); 
        callbackControlLongId = cstr2bstr(args[1]);            
    }   
}

void X_zconfCallbackSend(bstring messageText)
{
    int retval = 0;
        
    if(callbackMessage && callbackControlLongId)
    {        
	    bstring mcExpression = bformat("send \"%s\" && quote & \"%s\" & quote to %s", 
            callbackMessage->data, 
            messageText->data,
            callbackControlLongId->data);   
	    SetGlobal("gZconfStatus", messageText->data , &retval);      
        SendMCMessage(mcExpression->data, &retval);
        bdestroy(mcExpression);
    }       
}

void X_zconfAbort(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{    
    *pass = False;
    *error = False;
    X_zconfFinish(NULL, 0, NULL, NULL, NULL);
    *retstring = calloc(1,1);
}

void X_zconfFinish(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{   
    *pass = False;
    *error = False;
    
    if((session != NULL) && (browseServiceId != NULL)) 
    {
        sw_rendezvous_stop_browse_services(session, browseServiceId);
    }
     if((session != NULL) && (browseDomainsId != NULL)) 
    {
        sw_rendezvous_stop_browse_domains(session, browseDomainsId);
    }
    if((session != NULL) && (publishId != NULL))
    {
        sw_rendezvous_stop_publish(session, publishId);
    }
    if(session != NULL)
    {
        sw_rendezvous_fina(session);
        session = NULL;
    }    
    *retstring = calloc(1,1);
}

void X_zconfBrowseServiceType(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{    
    sw_result result = NULL;
    bstring answer = NULL;
    
    *pass = False;    
    *error = False;
    *retstring = calloc(1,1);
    
    if(nargs != 1) 
    {
        *retstring = istrdup("err: usage: zconfBrowseServiceType <type>");
        *error = True;
        return;
    }
    if ((result = sw_rendezvous_browse_services(session, args[0], NULL, NULL, (sw_rendezvous_browse_reply) X_zconfBrowser, NULL, &browseServiceId)) != SW_OKAY)
    {
        answer = bformat("err: sw_rendezvous_browse_services failed: %d", result);
        *retstring = bstr2cstr(answer, BSTRING_NULL_REPLACEMENT);
        bdestroy(answer);
        return;
    }
}

void X_zconfBrowseDomains(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{    
    sw_result result = NULL;
    bstring answer = NULL;
    
    *pass = False;    
    *error = False;
    *retstring = calloc(1,1);

    if ((result = sw_rendezvous_browse_domains(session, NULL,  (sw_rendezvous_browse_reply) X_zconfBrowser, NULL, &browseDomainsId)) != SW_OKAY)    
    {
        answer = bformat("err: sw_rendezvous_browse_domains failed: %d", result);
        *retstring = bstr2cstr(answer, BSTRING_NULL_REPLACEMENT);
        bdestroy(answer);
        return;
    }
}

void X_zconfPublishService(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{    
    sw_result result = NULL;
	sw_text_record text_record = NULL;
    bstring answer = NULL;
    char *serviceText = (nargs == 4) ? args[3] : NULL;
    
    *pass = False;    
    *error = False;
    *retstring = calloc(1,1);
    
    if ((nargs < 3) || (nargs > 4))
    {
        *retstring = istrdup("err: usage: zconfPublishService <name>, <type>, <port>, [service text]");
        *error = True;
        return;
    }    
	if (sw_text_record_init(&text_record) != SW_OKAY)
	{
		*retstring = istrdup("err: failed to init dns text record");
        *error = True;
        return;
	}
	if (sw_text_record_add_string(text_record, serviceText) != SW_OKAY)
	{
		fprintf(stderr, "err: failed to add service text to dns text record");
		*error = True;
		return;		
	}
    if ((result = sw_rendezvous_publish(session,		// session obj   
                                        args[0],		// name
                                        args[1],		// type
                                        NULL,			// domain
                                        NULL,			//host
                                        atoi(args[2]), // port
                                        sw_text_record_bytes(text_record),	// service text obj
										sw_text_record_len(text_record), // len
                                        NULL,			// "this" pointer
                                        X_zconfServiceReply, // reply function
                                        NULL,			// "extra" pointer
                                        &publishId		// publish object
										)) 
        != SW_OKAY)
    {
        answer = bformat("err: sw_rendezvous_publish failed: %d", result);
        *retstring = bstr2cstr(answer, BSTRING_NULL_REPLACEMENT);
        bdestroy(answer);
        return;
    }
	sw_text_record_fina(text_record);
}

static sw_result X_zconfBrowser(
    sw_rendezvous_browse_handler handler,
    sw_rendezvous rendezvous,
    sw_rendezvous_browse_id id,
    sw_rendezvous_browse_status	status,
    sw_const_string name,
    sw_const_string type,
    sw_const_string domain,
    sw_opaque extra)
{
    sw_rendezvous_resolve_id rid = NULL;
    bstring statusText = NULL;
    
    switch (status)
    {
        case SW_RENDEZVOUS_BROWSE_INVALID:
        {
            statusText = cstr2bstr("browse reply: Invalid");
        }
        break;
    
        case SW_RENDEZVOUS_BROWSE_RELEASE:
        {
            statusText = cstr2bstr("browse reply: Release");
        }
        break;
    
        case SW_RENDEZVOUS_BROWSE_ADD_DOMAIN:
        {
            statusText = cstr2bstr("browse reply: Add Domain");
        }
        break;
    
        case SW_RENDEZVOUS_BROWSE_ADD_DEFAULT_DOMAIN:
        {
            statusText = cstr2bstr("browse reply: Add Default Domain");
        }
        break;
    
        case SW_RENDEZVOUS_BROWSE_REMOVE_DOMAIN:
        {
            statusText = cstr2bstr("browse reply: Remove Domain");
        }
        break;
    
        case SW_RENDEZVOUS_BROWSE_ADD_SERVICE:
        {
            statusText = bformat("browse reply: Add Service,%s,%s,%s", name, type, domain);
            if (sw_rendezvous_resolve(rendezvous, 
									name, 
									type, 
									domain, 
									NULL, 
									(sw_rendezvous_resolve_reply) X_zconfResolver, 
									NULL, 
									&rid
				) != SW_OKAY)
            {
                 statusText = bformat("resolve failed: %s,%s,%s", name, type, domain);
            }
        }
        break;
    
        case SW_RENDEZVOUS_BROWSE_REMOVE_SERVICE:
        {
            statusText = bformat("browse reply: Remove Service,%s,%s,%s", name, type, domain);
            if (sw_rendezvous_resolve(rendezvous, 
									name, 
									type, 
									domain, 
									NULL, 
									(sw_rendezvous_resolve_reply) X_zconfResolver, 
									NULL, &rid
				) != SW_OKAY)
            {
                 statusText = bformat("resolve failed: %s,%s,%s", name, type, domain);
            }
        }
        break;
    
        case SW_RENDEZVOUS_BROWSE_RESOLVED:
        {
            statusText = bformat("browse reply: Resolved");
        }
        break;
    }    
    X_zconfCallbackSend(statusText);
    bdestroy(statusText);
    return SW_OKAY;
}

static sw_result X_zconfResolver(
    sw_rendezvous_resolve_handler handler,
    sw_rendezvous rendezvous,
    sw_rendezvous_resolve_id id,
    sw_const_string name,
    sw_const_string type,
    sw_const_string domain,
    sw_ipv4_address address,
    sw_port port,
	sw_const_string                text_record_string,
	sw_octets                      text_record,
	sw_ulong                       text_record_len,
	sw_opaque                      extra)
{
    bstring statusText = NULL;
    char name_buf[16];
    
	sw_rendezvous_stop_resolve(session, id);
    statusText = bformat("resolve reply: %s,%s,%s,%s,%d,%s", 
                        name, type, domain, sw_ipv4_address_name(address, name_buf, 16), port, text_record_string);    
    X_zconfCallbackSend(statusText);                    
    bdestroy(statusText);
    return SW_OKAY;
}

static sw_result X_zconfServiceReply(
    sw_rendezvous_publish_handler handler,
    sw_rendezvous rendezvous,
    sw_rendezvous_publish_status status,
    sw_rendezvous_publish_id id,
    sw_opaque extra)
{
    bstring statusText = NULL;
    static sw_string status_text[] =
    {
        "Started",
        "Stopped",
        "Name Collision",
        "Invalid"
    };            
    
    statusText = bformat("publish reply: %s", status_text[status]);
    X_zconfCallbackSend(statusText);  
    bdestroy(statusText);
    return SW_OKAY;
}

                    
               
