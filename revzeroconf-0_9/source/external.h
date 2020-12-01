
extern void X_zconfInit(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void X_zconfSetStatusCallback(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
void X_zconfCallbackSend (bstring messageText);
extern void X_zconfBrowseServiceType(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void X_zconfBrowseDomains(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void X_zconfPublishService(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);

static sw_result X_zconfBrowser(
    sw_rendezvous_browse_handler handler,
    sw_rendezvous rendezvous,
    sw_rendezvous_browse_id id,
    sw_rendezvous_browse_status	status,
    sw_const_string name,
    sw_const_string type,
    sw_const_string domain,
    sw_opaque extra);

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
	sw_opaque                      extra);

static sw_result X_zconfServiceReply(
    sw_rendezvous_publish_handler handler,
    sw_rendezvous rendezvous,
    sw_rendezvous_publish_status status,
    sw_rendezvous_publish_id id,
    sw_opaque extra);
    
extern void X_zconfFinish(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
extern void X_zconfAbort(char *args[], int nargs, char **retstring, Bool *pass, Bool *error);
