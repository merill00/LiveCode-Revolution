#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                   TopSearch5 �C


















































on openstack
  Global Own
  put the short name of me into Own
  put the topleft of me into Ecke
  set the height of me to 314
  set the topleft of me to Ecke
  hide btn "Stackhoehe" of cd 1 of me
  set the label of btn "StackHoehe" of cd 1 of me to "show full text of field"
  
  if the AltZeile of field "Ergebnis" of cd 1 of me is not empty then
    put the Altzeile of field "Ergebnis" of cd 1 of me into Nummer
    set the backcolor of line Nummer of field "Ergebnis" of cd 1 of me to white
    if Nummer > 1 then
      set the backcolor of line (Nummer - 1) of field "Ergebnis" of cd 1 of me to white
    end if
  end if
  
  # if the mode of this stack <> 3 then set the style of this stack to modeless
  # if the cantmodify of this stack is false then set the cantmodify of this stack to true
  if the dontUseQtEffects  is false then set the dontUseQtEffects  to true
end openstack
on closestack
  
  #set the Open_Sperre of me to false
  lock screen
  lock messages
  set the style of me to modeless
  set the cantmodify of me to true
  put the topleft of me into Ecke
  set the height of me to 314
  set the topleft of me to Ecke
  
  hide btn "Stackhoehe" of cd 1 of me
  set the label of btn "StackHoehe" of cd 1 of me to "show full text of field"
  save this stack
  
