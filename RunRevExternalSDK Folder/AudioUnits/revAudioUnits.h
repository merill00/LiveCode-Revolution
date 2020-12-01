/*
     Runtime Revolution interface to Audio Units.
    
     copyright Mark Wieder and Ah, Software 2004
*/


/*
#defines and prototypes for MetaCard/Runtime Revolution template external
*/

extern Boolean setUpOutputAudioUnit();
extern Boolean setUpMixerAudioUnit();
extern Boolean connectMixer(AudioUnit source, AudioUnit *mixer);
extern Boolean setUpMixerInputCallback(AudioUnitRenderCallback 
callback, void *refCon, UInt32 busNumber);
extern OSStatus myMixerInputCallback(void *inRefCon, 
AudioUnitRenderActionFlags inActionFlags, const AudioTimeStamp 
*inTimeStamp, UInt32 inBusNumber, AudioBuffer ioData);
extern void DestroyUnit(AudioUnit *au);

/*
* Transcript Handlers
*/
extern void initialize(char *args[], int nargs, char **retstring, 
Bool *pass, Bool *error);
extern void CleanUp(char *args[], int nargs, char **retstring, Bool 
*pass, Bool *error);

/*
* Transcript Functions
*/
extern void XClipsFunctionCall(char *args[], int nargs, char 
**retstring, Bool *pass, Bool *error);
extern void XClipsEval(char *args[], int nargs, char **retstring, 
Bool *pass, Bool *error);
extern void XClipsAssertString(char *args[], int nargs, char 
**retstring, Bool *pass, Bool *error);

/*
* I/O
*/

extern void XCabort();
extern Xternal Xtable[];
extern char Xname[];
