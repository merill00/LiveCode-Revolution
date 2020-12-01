/*
     Runtime Revolution interface to Audio Units.
    
     copyright Mark Wieder and Ah, Software 2004
	 from Mixer code by Kurt Revis
*/

#include <CoreServices/CoreServices.h>
#include <AudioUnit/AudioUnit.h>
#include <CoreAudio/CoreAudio.h>
#include <AudioToolbox/AudioToolbox.h>
#include "XCmdGlue.h"
#include "revAudioUnits.h"

void DoIt();

/* See also: */
/* http://www.mat.ucsb.edu:8000/CoreAudio/5 */

char Xname[] = "RevAudioUnit";

Xternal Xtable[] =
{
     {"AUinitialize",XCOMMAND,0,initialize,XCabort},
     {"AUcleanup",XCOMMAND,0,CleanUp,XCabort},
     {"",XNONE,0,NULL,NULL}
};

AudioUnit outputAudioUnit;
AudioUnit mixerAudioUnit;

// rev handler for setUpOutputAudioUnit()
void initialize(char *args[], int nargs, char **retstring, Bool *pass, Bool *error)
{
     setUpOutputAudioUnit();
     *pass = False;
     *error = False;
     *retstring = calloc (1,1);
}

Boolean setUpOutputAudioUnit()
{
     Boolean blnRetVal = true;

      if (noErr != OpenDefaultAudioOutput (&outputAudioUnit))
          blnRetVal = false;
      else if (noErr != AudioUnitInitialize (outputAudioUnit))
          blnRetVal = false;
      return (blnRetVal);
}

/* Create a mixer AudioUnit */

Boolean setUpMixerAudioUnit()
{
      ComponentDescription description;
      Component component;
      Boolean blnRetVal=true;

      description.componentType = kAudioUnitComponentType;
      description.componentSubType = kAudioUnitSubType_Mixer;
      description.componentManufacturer = kAudioUnitID_StereoMixer;
      description.componentFlags = 0;
      description.componentFlagsMask = 0;

      component = FindNextComponent(NULL, &description);
      if (!component)
          blnRetVal =  false;

      else if (noErr != OpenAComponent(component, &mixerAudioUnit))
          blnRetVal = false;

      else if (noErr != AudioUnitInitialize(mixerAudioUnit))
          blnRetVal = false;

      return blnRetVal;
}

/* Connect the output of the mixer to the audio output */

Boolean connectMixer(AudioUnit source, AudioUnit *mixer)
{
      struct AudioUnitConnection connection;
      OSStatus err;

      connection.sourceAudioUnit = *mixer;
      connection.sourceOutputNumber = 0;
      connection.destInputNumber = 0;
      err = AudioUnitSetProperty(source,
                 kAudioUnitProperty_MakeConnection,
                 kAudioUnitScope_Input, 0, &connection,
                 sizeof(struct AudioUnitConnection *));
      return (err == noErr);
}

/* For each mixer input that you are dealing with, set up an input callback */

Boolean setUpMixerInputCallback(AudioUnitRenderCallback callback,
	void *refCon,
	UInt32 busNumber)
{
      struct AudioUnitInputCallback callbackStruct;
      OSStatus err;

      callbackStruct.inputProc = callback;
      callbackStruct.inputProcRefCon = refCon;
      err = AudioUnitSetProperty (mixerAudioUnit,
                 kAudioUnitProperty_SetInputCallback,
                 kAudioUnitScope_Input,
                 busNumber,
                 &callbackStruct,
                 sizeof (callbackStruct));

      return (noErr == err);
}

/* Implement your input callback */

OSStatus myMixerInputCallback(void *inRefCon, 
	AudioUnitRenderActionFlags inActionFlags,
	const AudioTimeStamp 
	*inTimeStamp, UInt32 inBusNumber,
	AudioBuffer ioData)
{
      /* inRefCon and inBusNumber will be whatever you passed in to setUpMixerInputCallback().
      // inTimeStamp will be the time that the audio data will be played. You may ignore it if you don't need it.
      // Ignore inActionFlags -- the stuff it describes never got implemented (I think).
      // Write your data into the ioData buffer provided.

      // YOUR CODE HERE */

      return noErr;
}

/* Set everything up and start playing sound */

void DoIt()
{
     if (setUpOutputAudioUnit() & setUpMixerAudioUnit() & connectMixer(outputAudioUnit, &mixerAudioUnit))
     {
//        for (each mixer input bus you want to use)
//      {
//            setUpMixerInputCallback (myMixerInputCallback, yourRefCon, busNumber);
//      }
     }
     AudioOutputUnitStart (outputAudioUnit);
}

/* Stop and clean up */
void DestroyUnit(AudioUnit *au)
{
     AudioOutputUnitStop (*au);
     CloseComponent (*au);
}

void CleanUp(char *args[], int nargs, char **retstring, Bool *pass, 
Bool *error)
{
     DestroyUnit (&outputAudioUnit);
     DestroyUnit (&mixerAudioUnit);
     *pass = False;
     *error = False;
     *retstring = calloc (1,1);
}

void XCabort()
{
}
