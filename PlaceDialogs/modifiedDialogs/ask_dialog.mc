#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  a ask dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     � �s@ �   Newloc   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
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