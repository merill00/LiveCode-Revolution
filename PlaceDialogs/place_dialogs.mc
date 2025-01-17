#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  � Place_Dialogs    ` ������  ������    ����         *Place Answer and Ask Dialogs / Sanke 2004     ����     W 
helvetica   U 
helvetica   U Arial  U 
helvetica   �    	@          ��  �  �  �  �  �  �  �  �  �  �  �  � answer2 �e�p�on mouseUp
  put the topleft of this stack into Ort
  add ( Trunc (the width of this stack / 2)) to item 1 of Ort
  set the newloc of stack "answer dialog" to Ort
  # set the newloc of stack "answer dialog" to the screenloc #topright of this stack
  # set the newloc of stack "answer dialog" to 100,100 # absolut auf dem Bildschirm
  
  # set the newloc of stack "answer dialog" to globalLoc("100,100")
  answer "Does it work?"
  
  
end mouseUp
   CC���� Aquamarine   �� j � "  answer 
 at top center of stack          	     
  � Information-English  �	`       � ��        � �Normally, an answer dialog or ask dialog is displayed at the center of the stack from which it called by the "answer" or "ask" command (on Windows).                            
     ( l �I have modified the card scripts of stack "answer dialog" and  "ask dialog" and added two lines at the end of the preopenstack handler - just above "end preopenstack" - that creates or sets a custom property "NewLoc" of the dialog.    e"if the NewLoc of this stack is not empty then set the loc of this stack to the NewLoc of this stack               c (set the NewLoc of this stack to empty"          %     %      &  w# line 2 makes sure to restore the default behavior of dialog the next time you open it and do not specify a "NewLoc".        _     _      b    |You have set a value for NewLoc in the script of the calling button above the line with the "answer" or "ask" command, like    3set the NewLoc of stack "Answer dialog" to 150,150         2 answer "Funktioniert das?"                     KCompare the different ways to set values for NewLoc in the sample buttons.        J   �I have added a modified "answer dialog" and "ask dialog" as substacks to this sample stack. These substack take precedence when you use the "answer" or "ask" command    RHow to change the script of stack "Answer dialog" (likewise for the "ask dialog")         2     2    How to do it in Metacard           1. simple way           {- type "edit script of cd 1 of stack "answer dialog"" into the message box (without the quotes before edit and at the end)        z 3- add the two lines just before "end preopenstack"        2 6- use the message box to "save stack "answer dialog""        5   2. or           ,- use message box "toplevel "answer dialog"        + 3- choose "Card Properties" from Menu button "Edit"        2 %- go to "script" on tab "Properties"        $ 3- add the two lines just before "end preopenstack"        2 6- use the message box to "save stack "answer dialog""        5     How to do it in Revolution           1. simple way           {- type "edit script of cd 1 of stack "answer dialog"" into the message box (without the quotes before edit and at the end)        z 3- add the two lines just before "end preopenstack"        2 6- use the message box to "save stack "answer dialog""        5   2. or           ,- use message box "toplevel "answer dialog"        + 4- choose "Card Inspector" from Menu button "Object"        3 @- go to "edit script" via the right arrow on the Card Inspector        ? 3- add the two lines just before "end preopenstack"        2 6- use the message box to "save stack "answer dialog""        5     3. the long way           J- in button "View" of the Menubar check "Revolution UI elements in lists"        I 1- start the Application Browser (button "Tools")        0 - click on "Answer dialog"         - right-click on card ID 1002         - choose "script"         3- add the two lines just before "end preopenstack"        2 6- use the message box to "save stack "answer dialog""        5         �    	`    @ �  �   � Information in English �E�p �on mouseUp
  hide fld "Information-deutsch"
set the scroll of fld "Information-English" to 0
  show fld "Information-English"
