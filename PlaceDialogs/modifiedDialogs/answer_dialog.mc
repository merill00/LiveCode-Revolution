#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  � answer dialog   �on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
  ` ������  ������  � Ok s d   NewLoc   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
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
            s d  z  �  �  �  �  �  �  �  �
  �   �@       0  ;                z icon �@P on mouseUp
end mouseUp
          ( (       	  �   � OK �L�`         6 3        	  �   � No �D�`       � 6 0        	  �   � Yes �D�`       � 6 7        	  �   � z �D�`       � 4 '        	  �   � y �D�`       � 4 '        	  �   � x �D�`       i 4 '        	  �   � w �D�`         4 )        	  �  