end closestack
  ` ������  ������  �  zX):   Open_Sperre  false         HTopSearch for Text 1.3/ Wilhelm Sanke / sanke@hrz.uni-kassel.de  5/2003      U 
helvetica   U Charter   U Arial   U Arial  
 U Arial   U Courier New   U Arial   W Arial   W Arial   U 
helvetica   W 
helvetica  @U 
helvetica  U 
helvetica   U Courier New  U Courier New  @W 
helvetica  @U Courier New  @U Courier New   U Courier   U Courier   W Georgia   W Georgia   U Georgia   U Georgia  U Courier New   U Arial   W Arial  U Courier   � search whole stack   	Pu











































































Global PresentStack
on openCard
  set the thumbpos of scrollbar 1 to 0
  send "mouseup" to btn "set toplevel"
  put the number of cards of the topstack into Zahl
  put Zahl into fld "Restzahl"
  put the name of the topstack into PresentStack
  put "of"&&PresentStack into fld "topstack"
  if Zahl <> 1 then
    put "cards remaining" into fld "LegendRemaining"
  else
    put "card remaining" into fld "LegendRemaining"
  end if
  lock messages
  if the style of this stack is not modeless then set the style of this stack to modeless
  if the cantmodify of this stack is false then set the cantmodify of this stack to true
end openCard
on mouseenter
  send "mouseup" to btn "set toplevel"
  put the name of the topstack into Neustack
  lock messages
  if the style of this stack is not modeless then set the style of this stack to modeless
  if the cantmodify of this stack is false then set the cantmodify of this stack to true
  if Neustack <> Presentstack then
    put the number of cards of the topstack into Zahl
    put Zahl into fld "Restzahl"
    put "of"&&the name of the topstack into fld "topstack"
    put NeuStack into Presentstack
    if Zahl <> 1 then
      put "cards remaining" into fld "LegendRemaining"
    else
      put "card remaining" into fld "LegendRemaining"
    end if
  end if
end mouseenter
   ������ gray �     ):   
Oldstring  frame    �  �  �  �  �  �  �  �  �  �  �  �  �  �        	                    
  
  � New Field 1  )      �  �� �            cREVGeneral    revUniqueID  985036323745  � Search Fields on all Cards   �   Ia        D � ��       0  1335       
  � 	Restzahl  +h          [ 8         � 0 
  � 
gFundZahl  h          x =         � 58 
  �  	         P w d            found lines   � colorize replace �e�p:on mouseUp
  global Suchstring
  put the htmltext of fld "Ergebnis" into GesuchtText
  if Gesuchttext is not empty then
    replace Suchstring with "<FONT color=#FF0000>"&Suchstring&"</FONT>" in GesuchtText
    set the htmltext of fld "Ergebnis" to gesuchttext
  end if
  put 0 into fld "Restzahl"
  
end mouseUp
     � � � B      colorize replace           cREVGeneral    scriptChecksum  +�,@,�A���4ۈ�'
bookmarks   revUniqueID  977132088048handlerList  mouseUpscriptSelection  char 61 to 60prevHandler  mouseUptempScript   script   	     
  � LegendRemaining 	          G W r            cards remaining 
  � InvolvedControls  +h         $ � "         � 33 
  � field-fields 	          T � H            fields 
  � 	Ergebnis  �	x  �
on mouseup
  Global CardID,FieldID,Own,StackNeu
  put word -2 to -1 of fld "lastsearch" into StackAlt
  put word 2 of StackAlt into WortZwei
  delete char 1 of WortZwei
  delete last char of Wortzwei
  if char 1 to 7 of WortZwei is "revDocs" then
    put word -2 to -1 of fld "lastsearch"  into Stackneu
  else
    put the name of the topstack into StackNeu
  end if
  put the value of the clickline into Zeile
  put word 2 of the clickline into ZeilNummer
  put word 1 of Zeile into StackCardField
  if stackCardfield is "field" then
    if StackAlt <> StackNeu then
      answer "There is no such card."&CR&"Check if you changed the topstack since last search."
      exit to Metacard
    end if
    if the AltZeile of me is not empty then
      put the Altzeile of me into Nummer
      set the backcolor of line Nummer of me to white
    end if
    set the backcolor of line ZeilNummer of me to green
    set the AltZeile of me to Zeilnummer
    put word 3 of Zeile into FieldID
    put word 7 of Zeile into CardID
    go to card ID CardID of stack StackNeu
    send "mouseup" to btn "hilite in fulltext" of stack Own
    if the vis of btn "Stackhoehe" of cd 1 of stack Own is false then
      show btn "Stackhoehe" of cd 1 of stack Own
    end if
  end if
end mouseup
     �  � b$   	AltZeile  1 3click at address line to go to card (after search)        cREVGeneral    scriptChecksum  !��AP�fo?�}�<O
bookmarks   revUniqueID  977515399175handlerList  mouseupscriptSelection  char 188 to 187prevHandler  mouseuptempScript   script     � 9field "main" 1008 of card "alwaysBuffer property" 26348    28  Setting a player's alwaysBuffer property to true forces the movie to be drawn in an offscreen buffer. This prevents the movie from flickering when other objects (such as buttons) are drawn on top of it. It also allows the current frame to be seen when the card is printed.        �  @ ��     �      � % �����������������������������  9field "main" 1008 of card "constantMask property" 26526    M16  Some animated GIF images use an optimization technique in which the mask data is used to hold information about differences between successive frames. When played, these GIFs can have display problems because the mask data is being used in a non-standard way. Set the constantMask to true to correct the problem with these GIFs.        �  @ ��     �      � ��20    Note:  If the constantMask is set to true, clicking a transparent portion of a frame may unexpectedly send messages such as mouseUp to the image, instead of the object underneath the image. This is because when deciding whether the user has clicked a transparent pixel, Revolution uses the masks for all the frames, rather than for the current frame, if the constantMask is true.        U  @ ��     U      Z �  @ ��    :     ?   @ ��    ^     c  �����������������������������  9field "Word" 1003 of card "currentframe property" 26547         "  @ ��     "      '    1  currentframe        
  @ ��     
  �����������������������������  <field "Summary" 1006 of card "currentframe property" 26547         %  @ ��     %      *    31  Specifies the current frame of an animated GIF.          @ ��             �����������������������������  9field "main" 1008 of card "currentframe property" 26547         "  @ ��     "      '    02  set the currentframe of image to frameNumber          @ ��              @ ��     $      )  I5  set the currentframe of image "Process" to 1 -- back to the beginning          @ ��            1 �8  Use the currentframe property to check where an animated GIF image is in its sequence. Set this property in order to change the current frame of an animated GIF: for example, to examine the animation frame by frame.          @ ��            t  @ ��     �      � ;  @ ��     �      �   @ ��     �      �  811  The currentframe of an image is a positive integer.          @ ��            # O13  By default, the currentframe property of newly created images is set to 1.          @ ��             . i16  If the image is not a GIF, the currentframe property always reports 1, and setting it has no effect.        *  @ ��     *      / 9 �����������������������������  =field "See Also" 1009 of card "currentframe property" 26547         &  @ ��     &      +    ^1  currentTime property, frameCount property, palindromeframes property, repeatCount property          @ ��              @ ��     8      =   �����������������������������  Afield "Summary" 1006 of card "currentTimeChanged message" 26551     =1  Sent to a player when the user switches to another frame.        6  @ ��     6      ;  �����������������������������  ;field "Summary" 1006 of card "dontRefresh property" 26613     k1  Specifies whether the last frame of a video clip remains visible or is cleared at the end of the movie.          @ ��           # G �����������������������������  8field "main" 1008 of card "dontRefresh property" 26613     M8  Use the dontRefresh property to leave the final frame of a movie visible.        3  @ ��     3      8  �16  If a video clip's dontRefresh property is true, the last frame of the movie remains on the screen after the movie is finished playing, until that portion of the screen is redrawn.        =  @ ��     =      B u T18  If the dontRefresh is false, the last frame disappears at the end of the movie.        *  @ ��     *      / $620    Note:  The color table used by the movie does not persist after the movie finishes playing. This means that if the screenColors is 256 or fewer, the colors in the last frame may shift when the movie ends. To prevent this problem, you can set the colorMap property to the set of colors used by the movie.        �  @ ��     �      � � �����������������������������  5field "Word" 1003 of card "endframe property" 26665           @ ��           #    1  endframe          @ ��       �����������������������������  8field "Summary" 1006 of card "endframe property" 26665         !  @ ��     !      &    =1  The endframe property is not implemented and is reserved.        
  @ ��     
       - �����������������������������  9field "See Also" 1009 of card "endframe property" 26665         "  @ ��     "      '    C1  currentframe property, frameCount property, startframe property        
  @ ��     
         @ ��              @ ��     4      9 	 �����������������������������  7field "Word" 1003 of card "frameCount property" 26752           @ ��                1  frameCount          @ ��             �����������������������������  :field "Summary" 1006 of card "frameCount property" 26752           @ ��           #    :1  Reports the number of frames in an animated GIF image.          @ ��             �����������������������������  7field "main" 1008 of card "frameCount property" 26752           @ ��                2  get the frameCount of image          @ ��             H5  put the frameCount of image "Welcome Animation" into estNumberOfSecs          @ ��            7 K8  Use the frameCount property to determine the length of a GIF animation.          @ ��            : :11  The frameCount of an image is a non-negative integer.          @ ��            , A16  If the image is not an animated GIF, its frameCount is zero.        -  @ ��     -      2  �����������������������������  ;field "See Also" 1009 of card "frameCount property" 26752           @ ��           $    t1  constantMask property, currentframe property, filename property, palindromeframes property, repeatCount property        !  @ ��     !      & (  @ ��     N      S   �����������������������������  6field "Word" 1003 of card "frameRate property" 26753           @ ��                1  frameRate          @ ��             �����������������������������  9field "Summary" 1006 of card "frameRate property" 26753           @ ��           #    A1  Specifies the delay between frames when playing a video clip.          @ ��           $  �����������������������������  6field "main" 1008 of card "frameRate property" 26753           @ ��                /2  set the frameRate of videoClip to timeDelay          @ ��             +5  set the frameRate of videoClip 1 to 100          @ ��             @8  Use the frameRate property to speed up or slow down a movie.          @ ��            / =11  The frameRate of a video clip is a non-negative integer.          @ ��            / T13  By default, the frameRate property of newly created video clips is set to zero.          @ ��            : �16  The frameRate is the number of milliseconds to wait between frames. If the frameRate is zero, Revolution uses the frame rate built into the movie.          @ ��            3  @ ��     @      E 
  @ ��     O      T "  @ ��     v      {  �����������������������������  :field "See Also" 1009 of card "frameRate property" 26753           @ ��           $    K1  dontRefresh property, frameCount property, play command, scale property          @ ��            , �����������������������������  :field "See Also" 1009 of card "imageData property" 26835     �1  alphaData property, crop command, filename property, flip command, maskData property, revVideoframeImage function, rotate command, templateImage keyword        a  @ ��     a      f 5 �����������������������������  =field "Word" 1003 of card "palindromeframes property" 27125         %  @ ��     %      *    1  palindromeframes          @ ��             �����������������������������  =field "main" 1008 of card "palindromeframes property" 27125         %  @ ��     %      *    72  set the palindromeframes of image to {true | false}          @ ��             <5  set the palindromeframes of image "Construction" to true          @ ��            ! ]8  Use the palindromeframes property to change the way an animated GIF image repeats itself.          @ ��            B 711  The palindromeframes of an image is true or false.          @ ��             W13  By default, the palindromeframes property of newly created images is set to false.          @ ��           # 316  An animated GIF image can be set to loop over and over, instead of playing the animation once and then stopping. If the palindromeframes property is set to true, the image plays forward, then plays backward from the end, then plays forward again, and so on.        �  @ ��     �      � z �18  If the palindromeframes is false, the image plays from the beginning to the end, then skips back to the beginning to start the next loop.          @ ��            s �20  If the contents of the image is not an animated GIF, or the image's repeatCount is zero, the setting of the palindromeframes property has no effect.        z  @ ��     z        �����������������������������  Afield "See Also" 1009 of card "palindromeframes property" 27125         )  @ ��     )      .    X1  currentframe property, frameCount property, frameRate property, repeatCount property        
  @ ��     
         @ ��              @ ��     /      4 # �����������������������������  7field "See Also" 1009 of card "paused property" 27136     �1  currentTime property, duration property, looping property, play command, revGoToframePaused command, start command, stop command        S  @ ��     S      X + �����������������������������  0field "main" 1008 of card "play command" 27149    �30  To pause a movie, use the play pause form. Continue playing with play resume. You can move one frame backward or forward with the play step form. If you use one of these commands with a clip that is not currently playing, the result function returns "videoClip is not playing". If the clip is a sound, these forms simply play the sound, ignoring the words "pause", "resume", or "step".        c  @ ��     c      h �����������������������������  4field "See Also" 1009 of card "play command" 27149    P1  beep command, currentTime property, frameCount property, frameRate property, import command, movie function, playDestination property, playLoudness property, playRate property, playStopped message, prepare command, record sound command, revPlayAnimation command, sound function, start command, stop command, videoClipPlayer property        '  @ ��     '      ,   @ ��     <      A �����������������������������  7field "See Also" 1009 of card "prepare command" 27174     41  frameRate property, movie function, play command          @ ��            + �����������������������������  <field "See Also" 1009 of card "repeatCount property" 27252     [1  currentframe property, frameCount property, looping property, palindromeframes property        
  @ ��     
         @ ��            ,  @ ��     K      P 
 �����������������������������  7field "Word" 1003 of card "startframe property" 27427            @ ��            %    1  startframe          @ ��       �����������������������������  :field "Summary" 1006 of card "startframe property" 27427         #  @ ��     #      (    ?1  The startframe property is not implemented and is reserved.          @ ��            - �����������������������������  ;field "See Also" 1009 of card "startframe property" 27427         $  @ ��     $      )    A1  currentframe property, endframe property, frameCount property        
  @ ��     
         @ ��           "   @ ��     -      2  �����������������������������  4field "See Also" 1009 of card "stop command" 27436     �1  currentTime property, movie function, play command, playDestination property, playStopped message, revGoToframePaused command, revStopAnimation command, revStopPreviewingVideo command, revStopRecordingVideo command, sound function, start command        m  @ ��     m      r �         	`    @   " 
  �  	           �              in   � Kartensuche �E�p�on mouseUp
  Global BID, Karte,BName
  put the name of the topstack into SName
  put the groupnames of the current cd of stack SName into GroupList
  if BName is among the lines of GroupList then
    set the StackKarte of me to the ID of the current cd of stack SName
  else
    repeat
      lock screen
      lock messages
      go to next card of stack Sname
      put the groupnames of the current cd of stack SName into GroupList
      if BName is among the lines of GroupList then
        set the StackKarte of me to the ID of the current cd of stack SName
        set the StackKartenName of me to the name of the current cd of stack SName
        exit repeat
      end if
    end repeat
  end if