end mouseUp
   ����ff     X �          	     
  � Information-deutsch  �`       � ��        � �Normalerweise wird der answer dialog oder der ask dialog in die Mitte des Stacks platziert, von dem er mit dem "answer"-Befehl (ask-Befehl) aufgerufen worden ist (unter Windows).                     $ 
      . 
     8 {Ich habe beide Skripte von "card 1 of stack "answer dialog"  (und des "ask dialogs") ver�ndert und zwei Zeilen vor dem Ende  des preopenstack handlers hinzugef�gt - direkt vor "end preopenstack" - in denen dadurch ein custom property "NewLoc" des Dialogs geschaffen bzw. gesetzt wird:               O     ^ �   e"if the NewLoc of this stack is not empty then set the loc of this stack to the NewLoc of this stack               c (set the NewLoc of this stack to empty"          %     %      &  �# Zeile 2 dient dabei dazu, dass sich der Dialog wieder "normal" verh�lt, f�r den Fall, dass vor dem n�chsten �ffnen kein neuer "NewLoc" gesetzt wird.    �Im Skript des aufrufenden Buttons muss ein Wert f�r NewLoc eingegeben werden, und zwar vor der Zeile mit dem "Answer"- oder "ask"-Befehl, z.B.    3set the NewLoc of stack "Answer dialog" to 150,150         2 answer "Funktioniert das?"                     VVergleiche dazu verschiedene Formen diesen Wert zu bestimmen in den Beispiel-Buttons.        U  KEin solcher ver�nderter "answer dialog" und "ask dialog" sind als Substacks diesem Beispielstack hinzugef�gt worden. Wenn  "answer"- oder "ask"-Befehl in diesem Stack verwendet, wird dem Substack die Priorit�t zuerkannt, d.h. der ver�nderte Substack wird aufgerufen und nicht der in IDE (Entwicklungsumgebung) vorhandene Dialog.--    PSchritte zum Editieren des  "Answer dialogs" (gilt analog f�r den "ask dialog")         -     - "   In Metacard:           1. auf einfachste Weise           �-  "edit script of cd 1 of stack "answer dialog"" in die "message box" eingeben (ohne die Anf�hrungszeichen vor "edit" und ohne das zweite Anf�hrungszeichen hinter "dialog")        � ;- die beiden Zeilen direkt vor "end preopenstack" einf�gen        : ;- in die message box "save stack "answer dialog"" eingeben        :   2. oder           8- in die message box "toplevel "answer dialog" eingeben        7 1- "Card Properties" im Menu button "Edit" w�hlen        0 3- zum Button  "script" im "tab" "Properties" gehen        2 ;- die beiden Zeilen direkt vor "end preopenstack" einf�gen        : ;- in die message box "save stack "answer dialog"" eingeben        :     In Revolution           1. einfachster Weg           �-  "edit script of cd 1 of stack "answer dialog"" in die "message box" eingeben (ohne die Anf�hrungszeichen vor "edit" und ohne das zweite Anf�hrungszeichen hinter "dialog")        � ;- die beiden Zeilen direkt vor "end preopenstack" einf�gen        : ;- in die message box "save stack "answer dialog"" eingeben        :           2. or           8- in die message box "toplevel "answer dialog" eingeben        7 .- "Card Inspector" Menubutton "Object" w�hlen        - ?- zu "edit script" im Card Inspector �ber den Rechtpfeil gehen        > ;- die beiden Zeilen direkt vor "end preopenstack" einf�gen        : ;- in die message box "save stack "answer dialog"" eingeben        :           3. auf umst�ndlichere Weise           M- Im Button "View" der Menubar  "Revolution UI elements in lists" aktivieren        L 4- den Application Browser (button "Tools") aufrufen        3 - auf "Answer dialog" klicken         1- Klick mit rechter Maustaste of  "card ID 1002"        0 1- im erscheinenden Auswahldialog "script" w�hlen        0 ;- die beiden Zeilen direkt vor "end preopenstack" einf�gen        : ;- in die message box "save stack "answer dialog"" eingeben        :              �    	`    @ �  �   � Information auf Deutsch �E�p �on mouseUp
set the scroll of fld "Information-deutsch" to 0
show fld "Information-deutsch"
hide fld "Information-English"
end mouseUp
   ����ff     r �          	       � ask �e�p bon mouseUp
  set the Newloc of stack "ask dialog" to 400,700
  ask "Just an example"
end mouseUp
   CC���� Aquamarine   �� � " ask 
 on screen at 400,700          	     
  �               	 � -        � sample buttons  Beispielbuttons        � answer1 �e�p xon mouseup
  set the NewLoc of stack "answer dialog" to the topright of this stack
  answer "at topright?"
