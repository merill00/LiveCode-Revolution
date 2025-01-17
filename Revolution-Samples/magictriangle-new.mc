#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  � MagicTriangle-New  `






























































on preopenstack
  set the windowshape of this stack to 1170
  #set the lookandfeel to Motif
  set the dontuseQTeffects to true
  set the decorations of this stack to empty
  set the loc of this stack to the screenloc
  go to cd 2 of this stack
  set the backdrop to 1169
  set the style of this stack to modeless
  set the cantmodify of this stack to true
  #  hide menubar
end preopenstack
on openstack
  wait 10 milliseconds
  visual effect stretch from center
  go to cd 1
  choose browse tool
  set the lookandfeel to Motif
  # if there is a stack "revmenubar" then
  # send "mouseup" to btn "hide GUI"
  # show btn "hide GUI"
  # show btn "show GUI"
  # end if
end openstack

on closestack
  # hide btn "hide GUI"
  # hide btn "show GUI"
  set the backdrop to none
  show menubar
end closestack
  u        Black ffffff  � � �  white ������  � � �  	darkgray   v�         Magic Triangle        W 
Helvetica   U 
Helvetica   U 
Helvetica   W 
Helvetica   W Arial   U 
Helvetica  
 U 
Helvetica   U 
Helvetica   W 
Helvetica   W 
Helvetica   U 
helvetica   U 	Antigoni   U Arial   U Arial  " U Arial   U Arial   W Arial   W 
helvetica   U Arial  
 U Arial   W Arial   W Arial   �    	P�
on preopencard
hide fld "Information"
hide fld "Information-History"
end preopencard
on openCard
  Global Hilfezaehler,HideMode
  put false into HideMode
  
  put 0 into Hilfezaehler
  send "mouseup" to btn "Felder zur�cksetzen"
  show btn "Hilfe"
  show btn "Hilfsberechnung"
  set the label of btn "Hilfsberechnung" to "compute sides" &&"("&Hilfezaehler&")"
  show btn "Hilfsberechnung"
end openCard
   ����  @     �  �  �  �  �  �  �  �  �  �  �  �  z  {  |  }  ~    �  �  �                           !  "  $  &  (  )  *  +  ,  i  l  n  o  p  q  u  �  �  �  �  �  �  �  �  �  �  �  �        m  s  �  �    r            y    	@      �    �  � Hintergrund �e�x  yon mouseUp
 hide fld "information"
hide fld "information-history"

  set the decorations of stack "answer dialog" to empty
  set the border of cd 1 of stack "answer dialog" to true
  # put "466" into word 109 of fld "answerscript"
  # set the script of cd 1 of stack "answer dialog" to fld "answerscript"
  
  answer "Choose backdrop:" with "triangles" or "blue" \
      or "black" or "no backdrop"
  if it is "no backdrop" then set the backdrop to none
  else if it is "black" then set the backdrop to black
  else if it is "triangles" then set the backdrop to 1169
  else if it is "blue" then set the backdrop to blue
end mouseUp
   ������ DarkSeaGreen1    ?� A  	backdrop          	     
   	Imageloc  !`         � �        � 272,68,1146  211,139,1147  155,215,1148  109,283,1149  217,284,1150  333,286,1151  434,286,1152  385,214,1153  333,140,1154  127,309  183,233  235,161  283,93  339,161  391,233  439,313  339,313  231,309   
   Plaetze  !`      .  |        � 80,400  130,400  180,400  230,400  280,400  330,400  380,400  430,400  480,400   
   ImageID  !`      � $ @ �        � 1146  1147  1148  1149  1150  1151  1152  1153  1154      	GROUPIDS �E�p �on mouseUp
put empty into fld "imageID"
  put the number of images of this card into Zahl
  repeat with i = 1 to Zahl
    put the ID of image i &Return after field "imageID"
  end repeat
end mouseUp
       � � Q          	        GROUPscripts �D�p �on mouseUp
  
  # repeat with i = 2 to 9
  # set the script of image i to the script of image 1
  # end repeat
  repeat with i = 1 to 9
    set the besetzt of image i to "nein"
    #set the Feld of image i to 0
  end repeat
end mouseUp
        �� Q          	  � 	        FieldScripts �E�ppon mouseUp
  # repeat with i = 1 to 9
    # set the backgroundcolor of fld Id (i+ 1035) to white
    repeat with i = 1 to 8
    set the script of field ID (i  + 1036) to  the script of field ID 1036
    # set the borderwidth of field ID (i  + 1036) to  the borderwidth of field ID 1036
    # set the topcolor of field ID (i  + 1036) to the topcolor of field ID 1036
    #set the bottomcolor of field ID (i  + 1036) to the bottomcolor of field ID 1036
    #set the threeD of fld ID (i +1036) to true
  end repeat
  # repeat with i = 1 to 9
  # set the bordercolor of field ID (i  + 1035) to white
  # end repeat
end mouseUp
        \ Q          	        Felder zur�cksetzen �e�x  �on mouseUp
  Global Hilfezaehler,Hidemode
  hide fld "information"
  hide fld "information-history"
  put 0 into fld "Zuege"
  put 0 into Hilfezaehler
  set the label of btn "Hilfsberechnung" to "compute sides" &&"("&Hilfezaehler&")"
  if Hidemode is false then show btn "Hilfsberechnung"
  repeat with i = 1 to 9
    move field ID (i  + 1035) to line i of field "Plaetze" without waiting
  end repeat
  lock screen
  hide field "Summe A"
  hide fld "Summe B"
  hide fld "Summe C"
  hide fld "Seite A"
  hide fld "Seite B"
  hide fld "Seite C"
  repeat with i = 1 to 9
    set the besetzt of image ID ( i+1145) to "nein"
    set the Feld of image ID (i+1145) to 0
  end repeat
  send "mouseup" to btn "hide basis images"
end mouseUp
   � � �  DarkSeaGreen1  �� X  3set back numbers and repeat with the same sequence  reset number fields          	     
   Seite A            h � 8            side b 
   Seite B            �f H            side c 
   Seite C           � � <            side a 
   Summe B  h           j � 1         � 32 
    Summe C  h           �g /         � 32 
  ! Summe A  h          � � 0         � 0   " 
berechnen �E�p�on mouseUp
  put empty into SeiteA
  put the Feld of image ID 1009 into item 1 of SeiteA
  put the Feld of image ID 1012 into item 2 of SeiteA
  put the Feld of image ID 1015 into item 3 of SeiteA
  put the Feld of image ID 1018 into item 4 of SeiteA
  put sum(SeiteA) into field "Summe A"
  put empty into Seiteb
  put the Feld of image ID 1018 into item 1 of Seiteb
  put the Feld of image ID 1021 into item 2 of Seiteb
  put the Feld of image ID 1024 into item 3 of Seiteb
  put the Feld of image ID 1027into item 4 of Seiteb
  put sum(Seiteb) into field "Summe B"
  put empty into Seitec
  put the Feld of image ID 1027 into item 1 of Seitec
  put the Feld of image ID 1030 into item 2 of Seitec
  put the Feld of image ID 1033into item 3 of Seitec
  put the Feld of image ID 1009 into item 4 of Seitec
  put sum(Seitec) into field "Summe C"
  lock screen
  show field "Summe A"
  show fld "Summe B"
  show fld "Summe C"
  show fld "Seite A"
  show fld "Seite B"
  show fld "Seite C"
end mouseUp
       �  \          	       $ quit �E�pMon mouseUp
 hide fld "information"
hide fld "information-history"

  set the decorations of stack "answer dialog" to empty
  set the showborder of cd 1 of stack "answer dialog" to true
  set the threeD of cd 1 of stack "answer dialog" to true
  
  set the borderwidth of cd 1 of stack "answer dialog" to 6
  # put "468" into word 109 of fld "answerscript"
  # set the script of cd 1 of stack "answer dialog" to fld "answerscript"
  
  answer "Do you want to stop exercising?" with "Yes" or "No"
  if it is "Yes" then
    set the backdrop to none
    close this stack
  end if
end mouseUp
   ����       � %          	       & 	grouploc �E�p �on mouseUp
  repeat with i = 1 to 9
    put the loc of image ID (i+1145) &Return after fld "imageloc"
  end repeat
  repeat with j = 1 to 9
    put the ID of image ID (j+1145)  into item 3 of line j of fld "imageloc"
  end repeat
end mouseUp
       �W P          	       ( Hilfsberechnung �e�x  on mouseUp
  Global Hilfezaehler
  hide fld "information"
  hide fld "information-history"
  
  add 1 to Hilfezaehler
  set the label of me to "compute sides" &&"("&Hilfezaehler&")"
  if Hilfezaehler > 5 then
    hide me
    set the layer of fld "keineHilfsberechnung" to top
    show fld "keineHilfsberechnung"
    wait 6 seconds
    hide fld "keineHilfsberechnung"
    exit mouseup
  end if
  put 0 into Zaehler
  put empty into Berechnung
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      set the Feld of image ID (j + 1145)  to 0
      if the loc of field ID (i + 1035) is the loc of image ID (j + 1145)  then
        add 1 to Zaehler
        put the ID of fld ID (i  + 1035) into item 1 of Zeile
        put the ID of image ID (j + 1145) into item 2 of Zeile
        put Zeile&Return after Berechnung
      end if
    end repeat
  end repeat
  -- in der doppelten Repeat-Schleife wird festgestellt, auf welche Kreise Zahlen plaziert
  -- wurden
  put the number of lines of Berechnung into Anzahl
  repeat with i = 1 to Anzahl
    put item 1 of line i of Berechnung into FeldID
    put item 2 of line i of Berechnung into imageID
    set the Feld of image ID imageID to fld ID FeldID
  end repeat
  -- die Custom-Property "Feld" der Kreise wird auf den Zahlenwert des Zahlenfeldes
  -- gesetzt, wenn ein Zahlenfeld �ber den Kreis plaziert ist
  --======== unten = Berechnung der Seitensummen ==============================
  put empty into SeiteB
  put the Feld of image ID 1146 into item 1 of SeiteB
  put the Feld of image ID 1147 into item 2 of SeiteB
  put the Feld of image ID 1148 into item 3 of SeiteB
  put the Feld of image ID 1149 into item 4 of SeiteB
  beep
  put sum(SeiteB) into field "Summe B"
  put empty into SeiteC
  put the Feld of image ID 1146 into item 1 of SeiteC
  put the Feld of image ID 1154 into item 2 of SeiteC
  put the Feld of image ID 1153 into item 3 of SeiteC
  put the Feld of image ID 1152into item 4 of SeiteC
  put sum(SeiteC) into field "Summe C"
  put empty into SeiteA
  put the Feld of image ID 1152 into item 1 of SeiteA
  put the Feld of image ID 1151 into item 2 of SeiteA
  put the Feld of image ID 1150 into item 3 of SeiteA
  put the Feld of image ID 1149 into item 4 of SeiteA
  put sum(SeiteA) into field "Summe A"
  lock screen
  show field "Summe A"
  show fld "Summe B"
  show fld "Summe C"
  # if fld "Summe A" = fld "Summe B" and fld "Summe A" = fld "Summe C"  and fld "Summe A" <> 0 and Zaehler is 9 then
  # repeat with i = 1 to 9
  # set the backgroundcolor of graphic (i * 2) to red
  # end repeat
  # end if
  show fld "Seite A"
  show fld "Seite B"
  show fld "Seite C"
  unlock screen
  wait 3 seconds
  lock screen
  hide field "Summe A"
  hide fld "Summe B"
  hide fld "Summe C"
  hide fld "Seite A"
  hide fld "Seite B"
  hide fld "Seite C"
end mouseUp
   � � �  DarkSeaGreen1  N� Y  :Shows the current sums of the sides, but only five times!  compute sides (2)          	     
  ) berechnung  !`       	 	 Y �        � 
1038,1146     * Besetzt �E�p�on mouseUp
  put empty into Berechnung
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      set the besetzt of image ID (j+1145) to "nein"
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        put the ID of fld ID (i  + 1035) into item 1 of Zeile
        put the ID of image ID ( j+ 1145) into item 2 of Zeile
        put Zeile&Return after Berechnung
      end if
    end repeat
    put Berechnung into fld "Berechnung"
  end repeat
  put the number of lines of Berechnung into Anzahl
  repeat with i = 1 to Anzahl
    put item 1 of line i of Berechnung into FeldID
    put item 2 of line i of Berechnung into imageID
    set the Besetzt of image ID imageID to "ja"
  end repeat
end mouseUp
       � 2 d #         	       + set number sequence ��}  hon mousedown
  hide fld "information"
  hide fld "information-history"
end mousedown

on menupick which
  Global Hilfezaehler,Schritt,StartN,Diff,HideMode
  put 0 into Hilfezaehler
  set the label of btn "Hilfsberechnung" to "compute sides" &&"("&Hilfezaehler&")"
  show btn "Hilfsberechnung"
  set the decorations of stack "ask dialog" to empty
  set the showborder of cd 1 of stack "ask dialog" to true
  set the threeD of cd 1 of stack "ask dialog" to true
  set the borderwidth of cd 1 of stack "ask dialog" to 6
  set the icon of button 1 of cd 1 of stack "ask dialog" to 374
  set the name of btn 3 of cd 1 of stack "ask dialog" to "Cancel"
  set the width of btn "Cancel" of cd 1 of stack "ask dialog" to 76
  switch which
  case "choose numbers"
    put false into HideMode
    show btn "Hilfe"
    show btn "Hilfsberechnung"
    
    ask "Enter a number for the stepwidth of the number sequence:"
    if it is not empty then
      put it into Schritt
      ask "Enter a number as a starting point:"
      put it into StartN
      put Schritt into fld "Basis"
      put StartN - Schritt into Diff
    end if
    break
  case "random sequence"
    put false into HideMode
    
    show btn "Hilfe"
    show btn "Hilfsberechnung"
    put random(10) into Schritt
    put random(50) - 20 into StartN
    put Schritt into fld "Basis"
    put StartN - Schritt into Diff
    break
  case "random without help"
    put true into HideMode
    
    hide btn "Hilfe"
    
    hide btn "Hilfsberechnung"
    put random(10) into Schritt
    put random(50) - 20 into StartN
    put Schritt into fld "Basis"
    put StartN - Schritt into Diff
    break
    
  end switch
  # repeat with i = 1 to 9
    # put (i * Schritt)+ Diff into fld ID (i + 1035)
  # end repeat
 repeat with i = 1 to 9
    put (i * Schritt)+ Diff into line i of Zwischen #fld ID (i + 1035)
  end repeat
 repeat with i = 1 to 9
put the number of lines of Zwischen into Zahl
put random(Zahl) into Zufall
put line Zufall of Zwischen into fld ID (i + 1035)
delete line Zufall of Zwischen
  end repeat


  send mouseup to btn "Hilfe2"
  send mouseup to btn "Felder zur�cksetzen"
end menupick
   ������ DarkSeaGreen1   �� i  7choose start number and width of steps between numbers    3choose numbers
random sequence
random without help       	       , Hilfe �e�x  �on mousedown
 hide fld "information"
hide fld "information-history"

  lock screen
  set the layer of fld "Loesungen" to top
  show fld  "Loesungen"
  set the layer of fld "Hilfe2" to top
  show fld "Hilfe2"
end mousedown

on mouseUp
  lock screen
  hide fld  "Loesungen"
  hide fld "Hilfe2"
end mouseUp
on mouserelease
  lock screen
  hide fld  "Loesungen"
  hide fld "Hilfe2"