end mouseup
     �  4 � f    StackKartenName  card "Stack Externals"Stackkarte  1180         	     
  � lastsearch 	          � � E           last search:  0fields on all cards of stack "fwTranscriptDict" 
  � 	topstack          ��  � +           of stack "fwTranscriptDict" 
    	           �              on 
   InvolvedCards  +h         # � "         � 16 
   card-cards 	          S � H            cards   	 read information �E�x   {on mouseUp
  set the scroll of fld "information" to 0
  show fld "Information" with visual effect scroll left
end mouseUp
   ����33     �  p          	        'find string in all scripts of controls �e�x  Fon mouseUp
  global IDZahl, Suchstring, Own
  
  put the number of cards of the topstack into fld "Restzahl"
  put "cards remaining" into fld "LegendRemaining"
  put "fields" into fld "field-fields"
  put "cards" into fld "card-cards"
  put 0 into fld "gFundZahl"
  put 0 into fld "involvedControls" of cd 1 of stack Own
  put 0 into fld "involvedCards" of cd 1 of stack Own
  put empty into Ergebnisliste
  hide btn "Stackhoehe" of cd 1 of stack Own
  put the topleft of stack Own into Ecke
  lock screen
  set the height of stack Own to 314
  set the topleft of this stack to Ecke
  unlock screen
  
  set the label of btn Stackhoehe of cd 1 of stack Own to "show full text of field"
  if the Oldstring of this cd  is not empty then
    put the Oldstring of this cd  into Such
  end if
  put the loc of stack Own into Ort
  add 80 to item 1 of Ort
  set the NewLoc of stack "ask dialog" to Ort
  ask "" with Such titled "Type Searchstring"
  wait 1 millisecond
  put it into Suchstring
  lock screen
  show fld "reminder"
  hide fld "reminder"
  unlock screen
  
  
  # put empty into dialogdata
  # # choose browse tool
  # modal "revFragen"
  # lock screen
  # wait 1 milliseconds
  # put dialogdata into Suchstring
  if Suchstring is empty then exit to Metacard
  put 0 into gFundZahl
  put the number of cards of the topstack into KZahl
  set the startvalue of scrollbar 1 to 0
  set the endvalue of scrollbar 1 to KZahl
  put 0 into ScrollZahl
  put (KZahl + 1) into K
  unlock screen
  repeat for KZahl times   # cards
    put empty into Feldergebnis
    add 1 to Scrollzahl
    subtract 1 from K
    put the number of fields of card K of the topstack into Zahl
    put the ID of card K of the topstack into KID
    put the name of card K of the topstack into KName
    put the name of the topstack into SName
    # set the lockmessages to true
    # go to card ID KID of stack SName
    repeat with i =  Zahl down to 1   # fields
      put empty into Ergebnis
      put field i of card K of the topstack into GesuchtText
      put the name of field i of card K of the topstack into Objektname
      put the ID of field i of card K of the topstack into ObjektID
      put the vis of field i of card K of the topstack into ObjektVis
      if ObjektVis is false then
        put "(hidden field)" into sichtbar
      else
        put empty into sichtbar
      end if
      put 0 into BuchSt
      put 1 into Stelle
      put 0 into skip
      repeat until Stelle is 0  # lines
        put lineoffset(Suchstring,Gesuchttext,skip) into Stelle
        if Stelle <> 0 then
          add Stelle to BuchST
          put Buchst&"  "&line BuchSt of GesuchtText into Gefunden
          put Return&Gefunden after last line of Ergebnis
          add 1 to gFundZahl # found lines
        end if
        add Stelle to skip
      end repeat  # end lines
      if Ergebnis is not empty then
        put Ergebnis&CR before line 1 of Ergebnisliste
        put Objektname&&ObjektID&&"of"&&KName&&KID&&sichtbar&CR before line 1 of Ergebnisliste
        add 1 to fld "involvedcontrols" of cd 1 of stack Own
        put "�����������������������������"&CR before line 1 of Ergebnisliste
        put true into Feldergebnis
      end if
    end repeat # end fields
    if FeldErgebnis is not empty then
      add 1 to fld "involvedcards" of cd 1 of stack Own
    end if
    put  K - 1 into Restzahl
    put Restzahl into fld "Restzahl" of cd 1 of stack Own
    set the thumbpos of scrollbar 1 of cd 1 of stack Own to Scrollzahl
    put gFundzahl into fld "gFundzahl" of cd 1 of stack Own
  end repeat # end cards
  delete line 1 of Ergebnisliste
  go to card 1 of stack Own
  put Ergebnisliste into fld "Ergebnis" of cd 1 of stack Own
  put "last search:"&CR& "fields on all cards of"&&SName \
      into fld "lastsearch" of cd 1 of stack Own
  if field "involvedcontrols" = 1 then
    put "field" into fld "field-fields"
  end if
  if field "involvedcards" = 1 then
    put "card" into fld "card-cards"
  end if
  set the Oldstring of this card  to Suchstring
  send "mouseup" to btn "colorize replace" of cd 1 of stack Own
  set the linkvisitedcolor of stack Own to the linkvisitedcolor of the topstack
  set the linkhilitecolor of stack Own to the linkhilitecolor of the topstack
  set the underlinelinks of stack Own to the underlinelinks of the topstack
  set the linkcolor of stack Own to the linkcolor of the topstack
  
end mouseUp
     �   �    
Oldstring  DEFAULTSTACK search current topstack           cREVGeneral    scriptChecksum  YZ%����YF�revUniqueID  977133635490
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 628 to 627script   	        find and hilite �E�p�on mouseUp
  global CardID,Suchstring, Own
  put the number of fields of the current card of the topstack into Zahl
  put the number of chars of Suchstring into SuchCharZahl
  
  
  put the short name of the topstack into SName
  
  go to card ID CardID of stack SName
  repeat with i =  1 to Zahl  # fields
    put empty into Ergebnis
    #  put field i of the current card of the topstack into GesuchtText
    
    
    put 0 into BuchSt
    put 1 into Stelle
    put 0 into skip
    repeat until Stelle is 0  # offset
      put offset(Suchstring, field i of the current card of the topstack,skip) into Stelle
      # put offset(Suchstring,Gesuchttext,skip) into Stelle
      if Stelle <> 0 then
        
        add Stelle to BuchST
        
        put Buchst + (SuchCharZahl - 1) into BuchstEnde
        
        #  put the ID of the current card of the topstack into Karte
        #  put char Buchst to BuchstEnde of field i of card ID Karte of the topstack&CR after last line of Ergebnis
        set the textcolor of  char Buchst to BuchstEnde of field i of  card  ID CardID of stack SName to "red"
      end if
      add Stelle to skip
    end repeat  # end offset
    
  end repeat # end fields
  
  
  
end mouseUp
       �  m          	        hilite in fulltext �E�p�on mouseUp
  global CardID,Suchstring, Own,FieldID,StackNeu
  # put the number of fields of the current card of the topstack into Zahl
  put the number of chars of Suchstring into SuchCharZahl
  put the short name of the topstack into SName
  # go to card ID CardID of stack SName
  put empty into Ergebnis
  put field ID FieldID of the current card of stack StackNeu into GesuchtText
  # put field ID FieldID of the current card of the topstack into GesuchtText
  
  set htmltext of field "fulltext" of cd 1 of stack Own to the htmltext of fld ID fieldID of card ID CardID of stack Stackneu
  put the htmltext of fld ID fieldID of card ID CardID of stack Stackneu into GLOHtml
  #=====================
  put  fld "fulltext" of cd 1 of stack Own into GesuchtText
  # put the htmltext of fld "fulltext" of cd 1 of stack Own into GesuchtText
  # if Gesuchttext is not empty then
  # replace Suchstring with "<FONT color=#FF0000>"&Suchstring&"</FONT>" in GesuchtText
  # set the htmltext of fld "fulltext" of cd 1 of stack Own to gesuchttext
  # end if
  
  #=====================
  put 0 into BuchSt
  put 1 into Stelle
  put 0 into skip
  repeat until Stelle is 0  # offset
    put offset(Suchstring, Gesuchttext,skip) into Stelle
    if Stelle <> 0 then
      add Stelle to BuchST
      put Buchst + (SuchCharZahl - 1) into BuchstEnde
      set the textcolor of  char Buchst to BuchstEnde of field "fulltext" of cd 1 of stack Own  to "red"
    end if
    add Stelle to skip
  end repeat  # end offset
end mouseUp
        �  v          	        set toplevel �E�p�


on mouseUp
  put the stacks into StackList
  # put "Topsearch.mc/topsearch2.mc/mctools.mc/mcHome.mc" into NegativeList
  put the number of lines of stacklist into Zahl
  set the itemdel to "/"
  repeat with i = Zahl down to 1
    put last item of line i of stacklist into line i of stacklist
    put line i of stacklist into topfile
    #  if line i of stacklist is among the items of NegativeList then delete line i of stacklist
    if char 1 to 2 of topfile is "mc" or char 1 to 3 of topfile is "rev" or "topsearch" is in topfile then
      delete line i of stacklist
    end if
  end repeat
  
  put line 1 of stacklist into SName
  if there is a stack SName then
    set the cantmodify of stack SName to false
  end if
  
end mouseUp
          T          	        Stackhoehe �e#x  �on mouseUp
  put the topleft of this stack into Ecke
  put the height of this stack into AltHoehe
  put AltHoehe into Neuhoehe
  if neuhoehe is 314 then
    add 200 to Neuhoehe
    set the label of me to "close full text of field"
  else
    subtract 200 from Neuhoehe
    set the label of me to "show full text of field"
  end if
  lock screen
  set the height of this stack to Neuhoehe
  set the topleft of this stack to Ecke
end mouseUp
   ������    �  |  show full text of field          	     
   	fulltext  �	`       E �        � Syntax:     
    !set the style of object to style                             
Examples:     
   	 ,set the style of card button 3 to rectangle        +   Usage:     
    9Use the style property to set an object's specific type.            
         +   Value:     
    $The style of an object is a string.            
        	    
Comments:     
   	 RThe possible settings of an object's style property depend on the kind of object.        %    
 %       * '   /The style of a button is one of the following:            
        	 % E	* standard: the standard button for the current lookAndFeel setting           
         &    
 1       <  K	* transparent: no border; name is displayed but background is transparent           
         < B	* opaque: background is the opaque backgroundColor of the button           
        	     
 $       3  @	* rectangle: opaque rectangular or square button with a border           
  	       3 G	* roundRect: opaque rectangular or square button with rounded corners           
  	       : B	* shadow: opaque rectangular or square button with a drop shadow           
        	 8 A	* menu: a menu whose appearance is set by the menuMode property           
         (    
 /       7 	 &	* checkbox: a checkbox option button        @ ��     red    	* radioButton: a radio button    �The style of a button interacts with certain other properties. For example, setting the opaque of a standard button to false sets its style to "transparent".            
        	 O    
 X       ^ (    
 �       �    .The style of a field is one of the following:            
        	 $ K	* transparent: no border; text is displayed but background is transparent           
         < A	* opaque: background is the opaque backgroundColor of the field           
        	     
 $       3  )	* rectangle: opaque field with a border           
  	        +	* shadow: opaque field with a drop shadow           
        	 ! 5	* scrolling: opaque field with a vertical scrollbar    IThe style of a graphic determines its shape and is one of the following:            
        	 ? 	* curve: a curved line           
          	* line: a straight line           
          !	* oval: an oval or circle shape           
          '	* polygon: an irregular polygon shape           
        
  *	* rectangle: a rectangle or square shape           
  	        $	* regular: a regular polygon shape           
        
  ?	* roundRect: a rectangle or square shape with rounded corners           
  	       2   2The style of a scrollbar is one of the following:            
        	 ( #	* scrollbar: a standard scrollbar  ,	* scale: a "bead on a wire" slider control  ,	* progress: a sliding progress bar display    �Vertical scale and progress scrollbars always reflect the current lookAndFeel setting. Horizontal scale and progress scrollbars use the Motif look and feel, unless the lookAndFeel is set to "Appearance Manager".        B    
 B       M [    
 �       �     JThe style of a stack determines its behavior and is one of the following:            
        	 @ 	* topLevel: editable window  M	* modeless: modeless dialog box, cannot be edited, can use only Browse tool  5	* modal: modal dialog box, can use only Browse tool  R	* palette: palette window, cannot be resized or edited, can use only Browse tool            	`    @ F  � 
   cover  	`  ������ gray   ����8C        �          Transcript2 �E�p�
on mouseUp
  global IDZahl, Suchstring, Own
  # if there is a stack "revdocslanguagereference" then
  # toplevel "revdocslanguagereference"
  # set the cantmodify of stack "revdocslanguagereference" to false
  # else
  # answer "Transcript Dictionary is not accessible."
  # exit to Metacard
  # end if
  # put the number of cards of the topstack into fld "Restzahl"
  # put "cards remaining" into fld "LegendRemaining"
  # put "fields" into fld "field-fields"
  # put "cards" into fld "card-cards"
  # put 0 into fld "gFundZahl"
  # put 0 into fld "involvedControls" of cd 1 of stack Own
  # put 0 into fld "involvedCards" of cd 1 of stack Own
  # hide btn "Stackhoehe" of cd 1 of stack Own
  # put the topleft of stack Own into Ecke
  # lock screen
  # set the height of stack Own to 314
  # set the topleft of this stack to Ecke
  # unlock screen
  # set the label of btn Stackhoehe of cd 1 of stack Own to "show full text of field"
  
  # put empty into Ergebnisliste
  # # put empty into dialogdata
  # # #  choose browse tool
  # # modal "revFragen"
  # # wait 3 milliseconds
  # # put dialogdata into Suchstring
  # if the Oldstring of me is not empty then
  # put the Oldstring of me into Such
  # end if
  # put the loc of stack Own into Ort
  # add 80 to item 1 of Ort
  # set the NewLoc of stack "ask dialog" to Ort
  
  # ask "" with Such titled "Type Searchstring"
  # wait 1 millisecond
  # put it into Suchstring
  # if Suchstring is empty then exit to Metacard
  #===============================
  put CR&CR&"Searching for"&&Quote&Suchstring&Quote&&"in Transcript Dictionary."&CR&CR&\
      "Wait a short moment"&CR&\
      "and watch the"&&Quote&"state of the process"&Quote&&"information"&CR&\
      "on the left."\
      into fld "reminder"
  #===============================
  set the textcolor of word 3 of fld "reminder" to red
  show fld "reminder"
  put 0 into gFundZahl
  put the number of cards of the topstack into KZahl
  set the startvalue of scrollbar 1 to 0
  set the endvalue of scrollbar 1 to KZahl
  put 0 into ScrollZahl
  put (KZahl + 1) into K
  close stack "ask dialog"
  repeat for KZahl times   # cards
    put empty into Feldergebnis
    add 1 to Scrollzahl
    subtract 1 from K
    put the number of fields of card K of the topstack into Zahl
    put the ID of card K of the topstack into KID
    put the name of card K of the topstack into KName
    put the name of the topstack into SName
    # set the lockmessages to true
    # go to card ID KID of stack SName
    repeat with i =  Zahl down to 1   # fields
      put empty into Ergebnis
      put field i of card K of the topstack into GesuchtText
      put the name of field i of card K of the topstack into Objektname
      put the ID of field i of card K of the topstack into ObjektID
      put 0 into BuchSt
      put 1 into Stelle
      put 0 into skip
      repeat until Stelle is 0  # lines
        put lineoffset(Suchstring,Gesuchttext,skip) into Stelle
        if Stelle <> 0 then
          add Stelle to BuchST
          put Buchst&"  "&line BuchSt of GesuchtText into Gefunden
          put Return&Gefunden after last line of Ergebnis
          add 1 to gFundZahl # found lines
        end if
        add Stelle to skip
      end repeat  # end lines
      if Ergebnis is not empty then
        put Ergebnis&CR before line 1 of Ergebnisliste
        put Objektname&&ObjektID&&"of"&&KName&&KID&CR before line 1 of Ergebnisliste
        add 1 to fld "involvedcontrols" of cd 1 of stack Own
        put "�����������������������������"&CR before line 1 of Ergebnisliste
        put true into Feldergebnis
      end if
    end repeat # end fields
    if FeldErgebnis is not empty then
      add 1 to fld "involvedcards" of cd 1 of stack Own
    end if
    put  K - 1 into Restzahl
    put Restzahl into fld "Restzahl" of cd 1 of stack Own
    set the thumbpos of scrollbar 1 of cd 1 of stack Own to Scrollzahl
    put gFundzahl into fld "gFundzahl" of cd 1 of stack Own
  end repeat # end cards
  delete line 1 of Ergebnisliste
  go to card 1 of stack Own
  put Ergebnisliste into fld "Ergebnis" of cd 1 of stack Own
  put "last search:"&CR& "fields on all cards of"&&SName \
      into fld "lastsearch" of cd 1 of stack Own
  if field "involvedcontrols" = 1 then
    put "field" into fld "field-fields"
  end if
  if field "involvedcards" = 1 then
    put "card" into fld "card-cards"
  end if
  set the Oldstring of me to Suchstring
  send "mouseup" to btn "colorize replace" of cd 1 of stack Own
  hide fld "reminder"
end mouseUp
       q  �          	     
   	reminder  h         � b        �     6The search in the Transcript Dictionary is under way.    Wait a short moment  1and watch the "state of the process" information  on the left.         search Rev Documentation ��}  Global RevDocName,Own
on mousedown
  hide btn "Stackhoehe" of cd 1 of stack Own
  put the topleft of stack Own into Ecke
  lock screen
  set the height of stack Own to 314
  set the topleft of this stack to Ecke
  unlock screen
  set the label of btn Stackhoehe of cd 1 of stack Own to "show full text of field"
end mousedown

on menupick Wahl
  set the itemDel to "|"
  switch item 1 of Wahl
  case "Transcript Dictionary"
    put "revdocslanguagereference" into RevDocName
    break
  case "Encyclopedia"
    put "revdocsAbout" into RevDocName
    break
  case "Documentation Mainstack"
    put "revdocs" into RevDocName
    break
  case "How To"
    put "revdocshow" into RevDocName
    break
  case "Cookbook"
    put "revdocsCookbook" into RevDocName
    break
  case "Glossary"
    put "revdocsglossary" into RevDocName
    break
  case "Using the Free Edition"
    put "revdocsStarterKit" into RevDocName
    break
  case "Tutorials"
    put "revdocsGetting Started Tutorial" into RevDocName
    break
  case "Troubleshooting"
    put "revdocsWhy" into RevDocName
    break
  case "Menu Reference"
    put "revdocsmenureference" into RevDocName
    break
  case "Tips"
    put "revdocsTips" into RevDocName
    break
    
  end switch
  send "mouseup" to btn "search Docs2"
end menupick
   ������     ! �    �Transcript Dictionary
Encyclopedia
Documentation Mainstack
How To
Cookbook
Glossary
Using the Free Edition
Tutorials
Tips
Troubleshooting
Shortcuts
Menu Reference       	        search Docs2 �E�x  W
on mouseUp
  global IDZahl, Suchstring, Own,RevDocName
  if there is a stack RevDocName then
    put the width of stack RevDocName into Breite
    put the topright of stack Own into Ecke
    put the loc of stack Own into Ort
    put (item 1 of Ecke + Breite/2+ 5) into item 1 of RevLoc
    put item 2 of Ort into item 2 of Revloc
    set the loc of stack RevDocName to RevLOc
    #  set the cantmodify of stack Revdocname to false
    toplevel RevDocName
    
    put the width of stack RevDocName into Breite
  else
    answer "RevDocs are not accessible."
    exit to Metacard
  end if
  put the number of cards of the topstack into fld "Restzahl"
  put "cards remaining" into fld "LegendRemaining"
  put "fields" into fld "field-fields"
  put "cards" into fld "card-cards"
  put 0 into fld "gFundZahl"
  put 0 into fld "involvedControls" of cd 1 of stack Own
  put 0 into fld "involvedCards" of cd 1 of stack Own
  # hide btn "Stackhoehe" of cd 1 of stack Own
  # put the topleft of stack Own into Ecke
  # lock screen
  # set the height of stack Own to 314
  # set the topleft of this stack to Ecke
  # unlock screen
  # set the label of btn Stackhoehe of cd 1 of stack Own to "show full text of field"
  
  put empty into Ergebnisliste
  # put empty into dialogdata
  # #  choose browse tool
  # modal "revFragen"
  # wait 3 milliseconds
  # put dialogdata into Suchstring
  if the Oldstring of this cd  is not empty then
    put the Oldstring of this cd  into Such
  end if
  
  put the loc of stack Own into Ort
  add 80 to item 1 of Ort
  set the NewLoc of stack "ask dialog" to Ort
  
  ask "search stack"&&Quote&RevDocName&Quote with Such titled "Type Searchstring"
  wait 1 millisecond
  put it into Suchstring
  if Suchstring is empty then exit to Metacard
  # put CR&CR&"Searching for"&&Quote&Suchstring&Quote&&"in Transcript Dictionary."&CR&CR&\
      # "Wait a short moment"&CR&\
      # "and watch the"&&Quote&"state of the process"&Quote&&"information"&CR&\
      # "on the left."\
      #  into fld "reminder"
  #===============================
  # set the textcolor of word 3 of fld "reminder" to red
  lock screen
  show fld "reminder"
  hide fld "reminder"
  unlock screen
  # send "mouseup" to btn "Transcript2"
  put 0 into gFundZahl
  put the number of cards of the topstack into KZahl
  set the startvalue of scrollbar 1 to 0
  set the endvalue of scrollbar 1 to KZahl
  put 0 into ScrollZahl
  put (KZahl + 1) into K
  close stack "ask dialog"
  repeat for KZahl times   # cards
    put empty into Feldergebnis
    add 1 to Scrollzahl
    subtract 1 from K
    put the number of fields of card K of the topstack into Zahl
    put the ID of card K of the topstack into KID
    put the name of card K of the topstack into KName
    put the name of the topstack into SName
    # set the lockmessages to true
    # go to card ID KID of stack SName
    repeat with i =  Zahl down to 1   # fields
      put empty into Ergebnis
      put field i of card K of the topstack into GesuchtText
      put the name of field i of card K of the topstack into Objektname
      put the ID of field i of card K of the topstack into ObjektID
      put 0 into BuchSt
      put 1 into Stelle
      put 0 into skip
      repeat until Stelle is 0  # lines
        put lineoffset(Suchstring,Gesuchttext,skip) into Stelle
        if Stelle <> 0 then
          add Stelle to BuchST
          put Buchst&"  "&line BuchSt of GesuchtText into Gefunden
          put Return&Gefunden after last line of Ergebnis
          add 1 to gFundZahl # found lines
        end if
        add Stelle to skip
      end repeat  # end lines
      if Ergebnis is not empty then
        put Ergebnis&CR before line 1 of Ergebnisliste
        put Objektname&&ObjektID&&"of"&&KName&&KID&CR before line 1 of Ergebnisliste
        add 1 to fld "involvedcontrols" of cd 1 of stack Own
        put "�����������������������������"&CR before line 1 of Ergebnisliste
        put true into Feldergebnis
      end if
    end repeat # end fields
    if FeldErgebnis is not empty then
      add 1 to fld "involvedcards" of cd 1 of stack Own
    end if
    put  K - 1 into Restzahl
    put Restzahl into fld "Restzahl" of cd 1 of stack Own
    set the thumbpos of scrollbar 1 of cd 1 of stack Own to Scrollzahl
    put gFundzahl into fld "gFundzahl" of cd 1 of stack Own
  end repeat # end cards
  delete line 1 of Ergebnisliste
  go to card 1 of stack Own
  put Ergebnisliste into fld "Ergebnis" of cd 1 of stack Own
  put "last search:"&CR& "fields on all cards of"&&SName \
      into fld "lastsearch" of cd 1 of stack Own
  if field "involvedcontrols" = 1 then
    put "field" into fld "field-fields"
  end if
  if field "involvedcards" = 1 then
    put "card" into fld "card-cards"
  end if
  set the Oldstring of this card to Suchstring
  send "mouseup" to btn "colorize replace" of cd 1 of stack Own
  hide fld "reminder"
  set the linkvisitedcolor of stack Own to the linkvisitedcolor of the topstack
  set the linkhilitecolor of stack Own to the linkhilitecolor of the topstack
  set the underlinelinks of stack Own to the underlinelinks of the topstack
  set the linkcolor of stack Own to the linkcolor of the topstack
end mouseUp
         �          	     
  
 Information  �x   Gon mouseUp
  hide me with visual effect reveal from right
end mouseUp
   ����ff     	��7        � [                                                             - click to close this field -  @ 	��     Red    Z  �This stack searches all visible and hidden fields on all cards of the current topstack or the stacks of the Revolution Documentation. The search routine uses the "lineOffset" function to search for *any* searchstring, which means it does not explicitly search for words or items. The searchstring "layer" would also display all lines that contain "player", so if you are searching only for "layer" press the spacebar once before typing "layer" into the dialog.        F @ ��     Red  F      V  @ ��     Red  l      �H   aThe stacks of the Revolution Documentation need not be open; they are then opened by the search.    {The results are listed with the searchstring colorized and the addresses of the found fields. Hidden fields are indicated.          @ ��     Red         , 2 @ ��     Red  ^      d  SClicking at the address brings up the card of the topstack with the found fields.    ^The clicked address line is then colorized green and a button "show full text of field" appears.This button allows to open a field at the bottom of the stack that displays the complete formatted text of the selected field  - again with all instances of the searchstring colorized. This may be especially helpful also when dealing with hidden fields.       O @ ��     Red O     U   %If several stacks are open, this search stack recognizes which of these stacks is the topstack when you perform a search. As the searchstring is stored in the dialog, you can quickly search several stacks for the same string when you make them the respective topstack by clicking at a stack.        	`    @ �� 5   a 
revFragen  �on preopenCard
  # set the width of stack "RevFragen" to 250
  # set the height of stack "RevFragen" to 100
  # put the mainstack of me into Ownstack
  #set the loc of this stack to the loc of  fld "Ergebnis" of cd 1 of stack "topsearch2" #Ownstack
 # select after text of fld "Eingabe" of cd 1 of  me
end preopenCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
  u         ������  ������ white ������  ������  �  �Q � d              Enter Searchstring:       U 
Helvetica  
 U 	Charcoal   U 	Charcoal   U 	Charcoal   U Arial   U Arial  cREVGeneral    
bookmarks   handlerList  (openCard
preOpenCard
closeCard
openStackscriptSelection  char 59 to 70prevHandler  	closeCardtempScript   script     � card id 1002   	P0on mouseUp
  if the short name of the target is "OK" then
    set the dialogData to field 1
    close  stack "revfragen"
  else
    set the dialogdata to empty
    close  stack "Revfragen"
  end if
end mouseUp

on returninfield
  click at the loc of btn "OK"
  close stack "Revfragen"
end returninfield
     �      � d     cREVGeneral    scriptChecksum  !%Gb�_E�Oo/}SB�
bookmarks   handlerList  �doresize
star
preOpenStack
keyDown
deleteKey
backspaceKey
deleteone
commandKeyDown
openField
resizeStack
returnInField
closeStackscriptSelection  char 1 to 0prevHandler  preOpenStacktempScript   script    cAPKGeneral    scriptChecksum  �X!�����zu(�ƀhandlerList  �doresize
star
preOpenStack
keyDown
deleteKey
backspaceKey
deleteone
commandKeyDown
openField
resizeStack
returnInField
closeStacktempScript   script    cAPKGeometryCache    order     _  \  ]  \ OK �L�p �# on mouseUp
  # set the feedback of this stack to "OK"
  # set the Eingabe of this stack to fld "Eingabe"
  # close this stack
# end mouseUp
     �  / @ 4              cREVGeneral    
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 1 to 10	  �   ] Cancel �D�x   `# on mouseUp
  # set the feedback of this stack to "Cancel"
  # close this stack
# end mouseUp
     �  � @ 6             	  � 
  _ Eingabe  �p �# on returninfield
# set the Eingabe of this stack to me
# set the feedback of this stack to "OK"
# close this stack
# end returninfield
     �    �                objects   a Ask Dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     � >�@ �   NewLoc   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999         Type Searchstring      U 
Helvetica   U 
helvetica   �    	P1on doresize
  local twidth, iwidth, bwidth
  put the width of this stack into twidth
  if the visible of button 1
  then put 48 into bwidth
  else put 16 into bwidth
  set the width of field 1 to twidth - (bwidth + 16)
  set the left of field 1 to bwidth
  set the width of field 2 to twidth - (bwidth + 16)
  set the left of field 2 to bwidth
  set the top of field 2 to the bottom of field 1
  set the top of button 1 to the height of field 1 div 2 - 8
  put (twidth - 120 ) div 3 into iwidth
  put iwidth into twidth
  set the default of button 2 to false
  repeat with i = 2 to the number of buttons
    set the left of button i to twidth
    set the bottom of button i to the height of this stack - 12
    add the width of button i + iwidth to twidth
  end repeat
  set the default of button 2 to true
end doresize

on star
  local tstring
  put empty into tstring
  repeat with i = 1 to the number of characters in field 3
    put "*" after tstring
  end repeat
  put tstring into field 2
end star

on preOpenStack
  local twidth, dtype, foffset
  set the itemDelimiter to numToChar(0)
  put word 2 of item 1 of the dialogData into dtype
  set the fieldmode of me to dtype
  if dtype is "plain" or dtype is "password" or dtype is "clear" then
    hide button 1
    put 0 into foffset
  else
    show button 1
    switch the lookAndFeel
    case "Motif"
      get the motifIcons of this stack
      break
    case "Macintosh"
    case "Appearance Manager"
      get the macintoshIcons of this stack
      break
    default
      get the windows95Icons of this stack
    end switch
    set the itemDelimiter to comma
    set the icon of button 1 to item itemOffset(dtype, "error,information,question,warning") of it
    set the itemDelimiter to numToChar(0)
    put 40 into foffset
  end if
  if item 2 of the dialogData is empty
  then set the title of this stack to space
  else set the title of this stack to item 2 of the dialogData
  put item 3 of the dialogData into field 1
  put max(the formattedWidth of field 1 + foffset + 24,\
      the formattedWidth of field 2 + foffset + 24, 320) into twidth
  set the width of this stack to twidth
  set the height of field 1 to the formattedHeight of field 1
  set the top of field 1 to 8
  set the height of this stack to (the height of field 1) + 100
  doresize
  if the fieldmode of me is "password" or the fieldmode of me is "clear" then
    put item 4 of the dialogData into field 3
    star
  else put item 4 of the dialogData into field 2
  set the dialogData to numToChar(0)
  set the itemDelimiter to comma
 if the NewLoc of this stack is not empty then set the loc of this stack to the NewLoc of this stack
  set the NewLoc of this stack to empty # initiates default behavior of "answer dialog" if you do not set "NewLoc" again before


end preOpenStack

on keyDown which
  local tpos
  if the name of the target contains "field" \
      and (the fieldmode of me is "password" or the fieldmode of me is "clear") then
    put the selectedChunk into tpos
    put which into character (word 2 of tpos) to (word 4 of tpos) of field 3
    star
    select after character (word 2 of tpos) of field 2
  else pass keyDown
end keyDown

on deleteKey
  if the fieldmode of me is "password" or the fieldmode of me is "clear"
  then deleteone
  else pass deleteKey
end deleteKey

on backspaceKey
  if the fieldmode of me is "password" or the fieldmode of me is "clear"
  then deleteone
  else pass backspaceKey
end backspaceKey

on deleteone
  local tpos
  put word 2 of the selectedChunk into tpos
  put empty into character (tpos - 1) of field 3
  star
  select before character (tpos - 1) of field 2
end deleteone

on commandKeyDown which
  if the fieldmode of me is "password" or the fieldmode of me is "clear"
  then
    local tpos
    switch which
    case "D"
      put word 2 of the selectedChunk into tpos
      put empty into character tpos of field 3
      star
      select before character tpos of field 1
      break
    case "H"
      deleteone
      break
    default
      pass commandKeyDown
    end switch
  else pass commandKeyDown
end commandKeyDown

on openField
  select the text of the target
end openField

on resizeStack
  doresize
end resizeStack

on returnInField
  click at the loc of button "OK"
end returnInField

on closeStack
  put empty into field 1
  put empty into field 2
  put empty into field 3
end closeStack
     �     @ �   
fieldmode  plain  a  �  _  \  ]  `
  �  �                          \ OK �L�p �on mouseUp
  switch the fieldmode of this card
  case "clear"
    get field 3
    break
  case "password"
    get mcencrypt(field 3)
    break
  default
    get field 2
    break
  end switch
  set the dialogData to it
  close this stack
end mouseUp
        B \ 4         	  �   ] Cancel �D�p +on mouseUp
  close this stack
end mouseUp
        � \ <         	  � 
  _  �`        (              
  `   
!`       b 8 |         �    a New Button �@@         $ (        	  �  