end mouseup
   CC���� Aquamarine � �� ? � "     answer 
 at topright of stack           cREVGeneral    scriptChecksum  N��$b��q`6��I�>revUniqueID  1089281276657
bookmarks   handlerList  mouseuptempScript   prevHandler   scriptSelection  char 111 to 110script  �<p>on mouseup</p>
<p>  set the NewLoc of stack &quot;answer dialog&quot; to the bottomright of this stack</p>
<p>  answer &quot;Rechts unten?&quot;</p>
<p>end mouseup</p>	       � answer3 �e�p �on mouseup
  set the NewLoc of stack "answer dialog" to globalloc("100,100")
  #places the dialog at 100,100 relative to the stack
  answer "on stack at 100,100?"
end mouseup
   CC���� Aquamarine � �� � � "     0answer (with "globalloc") 
 at 100,100 of stack           cREVGeneral    scriptChecksum  ���x_���X$.�h�mrevUniqueID  1089281502635
bookmarks   handlerList  mouseuptempScript   prevHandler  mouseupscriptSelection  char 162 to 161script  �<p>on mouseup</p>
<p>  set the NewLoc of stack &quot;answer dialog&quot; to globalloc(&quot;100,100&quot;)</p>
<p>  #places the dialog at 100,100 relative to the stack</p>
<p>  answer &quot;Im Stack bei 100,100?&quot;</p>
<p>end mouseup</p>	       � answer5 �e�p �on mouseup
  set the NewLoc of stack "answer dialog" to 700,600
  #places the dialog at 700,600 on the screen
  answer "on the screen at 700,600?"
end mouseup
   CC���� Aquamarine � �� � � "     answer 
 on screen at 700,600           cREVGeneral    scriptChecksum  ����č�](%�grevUniqueID  1089281500291
bookmarks   handlerList  mouseuptempScript   prevHandler  mouseupscriptSelection  char 145 to 144script  �<p>on mouseup</p>
<p>  set the NewLoc of stack &quot;answer dialog&quot; to 100,100</p>
<p>  #places the dialog at 100,100 on the screen</p>
<p>  answer &quot;on the screen at 100,100?&quot;</p>
<p>end mouseup</p>	       � answer4 �e�pcon mouseup
  put the topleft of this stack into Ort
  add 100 to item 1 of Ort
  add 300 to item 2 of Ort
  set the NewLoc of stack "answer dialog" to Ort
  #places the dialog at 100,100 relative to the stack (without using "globalloc"
  # this is equivalent to "set the NewLoc.....to globalloc("100,100")
  answer "on the stack at 100,300?"
end mouseup
   CC���� Aquamarine � �� � � "     1answer place on stack
 without using "globalloc"           cREVGeneral    scriptChecksum  7��ߚ6�� P��<�revUniqueID  1089281785396
bookmarks   handlerList  mouseuptempScript   prevHandler  mouseupscriptSelection  char 306 to 305script �<p>on mouseup</p>
<p>  put the topleft of this stack into Ort</p>
<p>  add 100 to item 1 of Ort</p>
<p>  add 100 to item 2 of Ort</p>
<p>  set the NewLoc of stack &quot;answer dialog&quot; to Ort</p>
<p>  #places the dialog at 100,100 relative to the stack (without using &quot;globalloc&quot;</p>
<p>  # this is equivalent to &quot;set the NewLoc.....to globalloc(&quot;100,100&quot;)</p>
<p>  answer &quot;on the screen at 100,100?&quot;</p>
<p>end mouseup</p>	       � answer dialog   �on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
     � a& � d   NewLoc   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
Helvetica   U 
helvetica   �    	P�on preOpenStack
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
#====added routine to place "answer dialog" (Sanke 2004)=================
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
            � d  z  �  �  �  �  �  �  �  �
  �   �@         �             on the screen at 700,600?   z icon �@P on mouseUp
end mouseUp
          ( (       	  �   � OK �D�`       B 6 3        	  �   � No �D�`       H 0        	  �   � Yes �D�`      � H 7        	  �   � z �D�`       � 4 '        	  �   � y �D�`       � 4 '        	  �   � x �D�`       i 4 '        	  �   � w �D�`         4 )        	  �   a Ask Dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     �  �z@ �   Newloc   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
Helvetica   U 
helvetica   �    	P�on doresize
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
#=======Platzier-Routine==================
if the NewLoc of this stack is not empty then set the loc of this stack to the NewLoc of this stack
set the NewLoc of this stack to empty
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