end mouserelease
   ������ DarkSeaGreen1   �� M  6show the five possible solutions for a given sequence  help (sums)          	       N Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  { | K H   besetzt  jaFeld  6  O Krei   KD 3 ������  ������  ������    ff��      � C @     h  P Krei   KD 3 ��      ����ff  ������    ff��     � � : 7      h  Q Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  � { K H   besetzt  jaFeld  1  R Krei   KD 3 ������  ������  ������    ff��     �  C @     h  S Krei   KD 3 ��      ����ff  ������    ff��     � � : 7      h  T Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     � B | K H   besetzt  jaFeld  8  U Krei   KD 3 ������  ������  ������    ff��    F � C @     h  V Krei   KD 3 ��      ����ff  ������    ff��    K � : 7      h  W Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  { � K H   besetzt  jaFeld  7  X Krei   KD 3 ������  ������  ������    ff��      � C @     h  Y Krei   KD 3 ��      ����ff  ������    ff��     � � : 7      h  Z Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  � � K H   besetzt  jaFeld  5  [ Krei   KD 3 ������  ������  ������    ff��     � � C @     h  \ Krei   KD 3 ��      ����ff  ������    ff��     � � : 7      h  ] Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     � B � K H   besetzt  jaFeld  3  ^ Krei   KD 3 ������  ������  ������    ff��    F � C @     h  _ Krei   KD 3 ��      ����ff  ������    ff��    K � : 7      h  ` Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  y" K H   besetzt  jaFeld  2  a Krei   KD 3 ������  ������  ������    ff��     }& C @     h  b Krei   KD 3 ��      ����ff  ������    ff��     �, : 7      h  c Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  �" K H   besetzt  jaFeld  9  d Krei   KD 3 ������  ������  ������    ff��     �& C @     h  e Krei   KD 3 ��      ����ff  ������    ff��     �, : 7      h  f Kreis2   i Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     � B" K H   besetzt  jaFeld  4  g Krei   KD 3 ������  ������  ������    ff��    F& C @     h  h Krei   KD 3 ��      ����ff  ������    ff��    K, : 7      h
  i             �  � $        � Magic Triangle 
  l Basis  !`       & � . $        � 9   n Hilfe2 �E�p?on mouseUp
   Global Schritt,StartN,Diff
  put fld "Basis" into Schritt
  put 17 * Schritt + (4 * Diff) into Loes1
  put 19 * Schritt + (4 * Diff) into Loes2
  put 20 * Schritt + (4 * Diff) into Loes3
  put 21 * Schritt + (4 * Diff) into Loes4
  put 23 * Schritt  + (4 * Diff ) into Loes5

  put "The following solutions for equal sums of each triangle side are possible:"\
      &RETURN&Return& LOES1&RETURN &LOES2&RETURN &Loes3\
      &Return &Loes4&Return&Loes5  into fld  ID 1133   #"Loesungen"�
  set the textstyle of line 3 to 7 of fld "Loesungen" to bold
end mouseUp
          F          	     
  o   	   0 ||||||  ������  @ �  r 4        � 
Version 1  � Wilhelm Sanke  sanke@uni-kassel.de   p Farben �E�p �on mousedown
  repeat with i = 1 to 9
    set the backgroundcolor of graphic (i * 2) to red
  end repeat
end mousedown
on mouseUp
  repeat with i = 1 to 9
    set the backgroundcolor of graphic (i * 2) to 255,255,102
  end repeat
end mouseUp
       � b X          	       q Feldrechnen �e#x  
�on mouseUp
  put 0 into Zaehler
  put empty into Berechnung
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      set the Feld of image  j to 0
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
        put the ID of fld ID (i  + 1035) into item 1 of Zeile
        put the ID of image ID (j+1145) into item 2 of Zeile
        put Zeile&Return after Berechnung
      end if
    end repeat
  end repeat
  -- in der doppelten Repeat-Schleife wird festgestellt, auf welche Kreise Zahlen plaziert
  -- wurden
  put the number of lines of Berechnung into Anzahl
  repeat with i = 1 to Anzahl
    put item 1 of line i of Berechnung into FeldID
    put item 2 of line i of Berechnung into imageID
    set the Feld of image ID imageID to fld ID FeldID
  end repeat
  -- die Custom-Property "Feld" der Kreise wird auf den Zahlenwert des Zahlenfeldes
  -- gesetzt, wenn ein Zahlenfeld �ber den Kreis plaziert ist
  --======== unten = Berechnung der Seitensummen ==============================
  put empty into SeiteB
  put the Feld of image ID 1146 into item 1 of SeiteB
  put the Feld of image ID 1147 into item 2 of SeiteB
  put the Feld of image ID 1148 into item 3 of SeiteB
  put the Feld of image ID 1149 into item 4 of SeiteB
  
  put sum(SeiteB) into field "Summe B"
  put empty into SeiteC
  put the Feld of image ID 1146 into item 1 of SeiteC
  put the Feld of image ID 1154 into item 2 of SeiteC
  put the Feld of image ID 1153 into item 3 of SeiteC
  put the Feld of image ID 1152into item 4 of SeiteC
  
  put sum(SeiteC) into field "Summe C"
  put empty into SeiteA
  put the Feld of image ID 1152 into item 1 of SeiteA
  put the Feld of image ID 1151 into item 2 of SeiteA
  put the Feld of image ID 1150 into item 3 of SeiteA
  put the Feld of image ID 1149 into item 4 of SeiteA
  
  put sum(SeiteA) into field "Summe A"
  
  
  if fld "Summe A" = fld "Summe B" and fld "Summe A" = fld "Summe C"  and fld "Summe A" <> 0  then
    send "mouseup" to btn "show basis images"
    lock screen
    show field "Summe A"
    show fld "Summe B"
    show fld "Summe C"
    show fld "Seite A"
    show fld "Seite B"
    show fld "Seite C"
    unlock screen
    beep
    put fld "Zuege" into Anzahl
    put Anzahl - 9 into Rest
if Rest > 0 then
    if Rest is 1 then
      Put "You needed"&&Rest&&"extra move." into fld "extraZuege"
    else
      Put "You needed"&&Rest&&"extra moves." into fld "extraZuege"
    end if
show fld "extraZuege"
    wait 5 seconds
    hide fld "ExtraZuege"
end if
  else
    set the layer of fld "falscheSummen" to top
    show fld "falscheSummen"
    wait 3 seconds
    hide fld "falscheSummen"
    # send "mouseup" to btn "Felder zur�cksetzen"
  end if
  
  
  
end mouseUp
   � � �  DarkSeaGreen1    2 J  Feldrechnen          	     
  u answerscript  �!`       (  �>        � local strings, choices    on preOpenStack  B  local oldwidth, lastline, bwidth, twidth, iwidth, theight, curx  +  put the answerDialogStrings into strings  +  put the answerDialogChoices into choices  3  put the number of lines in strings into lastline    if lastline is 0    then put 1 into lastline    if choices is empty    then put 0 into choices  !  subtract choices from lastline  1  put line 1 to lastline of strings into field 1    add 2 to lastline    put 32 into bwidth    if choices is 0 then      put  "OK" after strings      put 1 into choices  	  end if    if choices is 1  ,  then set the icon of button "Icon" to 374  ,  else set the icon of button "Icon" to 468  )  if choices > the number of buttons - 1  2  then put the number of buttons - 1 into choices  #  repeat with i = 2 to choices + 1      show button i  I    set the name of button i to line (choices - i + lastline) of strings  E    set the width of button i to the formattedWidth of button i + 24  -    add the width of button i + 32 to bwidth    end repeat  &  set the dontWrap of field 1 to true  B  put max(the formattedWidth of field 1 + 64, bwidth) into twidth    if twidth > 600 then      put 600 into twidth  ,    set the width of field 1 to twidth - 64  )    set the dontWrap of field 1 to false  	  end if  ,  put the width of this stack into oldwidth  (  set the width of this stack to twidth  S  set the left of this stack to the left of this stack - (twidth - oldwidth) div 2  7  put the formattedHeight of field 1 + 68 into theight    if theight > 400 then  *    set the vScrollbar of field 1 to true      put 400 into theight  .  else set the vScrollbar of field 1 to false  *  set the height of this stack to theight  ,  set the height of field 1 to theight - 68  >  set the top of button 1 to the height of field 1 div 2 - 12  &  set the topLeft of field 1 to 48, 8  ;  put (twidth - bwidth) div (choices + 1) + 32 into iwidth    put iwidth into curx  '  set the default of button 2 to false  (  repeat with i = choices + 1 down to 2  ,    set the left of button i to round(curx)  /    add the width of button i + iwidth to curx  @    set the bottom of button i to the height of this stack - 16    end repeat  &  set the default of button 2 to true  end preOpenStack    on closeStack  -  repeat with i = 3 to the number of buttons      hide button i    end repeat  end closeStack    on mouseUp  3  if the name of the target contains "button" then  <    set answerDialogStrings to the short name of the target      close this stack  	  end if  end mouseUp   v    	`    @ 	  <   z TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  R& F C   besetzt  jaFeld  32  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        { TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  � � F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        | TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  � � F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        } TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  � N F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        ~ TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     � & � F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�         TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     � Z � F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        � TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     � �* F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        � TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     � &* F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        � TriangleKnopf.png  	 Mon mousedown
  Global Kennung
  put the ID of me into Kennung
end mousedown
     �  �& F C   besetzt  neinFeld  0  :�PNG

   IHDR   F   C   !�s7   bKGD      �C�   	pHYs       O%��   tIME�3=E�  �IDATx���˯e�u�U�Ͻ��v��,�!�Ȗ�F�ID6�x��HOMl�`O��P��� ��ID@a&�(��@�����$'R��V��gW�zdPU��s�6�Iv���>��}�������ַ���/x�����(�ꋖ��6~�vN����٥*�����{��뜞���Y��;p����)=t�� �)&~�Ww~.:\�x�LW��u�g��7~/ބ�Wi��X���� EP0Š�"��:3MV�_=�>w��K����| =U`�����kp�& l  �l@1@R�R��3"B)�f�T!�@�3�}�s<_���?E��
0�~6��_�s�h֡,����(0�_�n�j<8f��anxu�1��P3bHQ~����\|���S ���g�2�e� ص���3�1��0w�f�!�T�J%��ԙ�&��VPED8��YNL\�2��O?@w�����l�c�a%��: ���)hMf�b���	!��Xi�e�@1-J�w�b����/p��{��wC��������߼�����0������ҬĴ�� 1F�VJ�I)ae.����9"�sO«�]�RS�ĄjF����:������_|�=Ə�U�p����8�20ց���j�oLAk�Y�U�:�kF�B"R�0H4�R�XU<�LS ��TA܉��w�\�������u�Ol1�~��[�z� ľaصa�gpk@�<�m�֌�UT�����1���j���-f�d��i�]��p1���/�+�~������S��O\�~8�'�jj��8g��T�Y
�H�
��]!�H��;��i�CD��b`5�ЪdP%�D��V����f EpwԕZ3�^�ʝ�������O �c�y(�mW�l��\��	�X4J^c[v[�RQ-��#"�jo����lH�b��BBT�uM�'B0j1�� 7'��X?8Dxm ����߼�ճ/|�O�c9���kpr���G���["�p�*P�P�!�*�TTAU(��.�2���!6bU�n)ͅ�7�0w$8)E����q1B�i�Z�C`�&b��ض���K'oU���}(0���u8�l,D:u��r���|�9<<d��QUj�1�:%��B>�̵R0T���K��Pd���#d�c�#h	��!�Y�ym�g-��w���?!?ҕ���Kp�:��l��H�
P�P�
�\̜��Ò�B�B�&RJ�9&-�K�I�q����f���Z�iJhVԔ�h����̅Y+��(�Pk]�����_����w��#B��յ��re�h��ba�o��f�*f�'bP%��%!Y��H�h�Y1���	qE)�B�K�72u����n&��$��) {��=�!⸷�}]s��߸�m���/��1I౮T��+� 1�َD�u��Gp��Z(eM.��F�h�$�/O�BKQrr�HqL�#q��knwݣ�����&�4�N���7!M���:ln԰��]��͟>x�8�ݿ~Nn����PJ?�C~`�z��`Vj-�.�J�O��RV[F�~�����iB]x�^�`�&��t"��W�tPEi�bfX͘��[�
���YX��1�XO���^>���_?��Ǹ����Y��wF�<\f���@�kjQrnn��H����	��Z۝\��/M{�*{�ys�� SJh�q ��Q5b��b��B�L	tGI)���kAkm �L)��L��R�Χ>���ۯ��_n���Y��7؍@�bRa�њ�+�)%K��=���ZA+3�9�[XN)�o�M�3��F�
Z	�k�>q�ǥ]@
U��Zڹ.����B����>1:�,�l34��۷��?���R0�~��1��p#��*BE�(%S� \v�D�N.�yS�b��O�Nť`c�!.!�5�U�U´ߎ&�����HE��o�#�j��"�:j�74����7����q��ev�ul�:��ޗ��ׇ�܈Tu�<Cpr��jޛ&���Fs����]6��@�'�ur�p��Z+V�3D*���)���]1#��Ϯ_����j`�ë����-[��5+U*R��F�PPB�#���Bݛ��n1�l<�@�X16	coo����U�k��*BK.�� Y�;�u��`���u89��Ȯ���a�R�,-4��̥m�����81��=�߾�(8� �G椨B)�'�j�j��1-7a�Ԋ�f�M�1~~���ބ��b^�>>��Ll�SJ��I���2χ��YI�&B�G�"K��W�A�؟&����q��t5��rX0�
��RlQ��0MS߀�c��Z����ܻ���`��+�5Of��-���j�T�s��ڊ7s,�p��AI����r@2����z�`��Z�^F�sD�G�DJ��3�޼ì�f���W ��k��ܰ���n�R$��f��JF�	M ÂjA�Ny<(�w��a"~�j��xݬw�ҔV��B���ȥ܌�y`�����������_������+F��� i;4��
�Z+����z�u���K�>DG̖��xP���WJ{�VV�=���B���<��`�ժI"�O�K�`�"f���׸w�ڋq 2�D���4��%�N�i���%Ĉ[N6s��Ҁi�{�L���8�uN�c����\k�杲��X�գ}�mpjm�9缔�f���Mo��0�[K������ĸ�v˘��{�W��h3!0��#Z�Zq�c`�k���P�ڸ��>2���Z���g�^"��g�X۳#4Cs�F���4MK�RJ���8T�8�g\��<�S'8mխ��E�ؘ^j�pũ�k��2���g�R�M�BX�6�H����=R/F�#ݪ"��H�
��[�_3�TB�d�1F<�,���^Q�+�M�ϭZ6�,A�^)�Ĭ�[������2�^���\J�~G�g��
��dG�1pi�z��*F����+1�;L{��x���\�jl���e�M1����y�4�մ����IU[�[+֭c �"-�(�a��JZ��F��qo��+��U�ɵj6o���
!�&4=%PFV�0{�n
r�(vVss��%КzÕbJ�ij�C�s&�����3���S Qi� �?O�����1�QУ�	aTş���m�壠��4�ĞZ�H��ֺ�B"�MQT�Z%�tg�������̢Xch�#_U�[�JVE�!�>Դ#���C���vE���sm�2AI(9/9�H5�#��p�*A���R�4��Scuqě����r������dO{i��6&��S%Fg�V;�4ѩ�!���[G�nɪ�4�^�wH�֊�.g�Q%&3y�Pe���N@��:g��	�2�i�H�a��y�����h���qDt�>n�Q뀶���Aƭ}SJ�Ma
!]��0FH3�&�;*՞�xĤ�c��ծ0�b��(�4�.�Z����	5DeI�t�gUV! �ém�M5,� ���>��ԧ&ܭ}�di쬵�F�D[�(��Bl���~RP����F���;�7j����HI��SU��6�N�f�+��,��N��<#M�.-��>~�:}S���H�T=��緢�HE�����fG�	�aP6��ŕR�-_�����z�y�[O����Y2wA<vP �Sg��~��Yx7L��E�`[#]m�ɻ+)�
3�έ���|��u4��:�R�0�v�2Y���Zq3�~���t�I�  �>�.to��F�D�~;Bj�� �ic@Ėߛ�q�߲E����'&�aP��� �8� �,o�h?�KӤs)-*�0�J���+c}�4\:���QTޛ�"��.�9^�����UdI�[�X����L�%G�H��:K���7�,�w#��i�ۄg�R
`�v���i�������i���\Z�������uRS���a�L!Dʬ�@E�Qs�d�M��!��4�=�%���h���d���"�lB><d��N�q�<�mm<Z�[H{�=��3����������_�,ŕB�C��T�h���nh�X��kJ��.r�gZ�g�"�B����㭤��s�=�@Q%�C�z�t��97���%"��Ԑ�N>�B=-O�,�|)��=w�ZQ��z�~=��� �UJɸ��/��a%"u�ؘ��cVw"ʣ���t57�>��\�)r�O�k5 T %祂�K��Q^a:u���������x	�>��q�ta'�V�Ze�HkqFڰn��Ӵ�4����]V�=V�}�+��M<�ny4QU�ij�*�V<:�s��j�y^R�R+�(]Z�w�~��.Cl�t�4�_=����v���!�w
.��>Zk���Z�� ���8'�j�?l����No+��c�)-���Z���^�cD���0�.�j���3�Z+�����C�y�����Cjw�R�RQ��|����"���/�"�h�7��m8�M�ʺ���	k*J���P�ksr�@C]�*Tii�����Mӄ��E9X�5t
Dj'��]d�^3�3���_�DD�Z���j�ǂ�N�f�ܮ��13x�$�+����1���` ���Ʋ�ˁ��(VI1B�8��Bܫ�j�w(�� ��H�&�)@��Z[��K^t��%���6�������J��w����CO�;�����^~����ߜ�"��f�C$�Zۨ�K�o
)�2d ��(M�������=���o&%B�}�0ɔ�*)&b��2B�q�i��b��R(��ʼ^��s��J�N��?w���a������O��݃�ܽt���g��`k�F�Q��UK�b�z%�U�����-l�B��b{T:��4���h}���	R�X�s��ke><�(>�"�S�����?��;�;!���w�_���{o��"`�(�L]+=:�5"��X�P	���u���;1FrΌ��xr܄R�"d�ir��s���M]yL)�J<�R����o�~��G>���T�߹�����^[J�Abڟ*� �Ƀ�i���-*�q ?�d|�4TU�nQ�twK1~lP����{�n���/�`�^ji{)e�zR�%���5V�u�#���60�#%gJ�y��� ��J�<3�ܸG�����_�������v���]�饋�ۤ��y���͍�0 �V�a3�6��1.�P�R���ֺD"a]
�-(�����ۯ��DO�}$a�[�\��ko}p��2�4*��I�m��v��Y�mN\2~?@VU�9����J��R�0�|��V��c��c���g����oݽr���/�lO]��|�uy{H����&,H��E�[$;���1�\Z(~(w��|�۷絏�D�ǒ�������w�\>w�J�O	��<�r��o�s��d�����(o���X�6����0����z:u���������Ő�90c�����������7���H���E���^,�n��H�sFU�j�ɒ{�4�Ҏ���B��Z����g�'n����\�����7��[+�e�y�a���j�j��=�/ �M�3��(۫[�;�����X��zj�o���u���w�\~���Kuj�}nƖ0,9���"B0�b T�&@�Rָǝh���& c=�A�?t?qp��.�|����~~�:�o-n6�XB��PT(�g��y�V�6mv`�N�f:u�t��E�������X�n����u�ލ��z��[n�b���99X"�z�ƥ���3MV���4¦�gH�N�;�:������^�������Wg�����F���줙Qj�0*Hmn�0�1�K!�ϝ������?��^�](m�A���    IEND�B`�        � BasisKnopf.png      �  T( B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � set basic images loc �E�p �on mouseUp
  repeat with i = 1155 to 1163
    set the loc of image ID i to the loc of image ID (i -9)
  end repeat
end mouseUp
         < | $         	       � BasisKnopf.png      �  � � B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � BasisKnopf.png      �  � � B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � BasisKnopf.png      �  � P B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � BasisKnopf.png      � ( � B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � BasisKnopf.png      � \ � B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � BasisKnopf.png      � �, B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � BasisKnopf.png      � (, B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � BasisKnopf.png      �  �( B ?   besetzt  neinFeld  0  ��PNG

   IHDR   B   ?   T��   bKGD      �C�   	pHYs       O%��   tIME�4~�E  IDATx��[]o\W�~��L��6%nsxZA!@A��\ �^����T��z��q�r�O�����HA�;w`+I{����=���䤄����'{=k�Y���&钶�޳?������kM�Oi�7V����ֹ�s ����Y�ɿ+��΅�}��~�Oc~ٳz��p��ZE��aoo���`-�s�ȲM�D ������/�<���۰vg��do���,��T������woU���w����R) �^g�-"�2��c�y��ޣ�k�y��m�C���;|�����6׳��Y�S�+�ys��ao�;�u�2 ��5l ��D#�s4M�<ϡ� �y���a���✃1 ���+�/-m��׳���y" �R+�}�*vw���`LwE�s@�������E�1S�  �7���<�a���:�ϥ�%���:@~��O�'���q��f4�v.@��$��wژ�Zkh�Q�%���4�m[dY�,�`��R
�{x�Ѷm�9-���~+��/�|j@���M������� <��iS��4��(
���o����{������x�W����3۸p�Jv��������XCUM, � ���� ��B��ʲ����(9�9��i�����D� -�iE1����s����_���`���*��7��7�Bw3�>g ୅ڣ{笠�����Z�<�#�|۶ #�G�᳌1�b�^����kٯ}�p{* �h4�͛����~A I�E��	Zc�m��@H�,��EA��&�$VMk�������7�9������� 0��週&�IN���(A��$Fy�1&�{s�TtZ
9��W����kٍ�F�c��w����?GwȲN�<?jZ�k8�m۩	*����{�p�Qp� ,�}���4��(�2�t��i"�9|ya��ϳg/g��\Θ��vo��g�F���b
��uئ� hY�	�u� j� �(�����(�) x�4뺎���e�������8�r�9ܺ���tpe��y>q��p6X�	f���n �e*-��^�k-�R�]�R�] !T�� �{��~�����yF>�vw��F H��N,!� �༇
�LZ�R
J)4M��m�y�}4o���QB
�\����x��eYF���
.�������Y2q��
�~��59 �bH��1h�dd�G���X]��AN����}����h�T�EYڶ�����K�>^[\d�;�"G-�֭�S#� t�C�T,�d��h�$������ɉS�,��
5m�E��C�e(�2����c��KI�!(�����ÍT�) �x���h=�@��l
۶hC��3C5`���$Aj�M��(B�6���� ��8r	��uI�O� �t�@@�߇s����7V���d��;�ۛ��,�SN�OS���l-���0(�3��(
�`i4j��BA%�0�.�2x��5�6 \>b~��Z�{�T���BDH�;j��^
�	q0<�ɑH��S(�/�{҅��~t�jQ��z(�bʢ����K/E��@~��z�j� �*R�hY����4]��-	�<�d)��`�A����b����^/�T)�;J�u��NS2kD�^#񑐨}�	_,I��8)t:�9It��eT���S�)�u�~KW�?��S�>���."0B�0۶K��Q�<��qFjPQҼ%��c(� I��#(F��}$뺮��B����0����:���`$FclмL��9�S�f��eY��QE���h�$XZ#�#s*edv�f�5����1�$���,������)�>�$����#�t=�2���)�2TZw@����k�ɒ:��[</{|�,d}��y�
��$�b�K�;�^�i�C ���I�q���<��z�a�۷;�`��{�I�$YR�EQĖ�,�Rdx����Q�4�ʡ�BY�����!�;d�!�1��9��s�%�bl�9dy&2+��K	�Ԉ4ǔ�,C��;����fǹ
�g�B�L�97O2�@��P r`-7m�6��&M���ҮQZ�Ids%4Av��Nv
��[f�$LZ-�lٵ2�à�83 %�V:6]�D�d�X*S(�"4C�299��<��y��RL-SAi��.Cn�   �Y�J-�.0?e���K���>K�$Ɠ@����IC���^&kc�������̹Aʬ2R��+5�2�<g��ӎ��G�+�b.!A 0E��{X M �.R�ԗ��qjl������8�$�^F�YפK��'�&W�1(0���:r ۲c,M,-���E���5��BM��A%��dR�Z2�i����=�e۶#Y�Q�jK;E���f����8#���t50�0eYN5aR���@{��;���2�s�/�d����X�MU�!~\ f���)�8S��{+d>S�%��� i@�h �v�BHj=}h*�,3d8�gO
0�
Ϝ9�`���\X ZkᬅC�@gN�*��;��ȗ� ��+R`��^2�IVA���@��@��k��0	��i��i�9I2P ��|���O�>��)�Ԯ�줉2� w��-��:��n	��2�gE�%�h& �ȱ��y��[;��g*ke��у�`̖鰌�)x�&�{<�dؖ�U��Jkp�Fnn-�5`�S���oQ�iȑ�6C�������ɟ4��(N�t����&{��ޣP��V���ء:wn���ũ"+M��d~`��k�r�㊧�Y Hd#W��N^�4t���".�H���~��,.V,�F9	~rB�$o(�2��L�	�Ǎ"�_��v=A`t��X]��m����������u`' XX���\���.�Gd�!�4��ޢL���6^6e*�n�e�u��J)��:��&�i �N�	���/--Es��ia&+ONH�&�vR0Y��������(�,��Ah�ƘV	X�"��G���)���ln�&ɓ�)]G�+\�`]@ �!ɗ��u�����O���
'0w�c�qE|��q����,.V�7i���p��gu�Y)���GE�)�2��d7I�5-���Ek�%�& �4�TZ�#�9 ����#@d?��h����_:w.�ܥ����r�Da)�$5Z�ɨ�E`>�.xpp��M(�mq��1�C�A��怰.�3� �������I���%{�P۶E�ߏ�D���6e9�}r]�V���"����tZ�+�a�Z� @���ǥ.�z)�y��/|���ѣͿߤϦ��&��"3�eܧu��F`e/�y��d-��1t�i0Qb���2�W�k�D�����7��}ooヰ3�LM@X0�+0Y�g�&[g�Y�k�2�r�;��x�ZX��$i��%`��n8 �o���������ߏ &��������mB���v�d!�a�:�e�`�E[ױ�bth�q�1����u' �{�����C���ȟ�SM��	H_'�V��P*�e>a�AS���BY�Rd�(�g9^��:�}�a�ϯ=Z����.!k
�9�&/]C��2�х���Vk��Z)�Z�H��pC�,�����������6���+G���;<�MkZ��/#�<dx$`,��RС��0�,�?� X�/W�P��������՝?�x�� NX�Dj�CV�r�L�I��uk��sȃ��'��۞�
��' �w�����k����H�M�����s#n<�rI�b��&@��(��	 ��ݕ�>�p���a����p'� ����!��y��3d�Ec�ǸBu	�|WHǓ���[�Z�������;bw]��VJM�O�É�:5,�>��8� ��>'G8�x:��|�ի7?���x<�8	��Bi�����d�I~�N�>- 8��/�ǟ���[Jm�uwBhl�6j��OߧU��h%27�# ����x&�t���nۮ��w�[�3f��Y�m]�d���!;����k�m] �?	�4�ُ�帑e+�z� F�0�:L"|nt��(��_{����#��Xe�$�    IEND�B`�        � hide basis images �E�p [on mouseUp
   repeat with i = 1155 to 1163
    hide image ID i 
  end repeat

end mouseUp
         l x          	       � show basis images �E�p [on mouseUp
  repeat with i = 1155 to 1163
    show image ID i
  end repeat
  
end mouseUp
         � x          	       � TriangleStackBack2.jpg @         � �  (@���� JFIF  ` `  ��  � �" �� � 	# !"!%'$ '!!                                                   ���          	
   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�������������������������������������������������������������������������       	
  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ��(���(�/��?�������5"� �����** ��㲳��|�p�d?@3Y�*�Y�}?L�ןD{�B�Tm컀-����%�Z��5��,m�����UMj=ź������CO�-�kH��R�	 d�c�1��ޠ�i�if��ŝ�#`éY��~� {z����(ݡ�O�|1�#x����� 
����X|Yѯ���7���!���������6��]
�r����ff#�����r��>���omt(eC���ma����A�>"�2�6�p��k���^�ֻX-|���C-˩90������5v����-<z�ž��X�
�� �I$�Yx��9	q��H��[9�A�}k��,!��4��2V8 �� ��)��^�g�_D��X�?r?���M��<�$�忶U��&�3c��"�+���q�RF+6�i9陴�V>�B�����&��e�]&t^I:4M�_��Q]��q2�_^FGO�K��9�=jK]#�����UԹ�Y�ɑߍ��������=	�}sú�`��$V_e�W�`H���+�{[k�y��]:��;�gn�[����v���[Q�{k9��9
�-
.x9g�z
��#x��G��[��Q�*CAt��lp��kkJ��l1�?x�GO��K�1 ��S#܀q[�T�fH�ٳN ȼie����Vu�[絉�S���J�˿ �Wq��=��8l���u����C|�v��n#�bs��'�[�3aE��I�)�ڈ��O%�F(�MQ!<yb킏֫�x6�"g����A�H���|׮��/��uJ?霃�̟�֢��J	<� ϩ�Xk�7w�i��P��m���euPOa��Z�z'��R�᫋����sң�Ǜ���CQ��Q@Q@_�r��EE�H�W8�<t�y��� �"��Q�RA���U �ʚ$e�plq�Ro#�S�� �[�.lᗷ́���!���9������q*㟥O�ѾUx^0�wND77�Z(�gX���(f��H�q8�����]���.[�f��$|Ҝ��玾��s�Z���bH4�ӧE�X)���� �ǫ+'�RFq�8��kXB��¥N]��D�P�.���
� �Y}	�?�s�x��o��{���&7�s!�6�a�El7�n�	#��į#�+���7Z�Go&�dD�)ׅ���`8#� �[:b�G�Ѽ�����E';B�:g��޳$� � 0k7����xZ�Im�)mI$��P�h琮��Tӑ�+�q\�V:1�H<}�`���>���|e�;c� A{e�_�לv9?�Q��3YL�
��jڰ
T���Q���o��3Џ�i�`,j�Z�;ĸh.��&s��U~�w2��W�A�fc�8��T�m�����$�<���C���Q���^��A�d͏�5J��N�[�7'#�����������d���thE�ۂ�/�I�}=��{v���,�G�h袊 (�� B��zS<�� <��� ������** _4� �6�?Ɠ�?��� O�u�;FA4$M�7J��*V6�����-��g�V��QF�|���q�S�� �WN��j
%L�	rX~\SHF/�t�,|m�5�$�Kj��8�d�}YXc�gH�[k���.�c@� >�~]��_-�ۘ⼵�4·]N�p{ `�]��<'suk��o�iW-�3[�@���#�S�ӟ�tS�FS�Q"�y1;����nO�h���,��p��Ղ�=�m�-$���f�[�c��1Z�I���[�RI��
�F�"'�]�n0@�G�<���մ9�[vF��x�Q��6����s��I�EU{g`@�`U�.ib�[;kpL�II�Y�L  �a�A�xn)#S�,�a����\�W;c�9�Ғ%+��O�sZ��:���{y���em�W��=� 
�=�B
0����5�DL��!
��6�����[v"21���Ɗ�w�� �"���� |� ���w�� �"���� |� ��y���1I�zP�E QE �� W'���Th��T�'"� �����*5;Xt9����#��X�	���b|��e�������T�Iq�_	h�¥���/����58�l�<;�V�h�[;r9�:��{�kZ{I���x���{$_�~U�}���x�x(6��.yo���튆��Ky6,�Ac�3���L�M:}NIM�bơ��Gu��Iwh�/���6����z�df�,�O�h~/>�6�3��ɹd��~����h/4���̌���Xd`EU��-�~�5�v���e��#7 "��ܡu>��8$�\'���S��Q#/����;BX~m��M2Or-m���.�Pʧ�3�Q�?��� ��5�Q���c�� #�T���C���l�� ��^M��p�}���^��m���Q,v�b|��_�1Iy��ܧ�m��ͷ��l����Y�?iY
�#|��~n��U�QiD�������?�z�5�!es���F붚�Ɨt�Ɨad�	�O��}���$}3T��b/h	�����7�\g*�� ��m��^)��ӝɶ��~��2���#��LЭa�<}�M6��ӵ-6N����OԤ��\
��Hڜ�i���q���i�� �� �M��9�q�� 3M�� W� o�k�ؒ�(��(��(��(� �)!Iǥ3�?�ͿO��\��� QQP�_�ԣ�s�Q@V#!x�ԋ�` qWa�b?24�pUW�N��H
7�<@�;}A���:�ڷ��Z9t˵v`9Xˆۡ�v�F�y{M>�P�����'8��B����iv��VE��J�`��Q��������D����qwh���!M���̍�A�R�L���$a�v��q�&�}F���?�5+,%���7�?.r��|+�hb�4���A�n��,n�ذ
����]��<�����܉���Wv9�5B=1�k������H���(
N3��%o�Z�aK�Kei��ȏ�2;~�UN2{/�Y�r0Z T?p�=*';��7{��������\JfU8=G�<1����P�)���}-$u�e����GwC�;�j	�(��i�F�q�I��B�l`uF�}�Ed���ѫ�i�y�j�Z{E�찖���B8$G��U>�y
4�(m��	������H<5��z�j�����i�1���!�Τd�(#z��G�j�k���e��%���59]x=F���?�t���Y�}Py�=���stBol�Ѐ:��sW���ѻ��4��<���� �1&~�{R��#���W�ry����2�Y�� ���)�.y9�\��R�t����ׁ�a��y���9����M�vɽ�������T���m%����F~�:���N~a��Y8�os4���R~��YAm�q�T�6� (Õ=@���� �T��"�S$�w	� ��) $����~��$��( ��(���O����U� W'���T6�ـ�3@a�Ye�L,P��_��~8���	�#�lڣ�ө�G�}+��oΙ�� Vԡ��'�Fz����]Dz�Z�t�U�Ai3�Ő��s���7�ʤ�Q�Kj	��?����'>�>ݫV����/-��y��kÇ^9BNQ����[���c+��9籬]M��v�Q U�0�x����0RkVR��x[�vpjWnү�}��LoU��a�3W5_�Y��Do2v���O�q���t(�M�I���`��l���3�FG�nA�������ך]����D3XM[c��E- ���P��O�R'9?�js��+�qD!N��=Mbh'lS]{b�����ȥ����Ƞ
R�Z���so�G�u�9�Q֣:u���D\��Fұ�	���^�r*-D�'���˸�=?U���v���i��m�2 0=	�����~W���R��ӷ�����<~"�]������q�����^�W�M��F� ,LW#Fkzp�z��$Ӳ6o�;g-qe~�t�s������	���;�-��X4#�[���P�V���*�2$����#�$��V$��Y�d�?�fx}"�u�V�+�����X���?������ebc;��!�m5�G���0r2#��v"������c�j���_G��z b`�ՖX:q�F�����?�[~dVt���?���5fuGT  0 ���_�	������ W� o�jFIEPd�"ȭ�Nq�hI~WR�2�Ǩ�m̀����nhe?$���EC"3�ʣ'v�C
#�A�}��Ku0Ͷ�,�r˃Ӷ֝����j�>��K�������9_�T�:��^�"ԥ��b��a���g�p��E�� U��Z�e��ѯ���%:��F?Z����K��m�[3�WG�~b��`�G�ⵆ�I]X5��q^�h|ŕ\la����[��SM�x!��	��zT�G���6���Súޖ�|�[��� aH`�=�8�kK	�B�LO��q�?.I?�g�V�v9�M�s����n.�[H�~���7���V�ͼv�,�6���o1ʢ��L�,S�m��l�R�.���E51���)�|�yϯ�%��8�#�n%��ȦD�"��~f��5��m����)���Ȃ�6�� t�5V���D������jU3m\�� 3��i���jh����rOOz �Upc`
�q�QT���ZŮ��"�@�3�:7��X-�n�c�#O�O��Q\I��L�\�9��;SI��J���7�!IG��R餅K�ї	0�*�v��V��.MG�p�ir[_��G3�*��7~x8��i�]��X�{6�S��ڭ��������Te�ׇ5I�Ok:v�'��FBF�v`�+N�l�c��N�Tl$q�p:z����k8"R-a�.&gv�����V�zd�l�L���s��r���ޫ8��X��I���S�:Q�Zr�Ց���(Y������'Ԯ���tU]�~��?��ȡd t8"�5ƙ���| ��"����S@�N�&�-B?9zF����cֹ�ش���A�ؘ�ca?3tǩ�w:l��Q�����aӊ��Wr����(	
	=>�14��b݇a��C;����uG_Վ���Qx`�A㢠 :d���v��'���PA���k�cyu�/��\�,.�ߘ�+���/A�
/��1'��ۿS�M:��%�9BI��������E:w՜��nȳ�G����.l��~��n� ��#8�r�j���Ok��\\d�A��gr�[;}'���[��I$l���0�z��#�ԾEw<��!�����]s*��O�_!S뺪pV�P��f���X-�����rY=���5�v�+7�&~�� O��x��E��G�eU�{��C�P�s�G��ብ��E��&S���:N�6z#��-��G��z� ��������۫}J�L�k7��@���ᔂ+��׏o)�eS� #���2j�d[�>\+?���N��g7;ln�m�+�'���+���2Ē�a�A�s����Vg���|M��y&O:��r�+~�.8V���qT��B�iW��1]��n�^<ᇡ��X,>+�z�����k)��a쌪Σ� }L��i����o\c���V퐤BF��$/���WٛP��HS4�0q�$�W����앂Ea� ��*�|�Uk�#F쎟I�ml#G��g��0�۷#�����<z~�,;x��xݿ�y#��#�#�0��A��8�W��W�o$P��ヴǚ�=.�h���կ,፵�{d"}�2[�l��4]�� ysR]�X�b]�J����P}&�_�Px���;�"��X���W�<Ʋ�%��<M���h`D�lq�T'l�?��+M�3��5��O��vi3,Vp�?x~Q�����U��60�2���0w<���k���8�?	^j�̄q�J��}s]���B��̟�;���1��'��VqM�9˕��`�m���}�N�_j��na��,�mJIdp�N,N��~3q��{�Л[�:���ڱ|U�kw���3�<@�q������1U�&��q>�;N�V��7C���ci#�/0�wv��� ��������y&��|A��m��*;y��6?�p�Z�|H���'�G��]1����R6:"�f�����(�pD�ꖥ���=��V�L�Trѕ�c��1�Ѿ�y9@��1�Νx��dy�� 	���cҚ��2��}1Ğe�l�8.� ��$a�i�����¶3�q`�U�
��KM'Y��[����D@���0T�9⭯�<S��vڢ���^A�����qʸ�����IX�C>����+�U�����}*��w�z����Cig���L���>�Ү�mg�t�e*�w/+�L��?��*�H���%�>���}{v'��3�M�vT�z��ʰ9	�H�s���.6���Þ&�&�9��H������X���N�P��#j=>�m1D$3ۙt�y�Aї�w���:�64�5oo�����d{y�'%{�FrR����0��ug@��ԳxO�V���Yt�G�xS9� W :t��j�z^�4�����c.rB�l$������u)$�i���yf��$�V/1M����Q��K�i���h�q��E���[��H��g�+Z��;5�d��̃�[����E��K�Tܨ���[��@�����Y�c�M�ve��m/m�0@�ev����A��H�
�<PA�YD ��1�t|�����V��2`t�i�������c��]���ُ�>�pA��`Ά��j�'�MNY�F�]�6w� Bj�wo)�� �?ϰ�W>%�l�wc;x�×j�K�x�+�d��X�)��A�#��"��{��,>�i'Ӄ�WZ�H�Z����O���
�@`�Ge�Ǿ �O�A��B\�m�Ac+�s�/S���u�.�Ǽ�g;��G ���ߟaUܪ��+՛20�x��q�>���}K��ك�F׾�q�����Q��~y��Ď���c}⺻H���	07�߈z�X3i��Lc�L�+��$I�G��4���|7�=��n�	�\�}�d<1\ {�J��g�-F��0��C����Z�t�^��3yi! �����o�_��kv�6��d�.�$�I��F��T�閒fF���V�3"��` � Mn��(��ck3�J�_� � D�m"ES�۸��o��+WWO&��᷋x�w�T
QM�8l�B�2�'���?���$0��wrNs\�w:hǕ����Ԛ$gVP1�x��R=������+F����O.��m���71=��'������T��n[�\V���WU'�j��s�{0���9��2� ��m��������� �x�>�@��Z��e;Z�?�7�6���N?J�eo�]�2_Y���
W'���P�[��,dʲM0�,�Rq��&��g����+V���v�����5�Tl2�x�O^:͏XK���G&H)6x?Jn/�\j[�
��v� ���-��A�
؊�Q��_�mv�Q�@��99늯�ɭ�_W�⼳p��*B@�#�"�#���4�e��qn��ܹ��Ո��R#�|"+���M���iu%䨶���g#��{օ���܅[MK�s�D<�,{t?ʚO�ij��V8���'�{Ԣ#�'�V/n��:V��45'8�`8S�8��Զɩ\F��Vv�iv��z� �\R�ar�ZH�'�N� 
�k���9ǵo#������t�J4?2����eO���~�fэ�ó>P�1�����[N�S��i4}N����T�FǱ1�*N;�\�T�����BO�O@���Ү�e��>f�ac������c�ӽ%������kK=VհU��6;T�j�+C)��R�i'q����A� �p��ь��z�j{K���U-,LN� J�V�Zn�4*S�Zj�}�O��9��<���1�B��� �֠:{nY!ybul���O<�;� �kjs�Z$�-oIYQ�͸��8��l佼V�X��H�������&�Menc_�.��B������w�M�sx@<2E�w^H�k]4���?WӯdU%�U��t�VT��-��Դ���NQ����T���
�젧=��N�ց	�$�֕�����0���� ݏbI��-�K�����`��^\�6���⧕��9\p?JLU����b��m�ʛ���G>��*?.����>2��U��O���Π���.�#��x��w���g�i�F�� fg�q�'6�a��?�#�ɡO�1��)�[Z��i�Gx�w��3*��w��ノ*տ����[f���6b{�Q��e���rx��Z錢���u:o�ð�\�.�쐽���GxԒGl�T��Lν�$m�u�@@Mϳr1����gZ�G��ֺ��K5�e�FS�q�GJ��]OO�%�E���-�F�ɩ=�Ν��F߁�~\�S��RWG����T����)fy�0$�Q�I�Q�pq��#�L?��6>�-��ʀ � Ƿ�+�:߉u��a��G+w����7s��/ӽl�X�B�����[OO���(�$��
NA���9<�9��V�:/���o	Xj6���f���BGB9QҴ�Es�i���%x��#�Y���(8�ϭy�j:��������`�骷���[�1���gެ�w��֡ey(x�6h�;A`�=��ުR\���O�� e��xa�,|�h� 2�$�5��z�/,�����m6kf):';�����N;��G��eִ��2n�oF�3�2����	<`�4����a�Z�@������w����籥NQJ�n:���U�
-�Ӊ� ���;�$dVc�8{�������%��n�<��n�M�� �d Fzg��
��}}Ao���$d�M��Ü�c��T%����6z�ZH.^��.����v��g��9�%-G���sR�+=?V����]|�����O<�����z��_��HeYm�3��|�%'a�q�)����Q0�ƈV5bz�'���N�`���P[�vwOq����#�J�z�=)͡+���SP���Zm����Te1���!]�m��j�����u#E,v���4�a�L{q�*q׏A^c�wi,�+�ƭ#��c�XD�B��pű�K�ūk6��~V�����On�������x��&�r��M�2"�K�w���z ���kYb��K����G��'!��q�^w�h�=̚��;C#�m紼N��q�6r1����o���-���$����x��&9�#�*r�EJǠ_j"8�y���Gݖ��|,��c�s�>��Y�pQR�P�wl,aX��t��Vv�gq?�m�BW��(��לH�Nx�>������[�o���L�Y\M��7��� #gJWa���5}N�
�i&����%�慇�B�sЁ�^��#ƚŤ��76��f�8C���3�ٮ:	�v[h�p#oT��������i��mL�,�;��~��a�2��v�a�UQ�������uޛ�J�[�|¼���w�+���z��ki��=��Y �0������߇���6}.K�	l �"k�i$h�g
�ў���*׈t}n�h�Ց��6$L�8 �=�>�)F�M;!��h�[��ַq���&����%�����:}��&��-��R<����\���        � TriangleBack.png 		     �     �   Feld  0  /��PNG

   IHDR    �   ����   bKGD      �C�   	pHYs       O%��   tIME�4X5�    IDATx���K�dY~��߹�xeVu��=W�� ����5Ȭ��
/�B^Z�M�%�`�+��ĂtI�0B �j�-�ȯ��q���YU���}?X�87nDEԫOuUe?�Pfg�#3kq�?��?F/������%I��NR��i�Cs}pOI��~�i?6���&��W�~��;F  <#{��H��b$���������}�[�1[�15�������$)]���ʘx�y�6�ꥸ�v]������Kz�~���%ݑ������3��������w��I��_�%�S  ^I�ͯ�*�Gw
�yC;|�k�B���������UI_�t,��#e�K���-c~�����=�r%���lx�!�nH?�.�IR&W���!��aA�����r�@���?^?�X �g�*�}�ꂃ�Fu�\��רax��������v��w�U�U�\���ѱ�7$ݖ���������*��{[�I7�H���/�����:,���ڮ*t��8�T-���^�h�8��
 ��r����{�6o|ݛ�P��T�?eC�����r׽Z�r�2���B]ש�*�m��{�5�k���4�m�?��s����t��񎤛v�m֘\jk���d���6e�V�ʄ�ﰤ��*�6�L�d��N��� �y��Փ�5,���䒎�[��S�M%~7�H�k��f��;u*U�S�J���P۶j�VUU�i�i� ��?3Q"#���k̿n�$��j��J�-�^���M���aJ�e����/��l�Xi�>�������y�d�J6�������c�4  �(F�

h�ZKIR��*�dd)�v�po�m?�};��ZW'*Uj�(T��+U����S۶Z�V��.lTU���t��"}�HwB]��1��{���v&�ץ�k"*mBA��w�MZsK�,i��T��ꂄ+�Zj���Ԯ�H�R�f����$I�v�8HԪUY�2�@ �b5M� 4M��V���ɑ�"U�
�@2��L�)S�4��S5j�׹�(�TS�JedԶ�Lg����2U]٥c��,�_{��&MS�e����e���l�o\ӝ��o���/W��2�{R��6ՈR��Pj�t��V:ي�[�a��B���U��DU�5_�e��i��<�l6S۶JW��1ʳ\���2�(M�?�d�Є
 ���u�� �|>W�u:>>VUU
�Pa�,KM&E�05�N���$��ի�*��E���t:UU�
�$5M�$I�u���P�u*�Rm�*�s�m�,�REQ���B�~6�7��;��-c�|�e��u���w������n�tU�F6Hd�,gd���l�a�Z�Vʵ*s��JFF�*�j��իW�e��,���M�h2���:�y��8�U��V����7  >���G��5ƨ�kct||��i�7�.Tt]�(�4��4��U׵�^�� T���ڶUE����mutt��i� ��+�2��TE��j���T��^{#ӕז�~���w�My������u��=�{׷!m�6�����6Պ�R-��hY�Tf�ʢ����0T�4vh���$�h4�
.�e���l�HRj�Fy�����N��TQ�m۽� �Ic�J���oX�5)C%Ib�1��{ ���㱺���H�a؇�V$ڶ�l6�1FQ)Cu]��x��(���x,I��4�sUU����Z��Z���������\?�5���_Է~��L��B�f���׷�.+�JD-��QH:����t�R������ں��0����WY�*�r+��y���ɤ�C�����H�F  �ʽ�u��U�w��A��?�F��8�5���U�Z�4M�F�U7ܛ��h$c���R�$}��o���\���*�B��JE!_՝��Kz�����z9䩯���U���	�T�j�ı��le�T�BK-5�R�y�<�uqq�<�ն�ʲ�j�R���\��/�A�*���P�?�+%=M0�N��D��e� �̂ �����SU��1�R���e�(�� �u]�T�׶��$QE��\q+�"EQ��d�8��Z��P,\���\��J��R��R�E����K������[����T���J�	h(ܶP(�d��R҉.t���JeZi�X�,K�iڗ[ʲT��ҥ� ������p_��XUU=u�h�Vq�A�P xV�W�뺾��4�ͲLm��"뾊��=���7�n��x<VEJ��ﭨ�Z��d���U�/..4��U����Z�wOZ,�+�K?sMo��_�`��W�������XJz �D�\�.t?����3���Y�˥V�U��E�����߅�G.ut]��h�(��?��Ɨ�U׵�� T  >�a(xR�&�7�n�#M�>P�.�_�� ��HAl}m:��o��$��ݛx�Saw��j����g�j%u�%�b�/���'��n�2�>t�=t%�7q_�=I�餹�������b�P��Z�V��/���!�5V^S��b� !��L8�'<�� �'�yw�V)\�po�]5ý�>�X��R�e��?\BqՋac�u:==��I��\JS)�m�Hƺ��[��_=�y�W�M����� �a�8���l�ĩ>)����\yf�&����2�KR�su7��Bľ A0  �����MW�طD"يG��̊�m�^��i�]!Q)�2UU�{�>��y����U��K��Ku-���s�/�[��_?:XD�����ҟ�+nE!��1�]��D��������_h~1����@��A�/Ѷ�F�Q�>�U]�0Dc�! pi�{c삂k��lȈ�_�w��7��q�Z붨�AXn�EZ.��ܧ8i<.�J��d"���ũ�w�ے~�Q����P�_��޲UɆ�|};�]�8�\w�ك3���ݻ���sA����7���u��F#%I��UTU�<��m/.��� �s׻���-o�fM��í����ga���HMS�,e�d��Xd�T�j��o�w������T�����[�raBz�N���l�lUh>�k�X�{b]@p�!�*�vS�\	�  k��z�1l��޿(���Y�)I����z%�$��^��ah6�fݼ�]I�:�3��a���76���Q�	�g�.tgqO�}|O''':99��0Q�u\��N�}�[�HӴ��>�M  ��.w�v7(˽�߽��1����JӴ��@���F#���.u�o�]�<�s�~[�cm�!od3/d������D'���+n�vE�ih���e	  |~�
O���&��^{�+
�S1�JI"���\���ى~��s����G�/޲[D�n��lo�I�����d��|��jՇ	�~�;6\��6���� ����o��	�w�!�ș$��0\o���پ��s�RU�V׺z�]Y|�����U*ls��v����T�A3U���y����j���1��1\�
*  ����!��!כ�Vܶ��,V�H㱭T��]i[��tq_�\�˺��|�^�m�G��d�'�gz��^~���R���Z.�[���ɖ.P�.w��M�  �ߣ�C��N7]Ӎp����S�2�يE�Iei���tq��w�o_�x��P�����R��B�zpr��(tvv�O�t�\\�]�p�
  �8�a���2�q�O��}�j4�T(���̊���IZ����
�|������l7�b��2U��}�l6����2�)k,w  �b�.��7��sN�SEQ�����X�.�K��&�'@�m���l�٭Tܐ~,;���n��\s�Ud�w�5cE�<�U����6ǰ���	  ^<w����X.�I��s4�j4�=]'�A jI�v��~u�.y��b�ȹ��Vy��g���8�նm����[�p��(  x��5ڝ	�˝b*i=��RL&�*Eɖ#6%�GU*��7[��[�P��"�dO>sӷ��a����  �xÃ�v't�f�8��G�wZ_�%�pR`d;#6�`ч
�O�C�0���6m��h���\���ð/��룠J ��g_����as��H��mΜL6�����M�ɰRq�n%u'���͙�V�����Q�8V�4�6QI[[G�  �����V+��i�<b��
C;�b6��k%m_ޯ�OvBE�Mu��*��RW�I�nF�;��ͤpU
�(  x��;�+�d�(�4�ڶ�CE�m�Uh�%���i1�h��h��TU��(�����gTw{���  ���B�۽�TU���t��A�������`���}��֡b3�B��4��T��]wq'�
6gR�  ��0�Q!m�q=����8�lf�GG��K=�t7�M�����D)��a4k��ʺ��bwك�  �Z�N״)I�ɤ�`�i�4m�$�As6�ï�>�Tפ�P�hӤ�>.�R���ꧨ���L  .״)i��b2�h2Il��=�#$�z��&T\�A��f�f%�V�Vj�Fy�+��~
7#�e  ^MnĞ�aw�����x���c�Q�GGv¦���]���[�p�ݖ�Fj��,S�u�����Fu(  xuUU�4M��yEj�F�e���6k� ��FM[�躏�m�4�ՊV�2-�eY�5���St]w��3  �jΨέ��h�!��o4�=�_�� ,I�H���6=�RaT�����^ ˲����  ^.@H�6۶��H�ǡ��l��d"�G�׬y#ڌ��dWCZ�~��j�����a]��[I݋�q �WW]�J�T��Tu]���Ҵ�r)��}H`C���*vKi�V��J���Z.�J�T�f
�  \.�B!���t:���X�����Q")|�7I�l�p
7Q3P]��aj6��#<%�O �%�u]?�B��b�\*CA�������W{�jRs�N�t7�R�ةZ�Ѩ�r2<�  \þ
�)c:�*�"�y�����p�@�	6����[1}
i����Q�e��  \.��BR�:ǉ�^����v�b���zNE#{"i%[��38���Z,���r�� p��k�p��=��R�Ŏ���=��z���f5KU}�8::�;��~
  .�͵ޞR�ZIEq����V&"I������F��ڶ�{)ʲT�ujۇ7� �W�lٶm?Jb�9��'I�0��;�=.$D�[�J����wL&�e�O�  ������N�������h${�ǎ@�ߴ������F��U��ʲ��aOK  \n�ptD]�
���}Yj�DMRp}sX������0�j�ȲLM�Ф	 �%5�޻�C�h��+E��Qh���Hj�)�
��4i p����u�gSv�#ع��  .�͔�=e�=֩���QQ�v^�*���a�'  �r�L��T����c&j��l)���/yL&�փ�Y�  �˧(J��t���5w�?ܽ����Q�m�*  ��vgU�m��d���ΨH������Ǯ5ݲG#*���P�e��  /��h�F��Tu]�%�4���*�o��z���T<\�`$7  _�gUTj[*�p*��{`{G��ki� �K��*�i�Ϫ;�����!\����J�5��O��  \�Y��T�\����a"�4������"���  �]���X�a�Ϋ(U�,KE�$Id��d2aI  ��!mv��rUE�0U����s}/  {�0��&`�[;>\u���  �!�9. ���ZJ�   C�  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /  �B  ��P  � T   /�hs�7�12�(A c̞�  _v�TK*%�돍�`+L�e��i���꺖$u]��~j  ��	�N��D+�T�R�3��\MӨ���]�)B  �l>L%�$E�T)�3eY&I��HQi:�*CM&B  ز�h�7IJ4�DQ)C�q�$IԶ�ڶU�u
  �@�do��&�q���#�F�>L  ����T����M�D�nV�Q�  ����,��4��,[�R��IA �쾎����B�vxp	�m�  |9cT׵�1}Q��*5��R�Ki���.{Ȇ�F�f��1Fi��m�}�  ��+$�q��t�8�5%�2��l�XO�xHd���D���@F�B��H �r�>gTűER�Ɔr�q��L���BR�Z��f�X���)� �/�"E��u�ё4ioOE`gS���P��0���� �/�(�5�Hmko��@䂄5�T�(T�[�
  ���

]w8L8�?Z�e�FR�Z���Q�[;@��� ��f�z�{�7F2�-���w"ي�D�&�:J]�
�`k�*�� p��Ψ��m���vNE^�| �w7Ǟגj��%�ߧZU��̘cp  yIDAT����r�  ��pF�d�Q��� ��B�L�XO�ldSH%�?�(0��$�իWUU����d2Q۶2�(�c�V���� �/�pFE��!�U�)�|����j���|�b�1V�H&0}b�Naj<3 �Kl���]��r]����p���	.����VQ}�b� �@  �v3]�fQ��*���������j��{�NeUn��֧�{)�  �rpM��h0l�l;�;Z7M�};��I�V�Mo�QEJ�DI����X��d�BE�&�	� �K`3=�^�%�;@'{�X�@��?P�n ��l��;L�>a`�T��h����] 
  .�݃�$��m+�V�Z�e���Ȇ�V�9�5j�Vu]+�2]\\�!�U0�4�h4��>t  �W��:������1�_�p����4%�	��!b�JQIjըV`��2����a�w�rz)  �ð��U'�1�F*�Lmk�?����+I������Ijթ�����M�8��$�^{�5M�ӭ
4�  �ն�O�u�F���0TY��2���Rz8T(0��nIo(U�\�

�(���� �j�RQl���  .w�GǚL&��H��*�NEa�iv������zK�Uu��
j�Vm��/��q,��'T+  x�����L��i�5����Ψ���s�CEq+V,#�V�:u2�k)�鴟U��k�p�a>��  <'a�i쑣�:��S5Mm���,�t��inI��W�f�Z�Z���6�E��(���p[�dF�[�  ���U
���fRٍ�����X.�4���:֡��e:���iUu��m�$�F����q\��k��  ��a�"Cu]������Y�PQءWe)],>հR1��z4UY�j;����h��_�;˽��~(�
  ^�����m[EQ�ժT�K���q����ݑ֡pW�ʝ��T�e_��6�:]j�r�J�d�  �Z�U)�҇~�R�HMc�4����{_�+�����gu]��*��c�F���$�l�e�o5u͚u]+I���  � P���zk�+*��cEQ���6h����\��4��ϻ����r�췔�eY��*�y�8����p6�d�y�o��  ^.��y�,��A۶[KR��Xj>�..�O?��ҺJ!m���������6i�*�l6�h4��*\�fQ}�������c�A  xI��`��d2�x<�����m�e�..Jݻg[����>�m�I�7�7�J_��qO�@'���ө���n�n�5|  ���p�#�"���Z�]cT����Z,���:��!�������F��(�f7�BR��Q�C�>ڶ��  ^� T�eߪ�����:/IMS)M�����s���U�;ڿ�!I᭯�[���/<UU�]�nN������� �o($m-{�] Q��*-�s�t~n�)��D��|�[[�3�c~���*˲��P��XI�(CM�Ӿ<2�NUU�>  xI�
wMw�7��1Fm[��[c�=>�X���G>����=������n�y� E���Z5M��x��i�yu]�U
  ^�C��]��<�W!$)�.�����I�ޓ�~��oK�;�P���k����$��(\�p��e)c�f���$Q��J������vS  ��=4��B�����x��Huqa����3�;ҟ�}ԫ��/<��Ә���W_onw]����>���.�E�������>�1JӴ&  �� T���eߔ�(�}$7�"���U�tr"}��t�c������֠A��}�<�읯��K&EQh�X�?�h4R����<ϟhׇ� \  ��1FQ�,�~�fE[S��͒�+�e�4=S��
Ńv�����rU)���}�����βL���:==�w���8��$I?�jvCC�u[S8�G�.  x6�0��]�8::�h4�2��)����..���^��K| �p�`o�B��Sa��ļ��k��Plw��[�q�\�8޺_���㸟c!ik���Z�eN9 �ɹ���JI����Q��r�
(�r������ݻv��w�X��#_��C�88Oۘ?����z���i����s���/���Ã����n�Ⱦ�ê����  f��7P+���A��BHu�����ba�6��D����p�d�=�o>���?���~���u��S{j�(J�$#I�Cİ_�m۾�b�Z)I���8\��}>�N�c�%Q�  |���̲Lu]��JI�a��ɤ��)i��!i}솑����Ti*��J�|"}z"}����?�ǹ#�g��>�:�̛���t�?�І�(�F#)l�0F�͎4���B$��3�4���w���%2
�V�u�t"�/�L&�>dc8 p��V��!�q��7����8� �sc!�2W�/t~^*M��3{�Ꮴ?�+=��c�:�K��O����������}&յ�u�b!��4�H��Q���8Q�$}�i۶�Xo:��تF��0������%���
C� ���Q�X��t��X�w������n�;�+I���O�\n��{W�ɧ�|G�=5S�}�w�'n\��������z���6T�T�m���0ܨ��x�$�(þ�b<��)�����J8M��Aa���fd�iڇ�ݠ1��� �e_h���0@�P���sg8���Y�@��Zt���Ε���߷�He)}tW��w%]<��W�o>���$wr�������n~|׆���� �4�ڥ�����چ���Hm+A��n�u�f�����Զ���&�I�@"��cu]��i���ݔ�KܡfN۶}�a� �Er;%���CUt���B��q�[�s�0a�����T�/U�[p͘,�ܳ�O>�T��1�n��=v=�����G���������u�������_���Qd{2F�@Ƅ�'�:�5��-������ q��Զ��L��� ��IU��e{c����Ã��������(
TU�V�����Ϳ;��\��'��ç�=U���!THҿ��������9�tS�h[&[���l���G0�x��/7���,^�(�C��G\��;��Ϳ�~H۶}e���  �"�����G]ÆK�p��x�,K�c��:���J�}so���]g����'K�ݓ�|"�?���K[?��>���������KR�ِж�y�5rN��볙MLGGv��hd+ah�>mW=��z6�.����t:SF�����}Tʲ�� �d�Aq�THReY�����Mq�7
C�\9���ZI�:��O"�W)�R��@�&��C�{�ʄ�DM���g�O~Ko��{z�����6%�F�Z�U����xl��n��k�m�?o>�c[ɨk���$6�L&�닅t|l����
���  /�{��n����04�����z�� ���z�\n�g���&�NJ3�䁴XI�>�4��l�x��G�r���_���?ѻ��MŢi�/~td�Bٯ����J1���q�,b�um��$�y�\���{v� ^U�7�ah�H�����JEa���f��O]۪DVHi�J'���c�#�۟�w��O����k~_��n����`s��$���1�X�C&{+�M������V?����&��d��f�M� �WM�kf]���r��0������RYK��ྤTR��^��lu������}Q��m�y���==��JU#u��FR-�."IG��7�F��ɑ4I]+F%Rإc��,7�<[	I�u�8  �c� �V��(��~^T���j%�Ԯd���/@ݖ�N<�R�>��2<�z3��{Z��#�O}�'[,�o���I�$* �WI���x���&����]�t��%ݔt���  �#������q��`�l��}N�  ��;�T"��s�J��2t!���*����  �*q�$\5����␛z8`\�=z �/��zx�▞q8�����Z��g�    IEND�B`�        � Introduction ��}  �on menupick which
  switch which
  case "how to play"
    set the vscroll of fld "Information" to 0
    set the layer of fld "information" to top
    show fld "Information" with visual effect scroll left
    break
  case "historical context"
    set the vscroll of fld "Information-History" to 0
    set the layer of fld "Information-History" to top
    show fld "Information-History" with visual effect scroll left
    break
  end switch
end menupick
   ����ff    � � O    how to play
historical context       	       � Schrift.png 	        c��^ f  }ۉPNG

   IHDR  ^   f   �u�n   bKGD      �C�   	pHYs       O%��   tIME�;9D\E    IDATx��y�eW]��Ykg������)�tFBF�� 3H�D	r��脂��8\�"�����<z���U|�a�HB�����P�:�ǵ�?����t���1=�~�sNU�9{���������C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C1�C��C<�b��P��w?��{u��1��!��DC&�5����C�
�~�O8��;�	y����X��V�kZ��i�@'�u�����=
Հ@X��X�z�kܳ��&G�O��~+Dr�ߣO9���bH���1H���?�>.� t���H���dl~���2 b!X
:u8z~�?~蛯xK��]@'9|�Gm�ip��Y7�jc�ݵB?[q���gNܳ�_��������n��+Ng��z��\YnK�fT��=��"'D�V���0�9+�!���,��ujK|��:� U�מ�g�Y����_�e��ۘ;)9��Zma���;\���A�Ӫ���wArZ�CqZ��?Rµ�"���l*ed�4�
"��7�� �pb)���w_a�(�&�9�,�a'�d#C�24ī�W�-`������C��C�?NƖ��(%^�zb<��ǋ#�_�j���[�����������}E�G�悔0����G�3=���0$�'?�sǟ��5g匾{��N<�t�6�p�Ye-������X����މ(Aut���o��"P
��Q�7�b������Zc;mO����!ǳq�	@���;���g 7�:,,�p߃�V;۷���p� LD��0$�!�!�>�! 럮��_���l&$�T!l,�=�;������D��Ԛ<^'!���lџD*N�ߤ�J�nJ�D�T�a����P�!Ƴ�kI�oAU��B����1�/wu`���w�0}�޲b�G`H�On���E�L�ÐUj��8�Q�h�F�:g�!��'��& ᇾ4֭e� 
���&���;�z?����؎ t �p��Y��{�ě��A�E#.�5��Y+/�4j�S-k'9�-�q�B���2�9	8Ԙ��&F�@�s]����кF+��P�OB��������HK��K+�V�Ahai-PZ ���Z(���8ֱ�Z����D��v�D�pS�=�M�GE4����ֶ��zD2E߲����!�8-����ȫ쫦�t�!8�Xm�!�ppD���!� ��!z�ێJ l�t��]��-�p��Fs�Zb-�J�Z��B��Z+�PB���%��BJ%�lY�O��4Ǚ��R���P͊�X(�p%b��L�fX/i�5�8-�RÓ����]8���*,�XdX���[b���DCH˵ql��H����u%�D�	�"ack��Ah�"$��vGa�!�#B���#I�laB����գ'��_���]5D"�|�1�}w.��� ����B�cHw���P��8�N2�e=ٞV`6�e �G--Q;9����&�w����0,��$�B�QaH��$
�D�""VmZ���M�౦"+O.�4���:���dm�Z0ea��Y9H��j�O ���� ��x�V*�=�6�p� �1F�"�����':��G~[��FVt��Ñ�Y[[$�V����"3�����6�E�cZ�K��iv��~�(� ��b�Q�AH���h�x&Ѐ����w����b@V��Ǡ�Dȍ�̬Cx�������!�>�!r�L	Nr��"O��@S�YŐB�.��ép��s�#�V��Q��Y��lP���4��]�b #y�2�A�����'��91#� k�H[ -ð9�ʀ	KF�|�#Niӣ]3�z����6}�X�ـ`��VG�ٖ�P	Y�D3�iɃ}<$�!�!�>�!=�Q��I�cN��*��D�jG"�o��cRhsfV٠E8�~�$�����w�O�|��W�K^jr"VnGv#l���H�M��l����Z^%�XT����x��%�]��B%	UƊ�K��%�׭I��N_���>H����Mʘ0�:�61d�m�Q<�����,���χ!�>���߸s�������}n�J�Y��h ��k'����KS��h��x�x�ι4h����z��gK0P���_6���Tn��v1��6�n;�� �P�x!Z+�m�\����Ð]��6�!�5�W0���e�;5>ni�*��8�w,��	Y���[�MJ�a��\�����@�(�5[O�w�~���I�C�C�}�B�=����8��&�1LҀ��l�`(%�S�R֍S7�l�l�<���Qkt�{?��(��o������?�������ޏ!�4;kp)6m���h'm��a"02�M�ٴ�D���C��Y��h\[hj��մ��k��?��y;_}Ņ��"�MmM|��C�|x9�ر�� ��~��?�37�H���}��������Ϝ��цv!�{'s�(��f7��7�*IzG�=���OH�+btj�e����
c�y9!%['�{�)��H��.�IRn�m�<o����������0N`>q��5\���M�����o~�}�|�Ek��2�?��~?�f�|Gj�7���f6�o-R7���B!�����%�\��
��|G7i�GR�����e��[�����y��/��c�_�|禑�������������s���o>��}��O������5�,,�������]?���v�`���|�>�>��8��3H��2���d#�� .�<|<p���b�;�6w�ؙ�9b)k
��F6eU�Pj��u��O��`�(]�rOqO���~��l��67�����*hH�.�x���K�g��;>���!�gC���Mާ����٭#[7���96(Ǆ�i	B �V��똶�`H�C� ծ,��K�m��
��WO.���������n :�57O��7{��M��Kv�\������b��˟�.@c�<�Xy0�ﳫ�I2	8%~��o�8���Wa��AMk�-�"�u%���q��E��o�?B�L�a��>���
�:�J��;'��1���Lwl���=����כ���l����8��α�:�N�.| �������5�t�"f�,k��2��|��|�k�I`��p��E��]�/�|�o ىJ�Wc'���|���t����x����*�_}y�}g�D�-�R}��
�&�"1���a!u��"�];�	��i�ӉX�fES2P��2�K>��R���6�l"� VWx�H��-�<�V���W�7
�k
�=��8���H��y�4��)a*���������)
�x�.�`3]|��E��C6Xm.|���]�;�}��̫{1��#��>�>�I�?�d1�Bx�1����s�x��k�鼛vL�6���w>�W�lq����x�]����|}�~�C87;�tK��AQ 7Nܘݚٺ9¼[-m�]厔��阘����n��eRy��+&�����8;1U5��D|����Ƥ
�e'������ѫ�_�v��uX*����>���j�������a�+�A�,>�>\N�E{d�N5S��\��2����,���
���@��7[���D2� ��&K�V��2ᑃTWa<��0����	�6�E��>֤^���4�F���d��p���?y�5�$k��Z:�!tCC��D�Mu��x�k��{�k���>q���r�ۿ��A�u~O	�#<�>��
�t�����9���L9�u��|e�RmU���]9ڦ���t�^�9�s�x��kw\;�of�^����������2�4ۨ���g���������Z�%ϥ�P���\^��t�~G9[���`�S�֎�}���Ԩu �7��USS�ҠH�-��Yc���p�������M��v�$)��]����		�R����ON�k��v��[��UH,�.�y�@"�et"��l���ghtZlg���}��w�Oz�3��0���K�wb�$���3,l���R���2�~ڴu��^�:�3�C��3��ѱqns7\d�M]��+�+�({ԀQFy�4bS��R�RG�c���T2�y��ב�/�A����i�<�u"�DdA�꩷�`�.���~>�����p��|��ٌ{��Z��Ԛkqv��v��F7j|}��F�N�H��T9���u�@�7[����K��r�8�=�t侕����P��Z7ҋ�kj�j��zy&5���wŹB��s/z�����m�����Ʒ��E��fm��#؎b+!nJ���[���*wꬍӷ c�K�sa���e^��e�|��w];V����4��2<�����[x��>���|6�<4�bc�K]�sz�E�k�Zb��t���R�Tb��y(/�Ye�%NrRa"RBp {Wn����?��d�����Q	-��m��Hpl���1V:+����ڛ>���oe�$����b0>XOg���Zst!9� ��)N]fZ=����b�m�T�9���q��7L�ШB׃�"�8I��|������tL}`<�e��kC�i]�֧N�Y�Z�]C�kk��ED��$�'�H���$Z�t� ���9����/���w}�K�r�x�L)w�[.�=�>�H�Ҡ�j����9��^>��yR�8p!_u��EKM��/ڝ`�;K��CM�k	��� ȟ��{*�^5����-��ٽ��Gv��Dz��b����v|���]Un?��������\ ^�/~�O����=�;��O�Vb
��8]�i����8D�� ��&f�g����^�f�;5�>}=U�?��z��&~���{龙}�A�T|�5*��y<����@��S�|�v�z� 8�<J�
Q�ň �$J�z6^X�2e$�VX�����r�g��\��KS�V�,B�Pj�U�&/�F(��YC��B�9v�c�6�Xf����ȉ��|L�]km�z��� G@G�v!>�2�4S#�2F�X1���e�~�+4�X�L��8�X
���C2�hm2唩�v�����y�:���ϻ7�����5P�?PıBZ�H'��p\"�CŃ�1׽u���)�_h x���)�v�l��hdAc�.�\��"��܇Ѿ�?q���7>m�u�_9y5Ag�ZM���|�P��۾�}�s��A��R�������FeW̐-�]�fc��޻{Z�;������܉14�gx�Sqn��&^�K���-������YV0a�s��.(TG{�c�:?1Ǹ=B�������O�������9�_�gК�A^f�]�M��U�fr�����H�/�kZq���3�g�|���p,�͐���'}�aF�E��YΦ ��;�S��Vyx��m]dQ��*�5b��n�r˛P�0T9�5��h���C Ȑ��)����Ԇ)����s��s�u�c�z!/��?��0ѶY�E������_��4]�7&:�s���Em����"�@�E��Ю���1�.������G�*����q1�l*l�dμ G?"�l��":]�mh��*Dm*���%�$�1�E��n1:�A���MdG4"�$�3��|塀���9flV�+�`AB\mr�t*��9����r�槼���3�x.uMA̎�O>���_���Z�XƬ^Ҙ�3�Ty�V�G�h�V�	��Q��E˒)W�<x?N���8�R`������}<��t)����������߈b��ࢨq[u�o)�.�HE����@��A�
��%ՉϤ̓�.���7��O�9��$�tmeO�:��]/X9�>p�K�/���u�S��^���(��Č�yN�"PU���HG�!%�4�MyɖܖYbz�fUUE ���S�0�k��z�#zW�L�Fs���.�;߹�I뗠5��Pp�&M&�d����,��W��F=
#!V1
�F��}[�{���͙݃3�G���2�_�l �?�oӾFz;��>BFy����<�	�m�9P	�vt/��3yj
�l�mA( � e�S�u��^��0 �A���c'�U3Vu^�Ғ��]���11)qs����9��(���z�'��M2kuV�z<h�i�<����l�;~���=�����A �'2������>v^�e���L�4��t��)Nu���'���ِ_� ��2҇N�ݤ�h l���刅U(d��ى�}�H�S��Ζx���B� y�?��U�����q���A��B^J �@u�M��U��B\"��m�����O	�h���k�S������O�J�p'���տ��Q`#�x@�.V�K���?~�����/�O�������G�G��(�F�u��Ȟ;(W�"CJ�#�����<!�Z���*����_�Z�U����Yc�J��#��K�j���9�޴�M/F�G'�Y���ôh1�4u�ݏ���y�DO����u��mu+]V�+T�

EL�#�͞Ҿ�� �h��u꛳S��:jAkZ]��G�Y�1J9b�&�h���З�:�'��ޔ؉M%l�)��' �5��WЋuZM���[0U����PH�=���mP�
�f)� �P��9.�H7c3�Gz� � �K "؝c�m�x�%�mH���ՠ�
~� --Z1D1~t�W�z��'����;��+ ��˧'�Nf�)�x։�MD����|+<�Ǣ�!��s��� �N�;�=�hǔRC�����ġ��Ze�b����������΄xOKȫϿv��]�?#ŶR~z����>L��w}��a5���ߵ����E?6A�kӄ��
��)� l���1K9m�ւN�
I9X���t!3��`���_}ޞ�=����7^5�y�2;	��S�S����������⿟?��Ə��_��T�|*m�x�旍������8l% �ֈ9����C��B�#���L���3O_4	  @"Y�ҏ3 �����[Q�	ɓ'"�Gڬ��E���^k��\iR�J�A�.�u��|�a-w��q��<+3�Om;^;�r��F3�(L��m����[|��\�$p?�
���}��8C� ��lPW]3�;�BK��2GZ�}�8�f�KG�-|YǵF��� ,��!�M69���I1���8s������+cL��P��s�t�[����B�=7g�.�ۡP�R,y�U�v����iS�đ�Gr5#�y@\�B�evs�%`t�4uþ��"cg���U8q�M��K�6NޢZ��
��U�t9�݀;y���~d�����^ǔ�<o#��F��VXk�x���=�<����o�ZR�x��}*�����5_-�`�p-�mt�,�qrƀ#ì������]�h�{Z��`�%�k�_���)�)��~�q놽���L��ջ�<T炑�>���/��̃����O_�gϤ�$M#�5ښHK��X$��w��X)/K ,�Ŕ*m;�^2�-ݲ���_���v.���\ܫV���$�.d��0ߪR�����_���Ł*��9�sƀ|�%�~V2�� V�6�|�y�FH�@����p#z�[ 4:��j|�񮰒fx��e�t�.	!$D���?�KR�wl}�^���c����s��7־̗�`����)�)��E��*f�)F�C�s�կ�y�j\�}�+�W+�� �AUA����-�ht�"2đG��>]a��- ͯ�����1q�ED%G7��}5D���X�ܞ�������.�Uuپ!�tdCd�乿�p�mb&�v���	N��*�V
�L|E���X�X?Zb��
�0��Tݣ:��j�Ed��Ojl�fb��8Y�F�5��"���m��\�L�Cy������oY�$}dݪ��o����^�vr�-��<]�w�6�%�7m��z�d���L���3��8
t>���?�a��Z]:Q��t�[^��^�|�%@3T+�N��Z �ԝ�&l�� �D��+�siוNG���    IDAT�ϗ�p�-���w�_}���]�wf+Y�����t�SY������y.�y泿�����>��� ���_N�I@�mOD!�%%�`�6�(��h,"i���o�t���w<��/z��dy1>��,��]qTGG^:�ġFI@ͯ�������M݀�o���x���oA�%KP-w9��J�YllZtY�T�f*7b@Ӛ ��[c�c�fIճ����ՠ�n7�#�7oz�^�&,����@p;�ϙ�R���V��g�ϔߧ�w[���ܱ�-�ո�{��8��0��,����AY�1Z��-:�Q��%��!gg���XA���!�����9�\�ZVXM��+4�6�9,	q2�&l�X��;I�2���5�ok�]We�|y�$�}%}�L�d�\'?���Hqv��|"����0����T�xuF�(!Ak�΂�@�̝D7[T���ii��6v.����M�h�s1�\��6{��^���H��z�s]�'���ف�O<�%�"G)��mbߴ��[��G1s����~G�<tb��j���:�8�4�h��y��55�x��u���^:_'c�6�ka��$����M#?�����i�ox�[7N�n:?����������ۙg����.�	�H)��_��'OF��٧ߠ�.3R��ʋ'd���9K���v�����22y�aibA��C�8h�X�7�g=��蒯~ʫ'.�t���9?���\�����BmV��R^��w5�ad�H1W��&��&l3����~.��|� �lzAo��C7�r9:��U���<�b�2�Q$��p�!h)�?%�	�a4�ؐh@����b��6�}P�Q\h4��1�L"�f�^�o��iv��e�	��vn_�O�K�
h�t��0���������1�Z�ia�5��<����A��T��	�cHW��ͳ�[_=�����&m�!M>C1͘ࡈ�e4�0�Xì�48ʬu%H��c� l0|o�� ��cX#�6��`��6mw��Z����u�>y�����-DZ]���&jؖe����=V�V�a%���F d���Zei���<ԛJp30:�a6�4�ös&F;��8�anF%���ԏUXH��h}ە�G'ro���5��9�z�X�hi�#ۥ�=�^l_<�s���D��w�O6�C�4�ٍ.�&�q�^�k�W-��Zs�+��+�������E�i�ډWq��dj�j�Р,��4
�[�I���7:=�0H��=o��m���?������l����L�L�?������@���rL��`K���q/Ƴ��)M-�t�>t�G���]�@��`��D��@ZJ�ƳѮ��\���1A���5��:�����}��O�"��������2��x�ޓ�W��:>A���Q�m�l�녅&���d��1��6b�/�����=`6��X��)�J�Q2�S����7�s�e)*�����[�93G'򆏦�O�<
�q����o��<՛˓)'&���Ʀ�VH$\ܛ���6�r���bZݫ�!�rr��o�����z�È�^�$���O�W����A�&��,��/���]�8E�M��H3�h�^��ş��h�DO�\,�\��`�G���a���5�;=������d�a�u��i99��'C.��q}P0.���t �D#^�I�Y��X����`b;�lp��Ev���V�Ҩ�@",��h�H��z]��|��W1c!��^��Yd��tt��"��
���V�c�H�"[���D��������t"����/A�M�y��_\-���R��k����x����>|gc�K�������@)��$��Q\A���<p�����?7ܦ�MXM�Q�Q� ���AB_��gÑ�X@��ïG�S��M;��b�~}��0#kzl���6��`q�ŉ��~�5=׺n��\�`&��3K��
�3CB[��*P��K�z�M�y^O���8po���?L�]&O�q�)0F�4�E:��c��,�k�x��k%'�����O*�gn�p�6����:�ڰ��<_�_W>��`,��G��|����&�MV��@i�����B��Rk�Z��]3��-g�y�+,����6k[	�h���@�:.. wqWE��<h��tD�%��J�9%޴�N�Gn}�ؠ�d��CE�p�;�o�́�y�!-,
F��M�iA�^�_L�g�P,[��`Y�Xh����9q�1��3u^ӾK�G�Ŗ��K.�x��/�rх�f.Ė&�.������:P���ɪb!���tʯ{F��±A)��G���i$�{,�}���xI�-�i&t���Ʋ�F�N.���	���f�3���SM9.e�ut|Sn�բ]m⡒�A1A�Q�GXBK�(��*�>p���w���ӥ�2A�q�3����"d4�f����:}'��͓�Z\��(i���B!�]�K���d��NK��R�������nGEF>�T�^�>D]E�(?	�T2�>����B�v}�y����~��[���-�y&��Z���%���{|���+/���=#���BBC��AKB!i����u�ݛ�yӦk.��mH�@:'����w�6SlVt��c�>�^=f�vx%7L�Z�}�s9�⸛����Q�F�nr��>��� ɥ����n�U�)��~C�k��8��'�|���[q2L�ذwQ]��Zr���b�\yD������}� ���N��bU7ia'c�~�_�_�+�Y٦���+�v�����D�V+����lP�g���5� 
�C�^���޲6-h>x�Z8�2.t+��d��-a�!�z�M{:�5�仲@�%��w��1�cC)���n�=�o��`��C�J�8���F���i����*���s[J{4�>��I�B��l�,��N��v��:'6HK"�Q���it�h�yV��_jr���*B�}�ݦ����C�\3y���/DT+fNԀ���	Mi,b&�TV!�Ay��j� �	u�Z���\(Hv ��,� J�%��+�F��&�mوLD�5�2�P|�_G�gJ�g:��Q��x�պ]kA���;�H(�� a)�n��h���-��%b��]��������������)�p+χ�UX\*�8yr�yw�P�le*��0$B�5TT9u���[.��ﻙ�i��������%�^�q9ICV:��>x�nn_nR[�X#���~p���'Ǡj��L<�F��L�w�p.,\��^>QZ-����(,\Xh��Y;V�r�ot7l�|s!�䜂�݁k����a�FO�"�btOA��҄�"Ŧ����4i�'���{�W�Oi�ޔ4��<��Nz���1g���7a'�
L��M����/�rR�Q��mv�7Q	�$�r�R�-��(ۘȖ��f�EAV��x�'�|�ګ�n�`�xե��W<���mL�6�8�ֈ�� <���X*C���u�B����^��(��Г`�ejhvMY	aÁ6�v�
f��+�}�$�g�_�	+�!��0F�6nƄ�e\�c痚|�u�+�Q
��<%�Vt�]��(/���	pm.<� ?\co01��AK�&��G'��r����F̮*��tW�����JZ ZKl��MC`�a�!���r��p:Fp����SC�N�8��>H���mYq�X��<s\��,I�]�8�Z���,�8�s��D:fC���I7�U�Ծ-�e���6�/���:����;s��
�|D`d���> �꺚�W���3�3�Xş�~�ν�9\����ﵱ�1g�X��/��{�k��!���ԁ &7E�W�z��C#����x������Io?/��� �h$�9Z���O5�*Ɍ��R�DVIH4FRam�Zc@O�ɍ���<�^B��V���g{�JC��8	��<T�o�n��o�[��W:�c/K7EN:��Ddt]���S)P�g�<�"�����3S��OW�J���ZBBln{���W�e�#�u�O^�c�ƽ�?��g﹎���$�'�`u�UD�i,a�� ��9�`��<� Q�B�'�.�����"�P@:��$��w���]���͍Zd V(�%�_��<�0=�)DH�)���qD�����.K���m�W[,�u�l��l���(u�4���(
��If�'ong(�`3N?25��V Y�!�v�h!P�0A�LNc.������e��?2��莴�P�q�U?^���A�tX�?���/5^ġ���DK�X�����C�ʫ4�mT�m�N+�q�p@r��|���q7�f�Ҥ7��Z�%;�ȏ�s��*����9,�AK�{�/���t�"��%�X�!�2�v%Z>��U �|��/�b�7��8��
��=Ɍ�	�rq�ˁ�ε��8H�pv�@�g�60����0WA&=*��.���'ؕކ�am<$61p���6�M�vXM�8��A<����hV)Z�
�#��xo��i=D��F�8�zĻ�ټq0�,d��5*���������C��?QW�AGFf�*��3��?�6�1��Xa���x݃tjh�t=P+�8I{��鍂Iٓ���z���?�駽���K���4#s�(�Ї���	����V�d���$?6B>_�B`g���aƦD�x��T�Ism�DcF��EC%�IG�j�
���~���\!������c(�se�'�
E+c�G�Z��'w6Y��e���}�{L�7��XV�p,Ҁ}���$V��q�1և�I nǪ���t-$���lǐn�^������������ޘ�����'���7=��+��7���(R:Pj���ҕc�p�v�~�>U�����uī�(��?M�j���Pk�'��������ѱ$��d�Y�
%��5���}��u��+�0V�^��k3%f:�/i֪U
N�PG|������=/SH�;#�0Dk�H�T��i�'���_R��o�_��÷���A�v���Z���%��`��EL�P�^�o�_��W���[��8�j���*����9�5�݁�'�5�YlFP@m�8Ƨ��B )��n��:�Ro�v,'�����|Bt�<Q��r��@abP������	�f��,MF��*D%\ӦًEf�����g	��@�%2�6�	Ԓڬg�":g
m���ဲ!6o�zק{Dv�H���UZ�I���]��֏]�*Ɗ?I+*X�Sܪ��
��f�H�FM�lC���3�b��ɏ"�D:��&`��!���ZHgmaK��	��L�a�"P����r�@��H#����(��I�B��_�:D�L���4���O�a�'0_�q(���%�^������ՖDXbe�i	�t9C��/k�x~vL���t�eBI#���.<rU N=�y�D�Wn|�[�����t�٨�+'�mw�z��?���0�~�^i��fk�+^|bn5���
��`���}~�IA�H'3FW��@X1�zϋ���{ǿT��i��c `	�#¹%[�k�����-$��w=��(��ԛ0�PF)��,vl��*[��l��Nb���O��RS��].T�_������딋�r*PS�Я���vH�l��˗��S~|ߏ_r�yW]H�m�f�6�D��� �$Nr4)Cb�7m����P��\`���}U�4���fGzA0:U+"3�Xbq�D���F�MZ����E"h�^g�Di��_@,1m"?a=�j�����A���T���#j����c�	Ѧr���=�vi�ā��	�a?��ڑB���L��\�4)0�$^�ƽ�6�_O;(]�sD�'9qh��E�:P��l	���_�,\�3�ñ��堅²l""B�Κ��ht�raL���J&�X�������?��"2Y����v�̆v�7�ʄ^�
L��@i��%�2bIC|�vX��mb�c���r����˶�k"�$��VϪO�	ЉtU��6|lm��S�ŘM���Ӡ� o�xC�?}�۶��/����tC/�8DZ���0"�-4ָ��dH�d�ke�Aeq�;�]֡�碻��P���I�N���7r�����e��ٲA؉s�䯱R�<+�!�ֹo�3���7g|�2��
hKŊّ˶�_���|޾>�,e�U89��BZ�}s���xqƲ�r=H�ўV�� !�9��#�޲���W��MŔ�L*���]��ڍ/���+��p���{ɲ��P��"4�I�P��D>*�2i2��Tf�xڭq��H��������m��2��c�����S'U��XUT���"��JK�(�v+m۴����m[�v��mhZ[Ŭ�4�Ҋ@���**��q��\3�1�cε��uP���g?{ש5��������a�,q���򠸑���1�Z͐d�|[���-��r�p�f����<١�6W\��h���M�F�I�,����M�[��豭�;���[����\��\�@N��:O�������^<3z`]щ�����3����네��"��3�hB�S�����ތ�dn_^#]\�ԉe.�:I�&lC�CmV>�f��?�R�v���Q�3D�����ˀ�Vb��|BPH�yf�ݮ�������@�<��o��H�l卐�C�!4�*4�RAB?NZu%\R��$Zx�����vT���l��������{eU]��c-�Xc�����H3����E��ɖ�sU1r��]o�{_+�{�1	��o�7�ĕWϾ���?��$�����v�Dq�~ԥ�J�S�<A}J07;K���ʚ7��~/4�_t�<�Hzϳ��?p1���Ϙ�E�L&��
#`O��T���9Y�/m ���\�#��Sg���bvJ� SK�
�JU	0��Q98�3���|�O]35őԺ�S+��N��W�Hxp烋�p��a�q�/�Lj�C�v
ckٹOO��Vߝ9i>B	����rׁ{ny��qm�Pu�aPEVg�[�iYg(���2D�H�E.�f ����W=�EFX�# ��>V����G�õ�8X$�1���Uh�a���:&.���2CR^����v(�ny!_�Fo�!%��r�[^��X%a���s�le��~��{�u���kˤ
�8���S$ҤG��|�?��^�h���5��6�E�>����>�R7]=��c��T&�g��4�G��\���=�~�]66wXނ������;�{2f ���}ǘ�w��DaXA��@cx% �;��-2笕�
�M��GX��j����DD%��X��|�{
L�M� ���z��Sx��(�Yn@ZPy���ٶ�Ե���X?$6�����%.�8#�m.����N�&������0H��|���1��Yޯ�ᦻ�z恷����8��鲺�F��f��h�Y^N�ޅ���e�A%�Z�Gc��>�Ce�N����[�����n�a�{>q��|d�kۋ��`����ځ���(&��GA�
ʯ�Vڸ��gN)�s���4�����RU���{�\l}q	��+��*?���ۇ��m�1�0d'Y��M`xt��Q{i樆ĦhmA�hi陭>� V^�8m�}�Mo��G^|�݇��yǞ}�£N�����tq=��LO���'³�̀�M��<�f�a53ra�����J�u���u���٣?�"��9-�P��1dHH�G�V\������D���w�s,zeswo����Q�AĀ��<ȁ�*�{3��i�-Ը+/R�5��.oD���G�ί})d=�ޯ�)(�,�-�ە.��*�ݢ�|�˜�5y�a,`�������"@(�-�v�ү����T%d�!�[Z;z�}6~n�'ۚUr�0�z�\��i�*%X�#�˭��$�ĹN��J,qknO�� ��r~��wOJ�>�v�-�-@�	�(t��Ҹ1|e�ٳ�����S���
������(͸7`Q��-�o�־7V!Fh:���_qQ�W3�SkMJ��=���/8�2F�t��?@�C,P'��F��[_z�mX����n����Kl�~p    IDATo��!�h���)k+�ګ4�a$I�ݵ��Gl�G�v��Cs��I?�*�ٱgЇ�%����E� C�ofI�%����i� I�{ U �>y��k��\K0XRJ�SS��m�Iͱ�^u���ǀ�#�� 1n���WJ!�����N7+!�[K*�4%�@�����eH)������g�y���}�M���or��<��z>��S�73v�3""b�ɡ����z��p��0q����v�|\)��H�ڠ�Dcx��\א��������{ɵ�z(���"B*$d��0���v�h�g�|:�l�[�iЀI�d3Ȃ��_(�R��.>��+>���Q�b~�~�z�A�X��/,r��c�06��u2>��C�,���>B�ʆ����+���8za����������
�bsI�5 �s��XhJJ�t ��;�0�5[;�EN�?��L�5�2�ff�x��\��r����8����u��)Q�K�%��Ȼ|N�.8���f�M<2-�9]�B�l�"/%r۝�L�?���Q
�$Z���r�@PI���,�C �_�<�c�^IP	���Z�6)º(=юuX�=O �X�^ll�5�6.;�Z����P�����RPד���s�t]�_��馰�����Z�
��V����v�
�C��`y7�_��#���ʈ��+�g��.P�T���2L���s�K��i-�X��tq�6�������ʄsӚL�Y�zxx�]�����\jT5�g��a�v�����^q��R�
r�7`����URR�|����D�ze*�9ǜ�Hz��X�0��5O�Z��+���/~�u���_��7�����gx.���.<�z�	����<tb��픐J��ɥw�3���I2?#�O��F���X;l~��7��b\�I�xZa�SG�1pѨ?�Kn�}��W�j�s�k��=7�RR4��J�XG�"�����FH��a��"�����٠5�S�'���GF��<�z�{3���������_�1�q�uz��ç�̮i�����u�K�4��˯Vd{����v�Hio���*��iG��Vxҝ�5������Z�T��͓RR�.GC�(�i2�d*�!�,���oh��Vs��*�V�C��\"&�/D�c���q��?��Al������ -�\s�D��_��B�B�������Rr�?q,��{�c��iP+|�����j���]�K[	;�����!I��(APq.%���lcW�u2�B[H��(��#���<-A�}��^��S�~L��ck�M<L͢a��"�@��>��Ot9����>�|j��}h��}j��F��N���0�R�� @u>\}�>�x�����	��ݹҲP�@���O��ǥ�9eV3l��,3z�է����ʇ�Z�j�Ab4sS���^��7�TQ��� V6Zh-�
�t���y*>�ݲ=)�μx�XI7�*kx@*^��o|����o���H���'��E��_���=��Oluc晊/𹓿�[�{o���?���Y?t ju�|2�q�g�,�.�U��e��f�|��<�I��>��\�� ��ڼ�������W�}K )��a���m6�h`���7z�4d6#a8ʎ�ҵ��ɶ��Ց�_�.��G���8�^�l�CXx�]��!o�{U��kgϰ�5B�t�q_�1�_D|_�m�{ ����i����M�e���ߗ�;خ�EI��1-U%���
��?|ߣK-�h�ɬ;����eO� N�5d.�T��)��+$^E�NP�C���7+^������(T��Ѷ�q�d����)��=�b��g��4�X�̫+���;�)oB�%���ݥ�A��"#ˍS�T4�rɛ��kb��q"6� �y+\�`����ǔ��8�WD�&�����Q�!Eb�[�7��G?W/T�a���n�C'#���X:��Ȁ�68�sPa���,��������_#=9��@U*����%6�:�w5=n��K,���� A�7��HW��۞
�M���LJ"�-&���'/�4o���oa���0 ����y�M/��HWѵ�K�+ϙ]\l}i5���J[�̄�nb�R.J�F�H�f;���,^P���?���y��51�&�(��g�����U*��c�K�˗>���9��H��X*�x�4�yg���㾛aQ��*�w�w��{�t�H�t��	��f�{$�����W\�zB}A�3Ǿ����/;|����ή J,�y�I��Ko�.�̈���X�3K�SХ_�F�x|������ό�LYd�g��/�Q	��ㅏ�?vP̨��\3u��w?�F�#]��R{I� �!^��,A�+��9��xyX�lx��Xc�V`�����,��R>'�	WU�Y�Ȥ� Ӓ�e����\{�Ðs�)Ry$"�x5� '�.zH]Ψ�Z��� e'�Ё�$s����!��SKj-2��q�瑐��D�������$ρ|�8�\N��m��Ԭ4��=��a�B�!C3�j�9)͒����&�{�YI�|��6����C8r�Ɋ�Q�`c<�0Rc�AK�k��`�[�
$@/1�����H��(�E��{6`�h�j��N��X�4� 0�#�4sH�^L�vʄ\�4*:)(����/��y���3�O��05��)�J�pz��6T��<�뾰��P��Np�eR&-l�Dg�^i�&O���̭7�|��E���ssx~���,?p�n�����v۰��[�2D 8����|��s��*2�͌uK%m���#�[z�,%E���/~�Y�����$�'hua�|�k�:s��h(�?i���g�����S,�z@�#�=؜u�擎��!G�q��$�g��ե�\@�+��Ԛ5��$ѐk�n���{^$�o�|�����*!�r�Dq����.j���eJ��zX0�<W��t˕n�����~k�`�Ā c-�f*<+8��?w��>�+Ș�E��|�-%�n���6U�ᾋ�бL>���Ҿ�)��<"H�̽�Fc��&9�\L���EP�a�+W��2�S����5$���]�KG�fh���pm�W7�
�����&K�^���5�}x����z�_�/šG1�=�qLQ�e򈲪&�@?a�YǬ�X��!<���W�.'OӴ�Vj��ic�O�� #��jL(`N���������E��'�V���|�����9=d�q�qd��q���T-f�$8�rf��F�;q����k1R��9F��5�8��ӷ�q*cmILFbMn/)1Ƃg��s�ɐl!d�YC�b�;R�=6R�D2|���~�??�����aD�eH�c��`�ѣ�Ci�_p��ϣ���ȥdf,)� -V8��3 }��}÷�;����H�FRiL�5�=��{��V/ɹݕ�-b�Q���3��s��������3�"���=A��h%0R��&r��z�]��G�\���ŋp�B��s�QJ�>�N�����;N2�Ŋ��?�ͷ��(��%��I������za�X�^����Q�vWx"]�-Ն�4f�
Ur`����1��}:����(v�)�9;%I��	E`��1S�R�t�I���l����O�]�J�s�"�fd�d$5Xa	R	�՘��{dx�q�YL{����7Γ`�%d���>��ʤ;�^��g������K�[�Fghkɬ �H���Sw/��~k���$E�a�h�`����I*C�<�l]���{b�&)�����`�֙� 3F4f�i��{��U����y|ǰT~���z�w�o�W�>��g0L1^HX���'p�c��hP�R�Ѵ��@��<}3�K���"��)�j'U^�k �ɈW �7��������C�kTh���n��{g���*'�{����{_t��TL�EIf$J��>6^ߛ�F�s��8[� �@�.S,��UQ��h�afD�5q��̺܈�����K1b�aKp�T�C��2U���Od�5����\B�N�Ugq���J?�Zؘ
���0Ey]�a���Th��Y۶M��9^�8�qr׻2Հub���-~k�?ha�V��"O���N�Kg�N3� �$�����G~p~	�v6aqu��s���U�r��G�u��@��jp�s�a��Ƕ���2�������w�k��� ���o��ÈAܣ�fi���ǳw�a쵺���
!��ox��B�w	�� �U��\�a�3J4��ϕ�|�-o�U=C[���L�<�Z��2���nB��'�
Oyi�B'�RXM���=�jj�z���A
i^���ɡ?�Z+G�ɹ��g���$��(4���"��6�Hb��� ������u��& @��,\�al#Yx=�����#�j�5�t:^�Z:>0�O6��ǴB�9�e���Ȍ�
E*��hw/e��<���J� U�ĎD��{N�>|����^��5g8`-��6}9������4��ط?��7�^;@o�6��Di
�ëTHm�y�� �KͶK �A� ?�����i&�L ����[PhC��0*t��`�pE���ċv�_�z!|qjB:á�L�GR:�)w����|��Ve��3 �7�v��7?���kd�^��X¢�rF�~Df �-�������ċ�h	�H��Nab x�Ip�kot��IZ�婎ό�u�RT���"��U��M��߷����B�ydV���1�����1�D��kNE� #%B�Uވ��jV	*]��>T��+.y�PJ��d��X���d�X�f@o��{�Q��=�<Dx�Y�$���A [;}Z�m|�:+����%J�3�Þ��2LL�0�@yX)h鵽��������N
�>lm��ȰRa�a=�PT��-�v�ߗ��+��W���1�#�5.����!X�DYÛi_���C}r����j')=�Ո\�B��ԎX�l��m��jݣ��*�U5��E���ƭ;�^k#���Y\b-�;J�iR���e�������q�]o�J�H�4+�Z���(g�@8)ڰ���l�M�iVX�)�;�X$_�_�D��1(W8!�*�pѪ��J�d��ce�
a�fW0���!V�d���t���eX�]� �!��f���x��W�t�'o=ܚ�3Q*0(��ќ_��h��B޲0w��f~Tj��/^b��9:����	��$^
̎O#�`+r� ���G�~5D��#	ZY�����M'5J9�/���t��{�ld�m,����?�ɻf��2A�+�P~��}T+]t�z�j�/�evz9��lfz&���+�S�fo$��Czݮ�3�pֳ���D�z�z:y�bq'Y��X'�
�rx�OFJhF������jo���M�XE��[�J�tj�jvv�o�Ǉ(�K�*����-�/���f瘙�0���Cz�6�V�Y�X������ë�Tj�遧�j���m��݉��Bi��I3�0�F�mQ2�g@����SW~��B���H�6�`��h��m�F�B����B��+�M���>`qKv���R��O*����\�`FF{7�Fe�n�C��PA@�Y'i[���:E6���E��9?���~?!� �ݖ��d�Y�%h*X4�>�"�Q@�@��y�w����R8N�ز��p�w�56PxX,��9^?[�NUê"��8%��a�3��IƢ8Z�r��7$dx�:���I�̀�o��99<����/��Z�o
��0�M�f��1��.�z���c�4���Xam��N�QH1t����Oc���m��=�s�m�� olj�5*�M�N��^�r���@���x@J����� ��ji[���v_�]�WE�E�%��B�U���o������e����p��:�<�hT�u����gԈj��mu��V#%*���Z���2T�{�ؼ��g��A�q�u�� �5hndj�샧�O�������_<�^P%Q�5bL��{����{�X8<�jMHR�Zm�7�h��d�"��?�Cy��7��֒��]馻���ֺ.R�f	>�{R�@������o�mz��s��0�鸵�ahu#N�1��`�!�K���o�X���� �4s:��,��R� H�$j�v��*W�o��5��=J�̗sB�	����L��s��CO�������7��&M���p�,�œ�(����A��R��4�k��abmI� �4��T�G&3"�;�m90L��}/r�I�����¾y6�-ĵ����6�K�!ԯ�����/��o$�h:��>l�
�i�'%1��� �+Ƽ)���W�~�c�����i=wm'�E*I <L�iZ��e"z�Th2�|��~���?���Y�!M$i�1��$��t�����l �nF���$ ð��v��Q������c�O=�l���P	*����h��v���5���Oȧ�䅏�ѢV��˸1��%��}A�a�죜:y�8钤	��)bĈ�i��tl+�$&�Z�ܙ�\X:�0�4*>�J6.{{�ZHS��...���6*2���ed����_��]G_�DJ�)��$"w����lln�����s+�Z��L���t�IR�HߧZ�d �S�ٮe�xOnV2�g�@x>����-�y��WI9
�:�CO��`��ܥf�����+ݿxj��o�=�C
��'�J/ !���D"d�oi�w�t���-�7�����#P�c����*�u܌2Wavm�T �ŵ����0a%�b�R`�@�'�r���GS"��ow�G�ψ�fV ���e�� �i��Bm#e=���<�[�p@U���F�M2����+@��O�<�n\��!W{���j�5��g2�Ņ!�U�x,���O~�7O}�w�F�^����=.Z5֙jc��vP��Q��ϭ2�J��zuvA�-�'b�d�6�L�lP�ZE��č��uEF,���� AH���?7�{���߼0����e�_{��h{�<�.�^s.�^XXw�}�˝f@�n.l���_��o�?��	��.��y�����Rc�M9��c���@�څkds��=�X;�B��
�e�@����}$�AN�l�dv�.m"������r:���❏��-z/z[�mZvk�X"�D[��u��a�|>�����2��)t���q���k^�te�n���'�?N��F� ��O�DZ��{j��v���d?�ėi�[h���>�RxH������j-�~���?���:�N\7!��bGSLH�{~�ě��?yCM�b�1�x��$ӆA?bm�M4��fkp:��G-���$����&�n�V��Ń�,<4�ΰ���
������r�
��z�ً^ ��B |�<d�xPe�9���e{1y��Y�'w�?����C�S*a�E��G��������&/�5I�spձ��,2��*O{����d�8�&H��9�	�u9 �;?"OM\�*�ᙍ�}3uy��h��R�Y�6/Vr��Ɛ��g�H	b	�hO��|��
SS>ӡ�Z������+\H���Qֱea�4��pB�`���ƺ�B���9�1��K�n���V�ۅ�Zc��L|,��v�E�|��0��g�?��8�������O:1n��	67��{�M0"�!=�!ҐX���QI��L� �	90}�����9�4�[����F<��)q���GX�7C���N��so���V٘��) �R���UX���x��?����i8×7����h�U7���!����k&ɩ�26�U���K�kK�Hz�S<ɀ>��:�*)�¨���������/��~�{���
��1ֺ�rA�"$�FM����9�n��Ԁ�2��Ee}c���Z>#U��ť��f��xSaӷ~����X��h��Ť	��@�؟ٽ�l��U*;}��
ҫ"���A�d0� ��s)~V�Z���K�H2��kz9�	�d
L�}q��?�������*���ޱ��%1���3Y�ʦj�}�/wy���W�m�[�5ӌa�g|C���K�?zdu忼��l��s�,^Z��KIR�B��T있0ٷX��&�SR��"��=Z��^�@���>0�q���Z]6[]j�$��X%͂�d  DIDATH☵u�ζ+)V:1qא:j(0�	H��8:340�:QE�fY��.'Z\��լAX��]ْ�E�S>sݔK�����}���'���"P MVPA��0�z�u����5t��1�FnG�C\k�@AE)��Gج0S��ՀZ-�Q��5T��bA�n)�Gl�K��`C4�,;_e@��>up�س�p-{"�6i�B����흜_Slu��7+���y�!l�P�NA)����,��N�F�wҋ���]fO��P!���w�K>,���
�)Z�=:-�:熗�̓��y�Պbwg@�ӣ��&qLƥ��jU�<��HZ�O}�*��}/�������:����^�l�1�~���允�����7\?=�0����\�`�ݧ[�+��^�/6آ����G`�Qe�s�YMaKWV` :�.�&��W7r��y��Ǹ暃9� �x�0�v�<�#�Ç�~�/-�vg����]���z��xԯ<��~�e���~�\���v�!�P�4�Y�=���G�Ӟ��E����Ž�'�%�@NkL5���)cC���{���􉨵����5M�㇞E`3&�-��T?=���ӟ��&�F���~d�����"��!�l��S1��Ją�Z�~"�fV�:@ixV����f�(����R���>q�G�����1���!SK��������|wo:~i�K�7���v�Q�´޽R�Э��w<�;��a�C/�RX�+�<qq��{~:)��y��
j��T��@[ɰ���U�ed|5j�[Vb�T�	�j��C��TH�"����IE��NVϝZ��Ϯ�?|dA�q�*<�B a���B��������q�a`����8��"|�	���}&=O�E���oej����<��89Y�'״5DÍ���(�;w��\���4y���9�h�`�����������_b\�3^�3od�E��5��IG�`��5���O�~�G^q�ͯ��%�5�~�D`�!���>��6��z�эc*��'x��9���s�W���8�pP(j�	<e��_���l�|��W�V"g�JLdS���7��v���6��83`pɆ���}�����C<���y����D6@!���I� ���@Z<���I����T�IdC`C�KAd�YL4��E�(m���ny0~�ddc��(����AT �s|H�N)�G9R���>w��t��1z?�(ܾt�߳���4�Ǐ�\���e'#wNE~��f;�O1�c ]Lx�����y�5s�h��
������}V���2l��|l�Oڔ���h��>�/$���n��x$'��]\�o���-4s�5�r�pm��R��k2+k;��������w1�PsU}�$VP�j��5�ğ��^���k�|ShiF���P���``~b�G/f\��*��ٙ��Z�(5Xa�"���dh�I��(H��v�^W�[)s���)T�(�����ʖ�>��kn�w6B{]&�TM��
A���+�}����������:K��h3�-����7<��|ak'.��n�Z��g>�*�YfF�p�r2���)v�!�H�(�k���� {���͗��M�F��� A�:�&����H�&��������; �����/���^]����`uum���V������x�G>�����>��՝E��]Й�Z�N-23���d��fF�gh�z����œ���MI��NH�@�!�2�"Tw��}�'�<�h\��6���v�)��1��SS��ƍu�קg��e���\h�g��+�yI 7-����]7��� �f��4��y�Aa0�x}H<��8�bI���x��<E���Q2�'��q�:��C���f�\nVZ���,��c\�ځQ˞B��a�e��V�m��^x,4�}���Jht
�� 	�>��:�Ί/XȠ!,��ǒ�"*ꟈH�F�J���g`J�D��x��K�Ovc��W���2J«�L�{���K����^�x����!^���)�5��E≛��R0��,��z��8��9^��o*�	����e�Km�n&�$�6�XhNϢ�*�&yu�C|�瘂qB��$�"cۙ5$&#JcI������dc-TԄ�z1a�����O��������g�d���Y�3ufg�A�D�WH;w��ދW��C��zr��Ij�f���c�W�|��Kn{����~W�z}-n��n��~d��8�nu�[�V;+�k���V�����No�Q��T8��B@*���|:ٓdJ�n+J��zCܖ��#1)"6�:�1H����(��E��o}���Z8{���.�_�d&˨�:HAdw��7� =�v�����Kf~��׮K2I�Z�n�P����xAY��>����w�\.�胊��Ù^F�����,GejL%�^b,�2����Ǒ�Ω�y�.��?V [�؛6b�LV o�C�����g�S����A �HZ�y�k�ne�1�	����H�Hz4@�e��{��E�ƻ,ҥ����/��K�P|�@YܷLT��'����?��8,]�`|�#&W
e�-�7��ڌ�o1Y}��>Ei?��(�]��.�]�� ��a!%�@�NL�] Y�y�,`Y ����c��vA���ۍ�]~������쳰O�=K�U�ڌ��(SJ#�+�E?�����^c[¬�	#��M�o�~����S��哄��I�굽�g�[��RՋ���ù�[l�8��8�L��W*N�PP$en���"_d��s���Rؠ?ܡ���jLSoLQkT1���y���0�^+T�� ���fC��L��J8k��G5fgB�z8�ҭ�a�e�؋H�k���3I�x� ^�I�r��]Vb Mg}��%����нn��F�y�Ɔa��"�++$�!Aԏ�M���O]b��U=��o�O���\due��WïxH���V�ר�V#�3폞�v~����_~4x��}�jbjJhKb㬟.vv���z���r���%(܇�"��_���y��QV���a>p��N�w��wP}a�M��Ջ���+�lk}�}ic�}����_�Y�x�t�	��Ҽs�H�q� ��7��p��xX<6�,���	���Wz�m��E�T����X.���u,�S�Cŕ�Ծ��K�܊����>L����_	x�ٓd����ɺb�$�;bґ͔�/ߣb�(Otƫ�b��]��*�����{�_�����FM#˓Bя��V�F~�}8ОM���?1prU�J1��~��o�l�O���=vꃏ���3�4��!�p��C�y��δ�w֐Va�B��Pxu�l߲X~V;��t�ǣ�#�$�� �[�r7����a��/�w�O����:��_	�olǄ�S3���*��4~c��R�ZՙJ-�^�����*"YC����~���Ʀ:}��]�2��$;}ޓ��{�MV�92�bX��XZ^'�G�Q��NE�UrE#�u"���Cy�O<y���eljP�Ó�0��{sdYG/m��Y�E"(A_w����ͭ���|�|���Km��J�
����Ydܡ��������>��F�`�#|� �IԌT�ųDƠ�F%E��C�i�"�LZ&��= M5��c�i��&&�7���y��N+���]��G�a����}�t�jWc�)��%##�ɐ�'��R������� �<(=��3	F��H����ތ7L&QG�
�Υ~�?���7�S|ǔ�������p�db|�埽��J���>���|�c��_�DR����0N�L��2��3�s+��^i�ŧ�H�)�b�Mq�B9�(OE�l���oF�+O�ѫ�y~m��9�������Z�n~�2eU_�MקQ����X������N���j��d����{r>��"<���
OA5����F�X��`���q�\7X�ë��^��U��.ln��G�>զ`v�ca_��t�J���$:3��vvw�َ��vѶ6�"�f[���.���r��,&;PS��A�|���>E��BJW$�U��$�r����|��p��]��%*\ �Wݶ� �����]����3�)\��<a�����oӶ��!�i �&�h��F��K'���9M,�Ҡ-w��X>`nGE8�.R�H�o�V[�iQ��V$^la+�a'�EQ���4������~�{���"����Yg��@��m�4�I&_P��`T �W�H�.���\n_�}=?�{Ϋ����v��֯�������QlS��
 (�_9�/oW<�b[���'�b<�M�){1������
;�b.&���^���\�=z��+�#���;�z�5Y�қ��K�;�'�vN��#�?gL�r=�0S��aE���cb�35����`��������	k����7��~O{���(%�4#N���)���sy��gv��oX�[�C��$�D�U��em+E^h#E{��in�j�;g��Ľ�
��X��sQ�YJ�W��k�wa{�?�01�4R�(�#�@ySHc@��M,/�ҋ�?�1��y�_�v[�ݝ�e4����<Ȭ�aj��1�"7&�N�0C���e�R[vC���e2�]�ъV�uI;� ZЂ�E���&ję|�2�~�5?�L;���V��b҄��ѧ�5���o�?9X
�az��_}컯�kwR�u��2�t[�����"9��J��^�M�����?FeP�B��n�����������������W����U��/���K�{��(>�ɳ�]�	��{Ǿ����%F������Gף��030@�I�����GB�
�+ƍKƸ0*7�t���n\�L�.L1J��"��Dǆ�G?讪�z�W݇�S_թ۷�Ff����䦪�o��{��|�����ؗ߸��x�G�y��|������e��n������+/l�g&+F���ӷWfgq�x�%F��D8����&$�� ���y�e����D	��	jl���=�W�� $z�Mv-x��\(so�ĽE��ePb���'R��0�**c[6T����sv7Z\j;\EQ/�k>��}�r���N����0�M�q���d8��~3zל��l��w[/_c������+bgE��E7��/3�lw��H�臖%�t�$TtOa���$��S�$�fn]�[����tO2����Z\i�$�²;�	]ӀB�H�V�/�??��'f���Z6��(V*�u"��llC��f����r7|�?�21��"��e�;Ż��'�?����~�a��\&�Üi�fR�Ƙ$����!��}y��/+
KMJ�BL����\�:��u���%>��+1H�,x��ϔ*U���*�<��U�d��N�褮Aƶ�C������z(�;`/3#�g~��6��ʋ�7�R-�<S�V�a�PY@#60�� �����	h3��KSlݘ}�{��3߹���A�$�ꃅ�(�� �0M���QbG�����ab8ey/�'������̫g�e�_Œ��읎��1j}y���H�o ş��T㉓�l���	Ą�I��X�����j��4G�ZW�i�U�E�Mh�wYk���ֈ�v��]��h1�A��f$�r�7x���a�)o��,o\ cf�{~���g���3^lYe�X&I4�#(�IJ5�:���ӳ��ʫ�ss����p�^?���N=�c�G�q	����F��>̀��N2�	3�qK�N9�J�����8���/EEbB&I�m��@�P�����Yw�����;jG�/D�vlx�>�7D�\�����̗��΀����Sb���)%y����%Oz��'zB�zzEe�Ь��A�D�LQ�u�AXy�IF�MZ&I�`�	�ebY6�=�:��@�B��k��n���
>'��M�����db�=�Y��#G�1��1~�z������΅ғ���3!�ʵ*��e�gj3g�'f��㥥��R��0)���[Mz�Ql��67Gڂ�>"�/�ݞ��D�x�i{i��W���4�RV�3L蕒d�d�$D�l�� ڥ8Pc[9��j'[�t��<1�23���z[{�����;2o����/ѣ�����X�mD��&;��{͗:�C3{�;tI� ��4I���7	�.no�x'�^�G��&�\!���1���]6�P}/K��J�9��K��?�����?I)Jl�J��]��ʔ%삅Q,+�Qd�O�E�7��Ӥ����C��f��3��Z]��:{��i㛖�i'K_�����L]�v��3N��f�!�_kK_��X������<Gݝ�c*c�^os���2����2�Y���p�B�k��꓿����4.��`A�.R.��M�1��aH4t]z�.-8�DDT9A�*k\l��o.1I��LnY�9r��6|���C�:�;3�g{n@l�U��+UJe�5�1���M�0��v�"�\���x�~���m�oF*aU����ިʍI�Mw>�|Nڱ�Z��Yף��ē�c+��/љ����Y�����Y�t'��R?+c{؎�z~T0�d7�v^h��{��}��K�x�)Q@lt�ǐ�U�laQ�N�+�u�/��y�u��n�M���s5��K�|�y�B�`ׅ0�P(B���gJ33�KL�P�[a�0��ݎ�vsD��B� $�w����d����Ӟ델&�C����P�tKݻ��N�L{���5S���cՏ�#,ƥ���G��w��o��#|b,"�Q���jk=
���Z���i�~�D�����+�$��~��GR�\ʜh��j��Jb6A�ܔ0R9�^0L%%�o[��{	�].�v��׀�(]
I8KN�f#��
g�H����4|����j�����Ȣ�b��q�܃|�����6����ڽ,�b�lt�xm�M.�Vx��%Y��ʦn�)�9r(磌�Z2����<~[���8gX�ޅ��ƀ���H�r$��Yira7����@���G�e,�����AIw�[~��4�c��[A����;����	�m�1X���r7����N���]MO��!3�8�0�8��w
8]�8;?�=s6w͗9;ڮ����朐n�Xm:�1T��&ӂ�z��-���3Ȭ/*�s�ca�Xg"T2��
�|?�5���ĵ�x�9rHXRD|f���(gd5��fHTW��w �����-��O�q $hh���a���ݱv�^9���YU69r�(�iZje4kL��4V�0�d�'�_��&q�c1r���@DL
L�r�	P'w�
b:5O/]>H�&G��Y��[�T��"�{�b��*��p���<��|���;�^b�&u��i͉���U��Ƚ_`o��,Ѝ���jz1Ա@nxo,t
�nl͌sӜ�����8@��u9˴�eMU�Ȫ86���A�/�����q+"-4uPY�<�����R�_�V���    IEND�B`�        � 	hide GUI �E�x  
�on mouseUp
  local lRestore
  global gREVSuppressErrors, gREVSuppressMessages, gREVRestore
  #   case "Suspend Development Tools"
  put the openstacks into OStacks
  if "revmenubar" is among the lines of OStacks
  then
    
    select empty
    if the shiftKey is down then
      put the frontScripts into tScriptsList
      repeat for each line l in tScriptsList
        if char 1 to 3 of the short name of l is "rev" then
          put l & cr after tRemoveFrontList
          remove script of l from front
        end if
      end repeat
      put the backScripts into tScriptsList
      repeat for each line l in tScriptsList
        if char 1 to 3 of the short name of l is "rev" then
          put l & cr after tRemoveBackList
          remove script of l from back
        end if
      end repeat
    else
      put the frontScripts into tScriptsList
      repeat for each line l in tScriptsList
        if the short name of l is "revFrontScript" then
          put l & cr after tRemoveFrontList
          remove script of l from front
        end if
      end repeat
      put the backScripts into tScriptsList
      repeat for each line l in tScriptsList
        if the short name of l is "revBackScript" then
          put l & cr after tRemoveBackList
          remove script of l from back
        end if
      end repeat
    end if
    delete last char of tRemoveBackList
    delete last char of tRemoveFrontList
    put the openStacks into tList
    lock messages
    repeat for each line l in tList
      if char 1 to 3 of the short name of stack l is "rev" or the short name of stack l is among the items of "Message Box,Home,answer dialog,ask dialog" then
        put the mode of stack l into tMode
        close stack l
        put l,tMode & cr after tClosedStacksList
      end if
    end repeat
    
    --cancel revScriptEdit shortcut
    put the pendingMessages into tPendingMessages
    put lineOffset(comma&"revScriptEdit"&comma,tPendingMessages) into tLine
    cancel (item 1 of line tLine of tPendingMessages)
    
    delete last char of tClosedStacksList
    put the tool into gREVRestore["tool"]
    choose browse tool
    put tRemoveBackList into gREVRestore["backscripts"]
    put tRemoveFrontList into gREVRestore["frontScripts"]
    put tClosedStacksList into gREVRestore["stacks"]
    put the windowBoundingRect into gREVRestore["windowBoundingRect"]
    set the windowBoundingRect to 0,0,item 3 to 4 of the windowBoundingRect
    set the defaultMenuBar to "Restore Development Tools"
    unlock messages
    #==================================
    lock screen
    #set the backdrop to none
    set the backdrop to 1177
hide menubar
    unlock screen
    show btn "show GUI"
    
  end if # OStacks
end mouseUp
        � -          	       � 	show GUI �E�x  �on mouseUp
  global gREVRestore, gREVDontLoadMenus, gREVDontError
  lock messages
  repeat for each line l in gREVRestore["backscripts"]
    insert script of l into back
  end repeat
  repeat for each line l in gREVRestore["frontScripts"]
    insert script of l into front
  end repeat
  put true into gREVDontLoadMenus
  put true into gREVDontError
  repeat for each line l in gREVRestore["stacks"]
    put item 2 of l into tMode
    put item tMode of "toplevel,toplevel,modeless,palette,modal" into tMode
    do "go stack" && quote & (item 1 of l) & quote && "as" && tMode
    lock messages
  end repeat
  close stack "revRestore"
  set the defaultMenuBar to "revMenuBar"
  set the windowBoundingRect to gREVRestore["windowBoundingRect"]
  revScriptEdit -- start sending message periodically
  unlock messages
  set the backdrop to 1169
  choose browse tool
show menubar
  hide me
end mouseUp
        � .          	       � TriangleStackBack2.jpg @       Z � �  (@���� JFIF  ` `  ��  � �" �� � 	# !"!%'$ '!!                                                   ���          	
   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�������������������������������������������������������������������������       	
  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ��(���(�/��?�������5"� �����** ��㲳��|�p�d?@3Y�*�Y�}?L�ןD{�B�Tm컀-����%�Z��5��,m�����UMj=ź������CO�-�kH��R�	 d�c�1��ޠ�i�if��ŝ�#`éY��~� {z����(ݡ�O�|1�#x����� 
����X|Yѯ���7���!���������6��]
�r����ff#�����r��>���omt(eC���ma����A�>"�2�6�p��k���^�ֻX-|���C-˩90������5v����-<z�ž��X�
�� �I$�Yx��9	q��H��[9�A�}k��,!��4��2V8 �� ��)��^�g�_D��X�?r?���M��<�$�忶U��&�3c��"�+���q�RF+6�i9陴�V>�B�����&��e�]&t^I:4M�_��Q]��q2�_^FGO�K��9�=jK]#�����UԹ�Y�ɑߍ��������=	�}sú�`��$V_e�W�`H���+�{[k�y��]:��;�gn�[����v���[Q�{k9��9
�-
.x9g�z
��#x��G��[��Q�*CAt��lp��kkJ��l1�?x�GO��K�1 ��S#܀q[�T�fH�ٳN ȼie����Vu�[絉�S���J�˿ �Wq��=��8l���u����C|�v��n#�bs��'�[�3aE��I�)�ڈ��O%�F(�MQ!<yb킏֫�x6�"g����A�H���|׮��/��uJ?霃�̟�֢��J	<� ϩ�Xk�7w�i��P��m���euPOa��Z�z'��R�᫋����sң�Ǜ���CQ��Q@Q@_�r��EE�H�W8�<t�y��� �"��Q�RA���U �ʚ$e�plq�Ro#�S�� �[�.lᗷ́���!���9������q*㟥O�ѾUx^0�wND77�Z(�gX���(f��H�q8�����]���.[�f��$|Ҝ��玾��s�Z���bH4�ӧE�X)���� �ǫ+'�RFq�8��kXB��¥N]��D�P�.���
� �Y}	�?�s�x��o��{���&7�s!�6�a�El7�n�	#��į#�+���7Z�Go&�dD�)ׅ���`8#� �[:b�G�Ѽ�����E';B�:g��޳$� � 0k7����xZ�Im�)mI$��P�h琮��Tӑ�+�q\�V:1�H<}�`���>���|e�;c� A{e�_�לv9?�Q��3YL�
��jڰ
T���Q���o��3Џ�i�`,j�Z�;ĸh.��&s��U~�w2��W�A�fc�8��T�m�����$�<���C���Q���^��A�d͏�5J��N�[�7'#�����������d���thE�ۂ�/�I�}=��{v���,�G�h袊 (�� B��zS<�� <��� ������** _4� �6�?Ɠ�?��� O�u�;FA4$M�7J��*V6�����-��g�V��QF�|���q�S�� �WN��j
%L�	rX~\SHF/�t�,|m�5�$�Kj��8�d�}YXc�gH�[k���.�c@� >�~]��_-�ۘ⼵�4·]N�p{ `�]��<'suk��o�iW-�3[�@���#�S�ӟ�tS�FS�Q"�y1;����nO�h���,��p��Ղ�=�m�-$���f�[�c��1Z�I���[�RI��
�F�"'�]�n0@�G�<���մ9�[vF��x�Q��6����s��I�EU{g`@�`U�.ib�[;kpL�II�Y�L  �a�A�xn)#S�,�a����\�W;c�9�Ғ%+��O�sZ��:���{y���em�W��=� 
�=�B
0����5�DL��!
��6�����[v"21���Ɗ�w�� �"���� |� ���w�� �"���� |� ��y���1I�zP�E QE �� W'���Th��T�'"� �����*5;Xt9����#��X�	���b|��e�������T�Iq�_	h�¥���/����58�l�<;�V�h�[;r9�:��{�kZ{I���x���{$_�~U�}���x�x(6��.yo���튆��Ky6,�Ac�3���L�M:}NIM�bơ��Gu��Iwh�/���6����z�df�,�O�h~/>�6�3��ɹd��~����h/4���̌���Xd`EU��-�~�5�v���e��#7 "��ܡu>��8$�\'���S��Q#/����;BX~m��M2Or-m���.�Pʧ�3�Q�?��� ��5�Q���c�� #�T���C���l�� ��^M��p�}���^��m���Q,v�b|��_�1Iy��ܧ�m��ͷ��l����Y�?iY
�#|��~n��U�QiD�������?�z�5�!es���F붚�Ɨt�Ɨad�	�O��}���$}3T��b/h	�����7�\g*�� ��m��^)��ӝɶ��~��2���#��LЭa�<}�M6��ӵ-6N����OԤ��\
��Hڜ�i���q���i�� �� �M��9�q�� 3M�� W� o�k�ؒ�(��(��(��(� �)!Iǥ3�?�ͿO��\��� QQP�_�ԣ�s�Q@V#!x�ԋ�` qWa�b?24�pUW�N��H
7�<@�;}A���:�ڷ��Z9t˵v`9Xˆۡ�v�F�y{M>�P�����'8��B����iv��VE��J�`��Q��������D����qwh���!M���̍�A�R�L���$a�v��q�&�}F���?�5+,%���7�?.r��|+�hb�4���A�n��,n�ذ
����]��<�����܉���Wv9�5B=1�k������H���(
N3��%o�Z�aK�Kei��ȏ�2;~�UN2{/�Y�r0Z T?p�=*';��7{��������\JfU8=G�<1����P�)���}-$u�e����GwC�;�j	�(��i�F�q�I��B�l`uF�}�Ed���ѫ�i�y�j�Z{E�찖���B8$G��U>�y
4�(m��	������H<5��z�j�����i�1���!�Τd�(#z��G�j�k���e��%���59]x=F���?�t���Y�}Py�=���stBol�Ѐ:��sW���ѻ��4��<���� �1&~�{R��#���W�ry����2�Y�� ���)�.y9�\��R�t����ׁ�a��y���9����M�vɽ�������T���m%����F~�:���N~a��Y8�os4���R~��YAm�q�T�6� (Õ=@���� �T��"�S$�w	� ��) $����~��$��( ��(���O����U� W'���T6�ـ�3@a�Ye�L,P��_��~8���	�#�lڣ�ө�G�}+��oΙ�� Vԡ��'�Fz����]Dz�Z�t�U�Ai3�Ő��s���7�ʤ�Q�Kj	��?����'>�>ݫV����/-��y��kÇ^9BNQ����[���c+��9籬]M��v�Q U�0�x����0RkVR��x[�vpjWnү�}��LoU��a�3W5_�Y��Do2v���O�q���t(�M�I���`��l���3�FG�nA�������ך]����D3XM[c��E- ���P��O�R'9?�js��+�qD!N��=Mbh'lS]{b�����ȥ����Ƞ
R�Z���so�G�u�9�Q֣:u���D\��Fұ�	���^�r*-D�'���˸�=?U���v���i��m�2 0=	�����~W���R��ӷ�����<~"�]������q�����^�W�M��F� ,LW#Fkzp�z��$Ӳ6o�;g-qe~�t�s������	���;�-��X4#�[���P�V���*�2$����#�$��V$��Y�d�?�fx}"�u�V�+�����X���?������ebc;��!�m5�G���0r2#��v"������c�j���_G��z b`�ՖX:q�F�����?�[~dVt���?���5fuGT  0 ���_�	������ W� o�jFIEPd�"ȭ�Nq�hI~WR�2�Ǩ�m̀����nhe?$���EC"3�ʣ'v�C
#�A�}��Ku0Ͷ�,�r˃Ӷ֝����j�>��K�������9_�T�:��^�"ԥ��b��a���g�p��E�� U��Z�e��ѯ���%:��F?Z����K��m�[3�WG�~b��`�G�ⵆ�I]X5��q^�h|ŕ\la����[��SM�x!��	��zT�G���6���Súޖ�|�[��� aH`�=�8�kK	�B�LO��q�?.I?�g�V�v9�M�s����n.�[H�~���7���V�ͼv�,�6���o1ʢ��L�,S�m��l�R�.���E51���)�|�yϯ�%��8�#�n%��ȦD�"��~f��5��m����)���Ȃ�6�� t�5V���D������jU3m\�� 3��i���jh����rOOz �Upc`
�q�QT���ZŮ��"�@�3�:7��X-�n�c�#O�O��Q\I��L�\�9��;SI��J���7�!IG��R餅K�ї	0�*�v��V��.MG�p�ir[_��G3�*��7~x8��i�]��X�{6�S��ڭ��������Te�ׇ5I�Ok:v�'��FBF�v`�+N�l�c��N�Tl$q�p:z����k8"R-a�.&gv�����V�zd�l�L���s��r���ޫ8��X��I���S�:Q�Zr�Ց���(Y������'Ԯ���tU]�~��?��ȡd t8"�5ƙ���| ��"����S@�N�&�-B?9zF����cֹ�ش���A�ؘ�ca?3tǩ�w:l��Q�����aӊ��Wr����(	
	=>�14��b݇a��C;����uG_Վ���Qx`�A㢠 :d���v��'���PA���k�cyu�/��\�,.�ߘ�+���/A�
/��1'��ۿS�M:��%�9BI��������E:w՜��nȳ�G����.l��~��n� ��#8�r�j���Ok��\\d�A��gr�[;}'���[��I$l���0�z��#�ԾEw<��!�����]s*��O�_!S뺪pV�P��f���X-�����rY=���5�v�+7�&~�� O��x��E��G�eU�{��C�P�s�G��ብ��E��&S���:N�6z#��-��G��z� ��������۫}J�L�k7��@���ᔂ+��׏o)�eS� #���2j�d[�>\+?���N��g7;ln�m�+�'���+���2Ē�a�A�s����Vg���|M��y&O:��r�+~�.8V���qT��B�iW��1]��n�^<ᇡ��X,>+�z�����k)��a쌪Σ� }L��i����o\c���V퐤BF��$/���WٛP��HS4�0q�$�W����앂Ea� ��*�|�Uk�#F쎟I�ml#G��g��0�۷#�����<z~�,;x��xݿ�y#��#�#�0��A��8�W��W�o$P��ヴǚ�=.�h���կ,፵�{d"}�2[�l��4]�� ysR]�X�b]�J����P}&�_�Px���;�"��X���W�<Ʋ�%��<M���h`D�lq�T'l�?��+M�3��5��O��vi3,Vp�?x~Q�����U��60�2���0w<���k���8�?	^j�̄q�J��}s]���B��̟�;���1��'��VqM�9˕��`�m���}�N�_j��na��,�mJIdp�N,N��~3q��{�Л[�:���ڱ|U�kw���3�<@�q������1U�&��q>�;N�V��7C���ci#�/0�wv��� ��������y&��|A��m��*;y��6?�p�Z�|H���'�G��]1����R6:"�f�����(�pD�ꖥ���=��V�L�Trѕ�c��1�Ѿ�y9@��1�Νx��dy�� 	���cҚ��2��}1Ğe�l�8.� ��$a�i�����¶3�q`�U�
��KM'Y��[����D@���0T�9⭯�<S��vڢ���^A�����qʸ�����IX�C>����+�U�����}*��w�z����Cig���L���>�Ү�mg�t�e*�w/+�L��?��*�H���%�>���}{v'��3�M�vT�z��ʰ9	�H�s���.6���Þ&�&�9��H������X���N�P��#j=>�m1D$3ۙt�y�Aї�w���:�64�5oo�����d{y�'%{�FrR����0��ug@��ԳxO�V���Yt�G�xS9� W :t��j�z^�4�����c.rB�l$������u)$�i���yf��$�V/1M����Q��K�i���h�q��E���[��H��g�+Z��;5�d��̃�[����E��K�Tܨ���[��@�����Y�c�M�ve��m/m�0@�ev����A��H�
�<PA�YD ��1�t|�����V��2`t�i�������c��]���ُ�>�pA��`Ά��j�'�MNY�F�]�6w� Bj�wo)�� �?ϰ�W>%�l�wc;x�×j�K�x�+�d��X�)��A�#��"��{��,>�i'Ӄ�WZ�H�Z����O���
�@`�Ge�Ǿ �O�A��B\�m�Ac+�s�/S���u�.�Ǽ�g;��G ���ߟaUܪ��+՛20�x��q�>���}K��ك�F׾�q�����Q��~y��Ď���c}⺻H���	07�߈z�X3i��Lc�L�+��$I�G��4���|7�=��n�	�\�}�d<1\ {�J��g�-F��0��C����Z�t�^��3yi! �����o�_��kv�6��d�.�$�I��F��T�閒fF���V�3"��` � Mn��(��ck3�J�_� � D�m"ES�۸��o��+WWO&��᷋x�w�T
QM�8l�B�2�'���?���$0��wrNs\�w:hǕ����Ԛ$gVP1�x��R=������+F����O.��m���71=��'������T��n[�\V���WU'�j��s�{0���9��2� ��m��������� �x�>�@��Z��e;Z�?�7�6���N?J�eo�]�2_Y���
W'���P�[��,dʲM0�,�Rq��&��g����+V���v�����5�Tl2�x�O^:͏XK���G&H)6x?Jn/�\j[�
��v� ���-��A�
؊�Q��_�mv�Q�@��99늯�ɭ�_W�⼳p��*B@�#�"�#���4�e��qn��ܹ��Ո��R#�|"+���M���iu%䨶���g#��{օ���܅[MK�s�D<�,{t?ʚO�ij��V8���'�{Ԣ#�'�V/n��:V��45'8�`8S�8��Զɩ\F��Vv�iv��z� �\R�ar�ZH�'�N� 
�k���9ǵo#������t�J4?2����eO���~�fэ�ó>P�1�����[N�S��i4}N����T�FǱ1�*N;�\�T�����BO�O@���Ү�e��>f�ac������c�ӽ%������kK=VհU��6;T�j�+C)��R�i'q����A� �p��ь��z�j{K���U-,LN� J�V�Zn�4*S�Zj�}�O��9��<���1�B��� �֠:{nY!ybul���O<�;� �kjs�Z$�-oIYQ�͸��8��l佼V�X��H�������&�Menc_�.��B������w�M�sx@<2E�w^H�k]4���?WӯdU%�U��t�VT��-��Դ���NQ����T���
�젧=��N�ց	�$�֕�����0���� ݏbI��-�K�����`��^\�6���⧕��9\p?JLU����b��m�ʛ���G>��*?.����>2��U��O���Π���.�#��x��w���g�i�F�� fg�q�'6�a��?�#�ɡO�1��)�[Z��i�Gx�w��3*��w��ノ*տ����[f���6b{�Q��e���rx��Z錢���u:o�ð�\�.�쐽���GxԒGl�T��Lν�$m�u�@@Mϳr1����gZ�G��ֺ��K5�e�FS�q�GJ��]OO�%�E���-�F�ɩ=�Ν��F߁�~\�S��RWG����T����)fy�0$�Q�I�Q�pq��#�L?��6>�-��ʀ � Ƿ�+�:߉u��a��G+w����7s��/ӽl�X�B�����[OO���(�$��
NA���9<�9��V�:/���o	Xj6���f���BGB9QҴ�Es�i���%x��#�Y���(8�ϭy�j:��������`�骷���[�1���gެ�w��֡ey(x�6h�;A`�=��ުR\���O�� e��xa�,|�h� 2�$�5��z�/,�����m6kf):';�����N;��G��eִ��2n�oF�3�2����	<`�4����a�Z�@������w����籥NQJ�n:���U�
-�Ӊ� ���;�$dVc�8{�������%��n�<��n�M�� �d Fzg��
��}}Ao���$d�M��Ü�c��T%����6z�ZH.^��.����v��g��9�%-G���sR�+=?V����]|�����O<�����z��_��HeYm�3��|�%'a�q�)����Q0�ƈV5bz�'���N�`���P[�vwOq����#�J�z�=)͡+���SP���Zm����Te1���!]�m��j�����u#E,v���4�a�L{q�*q׏A^c�wi,�+�ƭ#��c�XD�B��pű�K�ūk6��~V�����On�������x��&�r��M�2"�K�w���z ���kYb��K����G��'!��q�^w�h�=̚��;C#�m紼N��q�6r1����o���-���$����x��&9�#�*r�EJǠ_j"8�y���Gݖ��|,��c�s�>��Y�pQR�P�wl,aX��t��Vv�gq?�m�BW��(��לH�Nx�>������[�o���L�Y\M��7��� #gJWa���5}N�
�i&����%�慇�B�sЁ�^��#ƚŤ��76��f�8C���3�ٮ:	�v[h�p#oT��������i��mL�,�;��~��a�2��v�a�UQ�������uޛ�J�[�|¼���w�+���z��ki��=��Y �0������߇���6}.K�	l �"k�i$h�g
�ў���*׈t}n�h�Ց��6$L�8 �=�>�)F�M;!��h�[��ַq���&����%�����:}��&��-��R<����\���      
  � Zuege  !`        ^ !         � 3      
  � extraZuege  � B ����ff  XXXXXX  @  �� �         � You needed 0 extra moves.      
  � falscheSummen  �   B ��ff    dddddd  `  � �  s        � 3Unfortunately the sums of the sides are not equal.    Try again! 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  � �� "    borderwith  4gruppe           � 86 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  � �� "    borderwith  4gruppe           � 77 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  � k� "    borderwith  4gruppe           � 68 
  m 
Loesungen  h    ����ff      ` � �        � KThe following solutions for equal sums of each triangle side are possible:    173     	    191     	    200     	    209     	    227     	   
  s Hilfe2            � � ,        � 7You can use button "compute sides" five times for help            	       " 
  � Information  �x   Gon mouseUp
  hide me with visual effect reveal from right
end mouseUp
  B ����ff  ����    @   P�Y        � G                                         - click to close this field -        ) @ 
��     Red  )    @ 
��     Red     OThis game is an example of a computer adaptation of a series of exercises with a so-called "problem-oriented" approach - the others being "Magic Square 9" and "Magic Square 16" - used in third grade of some schools that embrace principles of "progressive education" (see the other introduction "historical context" for more details).        N 4But it is also good training for adult brain cells.        3          6The objective of this exercise is to place the nine number fields onto the circles of the triangle in such a way that the sum of the number fields for each side of the triangle is equal. For each sequence of numbers - the simplest sequence consisting of the numbers one to nine - there are five possible sums.       5 �Drag the number fields to the circles. If you drag a number field to a circle where another number field has already been placed, then that earlier placed number field will move back to its start position.        � hWhen you achieve equal sums for all sides, a beep occurs and the colors of the triangle circles change.        g           �There are five different  solutions for each number sequence. Pressing button "help (sums)" indicates which (five different) sums are possible.         N @     �� Blue  N      [ 5           MThere are also three modes to choose from  in button "set number sequence" :        5 @     �� Blue  5      J            �-  "choose numbers" lets you determine the distance (stepwidth) between the numbers and a start number; you can even choose a negative number as a starting point.         @     �� Blue         �           �-  "random sequence" selects the values automatically within a range of 10 for the stepwidth and between -20 and 30 for the start number.         @     �� Blue         u          W-  "random without help" selects randomly like above, but prevents access to help provided in the other modes by the buttons "compute sides" and "help (sums)".  This "expert mode" is especially difficult because you do not know which sums can be achieved - and because there is no easy way to compute the different possible sums for yourself.         @     �� Blue        >  �    	`    @ � R U 
  � Information-History  �x   Gon mouseUp
  hide me with visual effect reveal from right
end mouseUp
  B ����ff  ����FF  @   O�X        � G                                         - click to close this field -        ) @ 
��     Red  )            �This game - in its original card board form - is an example from the repertoire of self-instructional materials of "progressive education" used in individualized learning.        �          %"Progressive education" was an international movement developing simultaneously in Europe and the U.S.A. with its peak in the twenties and thirties of last century. Among the protagonists of this movement  were Dewey, Montessori, Steiner (Waldorf schools), Washburne (Winnetka Plan), Parkhurst (Dalton schools), Petersen (Jena-Plan schools), Gaudig etc.. These educators and others were members of the "New Education Fellowship" - a society that still exists today -, organized a number of international conferences and established mutual contacts.       $           �The principles of "progressive education" ("reform education" in Europe, which has absolutly nothing to do with "reform schools" or "correctional institutions" in the U.S.A) comprise approaches like these:        �           - child-centered teaching         - problem-oriented learning         - individualized learning         /- learning with "self-instructional" materials        . - project learning                  PFor individualized learning with self-instructional materials the first theoretical foundations were formulated especially by Peter Petersen (Jena, Germany) and Carleton Washburne (Winnetka, U.S.A) in categories that are very similar - and sometimes identical - to the principles underlying computer-based individual learning of today.       O          Because of the affinity of some basic principles of progressive education and modern computer-based learning, a number of schools operating today according to the principles of progressive education have easily adapted and integrated computer-based instructional materials.                 A paradigmatic example is the Dalton School in New York, founded in 1919 by Helen Parkhurst, the former representative for Montessori education in the U.S.A, who developed her own set of progressive principles. This school continues to exist up to now (www.dalton.org).        �The Dalton School welcomed the advent of computer-based learning not as a "revolution", but as a natural extension of their accustomed ways of teaching and individualized learning.        � �This school uses a number of computer materials, has even developed an authoring system for internal use, and at the same time adheres to the principles formulated in 1919 (check out their website).-        �           �Seen from the other side, a number of modern educational computer materials come very close to the principles of progressive education. A few examples:        �           �The "Successmaker" program for elementary schools in the U.S.A. (www.pearsonedtech.com/successmaker) could be seen as a modern implementation of the individualized-learning part of Petersen's "Jena-Plan" of 1930.        �           �The "FCAT-Explorer" (www.fcatexplorer.com), a free public program used to prepare students to the various levels of the FCAT - "Florida Comprehensive Asssessment Test" -  shows a number of "progressive" features, especially the "problem-oriented" aspect.        �          The programs of "Wida Software" (www.wida.co.uk), located in London, favor a "holistic" approach in their text-reconstruction and other exercises and rely on prototypes developed by John Higgins back in the era of the Commodore 64 (John Higgins Home Page: "www.marlodge.supanet.com").-         �    	`    @ � Q T 
   1 x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  ;         ������ white � � �  white ((((((  ff����  �  >� $     gruppe  1012        � 14 
  r keineHilfsberechnung  �   B ��ff    dddddd  `  � �  �        � BYou have used button "compute sides" for help already five times.    1Now you have to compute the sides for yourself!! 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  � 9� "    borderwith  4gruppe           � 59 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  � � "    borderwith  4gruppe           � 50 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  �  �� !    borderwith  4gruppe           � 41 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  �  d8 "    borderwith  4gruppe           � 32 
   1  x    �Global Kennung, Feldwert,FeldID,Feld,FeldLoc
on mousedown
  set the loc of me to the mouseloc
  set the layer of me to top
  grab me
  add 1 to fld "Zuege"
end mousedown
on mouseup
  lock screen
  put the mouseloc into Stelle
  hide me
  click at Stelle
  show me
  unlock screen
  if intersect(me, image ID Kennung)  and the besetzt of image ID Kennung is "nein" then
    move me to the loc of image ID Kennung
  else
    put the ID of me into meineID
    put  meineID - 1035 into Zeile
    put line Zeile of field "Plaetze" into Stelle
    move me to Stelle without waiting
  end if
  send "mouseup" to  button "Besetzt"
  #==========================================
  put 0 into Zaehler
  repeat with i = 1 to 9
    repeat with j = 1 to 9
      if the loc of field ID (i + 1035) is the loc of image ID (j+1145) then
        add 1 to Zaehler
      end if
    end repeat
  end repeat
  #==========================================
  if Zaehler is 9 then send  "mouseup" to btn "Feldrechnen"
  
end mouseup
  : ������ white � � �  white ((((((  ff����  �  q� "    borderwith  4gruppe           � 23    Moved Icons          @ @ � �            ����      �    	@           � �  H  �    	@           � �  I  �    	@           � �  J  �    	@           � �  K  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �      	@           � �  �  H i328  	D   ������  ffffff             0 0       S� �� 8� `� �� �� �� %     �  B  "    
   � � �0� �    _� �� �� 8� p� p� �� � �������������q� �9� �� �� p� x� ?�� ��    W� �� � �� �   � p @ H @ D @ B @ A @ @�@ �@��  �� �� � � � � �    c� �� ?�� �� ��� 6� ��������σ����������������?��� �?� �� ?�� �� �     I i329  	D   ������  ffffff             0 0       Q� �� � � � � � �� � � � � � � � � � � � �    a� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��    U� � � � � �� � � � � � � � � � � � � � � ��    u� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��     J i330  	D  ������  ffffff             0 0       b� �� � � � 0�  �  �  � � � � `� `� �� � � � � � �� � � �    b� �� �� �� � �� � � � � � � � x� �� �� �� � � �� �� ��    \� � � �� � � � � � � � � � � p� �� �� �� @� @� @� ��    {� �� �� �� �� ?�� >� <� <� � � � � ~� �� �� �� �� �� �� �� �� �� �� �� ��     K i331  	D   ������  ffffff             0 0       `� �� � � � � � � � � � � � � � � � � � � �� � � �    k� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��    `� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� �� @� @� @� ��    � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��     �    	D  ��      ��``��  ��  ``  ������  �Ș�``  ���Ș�  0000``     0 0       � ��
 � ����6�������7��o������$���$���$���$���$��� |� |� |�� ��� "�� �� �� �� ������������������� ��    _� �� �� � � � � �  � @� @� @� @� @� @� @� @� @� @� @� @� @� @� @�    �� �� @�  � � � � � � � � � � � � � � � � � � � � �  � � �  � @� ��� ��    � � @� �� @� � �    o� � � 	 � 	 � 	 � I � I � I � I � I � I!� @"�� 5�� � � � � �� �� � @�  0� ��    i� � � @� @� @� �@� �@� �@� �@� ��� ��� ��� �� ��� ��� ��� �� �� �� ?�� ��     � � � � �  � @� � �    � �� ���������������?���������������������������������������������������������?������������������ ��     �    	D   
        ������  ���Ș�  @@@@@@  �Ș�``          ````��  ������  ������  0000``     0 0      �� �2�3�"� P�"� P�"� PB$"� `�w��� PB"� `�
q�	 PB"� v�w�� PB" `q�wh	P"" p�w�P�" q�w�P�" q�whP�" WUWUWUwhP�" �whP�" �whP�" WUWU�WwhP�" �whP�" �whP�" WU�WU�w	hP"BD �whP"� �whP�"� WUuUuUwhP�"� �w��P�"� �w�P�" `�w�h	P"D v���h� P"� `�f�	 P�"� P�"� P�"� P �D� �P�U   ���    �    	D   
        ������  ���Ș�  @@@@@@  �Ș�``          ````��  ������  ������  0000``     0 0      �� �2�3�"� P�"� P�"� PB$"� `�w��� PB"� `�
q�	 PB"� v�w�� PB" `q�wh	P"" p�w�P�" q�w�P�" qw�Uu�whP�" wWuwU�whP�" wWuwU�whP�" �wU�whP�" �wWu�whP�" �wU�whP�" �wWu�whP�" �wWu�w	hP"BD �whP"� �wWu�whP�"� �wWu�whP�"� �w��P�"� �w�P�" `�w�h	P"D v���h� P"� `�f�	 P�"� P�"� P�"� P �D� �P�U   ���    �    	D          ������  ����    ������  �Ș�``  @@@@@@  PPPPPP     0 0       � �� �� @� `�  � 0� � �� � 0�  � a�� C �Â �� ���������@�`� � 0� � �0� �`�@� �� �� ���   X� �� @�  � � H�  � @� �� � �� ��@� �  � @� �  @  � �    |� � � �� �� �� �� �� 0� 0� 8� ,8� ,<� \<� \>� �>� �? |? |?����������?��?��?��?�����    j� �� �� � � � � � � � � � �  �  � @� @� �� �� � � � � � � � �    :� @�  � � � � � � �� @�  � � � ?����    � �� @� @� ��    
� ?����    � �� �� �� �� �� �� �� �� �� ?�� ?�� �� �� ��� �� ������������������������������?���?��������������    �    	D  xx      ��      xx||xx  ������     0 0       � �� �    �� @�  � � � @� @� @� �� �� �� �� �� �� �� �� @� @� @�  � ��  �  � @ � � �� ��    |� �� �� �� ��������B����?��>��?���������?��?�������?��>��?����������������� ��� ��    e� � � � � � � � � � � � � � � � � � � 8� x � � `� ?�� �    P� @� � �>� �|� |�� ?�� �� �� �� �� ?�� |�� �| �>� �� @�    ~ �� �� �� ������������?���������������������������?��������������������� �� ?�� �     �    	D  xx||xx  ������  ������      ��             0 0       � �� �   � �� �  � @� @� �� �� �� �� �� �� �� @� @�  � � � <� x� � � �� <� � � � � 8�     H�  � �  � @�  @� @� � @� �  � �  � ��  � �    }� �� � �� �?��?��?��?�?���?��&��?��?��?��?��?�?�?�?�?��?������������ �� �� �� �� �� �� @�    C� �� �� �� �� �� �� �� �� �� �� �� �� �    p� @�  � � � � � � � � � � � � � ��  � @� � � ��  �  �  �  � �� `�    � �� �� �� ���������?���������������������?������������������ ��� ?�� �� �� �� x� 8�      �    	D  xx||xx  ������  ������              ��     0 0       � �� �   � �� �  � @� @� �� �� �� �� �� �� �� @� @�  � � � <� x� � � �� <� � � � � 8�     [�  � �  �  � (  � � @  $� � �� @�  �  � � ��  � ��  � �    |� �� � �� ��*�������?��?�����?��������?���?�������������� �� �� �� �� �� �� @�    p� @�  � � � � � � � � � � � � � ��  � @� � � ��  �  �  �  � �� `�    D� �� �� 0�� <�� <�� �� �� �� � � � �� �� �    � �� �� �� ���������?���������������������?������������������ ��� ?�� �� �� �� x� 8�      �    	D  xx||    ����    ������          xx||xx     0 0       z � � � �  �  � @� @� �� �� � � � � � � � � � �  �  � @� @� �� �� �� �� @�  �    � � � �� �� �� ?�� ?�� �� �p� �p� (�x �x �| �| �~ �~ �� �� ���������?��?������������?����    K� � �� @�  � � �� � � � �� � � @� � �  �� �  �    �� �� @� @�  �  � � � � � �� �� �� �� �� �  �  �  @  @   �     � �  � � � ����    |�  � 0� � � � � � � � � �� �� �� �� `� `� 0� 0� � � � � � � � � � ������   � � �� �� �� ?�� ?�� �� �� ��� �� �� �� ������������������������?���?�������������������?��������    a Ask Dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     � ��@ �   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                  U 
Helvetica   U 
helvetica   �    	pJon doresize
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
fieldmode  plain  a  �  _  \  ]  `
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
        � \ L         	  � 
  _  �`        (              
  `   
!`       b 8 |         �    a New Button �B@         $ (              v            	  �   � Answer Dialog   �on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
     � � � d   NewLoc   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                  U 
Helvetica   U 
helvetica   �    	p6on preOpenStack
  local dtype, foffset, oldwidth, bwidth, twidth, iwidth, theight, curx, nchoices
  set the itemDelimiter to numToChar(0)
  put word 2 of item 1 of the dialogData into dtype
  if dtype is "plain" then
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
    set the icon of button "icon" to item itemOffset(dtype, "error,information,question,warning") of it
    set the itemDelimiter to numToChar(0)
    put 40 into foffset
  end if
  if item 2 of the dialogData is empty
  then set the title of this stack to space
  else set the title of this stack to item 2 of the dialogData
  put item 3 of dialogData into field 1
  get item 4 of dialogData
  if it is empty then get "OK"
  put the number of lines in it into nchoices
  put 32 into bwidth
  if nchoices > the number of buttons - 1
  then put the number of buttons - 1 into nchoices
  repeat with i = 2 to nchoices + 1
    show button i
    set the name of button i to line nchoices + 2 - i of it
    set the width of button i to the formattedWidth of button i + 24
    add the width of button i + 32 to bwidth
  end repeat
  set the dontWrap of field 1 to true
  put max(the formattedWidth of field 1 + foffset + 16, bwidth) into twidth
  if twidth > 600 then
    put 600 into twidth
    set the dontWrap of field 1 to false
  end if
  put the width of this stack into oldwidth
  set the width of this stack to twidth
  set the width of field 1 to twidth - foffset - 16
  put the formattedHeight of field 1 + 68 into theight
  if theight > 400 then
    set the vScrollbar of field 1 to true
    put 400 into theight
  else set the vScrollbar of field 1 to false
  set the height of this stack to theight
  set the height of field 1 to theight - 68
  set the top of button 1 to the height of field 1 div 2 - 12
  set the topLeft of field 1 to foffset + 8, 8
  put (twidth - bwidth) div (nchoices + 1) + 32 into iwidth
  put iwidth into curx
  if the lookAndFeel is "Macintosh" or the lookAndFeel is "Appearance Manager" then
    repeat with i = nchoices + 1 down to 2
      set the left of button i to round(curx)
      add the width of button i + iwidth to curx
      set the bottom of button i to the height of this stack - 16
    end repeat
  else
    repeat with i = 2 to nchoices + 1
      set the left of button i to round(curx)
      add the width of button i + iwidth to curx
      set the bottom of button i to the height of this stack - 16
    end repeat
  end if
  set the default of button 2 to true
  set the dialogData to empty
  if the NewLoc of this stack is not empty then set the loc of this stack to the NewLoc of this stack
set the NewLoc of this stack to empty # initiates default behavior of "answer dialog" if you do not set "NewLoc" again before
end preOpenStack

on closeStack
  repeat with i = 3 to the number of buttons
    hide button i
  end repeat
  set the default of button 2 to false
end closeStack

on mouseUp
  if the name of the target contains "button" then
    set the dialogData to the short name of the target
    close this stack
  end if
end mouseUp
     �      � d   border  true  z  �  �  �  �  �  �  �  �
  �   �@         �              Do you want to stop exercising?   z icon �@P on mouseUp
end mouseUp
          ( (       	  �   � No �D�`       & 6 0        	  �   � Yes �D�`       | 6 7        	  �   � blue �D�`       6 8        	  �   � 
triangles �D�`      ^ 6 Q        	  �   � y �D�`       � 4 '        	  �   � x �D�`       i 4 '        	  �   � w �D�`         4 )        	  �   � Message Box 0     � ��    cs  save stack "magictriangle-new"color                ����   S  U 
Helvetica   U Clean   U 
Helvetica   W 
Helvetica   U 
Helvetica   U 
Helvetica   U 
Helvetica  W 
Helvetica  W 
Helvetica  U 
Helvetica   U 
Helvetica   W 
Helvetica  U 
Helvetica   U Courier   W Courier   U 
Helvetica   U 
Helvetica   U 
Helvetica   W 
Helvetica  U 
Helvetica  U 
Helvetica  @U 
Helvetica  U 
Helvetica  AW 
Helvetica  W 
Helvetica  W 
Helvetica  PW 
Helvetica  TW 
Helvetica  U 
Helvetica  U 
Helvetica  
 U 
Helvetica  
 U Courier  
 U Courier   U Courier   U LucidaBright   U Symbol   U charter   U 
Helvetica   U Lucida   U Lucida   U Clean   U Courier   U fixed   U times   U 
Helvetica   U Font|clean   U Font   U Superscript   U Color|-   U Color   U charter   W Lucida  W Lucida  W clean   W 
Helvetica   U Clean   W Clean   W 
Helvetica   U 
Helvetica   W 
Helvetica  @U 
Helvetica  DU 
Helvetica  HU 
Helvetica   W charter  U charter   U 
Helvetica  U charter   W 
Helvetica   U nil   U charter   U 
Helvetica   U fixed   U fangsong ti  ! U 
Helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica    U 
helvetica   � Message Box Card   	P,local initted
on resizeStack
  set the rect of field 1 to the rect of me
end resizeStack

on preOpenCard
  if not initted then
    set the topleft of this stack to max(0, the left of the topStack -\
        (the width of this stack - the width of the topStack) div 2), \
        min(the bottom of the topStack + 32, item 4 of the windowBoundingRect - 32)
    send "init" to field 1
    put true into initted
  end if
end preOpenCard

on closeCard
  put empty into field 1
end closeCard

on changed which, old, new
  put new into field 1 of me
end changed
           �   �
  � Message Field  )p.local MessageBoxHistory, MessageBoxIndex

on init
  put 1 into MessageBoxIndex
  put empty & return into MessageBoxHistory
  put empty into field 1
end init

on errorDialog eerror, perror
  if perror is not empty then
    set the scripterror of card 1 of stack "Script Error" to perror
    modeless "Script Error"
  else
    set the errorobject of card 1 of stack "Execution Error" to the long id of the target
    set the executionerror of card 1 of stack "Execution Error" to eerror
    modeless "Execution Error"
    send "refresh" to card 1 of stack "Execution Error"
  end if
end errorDialog

on returnInField
  lock error dialogs
  if me is empty
  then exit to MetaCard
  if the traceStack is not empty
  then set defaultStack to the traceStack
  else set defaultStack to the topStack
  set the cs of stack "Message Box" to me
  put return after MessageBoxHistory
  put the cs of stack "Message Box" into the last line of MessageBoxHistory
  if the number of lines in MessageBoxHistory > 20
  then delete line 1 of MessageBoxHistory
  put empty into msg
  put 1 into MessageBoxIndex
  if the number of lines in field 1 of stack "Execution Contexts" is not 0 then
    get the hilitedLine of field 1 of stack "Execution Contexts"
    if it is empty then get the number of lines of field 1 of stack "Execution Contexts"
    set the debugContext to line it of field 1 of stack "Execution Contexts"
  end if
  if word 1 of the cs of stack "Message Box" is not among the lines of the commandNames then
    if word 1 of the cs of stack "Message Box" is "the" \
        or word 1 of the cs of stack "Message Box" is a number \
        or token 2 of the cs of stack "Message Box" is "("
    then put value(the cs of stack "Message Box", this card)
    else send the cs of stack "Message Box" to this card
  else
    if the number of lines in field 1 of stack "Execution Contexts" is 0 then
      do "global" && the globals & return & the cs of stack "Message Box" \
          & return & "if the result is not empty then put the result"
    else debugdo the cs of stack "Message Box" & return & "if the result is not empty then put the result"
  end if
  unlock error dialogs
end returnInField

on prevline
  subtract 1 from MessageBoxIndex
  if MessageBoxIndex is 0
  then put the number of lines in MessageBoxHistory into MessageBoxIndex
  put line MessageBoxIndex of MessageBoxHistory into me
  exit to MetaCard
end prevline

on nextline
  add 1 to MessageBoxIndex
  if MessageBoxIndex > the number of lines in MessageBoxHistory
  then put 1 into MessageBoxIndex
  put line MessageBoxIndex of MessageBoxHistory into me
  exit to MetaCard
end nextline

on commandKeyDown which
  handleKey which
  pass commandKeyDown
end commandKeyDown

on controlKeyDown which
  handleKey which
  pass controlKeyDown
end controlKeyDown

on handleKey which
  if which is "P"
  then prevline
  if which is "N"
  then nextline
  if which is "U" then
    put empty into msg
    exit to MetaCard
  end if
end handleKey

on arrowKey which
  if which is "up"
  then prevline
  if which is "down"
  then nextline
  pass arrowKey
end arrowKey
     @     �          �     Cursors          Tc � �             U 
Helvetica   �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �         	@           � �         	@           � �     	    	@           � �         	@           � �         	@           � �         	@           � �         	@           � �         	@           � �         	@           � �       c5   	D          ������     0 0       d� � �� � Ă Nw� �� �� �� ��������� @A�@`�`   0 p ��08��� 8 ��    ^� � 8�  � � <� 8>� �>� O?� � ">߀ >� ?� �� �� �  �` �� ǂ � p� ��    j� � �� �� �� w� �� �� �� �����������0�����?��?������������� � ��       c11   	D          ������     0 0       [� � � �� 5�� [� �� � � �  � @�  �� A� �� �� H� 0� �� ��    J� � � 
� $� p� �� �� �� �� �� � >� |� x� �� �� �    [� � � �� ?�� � �� �� �� �� �� �� ?�� � �� �� �� �� �� ��       c12   	D          ������     0 0       Y� >� � ��� ��� �� �� � ?� � 0� @�  �� A� �� �� �� �� �� ��    .� �� �� �� �� �� � >� |� x� p�    Y� >� � ��� ��� �� �� �� �� �� �� �� ?�� � �� �� �� �� �� ��       c16  �	D          ������     8 8     K�� �� !�� A�� A�� ��� ��� ��� �� �� � � ?� 0� ��    2� � � >� >� ~� ~� �� �� �� �� �� ��    B
��D?�� 
����P��� 
�� �� ��� �������?�B� � �         c17   	D          ������     8 8     I�� 0�  � p� x<� �~� ��� ��� ��� �~� x<� p�  � 0� ��    <� �� �� �� �� �� � � �� �� �� �� ��    A����?�����P��� 
�� �� ��� �������?�B� � �       c18   	D          ������     8 8     K�� 0� ?� � � �� �� ��� ��� ��� A�� A�� !�� �� ��    2� �� �� �� �� �� �� ~� ~� >� >� � �    B
��D?�� 
����P��� 
�� �� ��� �������?�B� � �       c19   	D          ������     8 8     K�� �� ?�� _� O� � ��� �� ��� � O� _� ?�� �� ��    -�  � 0� x<� �|� ~�� �|� x<� 0�  �    B
��D?�� 
����P��� 
�� �� ��� �������?�B� � �       c20   	D          ������     8 8     K�� �� !�� A�� A�� ��� ��� ��� �� �� � � ?� 0� ��    2� � � >� >� ~� ~� �� �� �� �� �� ��    B
��D?�� 
����P��� 
�� �� ��� �������?�B� � �       c21   	D          ������     8 8     I�� 0�  � p� x<� �~� ��� ��� ��� �~� x<� p�  � 0� ��    <� �� �� �� �� �� � � �� �� �� �� ��    B
��D?�� 
����P��� 
�� �� ��� �������?�B� � �       c22   	D          ������     8 8     K�� 0� ?� � � �� �� ��� ��� ��� A�� A�� !�� �� ��    2� �� �� �� �� �� �� ~� ~� >� >� � �    B
��D?�� 
����P��� 
�� �� ��� �������?�B� � �       c23   	D          ������     8 8     K�� �� ?�� _� O� � ��� �� ��� � O� _� ?�� �� ��    -�  � 0� x<� �|� ~�� �|� x<� 0�  �    B
��D?�� 
����P��� 
�� �� ��� �������?�B� � �       c1   	D  ������             8 8     B�� �� �� �� �� �� �� �� ��� �@� ��� �� �� � 	� �    7� @� `� p� x� |� ~� � �� |� l� L� � �    J�� �� �� `�� p� X� p� E�� 0�������E��  �� �  E�       c8   	D          ������     8 8     J� 	� 	� 	� 	� 	�� 	�� 踂 ��� �*� �
� `� 0� � � ��    G� � � � � � � @� gP� wԂ ?� �� �� �� �� ��    C� � � 5�  �%���%��%�����%��?��������      c24   	D  ������             8 8     A�� �� �� �� �� �� �� �� ��� �� ��� �� �� � 	� �    D� @� `� p� x� |A� ~A� A� �� |A� lA� LA� A� A� �    C� H� ��� �� ��� P�� 
�A��A���� ���������A��A��A�A �       c25   	D  ������             8 8     I�� �� �� �� �� �� �>� �>� ��� �6� ��� �6� �6� �>� 	>� �    D� @� `� p� x� |A� ~A� I� ɂ |]� lI� LI� A� A� �    B� H� ��� �� ��� P�� ������� ������������ �       c26  	D  ������             8 8     N@�  � � p� @� @� ��� �� �� ��� @� @� p� �  � @�    F�� �� �� �� �� �� �� �� �� �� �� �� �� ��    C�� �@����h�u� �����@��� ����������@� ��       c27  	D  ������             8 8     H� �� @� @� 2L� RJ� �y� @� @� �y� RJ� 2L� @� @� ��    >� �� �� �� !�� a�� ��� ��� a�� !�� �� �� ��    >� �@����h3�us� �����@��� ���s���3����@� �       c25   	D          ������     8 8     P�� �� 8<� p� x� �� �� �� ��� �Â `f� `6� p� <8� �� ��    >� �� 0� � 2� )� $�� "D� !$� �� H�  � ��    D�� �@?���x>h|f�� �� �@�ǂ ����p���p~�|<��?�@� ��    