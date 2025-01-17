#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  + MetaCard Menu Bar 
źon mouseUp
end mouseUp

on mouseDoubleUp
  send "mouseUp" to the target
end mouseDoubleUp

on changeTool
  get word 1 of the tool
  if it is "graphic"
  then get the style of the templateGraphic
  set the hilitedButton of group "icons" to \
      itemOffset(it, "browse,pointer,button,field,scrollbar,image,player,polygon,curve,rectangle,oval,roundrect,regular")
end changeTool

on resizeStack
end resizeStack

on preOpenStack
  if the mode of the owner of the target > 5 and the lookAndFeel \
      is "Appearance Manager" or the lookAndFeel is "Macintosh" then
    set the threeD of the target to false
    set the borderWidth of the target to 1
  else
    set the threeD of the target to true
    set the borderWidth of the target to 2
  end if
end preOpenStack

on openStack
end openStack

on closeStack
end closeStack

on preOpenBackground
end preOpenBackground

on openBackground
end openBackground

on closeBackground
end closeBackground

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard

on downloadNgo which
  send "downloadNgo" && quote & which & quote to stack "Download Stack"
end downloadNgo

on help
  put word -4 of the long name of the target into cname
  delete first char of cname
  delete last char of cname
  if word 1 to 2 of cname is "Script Editor"
  then put word 1 to 2 of cname into cname
  if there is a card cname of stack "Dialog Box Help"
  then go to card cname of stack "Dialog Box Help"
  else modeless "Help Index"
end help

on escapeKey
  if there is a button "Cancel"
  then click at the loc of button "Cancel"
  else pass escapeKey
end escapeKey

function doClick
  switch
  case word 1 of the name of the target is "button" and the style of the target is not "menu" and not the autoArm of the target
    click at the loc of the target
    break
  case the defaultButton of this card is not empty
    click at the loc of the defaultButton of this card
    break
  default
    return false
  end switch
  return true
end doClick

on returnKey
  if not doClick() then pass returnKey
end returnKey

on returnInField
  if not doClick() then pass returnInField
end returnInField

on enterKey
  if not doClick() then pass enterKey
end enterKey

on enterInField
  if not doClick() and there is a field "OK"
  then click at the loc of button "OK"
  else pass enterInField
end enterInField

function additem oitem, nitem
  if oitem is empty
  then return nitem
  else return oitem & comma & nitem
end additem

function MCfixpath shortname
  local sname
  put tolower(shortname) & ".mc" into sname
  repeat with c = 1 to the length of sname
    if char c of sname is in " :?*<>/\()[]{}|'`" & quote & tab
    then put "_" into char c of sname
  end repeat
  return sname
end MCfixpath
       ˘Ü N   
mcversion  2.5             U 
Helvetica   U 
Helvetica   U 
helvetica   U 
helvetica  Help Directory,mchelp.mc
Dialog Box Help,mchelp.mc
MetaCard Tutorials,mchelp.mc
MetaTalk Reference,mchelp.mc
MetaTalk Examples,mchelp.mc
Concepts & Techniques,mchelp.mc
Help Index,mchelp.mc
MetaCard FAQ,mchelp.mc
Support,mchelp.mc
MetaCard Version,mchelp.mc
Licensing MetaCard,mchelp.mc
   é Menu Bar card   	Pon help
  go to card "Menu Bar" of stack "Dialog Box Help" as modeless
end help

on resizeStack
  set the width of button "menuButton" to the width of me - 8
  set the left of button "menuButton" to 4
  set the right of button "Help" to the width of me - 8
end resizeStack

on preOpenStack
  local newx, newy
  put max(the top of the topStack - the height of this stack - 28, 2) into newy
  put the left of the topStack into newx
  set the topLeft of this stack to newx, newy
  insert script of button "menuButton" into front
  insert script of button "newobj" into back
  if the defaultMenubar is empty
  then set the defaultMenubar to "MetaCard Menu Bar"
  if the platform is "MacOS" and char 1 of the systemVersion is "1" then
    set the textFont of this stack to "Lucida Grande"
    set the textSize of this stack to 13
  end if
end preOpenStack

on closeStack
  if the platform is not "MacOS" then
    remove script of button "menuButton" from front
    remove script of button "newobj" from back
  end if
end closeStack
           Ü N  %       Icons   ÉEon preOpenCard
  changeTool
end preOpenCard

on mouseUp
  local ostacks, nstacks
  put the openStacks into ostacks
  if "My Icons" is not in ostacks and "My Patterns" is not in ostacks then
    put the number of lines in ostacks into nstacks
    repeat with i = 1 to nstacks
      if the mode of stack (line i of ostacks) is 5 then
        beep 1
        changeTool
        exit to MetaCard
      end if
    end repeat
  end if
  if word 1 of the name of the target is "button" then
    if the short name of the target is in "pointer browse button field scrollbar image player"
    then choose (the short name of the target) tool
    else
      set the style of the templateGraphic to the short name of the target
      set the points of the templateGraphic to empty
      set the markerPoints of the templateGraphic to empty
      if the tool is "graphic tool"
      then send "newTool" to stack "Tools"
      else choose graphic tool
    end if
    if the tool is "browse tool" and the editBkgnd of the topStack
    then set the editBackground of the topStack to false
  end if
end mouseUp
          $Ü ,   browse ÂBtŔon mouseUp which
  local i, ename
  if which is 3 then
    set the emacsKeyBindings to false
    send "doinit" to group "metacard menu bar"
    set the emacsKeyBindings to true
    put empty into menu "Text"
    put "&Group/G" into menuItem 9 of menu "Edit"
    set the customPropertySets of stack "Home" to empty
    set the customKeys of stack "Home" to empty
    set the mcvendor of stack "Home" to the "MetaCard Corporation"
    set the mcversion of stack "MetaCard Menu Bar" to the version
    set the mcversion of stack "Help Directory" to the version
    put empty into field "File Name" of card 2 of stack "Importer"
    put empty into field "Find" of stack "Find"
    put empty into field "Find Text" of stack "Script Find"
    put empty into field "Replace Text" of stack "Script Find"
    put empty into field "Name" of stack "Order Forms"
    put empty into field "Organization" of stack "Order Forms"
    put empty into field "Licenses" of card 1 of stack "Order Forms"
    put empty into field "Key" of card 1 of stack "Order Forms"
    set the height of stack "Message Box" to the minHeight of stack "Message Box"
    set the customPropertySets of stack "Script Editor" to empty
    set the customPropertySets of card 1 of stack "Standalone Builder" to empty
    repeat with i = 1 to 10
      put "Script Editor" && i into ename
      if there is a stack ename
      then delete stack ename
    end repeat
    set the debuggingScript of stack "Script Editor" to empty
    choose browse tool
    go "Properties"
    repeat with i = 1 to the number of cards in this stack - 1
      go to card i
      set the menuhistory of button 1 to 1
    end repeat
    close stack "Properties"
  else pass mouseUp
end mouseUp
        ( $ $ Browse tool               .            	  é   pointer ÂBd      ( ( $ $ Select controls               -            	  é   	 button ÂBd      L ( $ $ Button tool               /            	  é   
 field ÂBd      p ( $ $ Field tool               0            	  é    
scrollbar ÂBd       ( $ $ Scrollbar tool               1            	  é    image ÂBd      ¸ ( $ $ Image tool               _            	  é   ) player ÂBd      Ü ( $ $ Player tool                           	  é    polygon ÂBd       ( $ $ Graphic tool (polygon)               =            	  é    curve ÂBd     $ ( $ $ Graphic tool (curve)               :            	  é    
rectangle ÂBd     H ( $ $ Graphic tool (rectangle)               <            	  é    oval ÂBd     l ( $ $ Graphic tool (oval)               9            	  é    
roundrect ÂBd      ( $ $ Graphic tool (round rect)               >            	  é    regular ÂBd     ´ ( $ $ Graphic tool (regular polygon)               ;            	  é    newobj ŕEŁp0on errorDialog which
  set the executionerror of card 1 of stack "Execution Error" to which
  modeless "Execution Error"
  send "refresh" to card 1 of stack "Execution Error"
end errorDialog

on newButton
  choose pointer tool
  send "newTool" to stack "MetaCard Menu Bar"
end newButton

on newField
  choose pointer tool
  send "newTool" to stack "MetaCard Menu Bar"
end newField

on newScrollbar
  choose pointer tool
  send "newTool" to stack "MetaCard Menu Bar"
end newScrollbar

on newImage
  choose pointer tool
  send "newTool" to stack "MetaCard Menu Bar"
end newImage

on newGraphic
  choose pointer tool
  send "newTool" to stack "MetaCard Menu Bar"
end newGraphic

on newPlayer
  choose pointer tool
  send "newTool" to stack "MetaCard Menu Bar"
end newPlayer

on reloadStack sname, fname
  if the filename of stack sname is fname
  then toplevel sname
  else
    set the reloadname of stack "Reload Stack" to sname
    set the reloadfile of stack "Reload Stack" to fname
    modal "Reload Stack"
  end if
end reloadStack

on newTool
  -- backstop
end newTool
       2  &          	       % MetaCard Menu Bar   éĽon menuPick which
  if which is "About MetaCard..."
  then modal "About MetaCard"
end menuPick

on resizeStack
  set the width of me to the width of stack "MetaCard Menu Bar"
  set the width of button "menuButton" of me to the width of me - 6
  set the left of button "menuButton" of me to 4
  set the right of button "Help" of me to the width of me - 6
end resizeStack

local fnames, fsizes, fstyles, fcolors, oldfont, oldsize, oldstyle, oldshift
local fontnum, sizenum, stylenum, colornum, subnum

on doinit
  if the emacsKeyBindings then
    put "&Close" into menuItem 7 of menu "File"
    put "&Paste/Y" into menuItem 5 of menu "Edit"
    put "Select A&ll" into menuItem 7 of menu "Edit"
    put "&Find..." into menuItem 1 of menu "Tools"
  else
    put "&Close/W" into menuItem 7 of menu "File"
    put "&Paste/V" into menuItem 5 of menu "Edit"
    put "Select A&ll/A" into menuItem 7 of menu "Edit"
    put "&Find.../F" into menuItem 1 of menu "Tools"
  end if
  put the fontNames into fnames
  sort lines of fnames
  put "none" & cr & "-" & cr before fnames
  local newtext
  put "Font" & cr into newtext
  put 1 into fontnum
  repeat for each line l in fnames
    if l is "-"
    then put tab & l & cr after newtext
    else put "!u" & tab & l & cr after newtext
  end repeat
  put "Size" & cr after newtext
  put the number of lines in newtext into sizenum
  put format("none\n-\n8\n10\n11\n12\n14\n17\n18\n20\n24\n25\n30\n-\nother...") into fsizes
  repeat for each line l in fsizes
    if l is "-"
    then put tab & l & cr after newtext
    else put "!u" & tab & l & cr after newtext
  end repeat
  put "Style" & cr after newtext
  put the number of lines in newtext into stylenum
  put format("Plain\n-\nBold\nItalic\nUnderline\nStrikeout\n3D Box\nBox\n-\nLink") into fstyles
  repeat for each line l in fstyles
    if l is "-"
    then put tab & l & cr after newtext
    else put "!n" & tab & l & cr after newtext
  end repeat
  put "Color" & cr after newtext
  put the number of lines in newtext into colornum
  put format("Black\nWhite\nRed\nGreen\nBlue\nYellow\n-\nPen Color\n-\nClear") into fcolors
  repeat for each line l in fcolors
    if l is "-"
    then put tab & l & cr after newtext
    else put "!u" & tab & l & cr after newtext
  end repeat
  put the number of lines in newtext + 1 into subnum
  put "!uSubscript" & cr & "!uSuperscript" after newtext
  put newtext into button "Text"
end doinit

on mouseDown
  if the short name of the target is "Help"
  then pass mouseDown
  local olddefault
  put the defaultmenubar into olddefault
  set the defaultmenubar to "MetaCard Menu Bar"
  lock menus
  if fnames is empty or button "Text" is empty then doinit
  setupedit
  setuptext
  set the defaultStack to value(the last word of olddefault)
  set the defaultmenubar to value(word 2 of olddefault)
  unlock menus
  pass mouseDown
end mouseDown

on setupedit
  local otype
  put word 1 to 2 of the selobjs into otype
  if word 1 of otype is "card" and word 2 of otype is among the items of "field,button,image,player,scrollbar,graphic"
  then delete word 1 of otype
  else delete word 2 of otype
  if otype is empty or otype is "card" or otype is "stack"
  then disable menuItem 9 of menu "Edit"
  else
    enable menuItem 9 of menu "Edit"
    if word 1 of the selobjs is "group" and the number of lines in (the selobjs) is 1
    then put "Un&group/G" into menuItem 9 of menu "Edit"
    else put "&Group/G" into menuItem 9 of menu "Edit"
  end if
  if the editBackground of the topStack
  then put "Stop Editing &BG/T" into menuItem 10 of menu "Edit"
  else put "&Backgrounds.../T" into menuItem 10 of menu "Edit"
end setupedit

on setuptext
  local newstate, i
  put the selectedChunk is empty and the selectedObject is empty into newstate
  set the wholeMatches to true
  repeat for each item i in fontnum,sizenum,stylenum,colornum
    if newstate
    then disable menuItem i of menu "Text"
    else enable menuItem i of menu "Text"
  end repeat
  if the selectedChunk is empty then
    unhilite menuItem subnum of menu "Text"
    unhilite menuItem subnum + 1 of menu "Text"
    disable menuItem subnum of menu "Text"
    disable menuItem subnum + 1 of menu "Text"
  else
    enable menuItem subnum of menu "Text"
    enable menuItem subnum + 1 of menu "Text"
  end if
  if newstate
  then exit setuptext
  local fname, fsize, fstyle, tshift
  if the selectedChunk is empty then
    put the textFont of the selectedObject into fname
    put the textSize of the selectedObject into fsize
    put the textStyle of the selectedObject into fstyle
    put empty into oldshift
  else
    put the textFont of the selectedChunk into fname
    put the textSize of the selectedChunk into fsize
    put the textStyle of the selectedChunk into fstyle
    put the textShift of the selectedChunk into tshift
    if tshift is empty then put 0 into tshift
    if tshift is not oldshift then
      if tshift > 0
      then hilite menuItem subnum of menu "Text"
      else unhilite menuItem subnum of menu "Text"
      if tshift < 0
      then hilite menuItem subnum + 1 of menu "Text"
      else unhilite menuItem subnum + 1 of menu "Text"
      put tshift into oldshift
    end if
  end if
  put lineOffset(fname, fnames) into i
  if i is not oldfont then
    if oldfont is 0
    then unhilite menuItem fontnum + 1 of menu "Text"
    else unhilite menuItem oldfont + fontnum of menu "Text"
    if i is 0
    then hilite menuItem fontnum + 1 of menu "Text"
    else hilite menuItem i + fontnum of menu "Text"
    put i into oldfont
  end if
  put lineOffset(fsize, fsizes) into i
  if i is 0 and fsize is not empty then put the number of lines in fsizes into i
  if i is not oldsize then
    if oldsize is 0
    then unhilite menuItem sizenum + 1 of menu "Text"
    else unhilite menuItem oldsize + sizenum of menu "Text"
    if i is 0
    then hilite menuItem sizenum + 1 of menu "Text"
    else hilite menuItem i + sizenum of menu "Text"
    put i into oldsize
  end if
  replace "threedbox" with "3D Box" in fstyle
  if fstyle is not oldstyle then
    repeat for each item tstyle in oldstyle,fstyle
      put lineOffset(tstyle, fstyles) into i
      if i is not 0 then
        if tstyle is among the items of oldstyle and tstyle is not among the items of fstyle
        then unhilite menuitem i + stylenum of menu "Text"
        if tstyle is among the items of fstyle and tstyle is not among the items of oldstyle
        then hilite menuitem i + stylenum of menu "Text"
      end if
    end repeat
    put fstyle into oldstyle
  end if
end setuptext
         ˙˙Ü (   menuButton ŕAw/ąlocal stackstatus, substacknames, theTR
constant Nscripteditors = 10

on messageHandled t, m
  send "recordMessage t, m, the long id of the target, true" to card 1 of stack "Message Watcher"
end messageHandled

on messageNotHandled t, m
  send "recordMessage t, m, the long id of the target, false" to card 1 of stack "Message Watcher"
end messageNotHandled

on MCdebugScript t, h, l, p
  editScript t, false
  send "startDebug t, h, l, p" to card 1 of stack the result
  send "refresh" to card 1 of stack "Execution Contexts"
  send "refresh" to card 1 of stack "Variable Watcher"
  set the title of stack "Message Box" to "Message Box (debug)"
end MCdebugScript

on trace h, l, p
  if char -11 to -2 of the long id of the target is "mctools.mc"
  then set the tracereturn to true
  else
    switch the tracemode of stack "Script Editor"
    case "Step Over"
      get the debuggingScript of stack "Script Editor"
      if the long id of the target is the scriptObject of it \
          and h is the debuggingHandler of stack "Script Editor"
      then MCdebugScript the long id of the target, h, l, p
      else set the traceReturn to true
      break
    case "Trace"
      MCdebugScript the long id of the target, h, l, p
      send "MCdoTR" to me in the traceDelay milliseconds
      put it into theTR
      break
    default
      MCdebugScript the long id of the target, h, l, p
    end switch
  end if
end trace

on MCdoTR
  set the traceReturn to true
end MCdoTR

on MCcancelTR
  cancel theTR
  set the tracemode of stack "Script Editor" to empty
end MCcancelTR

on traceBreak h, l, p
  MCdebugScript the long id of the target, h, l, p
end traceBreak

on traceError h, l, p, which
  set the executionerror of card 1 of stack "Execution Error" to which
  modeless "Execution Error"
  send "refresh" to card 1 of stack "Execution Error"
end traceError

on traceDone
  set the traceStack to empty
  set the tracemode of stack "Script Editor" to empty
  get the debuggingScript of stack "Script Editor"
  if it is not empty
  then send "stopDebug" to it
  send "refresh" to card 1 of stack "Execution Contexts"
  send "refresh" to card 1 of stack "Variable Watcher"
  set the title of stack "Message Box" to empty
  set the traceReturn to true
end traceDone

on updateVariable l, vname, vvalue
  MCdebugScript the long id of the target, empty, l, 0
end updateVariable

function MCtargetStack plongid
  local sname
  set the wholeMatches to true
  put word wordOffset("stack", plongid) + 1 of plongid into sname
  delete last char of sname
  delete first char of sname
  return sname
end MCtargetStack

function MCcheckEdit
  return the tool is not "browse tool" \
      and the mode of stack MCtargetStack(the long id of the target) is 1
end MCcheckEdit

on mouseMove
  if not MCcheckEdit()
  then pass mouseMove
end mouseMove

on mouseEnter
  if not MCcheckEdit()
  then pass mouseEnter
end mouseEnter

on mouseLeave
  if not MCcheckEdit()
  then pass mouseLeave
end mouseLeave

on mouseDown which
  if MCcheckEdit() then
    put "edited" into stackstatus[MCtargetStack(the long id of the target)]
    if the commandKey is down and the optionKey is down then
      select the target
      edit script of the target
    else
      if which is 3 then
        select the target
        popup "MC SelectedObject Menu"
      else exit to MetaCard
    end if
  else pass mouseDown
end mouseDown

on mouseUp which
  if MCcheckEdit() then
    switch which
    case 1
      break
    case 2
      pass mouseUp
    case 3
      if the long id of the target is the selectedObject
      then popup "MC SelectedObject Menu"
      else select the target
      break
    end switch
  else pass mouseUp
end mouseUp

on mouseDoubleDown
  if not MCcheckEdit()
  then pass mouseDoubleDown
end mouseDoubleDown

on mouseDoubleUp
  if MCcheckEdit()
  then palette "Properties"
  else pass mouseDoubleUp
end mouseDoubleUp

on tabKey
  if the commandKey is down then
    if the tool is "browse tool"
    then choose pointer tool
    else choose browse tool
  else pass tabKey
end tabKey

on commandKeyDown which
  if which is in "1234" then
    set the defaultStack to the topStack
    switch which
    case "1"
      go to first card
      break
    case "2"
      go to prev card
      break
    case "3"
      go to next card
      break
    case "4"
      go to last card
      break
    end switch
  else
    if the optionKey is down then
      switch which
      case "S"
        edit script of the topStack
        break
      case "C"
        edit script of this card of the topStack
        break
      default
        pass commandKeyDown
      end switch
    else pass commandKeyDown
  end if
end commandKeyDown

on selectedObjectChanged
  if the mode of stack "Properties" is not 0
  then send "refresh" to stack "Properties"
  if the mode of stack "Font Chooser" is not 0
  then send "refresh" to stack "Font Chooser"
  if the mode of stack "Color Chooser" is not 0
  then send "refresh" to stack "Color Chooser"
  if the mode of stack "Control Browser" is not 0
  then send "refresh" to card 1 of stack "Control Browser"
  if the menubar is empty
  then send "mouseDown" to group "MetaCard Menu Bar" of stack "MetaCard Menu Bar"
end selectedObjectChanged

on arrowKey which
  if (the selectedField) is not empty or the selectedObject is empty\
      or word 1 of the selectedObject is "stack"\
      or word 1 of the selectedObject is "card"\
      and word 2 of the selectedObject is not among the items of "field,button,image,player,scrollbar,graphic"
  then pass arrowKey
  lock screen
  local diff
  if the shiftkey is down
  then put 10 into diff
  else put 1 into diff
  repeat for each line l in the selectedObjects
    switch which
    case "left"
      set the left of l to the left of l - diff
      break
    case "right"
      set the left of l to the left of l + diff
      break
    case "up"
      set the top of l to the top of l - diff
      break
    case "down"
      set the top of l to the top of l + diff
      break
    end switch
  end repeat
  unlock screen
end arrowKey

function MCfindSE which
  local i, ds
  put the substacks of stack "MetaCard Menu Bar" into substacknames
  repeat with i = 1 to Nscripteditors
    get "Script Editor" && i
    if it is not among the lines of substacknames then return empty
    if the scriptObject of card 1 of stack it is which then
      if the mode of stack it is 0
      then modeless it
      else
        put the debuggingScript of stack "Script Editor" into ds
        if ds is not empty and ds is not the long id of card 1 of stack it then
          hide stack it
          show stack it
          send "openField true" to card 1 of stack it
        end if
      end if
      return it
    end if
  end repeat
  return empty
end MCfindSE

on editScript which, doclick
  local i, ename, foundone
  put MCfindSE(which) into ename
  if ename is not empty then
    go ename
    if doclick then get value("setscript(False)", card 1 of stack ename)
    return ename
  end if
  put false into foundone
  repeat with i = 1 to Nscripteditors
    put "Script Editor" && i into ename
    if ename is not among the lines of substacknames then
      set the visible of stack "Script Editor" to false
      clone stack "Script Editor" as ename
      set the mainStack of stack ename to "MetaCard Menu Bar"
      put true into foundone
      exit repeat
    end if
    if the mode of stack ename is 0 then
      put true into foundone
      exit repeat
    end if
  end repeat
  if not foundone then
    answer error "Too many script editors open!" with "I'll close one"
    exit to top
  end if
  set the scriptObject of card 1 of stack ename to which
  modeless ename
  set the visible of stack ename to true
  if doclick then get value("setscript(False)", card 1 of stack ename)
  return ename
end editScript

on scriptParsingError which
  if the mode of stack "Script Errors" is 0
  then modeless "Script Errors"
  send "refresh which" to card 1 of stack "Script Errors"
end scriptParsingError

on colorChanged
  send "refresh" to stack "Color Chooser"
end colorChanged

function MCcheckDelete
  if the selectedField is not empty then return true
  repeat for each line l in the selectedObjects
    if word 1 of l is "group" and the number of lines in the cardNames of l > 1 then
      answer "This group is placed on multiple cards," & cr & "really delete it" with "Yes" or "No"
      if it is "No" then return false
    end if
  end repeat
  return true
end MCcheckDelete

on backspaceKey
  if MCcheckDelete() then pass backspaceKey
end backspaceKey

on deleteKey
  if MCcheckDelete() then pass deleteKey
end deleteKey

function MCsaveCheck tstack
  if stackstatus[tstack] is "edited" then
    toplevel tstack
    answer "Save stack" && quote & tstack & quote && "before closing?" with "Yes" or "No" or "Cancel"
    switch it
    case "Yes"
      if the effective filename of the topStack is not empty
      then MCdoSave tstack
      else MCdoSaveAs tstack
      break
    case "No"
      put empty into stackstatus[tstack]
      break
    case "Cancel"
      return false
    end switch
  end if
  return true
end MCsaveCheck

on closeStackRequest
  if MCsaveCheck(MCtargetStack(the long id of the target))
  then pass closeStackRequest
end closeStackRequest

on shutdownRequest
  repeat for each line l in the openStacks
    if not MCsaveCheck(MCtargetStack(the long id of stack l))
    then exit to MetaCard
  end repeat
  pass shutdownRequest
end shutdownRequest

on MCdoSave sname
  local stime
  put the seconds into stime
  palette "Saving"
  wait 1 second
  set the cursor to watch
  compact stack sname
  save stack sname
  if the result is not empty
  then answer "Can't save stack, error was:" & cr & the result
  else
    put empty into stackstatus[MCtargetStack(sname)]
    wait until the seconds - stime > 2
  end if
  close stack "Saving"
end MCdoSave

on MCdoSaveAs shortname
  local makems, msname, sname
  put true into makems
  put the short name of stack shortname into shortname
  put the mainStack of stack shortname into msname
  if msname is not shortname and msname is not "Home" then
    modal "MainStack Option"
    if the retval of stack "MainStack Option" is "Cancel"
    then exit to MetaCard
    if the retval of stack "MainStack Option" is "No" then
      put false into makems
      put msname into shortname
    end if
  end if
  put MCfixpath(shortname) into sname
  local filterstring
  if the systemFileSelector then
    switch the platform
    case "Win32"
      put "MetaCard Stacks" & cr & "*.mc" & cr & "All Files" & cr & "*.*" into filterstring
      break
    case "MacOS"
      put "MSTK" into filterstring
      break
    default
      put "*.mc" into filterstring
    end switch
  else put "*.mc" into filterstring
  ask file "Save stack" && shortname && "as:" with sname with filter filterstring
  if it is empty
  then exit to MetaCard
  if makems and shortname is not msname then
    local tcolors, hcolors
    put the colors of stack shortname into tcolors
    put the colors of stack "Home" into hcolors
    repeat with i = 1 to 8
      if line i of tcolors is empty
      then put line i of hcolors into line i of tcolors
    end repeat
    set the colors of stack shortname to tcolors
    set mainStack stack shortname to shortname
    set the cursor to watch
    save stack msname
  end if
  set the cursor to watch
  save stack shortname as it
  put empty into stackstatus[MCtargetStack(shortname)]
end MCdoSaveAs

on newTool
  send "changeTool" to me
  send "changeTool" to stack "Tools"
  send "changeTool" to stack "Paint Tools"
  pass newTool
end newTool

on getCachedURLs
  start using "libUrl"
  pass getCachedURLs
end getCachedURLs

on getURLStatus
  start using "libUrl"
  pass getURLStatus
end getURLStatus

on loadURL
  start using "libUrl"
  pass loadURL
end loadURL

on getURL
  start using "libUrl"
  pass getURL
end getURL

on postURL
  start using "libUrl"
  pass postURL
end postURL

on putURL
  start using "libUrl"
  pass putURL
end putURL

on unloadURL
  start using "libUrl"
  pass unloadURL
end unloadURL

on deleteURL
  start using "libUrl"
  pass deleteURL
end deleteURL
         Ô           	        File ŕĹU	on errorDialog
  close stack "Saving"
  unlock error dialogs
  pass errorDialog
end errorDialog

on menuPick which
  switch which
  case "New Stack"
    create stack
    select the topStack
    set the colors of the topStack to the colors of stack "Home"
    palette "Properties"
    break
  case "Open..."
    local filterstring
    if the systemFileSelector then
      switch the platform
      case "Win32"
        put "MetaCard Stacks" & cr & "*.mc" & cr & "All Files" & cr & "*.*" into filterstring
        break
      case "MacOS"
        put "MSTKSTAKRSTK" into filterstring
        break
      default
        put "*.mc" into filterstring
      end switch
    else put "*.mc" into filterstring
    answer file "Open stack:" with filter filterstring
    if it is not empty then
      set the cursor to watch
      topLevel it
      if the result is not empty
      then answer error "Can't open stack because" & cr & the result & "."
    end if
    break
  case "Save"
    if the effective filename of the topStack is not empty
    then MCdoSave the long id of the topStack
    else MCdoSaveAs the long id of the topStack
    break
  case "Save As..."
    MCdoSaveAs the long id of the topStack
    break
  case "Revert"
    if the short name of the topStack is "Home"\
        or the owner of the topStack is not empty\
        and the short name of stack (the owner of the topStack) is "Home" then
      answer "Can't revert Home stack, or substacks of Home stack"
      exit to MetaCard
    end if
    local dstring
    if the mainStack of the topStack is not the short name of the topStack then
      put "Discard all changes to substack" & return\
          & the short name of the topStack & return & "of main stack" & return\
          & the mainStack of the topStack & "?" into dstring
    else put "Discard all changes to main stack" & return &\
        the short name of the topStack & "?" into dstring
    answer dstring with "OK" or "Cancel"
    if it is "Cancel" then exit to MetaCard
    revert
    break
  case "Close"
    get the openStacks
    if line 1 of it is "MetaCard Menu Bar"
    then close stack line 2 of it
    else close stack line 1 of it
    break
  case "Import..."
    palette "Importer"
    break
  case "Print Card"
    set the defaultStack to the topStack
    print this card
    break
  case "Page Setup..."
    modeless "Page Setup"
    break
  case "Quit"
  case "Exit"
    quit
    break
  end switch
end menuPick
          (    p&New Stack
-
&Open.../O
&Save/S
Save &As...
&Revert
&Close
-
&Import...
-
Prin&t Card
Pa&ge Setup...
-
&Quit/Q
      	        Edit ŕĹUÔon menuPick which
  switch which
  case "Undo"
    undo
    break
  case "Cut"
    if the selectedField is not empty
    then if the lockText of the selectedField then exit to MetaCard
    if MCcheckDelete() then cut
    break
  case "Copy"
    copy
    break
  case "Paste"
    set the defaultStack to the topStack
    paste
    break
  case "Delete"
    if the selectedField is not empty
    then if the lockText of the selectedField then exit to MetaCard
    if MCcheckDelete() then delete
    break
  case "Select All"
    if the selectedField is not empty then
      if the lockText of the selectedField then exit to MetaCard
      select text of the selectedField
    else
      if the cantModify of the topStack then
        answer "This stack can't be modified"
        exit to MetaCard
      end if
      lock screen
      set the defaultStack to the topStack
      repeat with i = 1 to the number of layers
        if the visible of control i or the showInvisibles
        then set the selected of control i to true
        add the number of layers in control i to i
      end repeat
      unlock screen
    end if
    break
  case "Ungroup"
  case "Group"
    if word 1 of the selobj is "group" and the number of lines in (the selobjs) is 1
    then ungroup
    else
      group
      if the result is not empty
      then answer "Can't group unless all objects have the same owner."
    end if
    break
  case "Backgrounds..."
  case "Stop Editing BG"
    if the editBkgnd of the topStack
    then set the editBackground of the topStack to false
    else modal "Edit Backgrounds"
    break
  case "Menus"
    set the editMenus of the topStack to not the editMenus of the topStack
    break
  case "Create Card"
    set the defaultStack to the topStack
    create card
    break
  case "Delete Card"
    set the defaultStack to the topStack
    delete this card
    break
  case "Clone This Card"
    set the defaultStack to the topStack
    clone this card
    break
  case "Object Properties..."
    palette "Properties"
    break
  case "Card Properties..."
    select this card of the topStack
    palette "Properties"
    break
  case "Stack Properties..."
    select the topStack
    palette "Properties"
    break
  end switch
end menuPick
        0  (    É&Undo/Z
-
Cu&t/X
&Copy/C
&Paste/Y
&Delete
Select A&ll
-
(&Group/G
&Backgrounds.../T
&Menus
-
C&reate Card
D&elete Card
Cl&one This Card
-
Ob&ject Properties...
Card Propert&ies...
Stac&k Properties...      	        Tools ŕĹUëon menuPick which
  switch which
  case "Find..."
    modeless "Find"
    break
  case "Navigator"
    palette "Navigator"
    break
  case "Message Box"
    if the mode of stack "Message Box" is 0 \
        or line 1 of the openStacks is not "Message Box"then
      modeless "Message Box"
      select before char 1 of field 1 of stack "Message Box"
    else close stack "Message Box"
    break
  case "Tools Palette"
    palette "Tools"
    break
  case "Paint Tools"
    palette "Paint Tools"
    break
  case "Character Chooser"
    palette "Character Chooser"
    break
  case "Script Profiler"
    modeless "Script Profiler"
    break
  case "Control Browser"
    modeless "Control Browser"
    break
  case "Menu Builder..."
    modeless "Menu Builder"
    break
  case "Resource Mover..."
    modeless "Resource Mover"
    break
  case "Standalone Builder..."
    modeless "Standalone Builder"
    break
  case "Audio Settings"
    palette "Audio"
    break
  case "Preferences"
    modeless "Preferences"
    break
  case "Utilities"
    modeless "Utilities"
    break
  case "Print Field"
    modeless "Print Field"
    break
  case "tools.metacard.com"
    downloadNgo "http://www.metacard.com/stacks/tools.mc"
    break
  end switch
end menuPick
        X  0   &Find...
-
&Navigator
&Message Box/M
&Tools Palette
Pa&int Tools
-
&Character Chooser
&Script Profiler
Control Bro&wser
-
Menu &Builder...
Resource Mo&ver...
Standalone Builde&r...
-
&Audio Settings
&Preferences
&Utilities
Print Fiel&d
-
t&ools.metacard.com      	        Text ŕĹUon menuPick newatt
  if the selectedChunk is empty and the selectedObject is empty
  then exit to MetaCard
  set the itemDel to "|"
  switch item 1 of newatt
  case "Font"
    put item 2 of newatt into newatt
    if newatt is "none"
    then put empty into newatt
    if the selectedChunk is empty then
      repeat for each line l in the selectedObjects
        set the textFont of l to newatt
      end repeat
    else set the textFont of the selectedChunk to newatt
    break
  case "Size"
    put item 2 of newatt into newatt
    if newatt is "none"
    then put empty into newatt
    else
      if newatt is "Other..." then
        local f, c1, c2
        if the selectedChunk is empty then put empty into c1
        else
          put word 2 of (the selectedChunk) into c1
          put word 4 of (the selectedChunk) into c2
          put the long id of the selectedField into f
        end if
        ask "New font size?"
        if c1 is not empty then select char c1 to c2 of f
        if it is not a number then exit to MetaCard
        put it into newatt
      end if
    end if
    if the selectedChunk is empty then
      repeat for each line l in the selectedObjects
        set the textSize of l to newatt
      end repeat
    else
      set the textSize of the selectedChunk to newatt
      set the fixedLineHeight of the selectedField to false
    end if
    break
  case "Style"
    local tstyle
    put item 2 of newatt into newatt
    if newatt is "plain"
    then put "plain" into tstyle
    else
      if newatt is "3D Box" then put "threedbox" into newatt
      if the selectedChunk is empty
      then put the effective textStyle of the selectedObject into tstyle
      else put the effective textStyle of the selectedChunk into tstyle
      local toffset
      set the wholematches to true
      set the itemDel to comma
      put itemOffset(newatt, tstyle) into toffset
      if toffset is 0 then
        if tstyle is empty
        then put newatt into tstyle
        else put comma & newatt after tstyle
      else
        delete item toffset of tstyle
        if tstyle is empty then put "plain" into tstyle
      end if
    end if
    if newatt is "plain" and the selectedChunk is not empty\
        and the textShift of the selectedChunk is not 0 then
      set the textShift of the selectedChunk to 0
      set the textSize of the selectedChunk to empty
    end if
    if the selectedChunk is empty
    then set the textStyle of the selectedObject to tstyle
    else set the textStyle of the selectedChunk to tstyle
    break
  case "Color"
    switch item 2 of newatt
    case "Pen Color"
      put the penColor into newatt
      break
    case "Clear"
      put empty into newatt
      break
    default
      put item 2 of newatt into newatt
      break
    end switch
    if the selectedChunk is empty
    then set the textColor of the selectedObject to newatt
    else set the textColor of the selectedChunk to newatt
    break
  default
    local tshift, tsize
    put the textShift of the selectedChunk into tshift
    if tshift is not empty and tshift is not 0 then
      set the textSize of the selectedChunk to empty
      set the textShift of the selectedChunk to 0
    else
      put the effective textSize of the selectedChunk into tsize
      set the textSize of the selectedChunk to round(tsize * 3 / 5)
      if item 1 of newatt is "Subscript"
      then set the textShift of the selectedChunk to 4
      else set the textShift of the selectedChunk to -4
    end if
    set the fixedLineHeight of the selectedField to false
    break
  end switch
end menuPick
          (   ź(Font
!u	none
	-
!u	arial
!u	avantgarde
!u	bitstream charter
!u	bookman
!u	bookman l
!u	century schoolbook
!u	century schoolbook l
!u	chancery l
!u	charter
!u	courier
!u	courier new
!u	fixed
!u	goth
!u	gothic
!u	gothic l
!u	helvetic
!u	helvetica
!u	kochi gothic
!u	kochi mincho
!u	ledfixed
!u	lucida
!u	lucidabright
!u	lucidatypewriter
!u	lucidux mono
!u	lucidux sans
!u	lucidux serif
!u	mincho
!u	new century schoolbook
!u	nimbus mono
!u	nimbus mono l
!u	nimbus roman
!u	nimbus roman no9 l
!u	nimbus sans
!u	nimbus sans condensed
!u	nimbus sans l
!u	palatino
!u	palladio
!u	palladio l
!u	terminal
!u	times
!u	times new roman
!u	utopia
!u	zapf chancery
(Size
!u	none
	-
!u	8
!u	10
!u	11
!u	12
!u	14
!u	17
!u	18
!u	20
!u	24
!u	25
!u	30
	-
!u	other...
(Style
!n	Plain
	-
!n	Bold
!n	Italic
!n	Underline
!n	Strikeout
!n	3D Box
!n	Box
	-
!n	Link
(Color
!u	Black
!u	White
!u	Red
!u	Green
!u	Blue
!u	Yellow
	-
!u	Pen Color
	-
!u	Clear
(!uSubscript
(!uSuperscript      	        Help ŕĹUđon menuPick which
  switch which
  case "help.metacard.com"
    downloadNgo "http://www.metacard.com/stacks/help.mc"
    break
  case "Directory"
    modeless "Help Directory"
    break
  case "Index"
    modeless "Help Index"
    break
  case "Tutorials"
    modeless "MetaCard Tutorials"
    break
  case "Concepts"
    topLevel "Concepts & Techniques"
    break
  case "Reference"
    topLevel "MetaTalk Reference"
    break
  case "Examples"
    topLevel "MetaTalk Examples"
    break
  case "FAQ"
    topLevel "MetaCard FAQ"
    break
  case "Licensing"
    modeless "Licensing MetaCard"
    break
  case "Support..."
    modeless "Support"
    break
  case "About MetaCard..."
    modeless "MetaCard Version"
    break
  end switch
end menuPick
       ¤  0    }&help.metacard.com
-
&Directory
&Index
&Tutorials
&Concepts
&Reference
&Examples
&Licensing
&Support...
-
&About MetaCard...      	       ë Message Box       Îň¨    cs  %go "/home/raney/cragg/liburl_1010.mc"color              ˙˙˙˙   S  U 
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
helvetica   é Message Box Card   	P,local initted
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
           ¨   ę
  ę Message Field  )p.local MessageBoxHistory, MessageBoxIndex

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
     @     ¨          é      Execution Error    Ěon errorDialog which
  put which
  set the executionerror of card 1 of stack "Execution Error" to which
  modeless "Execution Error"
  send "refresh" to card 1 of stack "Execution Error"
end errorDialog
            zÂ ¨               	  U 
Helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica    e Execution Error Card   	p	Ńlocal ee, ec, er, eo, ei, et

on returnInField
  send "mouseUp" to button "Ignore"
end returnInField

on returnKey
  send "mouseUp" to button "Ignore"
end returnKey

on closeCard
  set the errorobject of me to empty
  set the executionerror of me to empty
  put empty into ee
  put empty into field "Error Message"
  put empty into field "Object"
  put empty into field "Bad Token"
  put 0 into field "Line"
  put 0 into field "Column"
end closeCard

on preOpenCard
  set the loc of this stack to the screenLoc
end preOpenCard

on refresh
  local lc, em, tei, teo, ter, tec
  put empty into ei
  put empty into eo
  put empty into er
  put empty into ec
  put empty into et
  put empty into field "Error Message"
  put the executionerror of me & cr after ee
  put the number of lines in ee into lc
  if lc > 100
  then delete line 100 to lc of ee
  if lc < 2 or the number of items in ee < 6 then
    hide button "Script..."
    hide button "Debug..."
    put "thrown error" & cr into field "Error Message"
  end if
  repeat with i = the number of lines in ee down to 1
    get item 1 of line i of ee
    put line it of field "Messages" into em
    if em is "Object Name:" then
      put item 4 of line i of ee into tei
      put the long name of tei into teo
    else
      put em & cr before field "Error Message"
      if item 2 of line i of ee is not 0 then
        put item 2 of line i of ee into ter
        put item 3 of line i of ee into tec
      end if
      put tei & cr before ei
      put teo & cr before eo
      put ter & cr before er
      put tec & cr before ec
      put item 4 of line i of ee & cr before et
    end if
  end repeat
  delete last char of field "Error Message"
  seterror 1
  set the hilitedLines of field 1 to 1
end refresh

on openCard
  set the hilitedLines of field 1 to 1
end openCard
on openStack
end openStack
on preOpenStack
end preOpenStack
on openBackground
end openBackground
on preOpenBackground
end preOpenBackground

on seterror which
  if line which of eo contains quote & "Message Field"  & quote\
      or "mctools.mc" is not in the frontscripts \
      or word 1 of the mainStacks is not "Home" then
    hide button "Script..."
    hide button "Debug..."
  else
    show button "Script..."
    show button "Debug..."
  end if
  put line which of eo into field "Object"
  put line which of er into field "Line"
  put line which of ec into field "Column"
  put line which of et into field "Bad Token"
  set the errorobject of me to line which of ei
end seterror
           ¨   errorobject   executionerror         
                                    
    	Messages   @       
 
| ´        e /Handler: Running low on memory, script aborted  (recursionLimit: Recursion limit reached   abs: error in source expression  accept: bad expression  &aclip: playLoudness is not an integer  !acos: error in source expression  acos: domain error  add: error in matrix operation  -add: destination has a bad format (numeric?)   add: error in source expression  add: can't set destination  add: can't add array to scalar  )aliasReference: error in file expression  %Operators and: error in left operand  &Operators and: error in right operand  (Operators bitAnd: error in left operand  )Operators bitAnd: error in right operand  $annuity: error in period expression  "annuity: error in rate expression  %answer: error in question expression  %answer: error in response expression  "answer: error in title expression  split: error in expression  (arrowKey: error in direction expression  arrowKey: not a direction  !asin: error in source expression  asin: domain error  "ask: error in question expression  ask: error in reply expression  ask: error in title expression  !atan2: error in first expression  "atan2: error in second expression  atan2: domain error  !atan: error in source expression  atan: domain error  $average: error in source expression  )base64Decode: error in source expression  )base64Encode: error in source expression  "baseConvert: bad destination base  (baseConvert: error in source expression  baseConvert: bad source base  'baseConvert: can't convert this number  (baseConvert: destination is not base 10  beep: error in expression  ,binaryDecode: destination is not a variable  )binaryDecode: invalid data for parameter  $binaryDecode: not enough parameters  )binaryDecode: error in source expression  )binaryEncode: invalid data for parameter  $binaryEncode: not enough parameters  )binaryEncode: error in source expression  !Button: bad accelerator modifier  !Button: family is not an integer  %Button: menuButton is not an integer  &Button: menuHistory is not an integer  $Button: menuLines is not an integer  #Button: mnemonic is not an integer  %cancel: message id is not an integer  &charToNum: error in source expression  choose: error in expression  choose: not a tool  &Chunk: error in background expression   Chunk: error in card expression   Chunk: error in character range  *Chunk: container is not a button or field  !Chunk: error in chunk expression  Chunk: error in item range  Chunk: error in line range  "Chunk: error in object expression  %Chunk: error in range end expression  'Chunk: error in range start expression  !Chunk: error in stack expression  Chunk: error in text string  Chunk: can't separate tokens  Chunk: can't separate words  Chunk: can't delete object  Chunk: can't find object  #Chunk: can't get object attributes  0Chunk: can't get value of destination container  Chunk: can't get number  Chunk: can't get source string  Chunk: can't get substring  Chunk: can't find substring  Chunk: can't set attributes  ,Chunk: can't store to destination container  Chunk: can't set as a number  Chunk: can't find background  Chunk: can't find card  Chunk: no such object  Chunk: can't set property  Chunk: can't find stack  Chunk: no target found  +Chunk: can't select object that isn't open  !Chunk: source is not a container  'Chunk: can't find object to store into  'Chunk: can't get source from container  &Chunk: destination is not a container  click: script aborted  )click: expression is not a button number  !click: error in point expression  !click: expression is not a point  click: stack is not open   clone: error in name expression  clone: can't clone this object  clone: stack is locked  "clone: can't find object to clone   close: error in name expression  close: can't find stack  #color: error setting selectedColor  "compact: can't find stack to save  compact: object is not a stack  &compound: error in periods expression  #compound: error in rate expression  %compress: error in source expression  ,compress: error occurred during compression  $Operators &&: error in left operand  %Operators &&: error in right operand  #Operators &: error in left operand  $Operators &: error in right operand  *Operators contains: error in left operand  +Operators contains: error in right operand  #convert: can't read from container  convert: can't set container  !copy: invalid destination object  $copy: can't find destination object  copy: can't copy source object  copy: can't find source object  "copy: stack is password protected   cos: error in source expression  cos: domain error  5create: error in bad parent or background expression  !create: error in name expression  &create: error in file name expression  %create: stack is locked (cantModify)   crop: error in image expression  crop: object is not an image  $crop: error in rectangle expression  $crop: expression is not a rectangle  cut: can't find or copy object  'decompress: error in source expression  *decompress: string is not compressed data  'decompress: error during decompression  -delete: error in file or url name expression  delete: can't find object  disable: can't find object  ,Stack: stack has not been given a file name  "divide: error in matrix operation  0divide: destination has a bad format (numeric?)  #divide: error in source expression  divide: can't set destination  %divide: can't divide scalar by array  divide: range error (overflow)  divide: divide by zero  )Operators div: error in matrix operation  %Operators div: error in left operand  &Operators div: error in right operand  -Operators div: can't divide scalar by matrix  &Operators div: range error (overflow)  Operators div: divide by zero  do: aborted  do: error in source expression  do: error in statement  do: error in expression  !do: error in language expression  0do: unexpected end of line in source expression  do: can't find command  do: not a command  do: license limit exceeded  doMenu: error in expression  "doMenu: don't know this menu item  drag: script aborted  drag: bad "button" number  drag: bad end point expression  drag: end point is not a point  !drag: bad start point expression  !drag: start point is not a point  &driverNames: error in type expression  !drives: error in type expression  edit: can't find object  $encrypt: error in source expression  Operators =: error in operand  "exp10: error in source expression  exp10: domain error  !exp1: error in source expression  exp1: domain error  !exp2: error in source expression  exp2: domain error  5export: error in file (or mask file) name expression  'export: can't open file (or mask file)  5export: can't write to file, mask file, or container  -export: no image selected, or image not open  (export: selected object is not an image  $Expression: error in numeric factor  #Expression: error in string factor   exp: error in source expression  exp: domain error  &extents: error in variable expression  Factor: error in left operand  Factor: error in right operand  Field: bad text attributes  %Field: hilitedLine is not an integer  (Field: scrollbarWidth is not an integer  Field: shift is not an integer  *Field: tabstops is not a positive integer  2files: no permission to list files or directories  filter: bad source string  filter: bad pattern string  filter: can't set destination  find: bad source string  flip: can't find image  flip: object is not an image  flushEvents: bad event type  focus: not a valid control  $fontNames: error in type expression  fontSizes: bad font name  fontStyles: bad font name  fontStyles: bad font size  0format: bad format string or parameter mismatch  $Function: error in function handler  %Function: error in source expression  !Function: source is not a number  Function: is not a number  get: error in expression  get: can't set destination  %globalLoc: coordinate is not a point  #go: error in background expression  go: error in card expression  go: error in stack expression  go: error in window expression  *go: can't attach menu to this object type  go: can't find destination  grab: can't find object  graphic: not an integer   Operators >=: error in operands  Operators >: error in operands  Group: backSize is not a point  'Group: hilitedButton is not an integer  Group: bad object type  %Operators (): error in right operand  Handler: aborted  Handler: error in statement  'Handler: error in parameter expression  %Handler: not a valid parameter index  !hasMemory: bad amount expression  (hide: error in visual effect expression  hide: can't find object  (hostAddress: error in socket expression  /hostAddressToName: error in address expression  #hostName: error in name expression  ,hostNameToAddress: error in name expression  if-then: aborted  'if-then: error in condition expression  if-then: error in statement  Image: bad pixmap id  !Image: hotspot is not an integer  Image: id is not an integer  .Image: id is already in use by another object  $Image: image must be open to set id  #Image: hotSpot x is not an integer  #Image: hotSpot y is not an integer  import: error in expression  .import: can't open file, mask file or display  .import: can't read file, mask file or display  1import: destination stack is locked (cantModify)  insert: can't find object  insert: license limit exceeded   intersect: two objects required  $Operators is: error in left operand  %Operators is: error in right operand  %Operators is: can't compare operands  6Operators is: left operand of 'within' is not a point  ;Operators is: right operand of 'within' is not a rectangle  %isNumber: error in source expression  "isoToMac: error source expression  #Operators ,: error in left operand  $Operators ,: error in right operand  "keys: parameter is not a variable  kill: no such process  kill: bad number  (launch: error in application expression  #length: error in source expression   Operators <=: error in operands  Operators <: error in operands   ln1: error in source expression  ln1: domain error  ln: error in source expression  ln: domain error  load: error in url expression  "load: error in message expression  $localLoc: coordinate is not a point  "log10: error in source expression  log10: domain error  !log2: error in source expression  log2: domain error  'longFilePath: error in file expression  "macToIso: error source expression  mark: bad card expression  mark: error in find expression  +matchChunk: can't set destination variable  %matchChunk: bad or missing parameter  (matchChunk: error in pattern expression  'matchChunk: error in source expression  (matrix: range error in matrix operation  +matrixMultiply: error in source expression  ,matrixMultiply: can't multiply these arrays   max: error in source expression  *MCISendString: error in source expression  &MD5digest: error in source expression  #median: error in source expression  "merge: error in source expression  .Operators -: can't subtract array from scalar  #Operators -: error in left operand  $Operators -: error in right operand  7Operators -: range error (overflow) in array operation  $Operators -: range error (overflow)   min: error in source expression  )Operators mod: error in matrix operation  %Operators mod: error in left operand  &Operators mod: error in right operand  -Operators mod: can't divide scalar by matrix  &Operators mod: range error (overflow)  Operators mod: divide by zero  "mouse: error in source expression  move: script aborted  move: can't find object  move: bad end point expression  move: bad duration expression  move: duration is not a number  move: end point is not a point  !move: bad start point expression  !move: start point is not a point  $multiply: error in matrix operation  2multiply: destination has a bad format (numeric?)  %multiply: error in source expression   multiply: can't set destination  )multiply: can't multiply scalar by array  !multiply: range error (overflow)   Operators <>: error in operands  &Operators not: error in right operand  )Operators bitNot: error in right operand  &numToChar: error in source expression  !Object: bad textAlign expression  Object: unknown color  Object: error in colors  =Object: can't set layer (card not open, or control in group)  Object: not a textStyle  6Object: stack locked, or object's script is executing  +Object: object does not have this property  !Object: height is not an integer   Object: layer is not an integer  !Object: margin is not an integer  /Object: value is not a boolean (true or false)  Object Name:  #Object: property is not an integer  "Object: coordinate is not a point  )Object: rectangle does not have 4 points  Object: no Home stack  &Object: pixel value is not an integer  !Object: pixmap is not an integer  /Object: can't set script while it is executing   Object: can't set this property  %Object: textheight is not an integer  #Object: textsize is not an integer  )offset: error in start offset expression  !offset: error in part expression  "offset: error in whole expression  "open: error in message expression  open: error in name expression  /open: no permission to open files or processes  $Operators or: error in left operand  %Operators or: error in right operand  'Operators bitOr: error in left operand  (Operators bitOr: error in right operand  'Operators /: error in matrix operation  #Operators /: error in left operand  $Operators /: error in right operand  +Operators /: can't divide scalar by matrix  $Operators /: range error (overflow)  Operators /: divide by zero  param: error in expression  param: bad parameter index  "param: error in source expression  param: is not a number  $paste: stack is locked (cantModify)  (peerAddress: error in socket expression  =place: group is not in this stack or is already on this card  place: can't find group  place: can't find card  place: source is not a group  !place: destination is not a card  $play: can't get sound or movie name  play: bad movie location  play: bad movie options  #Operators +: error in left operand  $Operators +: error in right operand  $Operators +: range error (overflow)  pop: can't set destination  post: can't get source  post: can't get destination  pow: error in left operand  pow: error in right operand  pow: range error (overflow)  ,print: can't get 'from' or 'to' coordinates  !print: can't get number of cards  print: can't get rectangle  print: error printing  'print: error writing file (disk full?)  print: coordinate not a point  %print: expression is not a rectangle  print: not a card  .print: card or stack must be open to print it  print: no card specified  arcAngle: not an integer  blinkRate: not a number  penColor: bad color  "colormap: bad color name or value  )Object: error counting objects as number  'Object: error counting objects as text  dragSpeed: not a number  effectRate: not a number  extendKey: not a number  Property: bad array expression  gridSize: not an integer  idleRate: not a number  lineSize: not an integer  moveSpeed: not a number  multiSpace: not a number  polySides: not an integer  repeatDelay: not a number  repeatRate: not a number  !doubleClickDelta: not an integer  doubleClickTime: not a number  roundRadius: not an integer  slices: not an integer  startAngle: not an integer  traceDelay: not a number  traceStack: not a stack name  print: bad property value  syncRate: not a number  tooltipDelay: not a number  typeRate: not a number  userLevel: not an integer  beep: not an integer  brush: not an integer  brush: can't find image  #brushPattern: not a valid image id  brushPattern: can't find image  "Object: no object to set property  "Object: can't set object property  cursor: not an integer  cursor: can't find image  5Property: value is not a boolean ("true" or "false")   Property: value is not a number  defaultStack: can't find stack  !defaultMenuBar: can't find group  $Object: does not have this property  #Object: property is not an integer  !penPattern: not a valid image id  penPattern: can't find image  'randomSeed: property is not an integer  socketTimeout: not a number  "umask: property is not an integer  push: object is not a card  push: can't find card  put: error in expression  put: can't set destination   put: can't put into destination  *queryRegistry: error in source expression  #random: error in source expression  read: aborted  read: error in 'at' expression  $read: error in condition expression   read: error in count expression  read: error reading  read: count is not an integer  "read: error in 'until' expression  read: file is not open   read: error in 'for' expression  read: process is not open  !record: error in file expression  -recordCompression: type must be 4 characters  'recordInput: type must be 4 characters  remove: can't find object  remove: object is not a group  remove: object is not a card  #rename: error in source expression  (rename: error in destination expression  repeat: aborted  ,repeat: error in 'for' condition expression  repeat: error in statement  .repeat: error in 'until' condition expression  .repeat: error in 'while' condition expression  1repeat: error in 'with' end condition expression  3repeat: error in 'with' start condition expression  2repeat: error in 'with' step condition expression  &repeat: error setting 'with' variable  replace: can't set container  %replace: error in pattern expression  )replace: error in replacement expression  'replace: error in container expression  replaceText: bad parameter  replaceText: bad source string  #reply: error in keyword expression  #reply: error in message expression  %request: error in keyword expression  %request: error in message expression  %request: error in program expression  'request: no permission to request that  "getResources: error in expression  (getResources: no permission to get that  return: error in expression   revert: can't revert Home stack  #rotate: error in object expression  (rotate: object is not an editable image  "rotate: error in angle expression  +round: error in source or digit expression  $save: error in file name expression  save: saving disabled  save: can't find stack to save  save: object is not a stack  $seek: error in file name expression  !seek: error in offset expression  seek: file is not open  select: can't select target  3selectedChunk: error in button or field expression  &selectedButton: bad family expression  -selectedButton: bad parent object expression  )send: error in message handler execution  "send: error in message expression  send: error in 'in' expression  "send: error in program expression  send: bad target expression  !send: no permission to send that   set: error in source expression  set: can't set property  2setRegistry: no permission to get or set registry  (setRegistry: error in source expression  shell: aborted  shell: can't run shell command  "shell: error in source expression  %shell: no permission to run commands  (shortFilePath: error in file expression  (show: error in visual effect expression  #show: error in location expression  *show: error in number of cards expression  )show: location is not in proper x,y form  show: can't find object   sin: error in source expression  sin: domain error   sort: can't find object to sort  sort: error sorting  sort: can't find field  ,specialFolderPath: error in type expression  !sqrt: error in source expression  sqrt: domain error  Stack: bad decoration  4Stack: invalid id (must be greater than current id)  Stack: invalid key  Stack: bad substack name  ,Stack: can't set mainStack (has substacks?)  "Stack: deskIcon is not an integer  #Stack: userLevel is not an integer  Stack: size is not an integer  #Stack: stack is password protected  Stack: can't find mainStack   Stack: stack is not a mainStack  *Stack: error in external function handler  start: can't find object  start: stack is locked  !start: expression is not a group  start: license limit exceeded  $Handler: error in source expression  Handler: can't find handler  stdDev: error in expression  stop: error in expression  stop: target is not a group  $subtract: error in matrix operation  2subtract: destination has a bad format (numeric?)  %subtract: error in source expression   subtract: can't set destination  +subtract: can't subtract array from scalar  subwindow: error in expression  &subwindow: can't find stack or button   sum: error in source expression  &switch: error in condition expression  !switch: error in case expression  switch: error in statement  !textHeightSum: can't find object   tan: error in source expression  tan: domain error  "there: error in source expression  "throw: error in source expression  'Operators *: error in matrix operation  #Operators *: error in left operand  $Operators *: error in right operand  $Operators *: range error (overflow)  $toLower: error in source expression  %topStack: error in source expression  $toUpper: error in source expression  $transpose: source is not a variable  &transpose: can't transpose this array  "trunc: error in source expression  try: error in statement  type: script aborted  type: bad string expression  ungroup: can't find group  ungroup: target is not a group  (uniDecode: error in language expression  &uniDecode: error in source expression  (uniEncode: error in language expression  &uniEncode: error in source expression   unload: error in url expression  *unlock: expression is not a visual effect  &urlDecode: error in source expression  &urlEncode: error in source expression  #urlStatus: error in url expression  "value: error in source expression  "value: error executing expression  value: can't find object  Array: bad index expression  Chunk: source is not a number  !Chunk: source is not a character  visual: bad effect expression  wait: aborted  wait: error in expression  !wait: expression is not a number  within: can't find control  within: not a point  write: error in expression  (Operators bitXor: error in left operand  )Operators bitXor: error in right operand      
 Ignore ŔŤp fon mouseUp
  close this stack
  set the traceAbort to true
  set the traceReturn to true
end mouseUp
        0 | D                 	   e 
    Perror Field  	            ˙˙˙˙˙˙      0 H       
      	          8 <         e Object:     
Script... ŔŁp7on mouseUp
  get the long id of the errorobject of this card
  set the history[it] of stack "Script Editor" to \
      format("char %d of line %d of field \"Editor Field\"", field "Column", field "Line")
  editScript it
  close this stack
  set the traceAbort to true
  set the traceReturn to true
end mouseUp
        ¤ | O                 	   e 
    Object  	         @ 8Ô $        e      Help ŔŤp on mouseUp
  help
end mouseUp
       ¤ | D                 	   e     	Debug... ŔŁp on mouseUp
  MCdebugScript the long id of the errorobject of this card, empty, field "Line", field "Column"
  close this stack
end mouseUp
       $ | P                 	   e 
    Error Message  ˇ)píon mouseDoubleUp which
  if which is 3 and there is a file "eetext" then
    set the cursor to watch
    open file "eetext"
    read from file "eetext" until eof
    put it into field "Messages"
    close file "eetext"
    beep 1
  else
    local term
    put item 1 of the clickText into term
    if there is a card term of stack "MetaTalk Reference"
    then go to card term of stack "MetaTalk Reference"
  end if
end mouseDoubleUp

on mouseUp
  seterror the hilitedlines of me
end mouseUp
          (               	    `    @ ˙ 	  & 
    
Bad Token  	        N \ Ć         e  
      	         Ç \          e Processing Token: 
      	         ` \ @         e Column: 
    Line  	         0 \ 0         e 0 
      	          \ ,         e Line: 
    Column  	           \ '         e 0     Script Error      l l l      7 ¨             U 
Helvetica   U 
helvetica    e Script Error Card   	pjon preOpenCard
  put 0 into field "Line"
  put 0 into field "Column"
  lock screen
  repeat with i = the number of lines in the scripterror of me down to 1
    get item 1 of line i of the scripterror of me
    put line it of field "Messages" & return before field "Error Message"
    if (item 2 of line i of the scripterror of me) is not 0 then
      put item 2 of line i of the scripterror of me into field "Line"
      put item 3 of line i of the scripterror of me into field "Column"
      put item 4 of line i of the scripterror of me into field "Bad Token"
    end if
    if item 4 of line i of the scripterror of me is not empty
    then put item 4 of line i of the scripterror of me into field "Bad Token"
  end repeat
  put item 4 of last line of the scripterror of me into field "Object"
  unlock screen
end preOpenCard

on closeStack
  put empty into field "Error Message"
  put empty into field "Object"
  put empty into field "Bad Token"
 set the scripterror of me to empty
end closeStack

on returnKey
  send "mouseUp" to button "OK"
end returnKey

on returnInField
  send "mouseUp" to button "OK"
end returnInField
           ¨   scripterror      
                                 
    	Messages   @       
 
| ´        e Object Name:  set: license limit exceeded  abs: bad parameter  accept: bad expression  acos: bad parameter  add: bad destination  add: bad expression  add: missing 'to'  aliasReference: bad expression  annuity: bad parameter  answer: bad question  answer: bad response  answer: bad title  split: bad variable  split: missing 'with'  split: bad expression  #arrowKey: bad direction expression  asin: bad parameter  ask: bad question  ask: bad reply  ask: bad title  atan2: bad parameter  atan: bad parameter  average: bad parameter  base64Decode: bad parameter  base64Encode: bad parameter  baseConvert: bad parameter  binaryDecode: bad expression  binaryEncode: bad expression  cancel: bad message expression  charToNum: bad parameter  choose: bad expression  choose: no tool specified  Chunk: token is not a chunk  Chunk: bad destination   Chunk: bad non-chunk expression  0Chunk: bad chunk order (must be small to large)  Chunk: bad preposition  Chunk: bad range  Chunk: bad stack reference  Chunk: missing chunk  Chunk: bad expression   Chunk: bad range end expression  CChunk: can't create a variable with that name (explicitVariables?)  click: bad "button" expression  click: bad location expression  click: missing 'at'  clone: bad name expression  clone: bad target expression  close: bad stack expression  close: bad stack name  close: no stack type  #compact: error in stack expression  compound: bad parameter  compress: bad parameter   constant: error in value string  constant: missing value string  "convert: 'and' in the wrong place   convert: no container specified  convert: no format supplied  convert: not a valid format  convert: missing 'to'  (copy: bad destination object expression  cos: bad parameter  *create: bad background or card expression  &create: error in file name expression  create: can't create this type  create: not an object type  create: no file name supplied  ,create: no alias or directory name supplied  create: no object type  crop: bad image expression  crop: bad rect expression  decompress: bad parameter  define: bad object expression  define: invalid property name  delete: bad file expression   delete: bad variable expression  disable: no control specified  divide: bad destination  divide: bad expression  divide: missing 'by'  do: bad expression  do: bad language expression  doMenu: bad expression  drag: bad "button" expression  "drag: bad end location expression  $drag: bad start location expression  drag: missing 'from'  drag: missing 'to'  $driverNames: bad in type expression  drives: bad in type expression  edit: missing 'of'  edit: missing 'script'  edit: no object specified  encrypt: bad parameter  !exit: bad destination expression   exit: no destination expression  exp10: bad parameter  exp1: bad parameter  exp2: bad parameter  export: bad file name  export: bad mask file name  +export: bad image or image type expression  'export: missing file name or container  export: missing 'mask'  export: missing 'to'   export: no image type specified  Expression: bad chunk  Expression: bad function  Expression: bad property  #Expression: double binary operator  Expression: no binary operator  Expression: missing factor  4Expression: missing left operand to binary operator  Expression: missing ')'  Expression: bad factor  Expression: unquoted literal  &Expression: missing ')' before factor  exp: bad parameter  extents: bad parameter  Function: bad parameter  Function: missing 'of'  Function: missing '('  Function: missing ')'  !Function: separator is not a ','  filter: bad container  filter: bad pattern expression  filter: expected "with"  find: bad field expression  find: bad string expression  find: no string expression  flip: bad image expression  flip: missing direction  'flushEvents: bad event type expression  focus: bad object expression  fontNames: bad type expression   fontSizes: bad font name string  ,fontStyle: bad font name or size expression  format: bad format string  Function: bad form   Function: bad object expression  Function: bad parameter  %Function: can't modify this function  'Function: missing function or property  "Function: can't modify this token  get: bad expression  "global: not a valid variable name   globalLoc: bad point expression  go: bad destination chunk  go: bad chunk expression  -go: bad chunk order (must be small to large)  go: bad destination type  go: bad destination expression  go: bad direct destination   go: bad window expression  #go: preposition in the wrong place  go: duplicate chunk  go: no destination specified  go: missing id  go: no window mode specified  grab: bad object expression  (Handler: bad character between handlers  Handler: no end of line  Handler: error in handler  Handler: error in command  (Handler: end doesn't match handler name   Handler: unexpected end of line  1Handler: bad handler name (may be reserved word)  $Handler: not a valid parameter name  .Handler: unexpected end of line in parameters  3Handler: error in variable or constant declaration  Handler: bad command  (Handler: missing handler name after end  Handler: no name specified  Handler: not a command  !hasMemory: bad amount expression  (hide: error in visual effect expression  (hide: error in target object expression  (hostAddress: error in socket expression  /hostAddressToName: error in address expression  #hostName: error in name expression  ,hostNameToAddress: error in name expression  if: bad condition  if: unexpected end of line  if: error in command  &if: garbage where a command should be  if: not a command  if: missing 'then'  if: missing 'end if'  !import: bad file or display name  import: bad mask file name  import: bad image type  %import: missing file or display name  import: missing 'from'  import: missing 'mask'   import: no image type specified  !insert: bad object specification  insert: expected 'into'  insert: missing 'script'  #insert: expected 'front' or 'back'  $intersect: two objects are required  is: bad chunk type  is: bad validation type  is: missing validation type  is: no right operand  isNumber: bad expression   isoToMac: bad source expression  keys: bad variable name  kill: bad process name  kill: no process  (launch: error in application expression  length: bad parameter  ln: bad parameter  ln1: bad parameter  load: error in url expression  "load: error in message expression  &local: error in initialization string  -local: not a valid variable or constant name  1local: name shadows another variable or constant  localLoc: bad point expression  !lock: no target object specified   lock: not a valid target object  log10: bad parameter  log2: bad parameter  "longFilePath: bad file expression   macToIso: bad source expression  mark: bad 'field' expression  &mark: bad 'finding' string expression  mark: bad 'where' expression  mark: missing 'by' or 'where'  mark: missing 'cards'  mark: missing 'finding'  mark: missing 'finding' string  mark: expected 'by' or 'where'  mark: expected 'cards'  matchChunk: bad parameter  matrixMultiply: bad parameter  max: bad parameter  %MCISendString: bad source expression  !MD5digest: bad source expression  median: bad source expression  me: unexpected 'the'  merge: bad source expression  min: bad parameter  mouse: bad parameter  move: bad object expression  "move: bad end location expression  $move: bad start location expression  'move: expected 'messages' or 'waiting'  move: missing 'to'  multiply: bad destination  multiply: bad expression  multiply: missing 'by'  next: missing 'repeat'  next: token is not 'repeat'  numToChar: bad parameter  offset: bad parameter  "open: error in message expression  open: bad mode  open: bad file name  'open: type must be 'file' or 'process'  open: no mode specified  open: no type specified  param: bad expression  param: bad parameter  $Script: garbage character in script  "Script: missing '"' after literal  ,pass: mismatched or missing message to pass   pause: bad clip name expression  (peerAddress: error in socket expression  !place: bad background expression  place: bad card expression  play: bad clip name expression  play: bad location expression  play: bad options expression  play: bad tempo expression  play: bad stack expression  pop: bad card expression  $pop: preposition in the wrong place  pop: no card specified  post: bad source expression  post: missing 'to'  !post: bad destination expression  print: bad target card  print: bad 'from' expression   print: bad rectangle expression  print: missing 'to'  print: bad 'to' expression  !Properties: bad chunk expression  'Properties: bad array index expression  'Properties: can't modify this property  Properties: missing 'of'  !Properties: missing 'of' or 'in'  Properties: no such property  $Properties: token is not a property  Properties: expecting 'of'  #Properties: expecting 'of' or 'in'  push: bad expression  put: bad chunk  put: bad expression  5put: preposition must be 'before', 'into' or 'after'  (queryRegistry: bad parameter expression  random: bad parameter  read: bad 'at' expression  read: bad condition  read: bad message expression  read: bad file name expression  6read: bad source type (should be 'file' or 'process')  )read: no termination condition specified  read: missing 'from'   read: bad termination condition  0read: missing source type ('file' or 'process')  $record: missing 'file' or file name  remove: bad object expression  remove: expected 'from'  #remove: expected 'front' or 'back'  rename: bad expression  repeat: error in command  "repeat: bad termination condition  -repeat: unexpected end of line in condition	  repeat: missing condition  repeat: unexpected end of line  !repeat: error in 'for' condition  $repeat: garbage in repeat condition  repeat: not a command  "repeat: bad 'with' end expression  $repeat: bad 'with' start expression  #repeat: bad 'with' step expression  repeat: bad 'with' variable  "repeat: missing 'to' after 'down'  repeat: missing '='  repeat: missing 'in'  *repeat: garbage where a command should be  repeat: expecting '='  repeat: expecting 'to'  repeat: missing 'to'   repeat: missing 'with' variable  repeat: missing 'end repeat'  "replace: bad container expression  replace: bad expression  replaceText: bad parameter  #reply: error in message expression  #reply: error in keyword expression  %request: error in message expression  %request: error in program expression  request: no 'type' expression  ;request: type must be class, ID, sender, returnID, or data  6reset: missing 'paint', 'cursors', or template object  getResources: bad parameter  return: error in expression  "rotate: error in image expression  "rotate: error in angle expression  round: bad parameter   save: error in stack expression  $save: error in file name expression  .seek: bad mode (should be 'to' or 'relative')  seek: bad file name expression  seek: expected 'file'  seek: bad offset expression  seek: missing 'in'  #seek: no mode ('to' or 'relative')  seek: missing 'file'  select: missing target chunk  select: missing 'of'  select: bad target chunk  !selectedButton: missing 'family'  $selectedButton: bad card expression   send: bad message or expression   send: bad event type expression  -send: bad target chunk or program expression  set: error in expression  set: no property specified  set: missing 'the'  set: missing 'to'  &setRegistry: bad parameter expression  shell: bad parameter  #shortFilePath: bad file expression  %show: error visual effect expression  #show: error in location expression  !show: error in object expression  sin: bad parameter  sort: bad expression  !sort: error in object expression  sort: no object specified  'specialFolderPath: bad type expression  sqrt: bad parameter  !start: error in chunk expression  3start: bad action (should be 'editing' or 'using')  2start: no action specified ('editing' or 'using')  (Commands: not a valid object expression  Commands: bad 'in' expression  Commands: not a modifier key  Commands: bad parameter  Commands: bad parameters  Commands: missing ','   Commands: missing modifier key   Commands: expected 'and'  Commands: expected ','  stdDev: bad parameters   stop: error in chunk expression  >stop: bad action (must be editing, moving, playing, or using)  =stop: no action (must be editing, moving, playing, or using)  subtract: bad destination  subtract: bad expression  subtract: missing 'from'  Stack: bad stack expression  sum: bad parameter  switch: bad 'case' condition  switch: bad condition  switch: error in command  *switch: garbage where a command should be  switch: not a command  switch: missing 'end switch'  tan: bad parameter  %Operators there: bad file expression  Operators there: missing 'is'  %Operators there: no object specified  throw: bad error expression  toLower: bad parameter  topStack: bad parameter  toUpper: bad parameter  "transpose: bad variable parameter  trunc: bad parameter  try: error in command  'try: garbage where a command should be  try: not a command  try: missing 'end try'  type: bad string expression  ungroup: bad group expression  uniDecode: bad parameter  uniEncode: bad parameter  unload: bad url expression  unlock: not a visual effect  =unlock: no type specified ('screen', 'recent' or 'messages')  >unlock: bad type specified ('screen', 'recent' or 'messages')  urlDecode: bad parameter  urlEncode: bad parameter  urlStatus: bad url expression  value: bad parameter  value: bad object expression  Array: bad index  Array: missing ']'  $visual: double directions specified   visual: double effect specified  visual: expected visual name  visual: missing visual name  visual: not a visual name  $wait: error in condition expression  wait: no duration expression  within: bad object expression  within: bad point expression  write: bad 'at' expression  "write: error in source expression  write: bad file name  5write: bad destination (should be 'file or process')  write: missing 'to'  4write: no destination (should be 'file or process')      
 OK ŔŤp +on mouseUp
  close this stack
end mouseUp
        8 | d                 	   e 
    Perror Field  	            ˙˙˙˙˙˙      0 H       
      	          < <         e Object: 
      	          ` ,         e Line: 
    Line  	         0 ` <         e 48 
      	         l ` D         e Column: 
    Column  	         ° ` D         e 1     Help ŔŤp on mouseUp
  help
end mouseUp
       | | d                 	   e 
    Object  	         @ <Ô $        e  
      	         ô ` X         e Bad Token: 
    
Bad Token  	        L ` Č         e  
    Error Message  ˇ)p öon mouseUp which
  if which is 3 and there is a file "petext" then
    set the cursor to watch
    open file "petext"
    read from file "petext" until eof
    put it into field "Messages"
    close file "petext"
    beep 1
  end if
end mouseUp
          ,                   	`      ű 	  *   
 Magnify          14                 h Magnifier Card   	P ßon closeStack
  set the width of this stack to 256
  set the height of this stack to 256
end closeStack

on resizeStack
  set the rect of magnifier 1 to 0,0,the width of this stack,the height of this stack
end resizeStack
                    
Magnifier                  ~ Icons           Ä               W 
Helvetica   é 	Icon 301   	@              -  ó 	Icon 301   	P on openCard
end openCard
               .  ő 	Icon 301   	P on openCard
end openCard
               /  ř 	Icon 301   	P on openCard
end openCard
               0  ú 	Icon 301   	P on openCard
end openCard
               1  ü 	Icon 301   	P on openCard
end openCard
               2  ţ 	Icon 301   	P on openCard
end openCard
               3    	Icon 301   	P on openCard
end openCard
               4   	Icon 301   	P on openCard
end openCard
               5   	Icon 301   	P on openCard
end openCard
               6   	Icon 301   	P on openCard
end openCard
               7   	Icon 301   	P on openCard
end openCard
               8  
 	Icon 301   	P on openCard
end openCard
               9   	Icon 301   	P on openCard
end openCard
               :   	Icon 301   	P on openCard
end openCard
               ;   	Icon 301   	P on openCard
end openCard
               <   	Icon 301   	P on openCard
end openCard
               =   	Icon 301   	P on openCard
end openCard
               >   	Icon 301   	P on openCard
end openCard
               ?   	Icon 301   	P on openCard
end openCard
               @   	Icon 301   	P on openCard
end openCard
               A   	Icon 301   	P on openCard
end openCard
               B   	Icon 301   	P on openCard
end openCard
               C    	Icon 301   	P on openCard
end openCard
               D  " 	Icon 301   	P on openCard
end openCard
               E  $ 	Icon 301   	P on openCard
end openCard
               F  ' 	Icon 301   	P on openCard
end openCard
               G  ) 	Icon 301   	P on openCard
end openCard
               H  + 	Icon 301   	P on openCard
end openCard
               I  - 	Icon 301   	P on openCard
end openCard
               J  / 	Icon 301   	P on openCard
end openCard
               K  1 	Icon 301   	P on openCard
end openCard
               L  3 	Icon 301   	P on openCard
end openCard
               M  5 	Icon 301   	P on openCard
end openCard
               N  ź    	@              O  Î    	@              P  ś    	@              Q  ¸    	@              R  ş    	@              S  ž    	@              T  Ř    	@              U  Ę    	@              V  Ň    	@              W  Ţ    	@              X  Ü    	@              Y  Ć    	@              Z  Č    	@              [  ú    	@              \  ô    	@              ]  @    	@              ^  B    	@              _  H    	@              `  F    	@              a  Ŕ    	@              b  Â    	@              c  Ä    	@              d  Ě    	@              e      	@              f  Đ    	@              g  ´    	@              h  Ú    	@              i  ŕ    	@              j  Ô    	@              k  â    	@              l  ä    	@              m  ö    	@              n  ü    	@              o       	@              p  -    	@              q  ć    	@              r  )    	@              s  ě    	@              t  ň    	@              u  đ    	@              v  ę    	@              w  č    	@              x  î    	@              y  ř    	@              z  Ö    	@              {  :    	@              |  <    	@              }  4    	@              ~  6    	@                8    	@                ţ    	@                    	@                T    	@                V    	@                X    	@                    	@                    	@                
    	@                    	@                    	@                    	@                a    	@                g    	@                i    	@                k    	@                m    	@                o    	@                q    	@                s    	@                u    	@                w    	@                y    	@                {    	@                }    	@                    	@                    	@                    	@                    	@                    	@                    	@                    	@                    	@                     	@              Ą      	@              ˘      	@              Ł      	@              ¤      	@              Ľ      	@              Ś      	@              §      	@              ¨      	@              Š  Ą    	@              Ş  Ł    	@              Ť  Ľ    	@              Ź  §    	@              ­  Š    	@              Ž  Ť    	@              Ż  ­    	@              °  Ż    	@              ą  ą    	@              ˛  ł    	@              ł  ľ    	@              ´  ˇ    	@              ľ  š    	@              ś  ť    	@              ˇ  ˝    	@              ¸  ż    	@              š  Á    	@              ş  Ă    	@              ť  Ĺ    	@              ź  Ç    	@              ˝  É    	@              ž  Ë    	@              ż  Í    	@              Ŕ  Ď    	@              Á  Ń    	@              Â  Ó    	@              Ă  Ő    	@              Ä  ×    	@              Ĺ  Ů    	@              Ć  Ű    	@              Ç  Ý    	@              Č  ß    	@              É  á    	@              Ę  ă    	@              Ë  ĺ    	@              Ě  ç    	@              Í  é    	@              Î  ë    	@              Ď  í    	@              Đ  ď    	@              Ń  ń    	@              Ň  ó    	@              Ó  ő    	@              Ô  ÷    	@              Ő  ů    	@              Ö  ű    	@              ×  ý    	@              Ř  ˙    	@              Ů      	@              Ú      	@              Ű      	@              Ü      	@              Ý  	    	@              Ţ      	@              ß      	@              ŕ      	@              á      	@              â      	@              ă      	@              ä      	@              ĺ      	@              ć      	@              ç      	@              č      	@              é  !    	@              ę  #    	@              ë  %    	@              ě  '    	@              í  )    	@              î  +    	@              ď  -    	@              đ  /    	@              ń  1    	@              ň  3    	@              ó  5    	@              ô  7    	@              ő  9    	@              ö  ;    	@              ÷  =    	@              ř  ?    	@              ů  A    	@              ú  C    	@              ű  E    	@              ü  G    	@              ý  I    	@              ţ  K    	@              ˙  M    	@                 O    	@                Q    	@                S    	@                U    	@                W    	@                Y    	@                [    	@                ]    	@                _    	@              	  a    	@              
  c    	@                e    	@                g    	@                i    	@                k    	@                m    	@                o    	@                q    	@                s    	@                u    	@                w    	@                y    	@                {    	@                }    	@                    	@                    	@                    	@                    	@                    	@                    	@                    	@                    	@                     	@              !      	@              "      	@              #      	@              $      	@              %      	@              &      	@              '      	@              (      	@              )  Ą    	@              *  Ł    	@              +  Ľ    	@              ,  §    	@              -  Š    	@              .  Ť    	@              /  ­    	@              0  Ż    	@              1  ą    	@              2  ł    	@              3  ľ    	@              4  ˇ    	@              5  š    	@              6  ť    	@              7  ˝    	@              8  ż    	@              9  Á    	@              :  Ă    	@              ;  Ĺ    	@              <  Ç    	@              =  É    	@              >  Ë    	@              ?  Í    	@              @  Ď    	@              A  Ń    	@              B  Ó    	@              C  Ő    	@              D  ×    	@              E  Ů    	@              F  Ű    	@              G  Ý    	@              H  ß    	@              I  á    	@              J  ă    	@              K  ĺ    	@              L  ç    	@              M  é    	@              N  ë    	@              O  í    	@              P  ď    	@              Q  ń    	@              R  ó    	@              S  ő    	@              T  ÷    	@              U  ů    	@              V  ű    	@              W  ý    	@              X  ˙    	@              -      	@              .      	@              /      	@              0      	@              1  	    	@              2      	@              3      	@              4      	@              5      	@              6      	@              7      	@              8      	@              9      	@              :      	@              ;      	@              <      	@              =  !    	@              >  #    	@              ?  %    	@              @  '    	@              A  )    	@              B  +    	@              C  -    	@              D  /    	@              E  1    	@              F  3    	@              G  5    	@              H  7    	@              I  9    	@              J  ;    	@              K  =    	@              L  ?    	@              M  A    	@              N  C    	@              O  E    	@              P  G    	@              Q  I    	@              R  K    	@              S  M    	@              T  O    	@              U  Q    	@              V  S    	@              W  U    	@              X  W    	@              Y  Y    	@              Z  [    	@              [  ]    	@              \  _    	@              ]  a    	@              ^  c    	@              _  e    	@              `  g    	@              a  i    	@              b  k    	@              c  m    	@              d  o    	@              e  q    	@              f  s    	@              g  u    	@              h  w    	@              i  y    	@              j  {    	@              k  }    	@              l      	@              m      	@              n      	@              o      	@              p      	@              q      	@              r      	@              s      	@              t      	@              u      	@              v      	@              w      	@              x      	@              y      	@              z      	@              {      	@              |      	@              }  Ą    	@              ~  Ł    	@                Ľ    	@                §    	@                Š    	@                Ť    	@                ­    	@                Ż    	@                ą    	@                ł    	@                ľ    	@                ˇ    	@                š    	@                ť    	@                ˝    	@                ż    	@                Á    	@                Ă    	@                Ĺ    	@                Ç    	@                É    	@                Ë    	@                Í    	@                Ď    	@                Ń    	@                Ó    	@                Ő    	@                ×    	@                Ů    	@                Ű    	@                Ý    	@                ß    	@                á    	@                ă    	@                ĺ    	@                 ç    	@              Ą  é    	@              ˘  ë    	@              Ł  í    	@              ¤  ď    	@              Ľ  ń    	@              Ś  ó    	@              §  ő    	@              ¨  ÷    	@              Š  ů    	@              Ş  ű    	@              Ť  ý    	@              Ź  ˙    	@              ­      	@              Ž      	@              Ż      	@              °      	@              ą  	    	@              ˛      	@              ł      	@              ´      	@              ľ      	@              ś      	@              ˇ      	@              ¸      	@              š      	@              ş      	@              ť      	@              ź      	@              ˝  !    	@              ž  #    	@              ż  %    	@              Ŕ  '    	@              Á  )    	@              Â  +    	@              Ă  -    	@              Ä  /    	@              Ĺ  1    	@              Ć  3    	@              Ç  5    	@              Č  7    	@              É  9    	@              Ę  ;    	@              Ë  =    	@              Ě  ?    	@              Í  A    	@              Î  C    	@              Ď  E    	@              Đ  G    	@              Ń  I    	@              Ň  K    	@              Ó  M    	@              Ô  O    	@              Ő  Q    	@              Ö  S    	@              ×  U    	@              Ř  W    	@              Ů  Y    	@              Ú  [    	@              Ű  ]    	@              Ü  _    	@              Ý  a    	@              Ţ  c    	@              ß  n    	@              ŕ  p    	@              á  r    	@              â  t    	@              ă  v    	@              ä  x    	@              ĺ  z    	@              ć  |    	@              ç  L    	@              Y  N    	@              Z  P    	@              [  R    	@              \  \    	@              ]  ^    	@              ^  h    	@              _  j    	@              `      	@              !  D    	@              "      	@              #  >    	@              $  !    	@              %  #    	@              &  %    	@              '  '    	@              (  /    	@              )  1    	@              *  Z    	@              +  +    	@              ,  - i301  	D   ˙˙˙˙˙˙             0 0       f   0 ( $ " !    @          <  @ &@ .  90    Ř p    W       Ŕ ŕ đ ř Ŕ   Ŕ Ŕ ŕ ` p      g   0 8 < > ? ? ?Ŕ ?ŕ ?đ ?ř ?ü ?ü ?Ŕ ?Ŕ ?ŕ 9đ đ đ ř ř p     . i302  	D           ˙˙˙˙˙˙     0 0       i        đ ä^ 4U  Ŕ ` 0        ü    _          ĂŞ óę ?ú ţ ţ ţ ţ ü ü ř ř ř    k        đ çţ ÷˙ ˙ ˙ ˙ ?˙ ˙ ˙ ţ ţ ü ü ü ü     ô icon 1   	d   ˙˙˙˙˙˙             0 0       <¤ ˙ŕ˙Ŕ           §    8Ť   ` ` ` ` ` ` ` ` ` `˙ŕ˙Ŕ¤    K¤ ˙ŕ˙ŕ ` ` ` ` ` ` ` ` ` `˙ŕ˙Ŕ¤     / i303  	D   ffffff             0 0       8¤ ˙Ŕ˙          Ť    4Ť @ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ˙Ŕ˙Ŕ¨    F¤ ˙Ŕ˙Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ˙Ŕ˙Ŕ¨     0 i304  	D              0 0       { ˙đ˙đ 0 0 0 0 0 0óď0 0 0 0 0 0 0 0 0 0űď0 0 0 0˙đ˙đ    { ˙đ˙đ 0 0 0 0 0 0óď0 0 0 0 0 0 0 0 0 0űď0 0 0 0˙đ˙đ     1 i305  	D              0 0       z ?ř ! # 'Č /č ?ř     /č /č /č /č /č /č /č /č     ?ř /č 'Č # ! ?ř    z ?ř ! # 'Č /č ?ř     /č /č /č /č /č /č /č /č     ?ř /č 'Č # ! ?ř     2 i306  	D   ââ      uu  îîÝÝ  ||üü    ˙˙˙˙˙˙  {{      ßß˙˙     0 0       w      `  @  Ŕ       @ @ @       @ @               @        R                    §    W    @                0    ˘    h                    @ @          ?               @ @ Ś    l      @ @ @ @ @ @  @     @ @  "             @ @ @ Ŕ @      Bˇ  Ŕ @ `   @ @         p    s   	 `NPŕ
$ -ŔPIA@IA@MA@%C@%F ŠDĐI$HI$h˛D(2DHdHx	qáŽ! A  @A@Â@p     3 i307  	D              0 0       Y ńŕ                              ńŕ    Y ńŕ                              ńŕ     4 i308  	D           îîÝÝ  ŇŇ´´     0 0       m       @      @      8 $ B  AŔ  Ć č đ Ŕ ?˙ü    O đ ř ü ü ř ?đ ŕ 	˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕš    Á  < > | 8 Ş    q đ ř ü ü ?ü ř ˙đ ˙ŕ ˙Ŕ ˙ ˙ ţ ü ?ř ?đ ŕ Ŕ ˙ ţ ř đ Ŕ ?˙ü     5 i309  	D           ŇŇ´´  ˙˙˙˙˙˙  ââ         0 0       n           0@ H@      Ä 	č ř ä° ­    Ş@ ?˙ü    7 ř ü ř ř đ đ ŕ Ŕ   Í    "Ž 0 x | ţ ü | 8 ľ    É   @ 
RŔ eŔ UĄ    v  ř ü ü ü ř ř đ ?ŕ ?Ŕ Ŕ ˙ ˙ ˙ ţ ţ ü ř ř ˙đ ˙ŕ ˙ŕ ˙Ŕ ?˙ü     6 i310  	D           îîÝÝ  őőŢŢłł  ŰŰpp     0 0       n        @ @     B ˛ Ź $ H 
H  P     @ @ ?˙ü    = đ ŕ ŕ Ŕ Ŕ ? ?   ţ ~ < É    (ą  @ P Ř ° ° `  ą    #Ĺ    Ŕ Ŕ ? ?Ą    y ř đ đ ?ŕ ?ŕ Ŕ Ŕ ˙ ˙ ˙ ˙ ţ ţ ü ü ř ř đ đ ?ŕ ?ŕ Ŕ Ŕ ?˙ü     7 i311  	D   ˙˙EE            ˙˙˙˙˙˙     0 0       + P  !   B   P  Đ    d     @ ?ŕ     #ŕ "  #ŕ "  "  #ŕ "  "  #ŕ       ?ŕ    LĽ   Ŕ Ŕ  Ŕ  Ŕ Ŕ  Ŕ Ŕ  Ŕ Ŕ Ŕ    p P  !   B   P @ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ     8 i312  	D           ˙˙˙˙˙˙  ââ         0 0       l Ŕ Ř ř ě Ä Ţ ň >qĂ ÇÁ Á°Ŕ áŕŔ Á @ Aŕ@ `Ŕ`     0 p  Đ  0 8ŕ ă  8 ŕ    ^  8    < 8> ă> O?  ">ß > ? ˙Ŕ ˙ ˙  ü` ńŔ Ç  p Ŕ    T p ŕ                      n Ŕ Ř ř ü ü wţ ˙ţ ˙ ˙ ˙˙˙Ŕ˙0Ŕ˙Ŕ˙ŕ?˙ŕ?˙đ˙đ˙đ˙đ˙ŕ˙ţ ř ŕ     9 i313  	D           ˙˙˙˙˙˙     0 0       QĄ đ 0 Ŕ   @ @         @ @  Ŕ 0 đĄ    GĽ đ ?ü ˙ ˙˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙ ˙ ?ü đĽ    QĄ đ ?ü ˙ ˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙Ŕ˙ ˙ ?ü đĄ     : i314  	D           ˙˙˙˙˙˙     0 0       n ü               @ @ 0       `  @ @      ŕ ~    j ü ü 
˙ř ˙đ ˙ŕ ˙Ŕ ˙Ŕ  ? Ŕ Ŕ ŕ ř ţ ˙ ˙˙˙ ˙ ˙ü ˙ŕ ~    q ü ţ ˙ţ ˙ü ˙ř ˙đ ˙ŕ ˙ŕ ˙Ŕ Ŕ ?ŕ ŕ ř ţ ˙ ˙˙Ŕ˙Ŕ˙˙˙ ˙ü ˙ŕ ~     ; i315  	D           ˙˙˙˙˙˙     0 0       S đ     @              @     đĄ    LĄ đ đ ?ř ü ü ˙ţ ˙ţ ˙ ˙ţ ˙ţ ü ü ?ř đ đĽ    V đ ?ř ?ř ü ˙ţ ˙ţ ˙ ˙ ˙˙ ˙ ˙ţ ˙ţ ü ?ř ?ř đĄ     < i316  	D           ˙˙˙˙˙˙     0 0       <¨ ˙         ˙Ź    &­ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ą    <¨ ˙˙˙˙˙˙˙˙˙˙˙Ź     = i317  	D           ˙˙˙˙˙˙     0 0       Z ˙ţ     @ @                  @  @  ˙    V ˙ü ü ţ ?ţ ?ţ ˙ ˙ ˙ ˙ ţ ü ř đ ŕ ?Ŕ ? ˘    [ ˙ţ ˙ţ ˙ţ ˙ ˙ ˙ ?˙ ?˙ ˙ ˙ ˙ ţ ü ?ř ?đ ŕ Ŕ ˙ ˙     > i318  	D           ˙˙˙˙˙˙     0 0       QĄ ?ü @              @ ?üĄ    >Ľ ?ü ţ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ţ ?üĽ    QĄ ?ü ţ ˙ ˙˙˙˙˙˙˙˙˙˙ ˙ ţ ?üĄ     ? i319  	D           ˙˙˙˙˙˙     0 0       ] ŔR @Ŕ A@ A@ B@ B@ DŔD @H @H @P @P @H @H @D @DŔB@ B@ A@ AŔ @Ŕ Ŕ    X   :    ˙˙˙˙˙˙˙˙         _ Ŕ ŔJ ÁŔ ÁŔ ĂŔ ĂŔ Ç˙ŔÇ˙ŔĎ˙ŔĎ˙Ŕß˙Ŕß˙ŔĎ˙ŔĎ˙ŔÇ˙ŔÇ˙ŔĂŔ ĂŔ ÁŔ ÁŔ Ŕ Ŕ     @ i320  	D           ˙˙˙˙˙˙     0 0       d   
 
   #˙   @ @   @ @   #˙   
 
      R      ţ ?ţ ?ţ ţ ţ ?ţ ?ţ ţ         b       ?˙ ?˙ ˙ ˙ ˙ ˙ ˙ ˙ ?˙ ?˙           A i321  	D           ˙˙˙˙˙˙     0 0       d ` ` P P H H ˙Ä         ˙Ä H H P P ` `    R     0 0 8 ř ü ü ţ ţ ü ü ř 8 0 0        b ` ` p p x x ˙ü ˙ü ˙ţ ˙ţ ˙ ˙ ˙ţ ˙ţ ˙ü ˙ü x x p p ` `     B i322  	D           ˙˙˙˙˙˙     0 0       \ Wŕ   A  A  !  ! ˙    	  	      	  	   ˙  !  !  A  A    ŕ    X Ŕ Ŕ Ŕ Ŕ Ŕ "ŕŔ˙ŕŔ˙đŔ˙đŔ˙řŔ˙řŔ˙đŔ˙đŔ˙ŕŔ ŕŔ Ŕ Ŕ Ŕ Ŕ Ŕ    \ Wŕ ŕ Áŕ Áŕ áŕ áŕ˙ńŕ˙ńŕ˙ůŕ˙ůŕ˙ýŕ˙ýŕ˙ůŕ˙ůŕ˙ńŕ˙ńŕ áŕ áŕ Áŕ Áŕ ŕ ŕ     C i323  	D           ˙˙˙˙˙˙     0 0       e ř         đŕ ` `  `  ˙ŕ    ˙ŕ    T đ đ đ đ đ đ đ đ đ ˙ ţ ř ŕ  ˙Ŕ˙Ŕ    h ř ř ř ř ř ř ř ř ř ˙ŕ˙ŕ˙ ţ ř ŕ  ˙ŕ˙ŕ˙ŕ˙ŕ     D i324  	D           ˙˙˙˙˙˙     0 0       S ř          đŕ ` `  ` Ą    LĄ đ đ đ đ đ đ đ đ đ đ ˙ ţ ř ŕ Ľ    V ř ř ř ř ř ř ř ř ř ř ˙ŕ˙ŕ˙ ţ ř ŕ Ą     E i325  	D           ˙˙˙˙˙˙     0 0       S  `  `  `đŕ          řĄ    LĄ  ŕ ř ţ ˙ đ đ đ đ đ đ đ đ đ đĽ    V  ŕ ř ţ ˙˙ŕ˙ŕ ř ř ř ř ř ř ř ř ř řĄ     F i326  	D           ˙˙˙˙˙˙     0 0       j ˙ŕ    ˙ŕ  `  `  `đŕ          ř    Y ˙Ŕ˙Ŕ  ŕ ř ţ ˙ đ đ đ đ đ đ đ đ đ đ    m ˙ŕ˙ŕ˙ŕ˙ŕ  ŕ ř ţ ˙˙ŕ˙ŕ ř ř ř ř ř ř ř ř ř ř     G i327  	D   ˙˙˙˙˙˙             0 0       f đ           ř  `  ` ˙  ˙    UĄ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ţ ř ŕ  ˙ ˙    e đ đ đ đ đ đ đ đ đ đ đ ˙ ˙ ţ ř ŕ ˙˙˙˙     H i328  	D   ˙˙˙˙˙˙  ffffff             0 0       S ŕ 8 ` Ŕ   %       B  "    
     0 ŕĄ    _ ŕ ü 8 p p ř Ü Ááq 9 Ŕ ŕ p x ?ř ŕ    WĄ ŕ       p @ H @ D @ B @ A @ @@ @Ŕ  Ŕ      đ    c ŕ ?ř ü ˙ţ 6ü řřţ˙ŔĎŔÇĂŔĂăŔÁóŔŔűŔŔŔŔ?Ŕŕ đ? ˙ ?ţ ü đ     I i329  	D   ˙˙˙˙˙˙  ffffff             0 0       Q ŕ      đ                a ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ř ř    U     ŕ               ü    u ŕ ŕ đ đ đ đ ŕ đ đ đ đ đ đ đ đ đ đ đ đ ř ü ü ü     J i330  	D  ˙˙˙˙˙˙  ffffff             0 0       b đ    0          ` `              b đ ř ř          x đ ŕ          \  â            p Ŕ   @ @ @ Ŕ    { đ đ ř ü ?ţ > < <     ~ ţ ü ř đ Ŕ    Ŕ Ŕ Ŕ Ŕ     K i331  	D   ˙˙˙˙˙˙  ffffff             0 0       `                           k                         ` @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ Ŕ @ @ @ Ŕ      Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ  Ŕ Ŕ Ŕ Ŕ     L i332  	D   ˙˙˙˙˙˙  ffffff             0 0       ] ˙                      _ ˙ ţ ` ` a cÂ cÂ a ` ` ` ` ` a cÂ oň ` ţ ˙    b   ů 	  ! ! A    A ! !  	 ů   ˙    i ˙ ˙ ˙ ˙ đ é ç ç ăÇ á á ă ćG ě' í§ ű× ˙ ˙ ˙˙ ˙     M i333  	D          ˙˙˙˙˙˙  ˙˙         0 0       Z  Ŕ ?Ŕ ?ŕ ŕ ˙ŕ 	żŔ      @   A    0 Ŕ˘    Ž @ ŕ đ ŕ Ŕ ˝    *Ĺ  > | x đ Ŕ        j  Ŕ ?Ŕ ?ŕ ŕ ˙ŕ 	˙Ŕ ˙ ţ ü ŕ Ŕ ?  ţ ü ř đ Ŕ         N i334  	D   ˙˙˙˙˙˙             0 0       V  @     D "   @     D "        I  Ŕ ŕ p 8     Ŕ ŕ p 8    Ą    V  Ŕ ŕ đ ř | >   Ŕ ŕ đ ř | >         Q i337  	D          ˙˙˙˙˙˙     1 1       |?˙ţ  /˙óú( 
/˙óú  ?˙ţ"*Ş"*Ş"?˙ţ"*Ş*Ş"?˙ţ"*Ş*Ş"?˙ţ"*Ş*Ş"?˙ţ"*˘"*˘"?˙ţ    ˙ý ˙íő ˙ý ÝŐUŐUÝ ÝUUÝ ÝUUÝ ÝUUÝ Ý]Ý]ÝÝ    ?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙    R i338  	D          ˙˙˙˙˙˙     1 1       ?˙ü˙ţŔ ÇáăŔ ßýżűŔ ŔĚ ĚŔ Ŕßü?űŔŔ ĚĚ ŔŔ ßýżűŔ ŔĚ ĚŔ Ŕßü?űŔŔŔ ˙ţ?˙ü   ~ ?˙ü8x?˙ü @?˙ü?ţü3˙çü3ţgü?˙ü?ţü Ŕ?ţü?˙ü3ţgü3˙çü?ţü?˙ü @?˙ü?ţgü3˙ü3ţü?˙çü?ţü Ŕ?ţü?ţü?˙ü    ?˙ü˙ţđ˙˙ţ?˙ü    S i339  	D          ˙˙˙˙˙˙     1 1       ~˙řŔ Ŕ Ůĺ<ŘŔ ˙ý˙řÄGÄE˙	řÄEÄG˙MţÄ` Ä` ˙çřňÄ˙ţ˙ĺ$Äe$Ď˙$ř˙ţř$$$	˙ţ	$ď$ %$ ?˙ţ %$ %$ ?˙ţ    x ?ř˙ŕ?ř˙ŕ&Ă ?ř˙ŕ  ;¸îŕ;şîŕ ;şîŕ;¸îŕ ;˙ü;˙ü ; Űl;Űl0 Űlü üŰlüŰlüŰlě ěŰl Űl Űl Űl Űl    ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ ?˙ţ ?˙ţ ?˙ţ ?˙ţ ?˙ţ     T i340  	D          ˙˙˙˙˙˙     1 1       D  ˙ ż  *ż ?˙Áż  A/˙A  A/˙A  A/˙A  A?˙Á ˙     @¤ ˙ţ@˙â˙*â@˙âŔ >@_˙žĐ žß˙žĐ žß˙žĐ žß˙žŔ >˙ţ¤      Ŕ˙      b i354  	D          ŞŞŞŞŞŞ  ˙˙˙˙˙˙    ff       1 1       c 	 Í E2@g˘H"¤H3ôĐçĎ`âH$8 8 cŕGÄŔGÄŕGÄ c8 8((F`Ä	çĎ"_ůEL I"@      â    8Ľ .0 đ ŕŔŔŔđđ?řđđŔŔŕŔđ 0Š    6Š  ŕ đ p 8 8 8 p đ ŕ ­    j 	 Í E2@g˘H"#¤H3ôĐ˙˙âO˙ä?˙ř?˙ř˙ü˙ü˙ü?˙ř?˙ř/˙čG˙Ä	˙"_ůEL I"@      c i355  	D          ˙˙˙˙    ˙˙˙˙˙˙  ff33    ŞŞŞŞŞŞ  ŞŞ      ÝÝÝÝÝÝ     1 1        ˙=ţ Ŕ2    	 	
   " ŔB Á! Á" Ä 
   @ ˙2rńĘ#J~2 0Ć	E	ý Ŕ2 J˙ J Ŕ2 ˙ţ    ?Ě ˙ü sůü ađř ađ sůŕ ˙Ŕ ? > > 8 ŕ sŔ a a    Ě ü 9ü đü đü ůü ˙ü ?Ě   ?Ě    6   Ŕ Ŕ   0 0   Ŕ0 Ŕ0    P    < | ü ü ô ř ?ü ü ŕ  ÷ ř đ ŔŠ    9Ä đ ` ` ` ` ` ` ` ` ` ţ ţ    Ĺ   ˛    %Ě Ŕ  @ ŕ x ¸ ř     ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ ˙ţ ˙ţ    d i356  	D          DDDDDD  ŞŞŞŞŞŞ  ˙˙ĚĚĚĚ      DD     1 1       ?˙ř@           @6 ?÷˙ř 6 6 7 7Ŕ ľđ đx p   Ŕ ` 0 0 0 0    = ?˙řx <s˙d L dL dL dL d Lsă˙x <?Á˙řĚ    E ˙Ŕ `˙°3˙3˙3˙3˙˙° `ă˙ŔĹ          Pą       
  ŕ ďŕ ŕ ?ŕ ŕ ŕ Ŕ Ŕ ŕ    ő :Ř :Ř :Ř    ?˙ř˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü?˙ř > > ? ?Ŕ żđ ˙ř ˙ř ˙ř ˙ř ˙ř ř ?ř đ đ ?ř ?ř ?ř ?ř     e i357  	D  ˙˙˙˙˙˙             1 1        đ 0 Ŕ    @ @ @ @ @ @ @  `       ŕ Ŕ   ŕ   ŕ   Ŕ    s đ ?ü ˙ ˙ ˙˙˙˙˙˙˙ ˙ ţ ř ŕ ŕ ŕ ŕ ŕ ŕ Ŕ Ŕ Ŕ     đ ?ü ˙ ˙˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙ ţ ř đ đ đ đ đ ŕ Ŕ ŕ ŕ ŕ ŕ ŕ Ŕ     g i359  	D          ˙˙˙˙˙˙     1 1       ?˙ü` Ŕ ˙*áŕ 1ř  	ř 	 	ř 		ű 	
	ř@	 	 	 	 	 	 	 	  1˙áŔ 3` ?˙ü˙ř` 
@ ňOň˙ţ    ˙ř?˙üx *r˙Îf˙ćn÷˙ön˙ön÷˙ön˙önôön˙önőönżöo˙öo˙öo˙öo˙öo˙öo˙öo˙ög˙ćs˙Îx ?˙Ě˙ř ˙	ř?˙ř0ř    1?˙ü˙ţÜ˙˙ţ?˙ü˙ř˙ţ˙ţ˙ţ˙ţ    i i361  	D      ww  ˙˙˙˙    ÝÝ         1 1         Ŕ ` 0  0 ` Ŕ  Ŕ ` 0 0 ` Ŕ Ŕ ` 0   0 ` Ŕ Ŕ ` 0  0 ` Ŕ       Ŕ ŕ đ  0 ` 6Ŕ ÁŔáŕ˙áđ˙Ář?˙ü?üüüřüđü?ŕü?Ŕü? ü? |> < ř p p Ŕ     h ŕ đ ř ?ü |~ x> p  > | ü ř đ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ        Ŕ ŕ đ ř ?ü ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţ˙˙ţ?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ˙ ţ ?ü ř đ ŕ Ŕ      j i362  	D            ww    ˙˙˙˙˙˙     1 1       7˛ ~ *  @    |   	˙   <   @  ~     /ś ~ "  @              @  	~ ˘    'ş ~ ˙ Ŕ ˙Ŕ  Ŕ ˙Ŕ Ă ~ Ś    7˛ ~ *˙ ˙Ŕ ˙ŕ ˙đ ˙đ ˙đ ˙đ ˙ŕ ˙Ŕ ˙ ~      m i365  	D              ww  ÝÝ         1 1       s  	   @ @                        ˙đ    _    ?Ŕ ŕ ˙đ ˙ř ˙ü ˙ţ ŕ                >Á pŕ pŕ pŕ pŕ pŕ pŕ pŕ pŕ pŕ pŕ pŕ pŕ    t    ?Ŕ ŕ ˙đ ˙ř ˙ü ˙ţ ˙ ˙ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ     r i370  	D              ŞŞ  ÝÝ      ˙˙˙˙˙˙     1 1       s ˙đ˙đ                  ˙Đ˙đ    S !                ˙ŕ˙!ŕ                      Q  Ŕ Ŕ ` 0   0 ` ` 0   0 ` Ŕ Ŕ    F  ?~@|ŔĎyŔçsŔógŔůOŔüŔ üŔůOŔógŔçsŔĎyŔ|Ŕ?~@     s ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ     w i375  	D          ˙˙˙˙˙˙     1 1       f   0@ DÇ     Ŕä Ŕâ    b  F ¸ `   `   `   ` Ą ć x    ^   8Ŕ >řŕ ˙đ ? ? ˙ř ăä 
ă ~| 
šü Gü 
ü _ü 
ü _ü ř _ŕ  ^     e   ?Ŕ J˙ŕ ˙đ ˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ř ˙ŕ ˙ ţ x     y i377  	D          ˙˙˙˙˙˙     1 1       f   6@ DĆ  6 0h °d b   b  F ¸ `   `   `   ` Ą ć x    _  	 9Ŕ Éŕ Ď O | 
|ř ä( 
ç f| 
šü Gü 
ü _ü 
ü _ü ř _ŕ  ^     e   ?Ŕ J˙ŕ ˙đ ˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ř ˙ŕ ˙ ţ x     z i378  	D          ˙˙ĚĚ33      ww     1 1       FĽ đ       Cđ D D D Cđ       đĄ    CŠ đ ü ţ ţ < ;÷ ;÷ ;÷ < ţ ţ ü đĽ    (Ú   Ŕ ŕ p 8       fĽ đ ü ţ ?˙ ?˙ ˙ ˙ ˙ ˙ ˙ ?˙ ?˙ ţ ˙ ó Ŕ ŕ p 8         i385  	D          ÝÝ      ˙˙˙˙˙˙      ww     1 1        ?˙ř?˙ř0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ?˙ř?˙ř    [ sŕ           Ŕ `  ` ` Ŕ            sŕ    _ c ˙
ŕ<xŔ<xŔ˙ŕđŔđŔŕŔŔŕŔŔŕđŔđŔ˙
ŕ<xŔ<xŔ˙ŕc    M Ă Ă ŕ ŕ ü x< p p p x< ü ŕ ŕ Ă ĂĽ     ?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř?˙ř      i386  	D          ÝÝ      ˙˙ĚĚ33     1 1       n ˙ŕ ` ` đ     ü   .ţ    b b b b b f  ý  ü     ` ` ` `Ů    M­ ü ţ  ý ý ý      	 ű  ü    n ˙ŕ ` ` đ đ đ đ đ ü ţ ˙ .˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ţ ü      i390  	D      ww          ˙˙˙˙˙˙     1 1       j                              l  @         @ <     < @         @     r  Ŕ ŕ đ ř ü ţ ˙ "˙ ˙Ŕ ˙ř ˙ř ˙ř ˙ř ˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕ     z  Ŕ ŕ đ ř ü ţ ˙ *˙ ˙Ŕ ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕ      l i364  	D              ww  ˙˙˙˙˙˙     1 1       j ř  `       ˙â˙â  ˙ń  
˙˙   @ ŕ  Ŕřţ    a ř  ` Ŕ                1Ŕ  GŔxţ    X ř ˙ ˙Ŕ ˙ŕ˙đ  ˙ü˙ü ˙ü˙
üŕ řŕ ř˙đ˙ŕ?˙Ŕ8ţĄ    h ř ˙ ˙ ˙ŕ˙đ˙ř˙ü˙ţ˙ţ˙˙˙˙˙˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙˙Ŕřţ     n i366  	D          ÝÝ          ww     1 1       f K˙ŕ                                      >            @ @ !      CĄ áŔ áŔ áŔ áŔ áŔ áŔ áŔ áŔ áŔ áŔ áŔ áŔ áŔ­    ^Ą              ˙ü ˙ř ˙đ ˙ŕ ˙Ŕ  ?      f K˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ţ ˙ţ ˙ü ˙ř ˙đ ˙ŕ ˙Ŕ  ?       o i367  	D              ww  ÝÝ         1 1       Z  
  " C˙đ             C˙đ "  
 Ś    P    < ~ ţ ţ ˙ŕ˙ŕ˙ŕ˙ŕţ ţ ~ <   Ş    Ą ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ¸    \    > ˙đ ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ ˙đ ˙đ >   Ś     p i368  	D              ww  ÝÝ         1 1       X Ŕ     ˙       @     @     ˙     ŔĽ    O @ ` p x ü ţ ˙ ˙˙Ŕ˙Ŕ˙ ˙ ţ ü x p ` @Š       ˙ ˙ ˙ ˙ ˙ ˙ş    Z Ŕ ŕ đ ř ˙ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ř đ ŕ ŔĽ     t i372  	D          ˙˙˙˙˙˙     1 1       f   0@ DŔ             b  F ¸ `   `   `   ` Ą ć x    ^   ?Ŕ >˙ŕ ˙đ ăř ăü ˙ř ˙ä 
˙ ~| 
šü Gü 
ü _ü 
ü _ü ř _ŕ  ^     e   ?Ŕ J˙ŕ ˙đ ˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ř ˙ŕ ˙ ţ x     x i376  	D          ˙˙˙˙˙˙     1 1       g   0@ Ă  ?   Ît Îr   8 8b  F ¸ `   `   `   ` Ą ć x    ^   <@ >ü` ˙đ 1 1 ˙ř Çä 
Ç ~| 
šü Gü 
ü _ü 
ü _ü ř _ŕ  ^     e   ?Ŕ J˙ŕ ˙đ ˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ř ˙ŕ ˙ ţ x     v i374  	D          ˙˙˙˙˙˙     1 1       g   0@ Ă  ?       8 8b  F ¸ `   `   `   ` Ą ć x    ^   <@ >ü` ˙đ ńř ńü ˙ř Çä 
Ç ~| 
šü Gü 
ü _ü 
ü _ü ř _ŕ  ^     e   ?Ŕ J˙ŕ ˙đ ˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ř ˙ŕ ˙ ţ x     u i373  	D          ˙˙˙˙˙˙     1 1       f   0@ DŔ        8 8  b  F ¸ `   `   `   ` Ą ć x    ^   ?Ŕ >řŕ řđ ˙ř ˙ü Çř Çä 
˙ ~| 
šü Gü 
ü _ü 
ü _ü ř _ŕ  ^     e   ?Ŕ J˙ŕ ˙đ ˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ř ˙ŕ ˙ ţ x      i393  	D      ww          ˙˙˙˙˙˙     1 1       z   $ B  " B B  ˘ 	" 
B 
B 
B 
B 	" ˘  B B "  B $      l  @         @ <     < @         @     r  Ŕ ŕ đ ř ü ţ ˙ "˙ ˙Ŕ ˙ř ˙ř ˙ř ˙ř ˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕ     t  Ŕ 'ŕ Cđ Bř #ü Cţ C˙ ˙Ł˙Ŕ	#˙ü
C˙ü
C˙ü
C˙ü
C˙ü	#˙üŁ˙Ŕ˙C˙ Cţ #ü ř Cđ 'ŕ Ŕ       i391  	D      ww          ˙˙˙˙˙˙     1 1       j          " " B B B B " "             l  @         @ <     < @         @     r  Ŕ ŕ đ ř ü ţ ˙ "˙ ˙Ŕ ˙ř ˙ř ˙ř ˙ř ˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕ     z  Ŕ ŕ đ ř ü ţ ˙ *˙ #˙Ŕ #˙ü C˙ü C˙ü C˙ü C˙ü #˙ü #˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕ       i392  	D      ww          ˙˙˙˙˙˙     1 1       p      " B B  ˘ " B B B B " ˘  B B "         l  @         @ <     < @         @     r  Ŕ ŕ đ ř ü ţ ˙ "˙ ˙Ŕ ˙ř ˙ř ˙ř ˙ř ˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕ     z  Ŕ ŕ đ ř #ü Cţ C˙ *˙ Ł˙Ŕ#˙üC˙üC˙üC˙üC˙ü#˙ü Ł˙Ŕ ˙ C˙ Cţ #ü ř đ ŕ Ŕ       i394  	D      ww          ˙˙˙˙˙˙     1 1        D  $ B  " 	B 
B  $˘ )" *B *B *B *B )" $˘  
B 	B "  B $  D    l  @         @ <     < @         @     r  Ŕ ŕ đ ř ü ţ ˙ "˙ ˙Ŕ ˙ř ˙ř ˙ř ˙ř ˙Ŕ ˙ ˙ ţ ü ř đ ŕ Ŕ     n G ZŔ 'ŕ Cđ ř #ü 	Cţ 
C˙ ˙$Ł˙Ŕ)#˙ü*C˙ü*C˙ü*C˙ü*C˙ü)#˙ü$Ł˙Ŕ˙
C˙ 	Cţ #ü ř Cđ 'ŕ Ŕ G     h i360  	D             1 1        Ŕ ŕ đ ř ř ü ü ?ţ ?ţ ?ţ ?ţ ?ţ ü ü ü ü ř ř ř đ đ ŕ Ŕ Ŕ Ŕ ŕ ŕ ŕ ŕ Ŕ     Ŕ ŕ đ ř ř ü ü ?ţ ?ţ ?ţ ?ţ ?ţ ü ü ü ü ř ř ř đ đ ŕ Ŕ Ŕ Ŕ ŕ ŕ ŕ ŕ Ŕ     O i335  	D          ˙˙˙˙˙˙  ŞŞŞŞŞŞ  33˙˙    ÝÝ         1 1        ˙   ń   ń   ń   ń   ń   ń   §ĺŔ˙Ŕă Ç˙˙ţ˙ę W+˙Ô( ˙       ˙   ^ _ú p _ú p _ú p _ú p _ú p _ú p _ú X ˙ ˙  ¤    :Đ     ˙ŕ ˙ţ˙Î˙Î˙ţa˙ţa˙ţ˙ţ    
ç 0 0    
đ      ` ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙Ŕ˙Ŕă˙Ç˙˙ţ˙?˙ü?˙ü¤˙    P i336  	D          ŞŞŞŞŞŞ  33˙˙    ÝÝ         1 1       k ˙   ˙$ü        ˙đ     ţ   ţ   ţ  ?˙đ    c ˙ţ˙ţ˙ţ ${ěâ{ď˙ţ{ď˙ţ{ď˙ţ{ď˙ţ{ď˙ţ{ď˙ü{ď˙ř{ď˙đ ˙ŕ˙ŕ ˙ ŕ˙ŕŕ˙ŕ    
× Ŕ Ŕ¤    
ŕ      A Ż˙ţ˙ü˙ř˙đ?˙đ?˙đ?˙đ?˙đ?˙đ?˙đ?˙đ?˙đ?˙đ     Z i346  	D          ˙˙˙˙˙˙     1 1        ˙ @ C C @ń˙a ńÁA˙˙ Á˙Á˙ţa aÂÁĂÁÂĂ˙Â Â Â Â ţ  Â Â  ˙ţ     ?ţ <ň <b ?  ˙ţ đ>f óžň óţň đ~ţ óţ ň đ˙ţ ţŕ> ç> ˙ýă=>á<>ŕ=ţä< < ý< p=< p=ü |ü |ü p< p< ü     ˙ ˙ ˙ ˙ ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ     [ i347  	D          ˙˙˙˙˙˙     1 1        ˙Ŕ @ @ C@ C@ @đŔ@˙Ŕ@Ŕ @CĂđ@C@1C @Ăŕ@ C @ C@ G˙ü D  |˙ă@ aCaCĚcCěC}˙&C= CÁCÁ@˙  Á Á   ˙    ?˙ <ó <c ? ? ?˙<<źď?ź˙ < <˙ <ď 8 ;˙ř ř x?˙x<sx<3ř<ř< <Â˙ţ<âđ><ňđ>?ţüţ üţ üţ đ> đ> ˙ţ    ˙Ŕ ˙Ŕ ˙Ŕ ˙Ŕ ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ ˙Ŕ ˙Ŕ ˙ü ˙ü ˙ü˙ü˙ü˙ü˙ü˙ü˙˙˙˙˙˙ ˙ ˙ ˙ ˙ ˙    V i342  	D          ˙˙˙˙˙˙     1 1        ˙  ŕ ŕđ ŕ ŕ ŕü ŕ ŕü ŕ ŕ ŕđ ŕ ŕüŕ ŕ˙üŕ ŕ˙üŕ ŕ˙üŕ ŕ˙Ŕŕ ŕ ŕ ŕ˙ŕ˙ŕ˙ŕ    y ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ŕ ˙   ˙   ˙   ˙  ? ˙ ˙ ˙     ˙˙˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ     W i343  	D          ˙˙˙˙˙˙     1 1       m?˙ü      Ŕ ˙@!˙|  D  D#˙ćf  F/˙äf  F/˙ćf  F/˙f  F#˙äf  F/˙ćF  F/˙ćf  F/˙ćf  F/đf  F  F?˙üF F˙Ć    ?˙ţ ˙ţ   { d˙ř ˙ř  ű {˙ů¸˙ű¸ ˙ű¸ ˙ű¸ ˙ű¸ ů˙ű¸ ˙ű¸ ¸˙ű¸ ˙ű¸ ˙ű¸ů˙ű¸˙ů¸ ¸˙¸ 8 ˙ř    	?˙ü ?˙ü ?˙Ŕ?˙Ŕ?˙ü?˙ü?˙ü?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ˙ţ˙ţ ?˙ţ ?˙ţ ˙ţ    k i363  	D          ÝÝ      ˙˙˙˙˙˙     1 1       T ü     @ @   ü  ?˙  ü    @  \ ü    JĄ ř  0 @ @          
       @pÜ řĄ    BĽ ř ţ ?˙ pŔ ˙Ŕ ˙ŕ Ŕ ŕ ˙ŕ ˙
ŕ pŔ ˙Ŕ ˙ţ řĽ    Y ü ˙ ?˙ ˙Ŕ ˙ŕ˙đ˙đ˙ř˙ř˙ř˙ř˙đ˙đ˙ŕ˙Ŕ˙ß˙ ü     X i344  	D          ˙˙˙˙˙˙     1 1       t  4 C C ` g 1 cäbf0ä
3Â|
M¸Cô mÜą°Ţ~`éŔös yě ß¸ o` Ŕ       f  <  >ó ŕ Îp ç vqđóčĎĚf`ă=y˛@źí	_ Nh@!f 	   @  	       <  ˙ ˙ŕ ˙đ ˙ř ˙ü˙ü˙ü˙ü˙ü˙ü˙ř˙ü˙ü˙đ˙ŕ˙Ŕ˙ ˙ü ˙ř ŕ Ŕ        f i358  	D         black ˙˙˙˙˙˙ white    1 1        đ 0 Ŕ    @ @ @ @ @ @ @  `       ŕ Ŕ   ŕ   ŕ   Ŕ    s đ ?ü ˙ ˙ ˙˙˙˙˙˙˙ ˙ ţ ř ŕ ŕ ŕ ŕ ŕ ŕ Ŕ Ŕ Ŕ     đ ?ü ˙ ˙˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙ ţ ř đ đ đ đ đ ŕ Ŕ ŕ ŕ ŕ ŕ ŕ Ŕ     { i379  	D ?         33      ˙˙˙˙˙˙  wwwwww  ˙˙               1 1       {      @         @       @  I &  Ŕ ŕ p ŕ @    ^     0 h Đ   @    4 h Ř ° ` @   Ž    Z    @         @              #É @ ` ° Ř d &      č   +      đ  8 ( 0        8 p ř đ ŕ Ŕ   > | ř ř đ ŕ Ŕ Ŕ ˙ ˙ ţ ţ ţ ü ř ŕ Ŕ ? ? < 0     \ i348  	D          ˙˙ĚĚ33     1 1       e Ŕ  ˙đ                ˙ř    \ Ŕ ŕ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ     f Ŕ ŕ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř     U i341  	D          ˙˙˙˙˙˙     1 1       I  ˙ ż  ż  
ż ˙ ˙ ˙   ˙     E¤ ˙ţ@˙â˙â@˙â˙
ţ@˙ţđ ţ˙ţđ ţ˙ţđ ţ˙ţ˙ţ˙ţ¤      Ŕ˙      Y i345  	D          ˙˙˙˙˙˙     1 1       n ˙ř   @ @ @ G˙@ G˙@ G˙@ @ @ @]y@ @ @ @đ đ`üř    e ˙ř˙ü?˙ţ?˙ţ?˙ţ8 ţ?˙ţ8 ţ?˙ţ8 ţ?˙ţ?˙ţ?˙ţ?ř˘?˙ţ?˙ţ?˙ţ?ř~ř|üř    b ˙ř˙ü?˙ţ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙?˙ţ˙üüř     ] i349  	D          ˙˙˙˙˙˙      ww  ˙˙ĚĚ33     1 1       \ W˙ř  $  "  "  "  " ˙â     ˙ú  
  
  
  
  
  
  
  
  
  
  
 ˙ţ    T O       ˙ü ˙ü                        Ą     Ŕ ~@ ~@ ~@ ~@Ý    0´ +˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đĄ    \ W˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ      i395  	D          ˙˙˙˙˙˙  ÝÝ          ŞŞ     1 1       ˙ü            ż˙              ŕ                   ?˙    ˙ř˙ř|ř|ř|řřřřřcřcřcŔ ˙ţ˙ţż˙ć+˙ę_˙ČO˙ď˙žç˙>÷ţ~÷üţűţůŠţüsţýűţ˙ţ˙ţ˙ţ    L +    s sç sç sç sç sç sç8@ @ @ @ @ @ @ @Ż    4Á *@  ŕ    6° b @ Ŕ b V      ^˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü¤˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙    ! i801  	D          ˙˙˙˙˙˙  ĚĚ˙˙˙˙           ! ! @ @  äŁ  Ŕ ŕ đ ř ?ü ~ ü? ř ˙Ŕ ŕŕ Ŕđ ř ? ü ˙ţ ü ? ř  đ Ŕ ŕ ŕ ˙đ  ř ? ü ~ ~ ü ? ˙đ Ŕŕ ŕŔ đ ř˙ř ř   ˙ ˙á  !  ! ţ˙?  !  ! ˙ ˙á  !  ! ţ˙? ! ! ˙˙á       ˙ř˙        (   (     ˙ř˙                ˙   _Ó  Ŕ ŕ ř ?ü ţ ˙ ˙Ŕ ˙ŕ ˙đ ˙ř ˙ţ ˙ ˙ ˙Ŕ ˙đ ˙ř ?˙ü ˙ţ ˙ţ ˙ţ | ˙  | ˙  | ˙  | ˙  | ˙  | ˙  | ˙  | ˙  | p  | p  | p  ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ ˙đ˙ţ    l˙ ˙ Ť ď {Ŕ ď {Ŕ ď {Ŕ ď {Ŕ ď {Ŕ ď {Ŕ ď {Ŕ ď {Ŕ ď {Ŕ ď {Ŕ˙     [˙ ˙ ő đ đ đ đ đ đ đ đ Đ Đ đ đ đ đ đ đ đ   9Ł  Ŕ ŕ đ ř ?ü ţ ˙ ˙ ˙Ŕ ˙ŕ ˙đ ˙ř ?˙ü ˙ţ ˙ ˙ ˙Ŕ ˙ŕ ˙đ ˙ř ?˙ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř˙ř˙ř ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙     % i805  	D    ŞŞ        ŞŞ  ÝÝ                 ! ! @ @    8 | | | 8˙ ˙ ˙ Ď    Ĺ     ˙ ˙ ˙     Ń  > > > ˙ ˙ ˙    )˙  Ŕ ŕ đ đ đ đ ŕ Ŕ   đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ    c 8 | | | 8     >  >  > Š Ŕ ŕ đ đ đ đ ŕ Ŕ   đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ      & i806  	D    ŞŞ    ÝÝ                  ŞŞ     ! ! @ @   ¤ 8 | | | 8˙ ˙ ˙ ž    Â     ˙ ˙ ˙     )˙  Ŕ ŕ đ đ đ đ ŕ Ŕ   đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ     !˙   Ŕ Ŕ Ŕ ˙ ˙ Ă   W¤ 8 | | |  8    ¸ Ŕ ŕŔ đŔ đŔ đ đ ŕ Ŕ   đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ      ' i807  	D  ÝÝ        ŞŞ                ŞŞ     ! ! @ @   Ź     ˙ ˙ ˙ ś    í  Ŕ Ŕ Ŕ ˙ ˙ ó   )˙  Ŕ ŕ đ đ đ đ ŕ Ŕ   đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ     ˙ Ę 8 | | | 8˙ ˙    ^Ź        Ŕ Ŕ Ŕ  Ŕ ŕ đ đ đ đ 8 ŕ | Ŕ |  |  8 đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ      ( i808  	D      ŞŞ  ÝÝ                ŞŞ       ! ! @ @   ş 8 | | | 8˙ ˙ ˙ ¨    ý     ˙ ˙ ä   )˙  Ŕ ŕ đ đ đ đ ŕ Ŕ   đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ     ˙ ş  > > > ˙ ˙ ¨   Yş 8 | | | 8˘     Ŕ ŕ đ đ  đ > đ > ŕ > Ŕ    đ ˙ř ˙ü ˙ţ ˙8 ˙¸ ţ˙đ üűđ řůŕ ř ř ř ř ř ˙ü ˙ţ ř đ? ŕŔ Ŕŕ ?đ  đ ~ đ > đ  đ  đ Ŕ đ ŕ đ ŕ đ đ đŔ p yŔ đ  đ ? đ > đ      ) i809  	D          ŞŞŞŞŞŞ  wwwwww  ˙˙ĚĚ    DDDDDD     ! ! @ @  *  Ŕ ŕ ŕ Đ Đ Đ Đ Č Č Č Č Č Č Č Č Č Č Č Č Č Č Č Č Č Č Đ Đ Đ Đ Đ Đ đ ŕ   ŕ ŕĽ üŔ üŕ ţ?đ <ř x8 x8 x< x x 8 8 < << řř řř đđ˘    |Ť                              ˙ í    tź         0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0            ˙ ě    ˙ ˙ ­ @˙ Ô    ˙ ˙ Ĺ p 8 < <˙ ¤   >  Ŕ ŕ ŕ đ đ đ đ ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř đ đ đ đ đ đ đ ŕ ŕ ŕ ŕ p 8 < < üŔ üŕ ţ?đ <ř x8 x8 x< x x 8 8 < << řř řř đđ˘     * i810  	D          ŞŞŞŞŞŞ  ˙˙ĚĚ    DDDDDD     ! ! @ @  UŞ        $  $  D  D  D     @ @ @          @ @  D B! " D D 	H   đ ŕ   ŕ ŕĽ üŔ üŕ ţ?đ <ř x8 x8 x< x x 8 8 < << řř řř đđ˘    Ă˛          8  8  8  x  x  đ  đ  đ Ŕđ Ŕđ ŕŕ ŕŕ ŕŕ đŔ đ ř x 8 <  8 8 0 ` `˙ ě    ˙ ˙ ­ @˙ Ô    ˙ ˙ Ĺ p 8 < <˙ ¤   gŞ        <  <  |  |  |  ü  ü Ŕř Ŕř Ŕř ŕř ŕř đđ đđ đđ řŕ řŔ üŔ ü | ~? > | | x đ đ đ ŕ ŕ ŕ ŕ p 8 < < üŔ üŕ ţ?đ <ř x8 x8 x< x x 8 8 < << řř řř đđ˘     q i369  	D          ˙˙˙˙33      ŞŞ  ˙˙˙˙˙˙     1 1       z   ! ! ! !   ŕ 0    ,!Ŕ !x !D !B  3  !   ŕ 0` 0          ˙ţ   y        Ŕ p 0 7  ¸ ÷ź ˙ü˙ü˙ü˙ü˙üĎ˙üď˙ü˙ü˙ü˙ü ˙	ü ˙ü ˙ü    8 áŕ óđ 0 0 ˙đ Ó 3 s á ÁŔ Ŕ  `  `˝    
 Ŕ Ŕá       ? ? ˙ŕ ˙đ ˙đ ˙đ ˙đ ˙ ?ŕ đ ˙ř ˙ ż˙Ŕ?˙ř?˙ü ?˙ţ?˙ţ?˙ţ?ż˙ţ?˙ţ?˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ ˙ţ ˙ţ    s i371  	D          33  33  ŞŞŞŞŞŞ  ff  33     1 1       ˙      ?  q`Ŕ`Ŕ`%`p0?˙>?ţţüŕÇüđŔ řŔ ţŔ ˙Ŕ ˙ ˙ ţ ü         ] ˙ţ˙ţ˙ţ˙#ţá˙ţţ ü ?ř ř đ đŕ Ŕ Ŕ ?đ ü ü ř đŽ    G  { Ŕ Ŕ `   0  đ @ p    řŞ    jĽ      Ŕ Ŕ ŕ p 8 ?˙ ?˙ ?˙ ?˙p ˙x ˙|˙˙˙˙˙˙˙   ˙˙˙    , i812  	D  wwwwww            3333     ! ! @ @   ö˙ř ˙đ ˙ŕ ˙Ŕ ˙ ˙ ˙ü ˙ř ˙đ ˙ŕ ˙Ŕ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ţ˙ ˙ř˙ ˙ŕ˙Ŕ ˙ ˙đ ţ ü đ ţ Ŕ ˙  ˙Ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ?˙ŕ ?˙Ŕ ?˙Ŕ ˙ ˙ |˙ Ô   [ ˙ ˙ţ ˙đ ?˙ŕ ˙Ŕ ˙ ˙ţ ˙ü ˙ř ˙đ ?˙ŕ ˙Ŕ ˙ ˙ ţ ţ ˙ ˙Ŕ ţ ˙ŕ ţ ˙đ ţ ?˙ř ˙ ˙ř ˙˙ř ˙˙ü ?˙ ˙ü ˙ ?ü ˙ ü ˙ ü ˙ ü ˙ ü ˙ ü ˙/ ü ˙á˙Ŕ ü ˙˙Ŕ ?ü ˙˙Ŕ ?ü ü˙ŕ ü ř˙ř ˙ü ŕ˙˙ü  ˙ř ˙đ ?˙đ ˙ŕ ˙Ŕ ˙ ˙ţ ˙ü ˙ř ˙ŕ˙    	    ?  ˙ ˙ ˙ ˙ ˙ ?˙ ˙ ˙ ˙ ˙ ˙ ?˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙  ˙ ~ ˙ ţ ˙ţ ˙ţ ˙ţ ˙˙ ˙ ˙Ŕ ˙ŕ ˙đ ?˙ř ˙ü ˙ ˙ ˙đ ˙˙˙   
˙˙˙˙˙˙˙˙˙    # i803  	D                ˙˙˙˙˙˙  îîîîîî  DDDDDD     ! ! @ @  t       ˙ü ?˙ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř˙ü?˙ţ˙˙˙˙˙˙    J˙ţ?ř˙ä0Ŕd0Ŕd0Ŕd0Ŕd0Ŕd0Ŕd0Ŕd˙ţ?ř˙ä     üü    (đüü   P      đ ˙ü    â˙ É xxx  pŔ  pŔ  pŔ   p@  p@  p@  	 pŔ ÷đ÷đ x``x``x ÷ŕŕđ÷ŕŕđđŕŕđ p``xp``xpx đ÷đđ÷đđ÷đ pxpxpx     Í˙ Ę   ˙ř   	 pŔ     	 pŔ  ˙ř       ˙ŕŕř    đŕŕř          đ˙ř   đ˙ř      đ˙ř    o˙ ň 7ţřŕ? ţřŕ? ţřŕ? ţřŕ? ţřŕ? ţřŕ? ţřŕ?ł đđ đđ đđ đđ đđ đđ đđń    D˙ ˙ ˙  ŕ ŕ ŕ ŕ ŕ ŕ   ŕ ŕ ŕ ŕ ŕĽ   %       ˙ü ?˙ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř˙ü?˙ţ˙˙˙˙˙˙˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü     ~ i382  	D          ŞŞŞŞŞŞ  ˙˙ĚĚ    DDDDDD     1 1         Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ Ŕ @ Ŕ |> ţ îw Ćc Ćc Ćc îw ţ |>    :              Â    É ľ    Ń Ŕ ` 0Ľ    Ą  Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ Ŕ Ŕ Ŕ Ŕ ` 0 |> ţ îw Ćc Ćc Ćc îw ţ |>      i383  	D          ŞŞŞŞŞŞ  ˙˙ĚĚ    DDDDDD     1 1        @ ` ` P
 P
 H H H D" $ &d H X Đ     ŕ Ŕ @ Ŕ |> ţ îw Ćc Ćc Ćc îw ţ |>    A     0 0 0 8   0     @ @Á    É ľ    Ń Ŕ ` 0Ľ      @ ` ` p p x x x |> < >| x x đ ŕ ŕ ŕ Ŕ Ŕ Ŕ Ŕ ` 0 |> ţ îw Ćc Ćc Ćc îw ţ |>      i384  	D             0 0       RĽ đ ř     ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ    RĽ đ ř     ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ     | i380  	D          ˙˙ff  ˙˙ĚĚ       1 1       HĄ P    s $ @ 
      A #  Ą    Ą   p đ `Ň    6­     Ŕ ŕ đ ř | >  Ľ    HĄ p ř ü ţ  ? Ŕ ŕ đ ř ü ţ  ?  Ą     } i381  	D          ˙˙ff  ˙˙ĚĚ       1 1        $ B  C &@   	 ( D   @  @        @  @        _ ?       < ~ < ë    q  @ ŕ Đ ¸ | ~ ?  Ŕ ŕ đ ř ü ~ ?  Ŕ ŕ đ ř ř p       < ~ ˙  ?Ŕ ŕ đ ř ü ţ ˙  ?Ŕ ŕ đ ř ü ţ ˙  ?Ŕ ŕ đ ř ü ţ ţ  ?      $ i804  	D  ĚĚ˙˙˙˙          ˙˙˙˙    ˙˙˙˙˙˙  ff33  ffff  3333  33ff  ĚĚff33  ĚĚffff  ĚĚ3333  ÝÝÝÝÝÝ  ĚĚ33ff           ! ! @ @  í " !"  !" 3 !" 13 !" 13 !" 13 !" 13 " 13 " 3 !" 13 "3 " 13  13AEFEEIE	eXDGETVH 13QVTXDTtDTVTdIDU 13AIEFUEIDEeD 13QTFETDETtTV 13AE 3 ĄťťťťťĽ  QťťťťťT AťťťťťE QT QZT	ÄTDItXDTET AEFeDGDEGEuDXGE ÁÄ AťťťťťD AťťťťťG QťťťťťX AE QXTtDEFTFEIEGET AdEIETEGTdTHG QT ťťťťť QťťťťťX AťťťťťE ÁÄ ATETDETDIGXTXE QDUtTZT¤UTDGEGT QT AťťťťťI AťťťťťD qťťťťťu AD QDeEeHETDUT qTTdT
ÄDETDGIt AH QťťťťťU AťťťťťD QťťťťťV AE  ĄTtDE\TdTHETDEĽ   ŃÝ QEITDEIeEtDeEXVTÝ ŃÝ ÝA
GÄDVTtTXEŃÝÝÝQťIEITDeEťTŃÝÝÝQťTDťTŃÝÝÝAťDťťuťEŃÝÝ ŃÝ ÁUťťDÄÝ ŃÝ  AĽTFťťUDEYD    AEGTťť
GÄTDG    QTThťťTEeEX    AGdETťťFTHE    QXTtťťEGET    AdEIEťť
dTHG    QTFEťť
UHUFT      
˙˙˙˙˙˙˙˙˙    ^ i350  	D          ˙˙˙˙˙˙  ĚĚ˙˙˙˙           1 1         Ŕ ŕ đ 8 ?ü p ˙ Ŕ˙Ŕ ŕ˙đ x?˙üx ˙ţp :řčH	(Oů8řčH	(Oů8ú/č ţ?ř `ţ?ř  ˙ř   b Ŕ đ ?ü ˙ ˙ ˙ŕ ˙	đđđ đđ üđ üđüđ üđüđ    Č °Ŕ°Ŕ °Ŕ°Ŕ¤    *Ý Ŕ Ŕ Ŕ Ŕ  Ŕ Ŕ Ŕ       Ŕ ŕ đ ř ?ü ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţ˙ţ˙ţ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř    _ i351  	D          ˙˙˙˙˙˙     1 1       f  ˙Ŕ˙ŕ˙p˙ţ8?˙ü˙ř˙đ˙>ŕ @ @ @ @˝ď^=Ľ)R%Ľ)R%˝ď^= @ Aá A! A! Aa A! A!˙   [Ť  Ŕ ŕ đ ř >ü˙żţ˙żţ˙żţ˙żţBĄÂZÖ­ÚZÖ­ÚBĄÂ˙żţ˙ž˙žŢ˙žŢ˙ž˙žŢ˙žŢ    #  ˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţČ˙    " i802  	D          ˙˙˙˙˙˙     ! ! @ @  s˙  ˙đ ˙đ ?˙ü ?˙ü ˙? ˙? ˙üŔ˙üŔ˙đđ˙÷űđ?˙Çřü?˙Ćü˙?˙?˙ü˙üřŔ 0řŔ 0 Ŕ 0 BĎóü˙3˙?óĎóü˙3˙?óĚ3Ă303Ě3Ă303Ě3Ă303Ě3Ă303Ďóü˙303Ďóü˙303Ŕ 303Ŕ 3˙?óĎóü˙3˙?óĎóü˙0 Ě3Ă0 Ě3Ă0üĚ3Ă0üĚ3Ă0Ďóü˙0Ďóü˙0Ŕ 0Ŕ 0Ŕ 0<Ŕ 0<Ŕ 0Ŕ 0Ŕ 0Ŕ 0Ŕ 0˙  B˙ § Ŕ Ŕ đ đ ü  8 9ç ůçŔ ůçŔ ůçđ řđ?˙Ďřü?˙Ď˙ü?˙Ď˙Bü0 Ě Ŕ0 Ě Ŕ3Ěó<ĚüĎĚ3Ěó<ĚüĎĚ3Ěó<ĚüĎĚ3Ěó<ĚüĎĚ0 ĚüĎĚ0 ĚüĎĚ?˙ĚüĎĚ?˙Ě Ŕ0 Ě Ŕ0 Ď˙ü3Ěó<Ď˙ü3Ěó<Ďđü3Ěó<Ďđü3Ěó<Ďóü0 Ďóü0 Ďóü?˙Ďóü?˙Ďóü?˙ĎóĂü?˙ĎóĂü?˙Ďóü?˙Ďóü?˙Ďóü?˙Ďóü?˙Ďóü    P˙  ˙đ ˙đ ?˙ü ?˙ü ˙ ˙ ˙Ŕ˙Ŕ˙đ˙đ?˙ü?˙ü˙˙˙˙˘˙    a i353  	D          ˙˙˙˙˙˙     1 1       QĄ Ŕ ŕ đ ř ?ü ţ ˙ @ Nr Nr Nr @ A A A ţĄ    *˝ ?ü 1 1 1 ?ü >| >| >|Ľ    QĄ Ŕ ŕ đ ř ?ü ţ ˙ ţ ţ ţ ţ ţ ţ ţ ţ ţĄ     ` i352  	D          ˙˙˙˙˙˙     1 1        đ ř ?ü ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţ˙@ @ OÇăňOÇăňOÇăňOÇăňOÇăňOÇăň@ @ @Ŕ@Ŕ@Ŕ@Ŕ@Ŕ@Ŕ@Ŕ˙ţ   M¸ ?˙ü?˙ü080808080808?˙ü?˙ü?ü?ü?ü?ü?ü?ü?ü?ü?ü?ü?ü?ü?ü?ü     đ ř ?ü ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţ˙˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    Y i601  	D          ˙˙ĚĚ  ˙˙      ťť     ) ) 0 0   ť ~   @ ˙ţ@   @  ŕ ˙đ ˙ř     ˙ř   đ @  @  ?Ŕ   ˙ř đ˙ Ť    iĂ ~ ˙ żŔ ˙óżŕ ˙çđ îďü ü ˙áü ˙â| ü Çü Çü ü ?ü ?ü ?đ ˙đ˙ ź    $Ú     0 0 Ŕ Ŕ˙ Í    @ô đ đ đ đ đ đ đ đ đ đ đ đ˙ ł    ť ~ ˙ ˙Ŕ ˙ŕ ˙đ ˙ü ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ?˙đ ˙đ ˙đ đ˙ Ť     Z i602  	D          ˙˙ĚĚ  ˙˙      ťť     ) ) 0 0   ş ~   Ŕ ˙  @ 0 @ Ŕ˙ @˙ @` @ A  @ @˙ @ @ @ţ @ @ pü   ˙ŕ đ˙ Ż    iÂ ~ ˙ ý ýĎ˙ řç˙ ?÷w ?ŕ ?˙ >G˙ ?ŕ ?ăţ ?ăţ ?đ ?řü ?řü ü ˙ŕ˙ ˝    $Ű         ˙ Î    @đ           ŕ ŕ˙ ˇ    ş ~ ˙ ˙Ŕ ˙ ˙Ŕ ?˙Ŕ ˙ ˙ ˙Ŕ ˙Ŕ ˙ ˙ ˙ ˙ţ ˙ţ ˙ţ ˙ü ˙đ ˙ŕ đ˙ Ż     [ i603  	D          ÝÝ      ˙˙˙˙˙˙     ) ) 0 0   ?˙ř @  @      *  *¨  *¨  Ş¨ @ Ş¨ @ Ş¨   Ş¨  Ş¨  Ş¨  Ş¨  Ş¨  ŞH  Ź  Ŕx    	  
        @                          @   @  ˙ř          @  @     ?˙ř   y ?˙ř ?˙ř ţ˙ü ěü ˙Äoţ ˙ÄG˙ ţÄG˙ üDG˙ üDG˙ üDG˙Ŕ üDG˙ŕ üDG˙ŕ üDG˙ŕ üDG˙ŕ üDG˙ŕ üD˙ŕ ü@˙ŕ ü ŕ ř ŕ ř ŕ ř ŕ ř ŕ ř ŕ ř ?ŕ ř ŕ ř ŕ ř ŕ ř ŕ ř ŕ ř ˙ŕ ř ˙ŕ ř ˙ŕ ř ˙Ŕ ü ˙ ţ ˙ ˙ ˙ ˙ ˙ţ ˙ü ˙ü ?˙ř ?˙ř ˙đ    ĂŞ             ° đ ?đ ˙đp ˙đ ˙ńŕ ˙űŔ ˙Ŕ ˙ ˙ ˙ ˙ ˙ ˙ ˙ţ ˙ü ˙ř ˙đ ˙đ ˙đÜ   ^ ?˙ř ˙ü ˙ü ˙ţ ˙ţ ˙ ˙ ˙ ˙Ŕ ˙Ŕ ˙ŕ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙ŕ ˙Ŕ ˙Ŕ ˙ ˙ ˙ ˙ţ ˙ţ ˙ü ˙ü ?˙ř ?˙ř     \ i604  	D          ˙˙˙˙˙˙     + + , ,  K˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙üŔ ˙ü ˙ü#Ŕ ˙ü  ˙řü ˙ŕü ˙Ŕü	 ˙ńü  ˙ üŔ ˙¸ü ˙ | ţv| ţ | ţ | ţ | ţ | ţś| ţ | ţ3Ţ| ţ ř ţ?6ŕ ˙ ŕ ˙9ŕŕ ˙ ŕ ˙ ?ŕ ˙ ŕ ˙Ŕ ŕ ˙ŕ ˙ ˙đ ˙ ˙ü ŕ ˙ţ ?ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ   I ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ř0 çđ Ü0 űĐ đ÷ŕ üîp ?ţö` ~űĐ ˙ü0 đG˙đ ˙˙đ ř˙đ ˙˙đ ˙˙đ ˙˙đ ˙˙đ ŕI˙đ ˙˙đ Ě!˙đ ˙đ ŔÉđ ˙đ Ćđ ˙đ ˙Ŕđ ˙ŕđ ?˙řđ ˙ţ p ˙ř p ˙ŕđ ˙Ŕđ đ đ đ đ đ đ đ   ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ ˙đ      i387  	D          ˙˙˙˙˙˙     1 1       \¨ ˙ř˙ţ˙ţ˙üŔ?ů˙ű˙ßű˙"ßü?ŔřŔđŕńđńđđđřđü?đ˙đ˙đ˙đ˙đ   *Ń Ŕ ŕ đ p p đ ŕ Ŕ    d¨ ˙ř˙ţ˙ţ˙üŔ?ů˙ű˙ßű˙ß˙Ŕ˙Ŕ˙ŕ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ     i388  	D          ˙˙˙˙˙˙     1 1       6­ ?ü ˙ ˙ ŕ ßű Ţ{ =ź }ž ~ ţ ţŠ    Á  @ @ ą    7­ ?ü ˙ ˙ ŕ ßű ßű ?ü ţ ţ ţ ţŠ      i389  	D             1 1       u˙ ˙Ŕ ˙ŕ ˙ŕ ˙ŕ ˙ď ˙ď ˙ď ˙ď ˙ă ˙ó ˙ă ˙ó ˙ă ˙ó ˙ă ˙ó ˙ă ˙ď ˙ďŔ˙ď`˙ď0˙ŕ˙ŕ˙ŕ˙đ0˙đ`˙đŔ˙ń˙ ˙đ ˙đ    u˙ ˙Ŕ ˙ŕ ˙ŕ ˙ŕ ˙ď ˙ď ˙ď ˙ď ˙ă ˙ó ˙ă ˙ó ˙ă ˙ó ˙ă ˙ó ˙ă ˙ď ˙ďŔ˙ď`˙ď0˙ŕ˙ŕ˙ŕ˙đ0˙đ`˙đŔ˙ń˙ ˙đ ˙đ     + i811  	D          ˙˙˙˙˙˙     ! ! @ @  Î ţř ţř ?ţř ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř .˙ţř  ˙ţřp ˙ţř  ˙ţřa ˙ŕ `óÁ˙ŕ ŔóŔ$˙Ŕ a@?˙Ŕ<  ?˙Ŕ< ?˙ ?˙ e?˙  ?˙Ŕ?˙ 	ŕ˙ĂÄ?˙ 	ŕ˙ĂÄ?˙ Á˙á?˙ ˙ŕ?˙ ˙ŕ?˙ Á˙ŕ?˙ 	ŕ˙Ŕ?˙ 	ŕ˙Ŕ?˙Ŕ?˙  ?˙ V?˙ ?˙Ŕ< ?˙Ŕ<  ˙Ŕ aŔ˙ŕ ŔóÇŔ˙ŕ `óĂ˙ţřa ˙ţř  ˙ţřp ˙ţř  ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ţř ?ţř ţř ţř    ě˙   ˙đ | > ?? gy Ă˙đŔ Ă˙đŕ ç˙ůŕ ˙đ ˙á˙đ ?~p  <8  <8 > x ţ ř ţ ř > ř  ?ř  ?ř ?đ ˙á˙đ ˙çđ ç˙ăŕ Ă˙áŕ Ă˙ŕŔ gp ?8 < | ˙đ ˙    Î ţř ţř ?ţř ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř %˙ţř  ˙ţř˙đ ˙ţř˙ü ˙ţř˙ţ ˙ŕ ˙˙ŕ ˙Ŕ˙Ŕ ˙Ŕ?˙Ŕ˙ŕ?˙Ŕ˙đ?˙˙đ?˙˙ř?˙˙ř?˙˙ř?˙ ˙ü?˙ ˙ü?˙ ˙ü?˙ ˙ü?˙ ˙ü?˙ ˙ü?˙ ˙ü?˙ ˙ü?˙˙ř?˙˙ř?˙˙ř?˙˙đ?˙Ŕ˙đ?˙Ŕ˙ŕ˙Ŕ ˙Ŕ˙ŕ ˙Ŕ˙ŕ ˙%˙ţř˙ţ ˙ţř˙ü ˙ţř˙đ ˙ţř  ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ˙ţř ţř ?ţř ţř ţř     ] i605  	D  	  ˙˙˙˙          ˙˙˙˙˙˙  UUUUUU  ffff  ff3333  ťťťťťť  ff33    ff       - - ( (  ç  !   "   " !" " 	!" !" # !" "$13$!"$AD3AD$DD13DADAD3ADDD13DAD3D"13"D!"3!"D"13"ADQRVR3!%e%DU13UADQU3QUDU13UAQU1QUU!U"QUabUvQUqwUwQUqwUwQUqwUwQU!qwUwahQUqwUwQUqwUwQUqwUwQq    ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙     ^ i606  	D  	  ˙˙˙˙  ˙˙˙˙˙˙          ĚĚ      ˙˙33    33    ff3333  ˙˙ff33  ff33       , , ( (  SĄ                            "  2C$ 23CD "  3CD$  U%  3CD"    U%  3CD$ R% "U%  3CD$ U% RU%  3CD$ U% RU%  3CD$  U% RU  3D$ PU% ReU  3D	$ Re% UeU%  3D$ RfURUfVU% "3D$ UfUUefVU% 23CD$ efUw'3CD$w23D$wxwxww'3CDrwxwxw'3CD4D$wxww23CD3CDrwxw'3CD43D$wxwxw23CD43C$w'3CD3$w'"wxwwwxwwxwwwxwwwxwxwxwwxw   ˙˙˙˙Â˙     i396  	D          ˙˙˙˙˙˙     0 0       e ŕ 0@  0@  P@  P@  @  Ŕ           @ @   ü   P P 0 0    Z ?Ŕ ?Ŕ  ?Ŕ  ?Ŕ `?Ŕ `?Ŕ ŕŔ ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙˙ ˙ü ŕ ` `        g ŕ 0ŕ 0ŕ pŕ pŕ đŕ đ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙Ŕ˙˙ ˙ü đ đ p p 0 0      i397  	D ?           ˙˙        ˙˙                   0 0       v  # @ @`@ AŔ b  b ˘ đŔŕ	0 Ŕ
    `       	   $ B       (      `      Ň    3 @  @ ŕ @      Ŕ    ľ    ?Ą    # |Č w cß 7ď ó }Ŕ îŔ Ç@ ď ­    6Š    @ `       ç ţ 8Ľ    š     ą    {  ' @ Ŕ`@ Áŕ b` b 8â ˙äŔ˙é0˙Î ˙Ţ  ˙ŕ ˙˙Č?˙Č˙Ŕ˙Ŕ˙ ˙ 	ţ 8  $ B         i398  	D          ˙˙˙˙˙˙  ˙˙˙˙           0 0         6 1# çůŔ   8  A  áŔ°`0O< ŕŔ°`>0     8 p ŕŔ ` ` ` `     p    8 (  Ŕ Ŕ Ŕ Ŕ Ŕ ŕ ŕ đ đ Ŕ      (é    x Ŕ Ŕ Ŕ ŕ Ŕ 0 ř ř 8 Ŕ 0 đ   ŕ  ř  ü  ü  ü < ř đ      6 1# çůŔ ü ü ř đ Aŕ á Ŕłó`ţ0Oü çůŔˇű`ţ0đ đ ř ü ţ ?˙ #˙ ďýŔü`ü`ü`ü`ü ř đp      i399  	D          ˙˙˙˙˙˙  ˙˙         0 0        0 0Ŕ ˙    ţ ńţ`ńa?üGâ@ů 	ţ˙H%ř¤Kü?ŇţĐ˙čţčü?č'řä'˙ä#˙Ä˙Ŕ˙ ˙ ţ ?ü đ Ŕ     @°  ¸     ˝ ŕ Ŕ   Ŕ ŕŠ     0 0Ŕ ˙ ŕ  ţ ńţ`ńa?üGâ@ů 	ţ˙H%˙¤K˙Ň˙đ˙č˙č˙č'˙ä'˙ä#˙Ä˙Ŕ˙ ˙ ţ ?ü đ Ŕ      i400  	D              ˙˙  ˙˙         0 0       B     8 ŕ                       Ţ    T­ yŕ 6ůđ ůř ůř ůř ůü ůü ůü ůü ůü ůü ůü ůü ůř ůř ůř ůđ yŕ     |     8 ŕ      J yć ůü ůř ůř ůř ůü ůü ůü ů˙ůü ůü ůü ůü ůř ůü ůţ ůó yŕ       i401  	D ? ˙˙      ˙˙˙˙˙˙                    ˙˙       0 0        ?ř ˙
řŕŔđ x < >  	÷Ŕ óŕ đ7 đ| đ> đ đđŕđđđ xđ >đ đ đ çpa÷8`< > > 
|Ŕüřđ˙Ŕ ?ř    J P *Ş               ŕ    {   T ^î|Ŕ ¸ Ŕ ` đč 0đř đřŔřđ8řŘŘ`ŕ|řüřř č p x xü ýßŔ űí 8  @    q đ  D`8      0 	Ŕ   d       d _đ   ŕŔ    p    Q Đ č Ô č Ô č Đ   Ŕ   P    Ŕ  `Š    :    (  (  ( P P (   @ Š    U ?ř ˙˙ŕ˙đ˙ř˙ü?˙ţ?˙ť˙˙?˙?˙ţ˙ţ˙ü˙ü˙đ˙Ŕ ř      i402  	D          ˙˙      ˙˙˙˙˙˙     0 0        đ 8 |î # Ą Ŕ+0``8 @0ÎĚ:1ě0ř! AŘ! Ă"&<ü8(2`đccŕÁ*AvxX p`Ŕ  đ 8 ŕ       ` 2ŕ ŕ ŔŔŔ ŕ đ ŕ   >  <  ř  đ ŕ "Ŕp đ  đžđ	üŕđŕđŔŕü? ˙ ü đ Ŕ    q Ŕ  Ŕ @ @ Ŕ Ŕ ?ŕ 1ŕ ŕ 3ŕ Ŕ "_  ˙ ŕţđüŕđ Đ    >  ü ü p        đ ř ţ ˙ ˙˙Ŕ˙ŕ˙ŕ˙đ˙đ˙ř˙ř?˙ř?˙ř?˙ü?˙ü?˙ü?˙ü?˙ř˙ř˙ř?˙ř˙đ˙đ˙ŕ˙ŕ˙Ŕ˙˙ ˙ţ ř ŕ      i403  	D          ˙˙˙˙˙˙      ˙˙  ˙˙  ˙˙       0 0        < đ & +l Ô ÍŹ {@ ž Ő B   Ŕ  @  @  ^  q  ¤˙Ŕ ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü    C  `   
( 	@  A * ź ~ ˙  ˙ ç ç ˙[˝    ą fÎ    š Ć    ˝ Â     < đ >ř ?ü ü Ďě ˙Ŕ ˙ ˙ ţ ˙ ˙Ŕ ˙Ŕ ˙Ŕ ˙Ţ ˙ ˙˙Ŕ ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü      i404  	D          ŔŔŔŔŔŔ    ˙˙˙˙˙˙  ˙˙         0 0         @ŕp`0 0!ŕrCBDQFaĆb1ŃD3VŔwp>ć   p (Ŕ0Ëč0AGäať	ôF?,ŕČ0Ŕx ä  <  | Ŕđ     q -   sřÁŔ8< ŕ8;`0Ŕ0`|``X`@` x p g˙ŕă˙ü˙đ?ďçřqĎëü4Ďü> đ ÷đŔp Ă 0 ` ? đ    N   @ 0@   `     
               "Ľ  # s # ! (      ˝    D 8       Ŕŕŕ?˙ŕ?˙đ?˙óđńř~ńü~đţü˙đ~ř˙ř?ů˙üń˙ţ3˙Ŕ˙đ?˙ü?˙ţ˙ü˙ţ˙ţ˙˙ů˙ř˙ŕř0˙Ŕx ˙  ?   ˙đ ˙ř      i405  	D    ˙˙˙˙˙˙              ˙˙     0 0         
đŔ7`ěo˙ôo˙ôo˙üo˙ôwáĚ;źřŔđŔŔŔŕŕđ  přđÜ;đůđl4ŕđŔřŔü? ţ ţ ;Ü 8 đ Ŕ    N  ŕ     0 @ x 8 0 0 
 ý?   Ľ    [Š x ~ a     Ŕ Ŕ #Ä ` Ë p ŕ Ŕ    Ŕ    ľ ` p p p˝      
đŔř?ŕü˙ü˙ü˙ü˙ü˙ü?˙ü˙ř˙đ˙Ŕ˙ŕ˙đ˙đ˙đ˙đ˙đ˙ŕ˙Ŕ˙Ŕ˙ ˙ ţ ?ü ř đ Ŕ      i406  	D          ˙˙˙˙˙˙       0 0       { Ă |=   9 ˘E ŞU ˘E ]š CÁ A      Ŕ@Ŕ@Ŕ@˙ Î˙ţ >Ŕ˙ ˙>    h  s¸ cŔ ]¸ A A "@ <0 ` `  x wŕ wđ /° ° đ ŕ ŕ 	Đ     u Â F   * :     p | ~   ĐO âK â ŕ ŕ ć* oé 1â ˙`Á      y Ă ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ţ ˙ţ ˙ ˙˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙ ˙ŕ˙ ˙>      i407  	D            ˙˙˙˙˙˙         0 0       w  ( $ $# Ä ń RJ ĘS!"D$ČA((řĐ	$ 	rN	"Dţ@`Ŕ  @ËŇ  @ đ    Ŕ    _      Ŕą ¤ Íł Ë, őŽŔćWŔŕ Ŕ        =ü@Ýű 0 @ @    \    8 
x řx0   
@ @ @ Ŕü?          ˝ Ř  Řš      8 < <? ü?ńü?ßűü?ß˙ü?˙ü˙ř˙ř˙ř˙đ˙đ˙đ˙đ˙đ˙ŕ˙ŕ˙Ŕűß  @ đ đ ŕ Ŕ      i408  	D          ˙˙˙˙˙˙     0 0       m Ŕ ŕ "đ Çóç÷ŔóďŕńĎŕđŕ÷çŔďóßř ?ü ?ü ţ ţ ţ ţ ţ ?ü ?ü ř đ ŕ    
š   Â    m Ŕ ŕ "đ Çóç÷ŔóďŕńĎŕđŕ÷çŔ˙ó˙ř ?ü ?ü ţ ţ ţ ţ ţ ?ü ?ü ř đ ŕ      i409  	D          ˙˙        ˙˙        ˙˙     0 0       "     8 8 Ŕ Ŕź    Pľ ţ  ŕ đ Îx î| 4 > ? > î| Îx đ ŕ Ŕ ˙    6˝     Ŕ Ŕ Ŕ Ŕ        Î ą    f     8 8 ţ  
ŕŔ đŔ Ďř ďü ü ţ ˙ ţ ďü Ďř đ ŕ Ŕ ˙      i410  	D            ˙˙    ˙˙      ˙˙˙˙          ˙˙˙˙˙˙       0 0         ŕ & &    ¸ Č  2 I  	   + K 
Ŕ ÷đ Ŕ          @    F               @ @      * @   P  ŕ Ŕ Ł Ŕ ` @    F   P   @   0 x z p @ @ Ŕ  Đ đ      *­     4     0 8 8    Ń Ž    	Ô ¨      ŕ ?đ ?ř ?ř ?ř Č  >  ˙ 	˙ ˙ ˙ ˙ ˙ ˙Ŕ ˙ü ýŔ ř ü ü ř ř đ đ ŕ @      i411  	D          ˙˙˙˙˙˙    ˙˙    ˙˙˙˙      ˙˙˙˙  ˙˙  ˙˙           0 0         ! ! !" !" "  .Á@ Ą@
 	Ü	  H @PDp  $  Ŕ$ -  (pŔP H @ @ 	 	 
Ř 
    ŕ            Ü    8˘ @ Ŕ     ˙ ů ü ü đ     9¤     đ ř ü <       Ş    TŽ      Ŕ CŔ DŕŔ N Ŕ N Ŕ | Ŕ    ] ö °       #š Ŕ đ p <0 8 0 0Ž    â 	 " 	  N ř        ? ? ?> ?> >  #ÁŔ áŔŕü˙˙ ˙Ď˙Ŕß˙Ä˙ŕ˙ä˙ŕ˙ä˙ŕ˙č˙%Ŕß˙Ď˙Ŕ˙Ŕ˙˙ ţ ř     ŕ      i412  	D          ˙˙˙˙˙˙    ˙˙˙˙          ˙˙          ˙˙     0 0       y  < FM\0      t  58 H ţ P	$8pF @ @ @        Ŕ  `       k  8 HM,9'3
w;2` áŔ Ŕ  aáá!đ  ä	ŔZ° 6 o=  öŔ xä 3Ţ | đ Ŕ      G  0ĐpĆŘđĚ
ŕÄ` lÍ	  á!Ŕ p Ŕ íđ 6 $
 H Š    ľ     š    Ę Ŕ ŕ  ­    
Ň Ŕ ŔŠ    +Ú Â   0Ŕ `ŕ `?đ p˙ř ;˙ř ˙ü ˙ř     < ~Ďü˙ü˙ü˙ř˙ř˙đ˙đ˙đ˙ř˙řw˙ţ˙ř˙ř˙ţ˙đ˙řp˙
Ć ˙Ŕ ˙ŕ ˙đ ˙ř ˙ü ˙	ţ ˙ţ ?˙ü     i413  	D      ˙˙˙˙    ˙˙˙˙˙˙      ˙˙                ˙˙˙˙     0 0       5 ř ?ü ţ ˙ ˙ ˙˙ŔđŕŔ ř | Ô    F   ! á  p@Đ`     `  ŔÁ Ţ7   ŔŠ    C ` 8 *P 
Ŕ qŔt ,XH0Ŕ Ĺ0Ŕ !HŔ nś (ţ  Š    Ą ` p p `Ń    ^¨    A0 `
đĎů~?80  Ađ Ŕ@xđŕŕ@@Á Á Á Á   9Ě   đ? řđüüţřţřţüţţ?ţ~?>~|>~|>~|>   "á ŕ ŕ   Ŕ Ŕ Ŕ    s ř ?ü ţ ˙ ˙ ˙˙Ŕ˙ŕ˙ř˙ü˙ř˙đ˙ř˙ü˙ü˙ü˙ř˙đ˙ŕ˙đ?˙ř˙ü˙ţ¤˙     i414  	D  ˙˙              ˙˙˙˙             0 0        ř ˙ ˙Ŕ ˙ ˙ ˙ 7˙?ăÄÁîÁţÁţÁţÁţÁţăü˙üţ?řţżđÝĐÝYŢ;ß÷ Ęˇ ęŻ čŻ ü }Ţ ?ü đ    UĄ  > * * " 6 >   Ŕ @ " "Ś`!Ä` ŕ5HŔPŔP đ      Š    É    M¸ ` p 8 8           Ŕđ˙Ŕ˙đ    ř ˙ ˙Ŕ ˙ ˙ ˙ 7˙?˙Ä˙î˙ţ˙ţ˙ţ˙ţ˙ţ˙ü?˙ü?˙ř˙đ˙đ˙ŕ˙ŕ˙ŕ˙Ŕ˙Ŕ˙˙ ˙˙˙˙Ŕ˙đ     i415  	D          ˙˙˙˙    ˙˙˙˙˙˙  ˙˙         0 0        Ş   ü ţ? ;n EŃ8
UŐ(U$U$UD	yOH@PpP	H0
 0 Ŕ   
ř(4T ô	AÁH @@@
@@p@ @    Ş@  D@   P  P
 ¨Ş  P ˘ U@ ˘
QE@ Ş*U@  EQ@ Ş* U Ş* U Ş U ˘ U ¨ U       @  @   P    T ¨ T ˘U
@ ¨T@ ŞP@Ş

EQ(*Ş  ¨ EQ ˘ U ˘" P     8 (
 (
 (
 (
Ő     Ş Ş ˙ŕ˙ŕ˙ŕ˙ř˙ř˙ü˙ü˙ü˙ř˙đ˙đ˙ř˙đ˙ŕ˙ŕ˙ŕ˙ŕ˙č˙ü˙ü˙ü	˙Č˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙ŔU@      i416  	D            ˙˙˙˙˙˙      ˙˙           0 0       .¨ Ŕ`0 @ @@  0Ŕŕ°    &Ź Ŕ  @  @ ´    "° Ŕŕ`0080`0Ŕ´    ´ ŔŔ`@ Ŕ`Ŕ¸    ¸  @ ź    -¨ (Ŕŕđđř?řüü?ţ˙ţ˙ü?ţ?řüđřŔŕ°     Ą i417  	D  ˙˙            ˙˙˙˙˙˙               0 0       T < w_ ü˙Ŕ˙
ŕŕđř <    Ŕ°đř#đ˙ŕ˙ŕ ˙ ?ţ ř    U   ŕ ř ţ ˙
ŔřđŔ ü~ >pţ÷ńţ  @    ` Ŕ ~ ü    š đ ~ x  ? Ü­    ş    ŕŔŕđ¸    ˝  
˝    i < ˙ ˙˙Ŕ˙ŕ˙đ˙ř˙ü?˙ü˙ţ˙ţ˙˙ţ?˙ţ˙ü˙ř˙đ˙ŕ ˙ ˙ ü     ˘ i418  	D          ˙˙˙˙˙˙     0 0       x Ě V§ < ŚxĆăLÄtqĆ`0Ă0c%+Q Ĺ!`! á° rbň1	0 8 ŕA	 A`      Ŕ  @ p `Ŕ ?˙    { 0 X Rf  }0;8ăĎ<ńçéóÚÔůŽîdţ ˙:Ţ Ţ Oî î ţî ÎţöĎ˙vÇß~ďžß÷žűţ˙ýţ˙ţ˙ţ˙ţ ˙ř ?˙ŕ ?˙ ţ    x ü ˙ < ˙žx˙Ç˙|˙÷˙ţ˙?˙˙˙˙˙˙ ˙ ˙˙˙˙˙˙˙˙˙˙˙˙˙ ˙ü ˙đ ˙Ŕ ?˙     Ł i419  	D          ˙˙˙˙             0 0       o Ŕ   ,h çĎ 1 !	 A@˙ţŔ   	 Ap@@ 	 1 çĎ ,h P      i    0 çÎ Ţö 
žú ~ý  ęŽ ÇFŔ˙~ŕ˙ž ţ~ ý x= żú Ţv çÎ 0       ľ @ 8 @ Š    } Ŕ   ?ř ˙ ˙ ˙ ˙˙Ŕ˙˙Ŕ˙ŕ˙đ˙đ˙˙˙Ŕ˙˙ ˙ ˙ ?ř Đ       ¤ i420  	D            ˙˙          ˙˙                ˙˙˙˙       0 0        đ  p Ŕ  đ `   `	0   @@@  
 @DC@ @ŻÂ X,$0 ` Ŕ ŕ ?ü        ę     `   ę    R X >ŇŚ śŮněŔÎćŕĆÇp3Ă87g<yg<yĚG<}ÎO<}ÎO<}ÎO9ĚG8Ü' p0       g   -X I&     Ŕ`Ă`Â08Ŕ0Ŕ0Ŕ0ŕ08  d8č#đĂŕăŔ˙ ˙ţ ř    1­           p    =Ž    0 p8     Ŕ @  @ P     { đ đ đ Ŕ  đ ţ ˙˙ŕ˙đ˙ř?˙ü˙ü˙ţ˙ţ˙ţ˙ţ˙ţ?˙ü˙ř˙đ˙ŕ˙Ŕ ˙ ?ü     Ľ i421  	D          ˙˙˙˙       0 0        đ p  Ŕ    0  @<@<@<<<   ŕ@ @	@ 0      Ŕ p đ     đ ţ ˙ ˙Ŕ˙ŕ˙đ˙đçř?Ăü?Ăü?ĂüĂţĂţçţ˙ţ˙ţ˙ţřţçţ?ßűü?żýü?ţüţř˙đ˙đ˙ŕ˙Ŕ ˙ ţ đ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Ś i422  	D          ˙˙˙˙       0 0        đ p  Ŕ    0  @<@<@<<<     @ @ @  ř0      Ŕ p đ     đ ţ ˙ ˙Ŕ˙ŕ˙đ˙đçř?Ăü?Ăü?ĂüĂţĂţçţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ü?˙ü?˙üŕř˙đ˙đ˙ŕ˙Ŕ ˙ ţ đ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     § i423  	D          ˙˙˙˙       0 0        đ p  Ŕ    0  @<@<@<<<     @ @@` 00đ    Ŕ p đ     đ ţ ˙ ˙Ŕ˙ŕ˙đ˙đçř?Ăü?Ăü?ĂüĂţĂţçţ˙ţ˙ţ˙ţ˙~˙~?˙|?żţü?üĎůřçóđřđ˙ŕ˙Ŕ ˙ ţ đ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     ¨ i424  	D          ˙˙˙˙    ˙˙         0 0        đ p  Ŕ    0  @<@<@<<<  ń@@`@8 č0 Ŕ   Ŕ p đ     đ ţ ˙ ˙Ŕ˙ŕ˙đ˙đçř?Ăü?Ăü?ĂüĂţĂţçţţţ~˙~p˙ţ?żýü?ůü?Çăüŕřđđřđü?ŕ˙Ŕ ˙ ţ đ    Ý  ŕ Ŕ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Š i425  	D  ˙˙  ˙˙          ˙˙˙˙˙˙  ˙˙        ˙˙       0 0       1  8 đ ŕ Ŕ Ŕ ŕ đ 0 Ů    mĄ Ŕ      `@ @@@@@Ŕ @ @ @ @ @ @           @    fĽ Ŕ ŕ đ ř ůŰąĄ 1 ;Ü ?ü ?ü ?ü 3Ě 3Ě   x đ ŕ Ŕ    4š   p x p   0 0 đ ŕ     2Ô  ŕ p <  < xŕđđŕřŔ?˙żř˙     8 đ ŕ Ŕ Ŕ ŕ đ đ đ đ ř żý˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙ ţ ţ ţ ţŕţpţ<?ü?ü<żüx˙đ˙ŕ˙Ŕ?˙ř˙    Ş i426  	D          ˙˙˙˙˙˙     0 0          ě Ü n {Ŕ ý@ ţ@ o ~ Ŕ Ŕ ëŕ ?ăţ ,˙L?ţd˙@#ß` ? ? ? ? ;    ; 3 f Ŕ    9                      ě ü ţ ˙Ŕ ˙Ŕ ˙Ŕ  ~ Ŕ Ŕ ˙ŕ ?˙ţ ,˙L?˙d˙Ŕ#˙ŕ ? ? ? ? ?    ; 3 f Ŕ     Ť i427  	D          ˙˙˙˙˙˙      ˙˙  ˙˙         0 0       ˙       ˝ u Úi    ö Y ˝Ŕi    ź m w@Y      ˙    E˙Ę˙ţ ˙ţ˙ţC˙˙ţtB_˙ţr%˙ţ˙ţE˙˙ţr	˙Ś˙ţqB?˙ţ˙ţK˙˙ţrC˙˙ţpżŚ˙ţ˙ţ˙ţ wvUT    4 : 4 ˙ţ ` : ` 4 ` ˙ţ*Ş     <ç    ˙˙˙    Ź i428  	D    ˙˙               0 0       ˙  ˝đ  ˝đ  ˝ďŔ ˝Ŕ  ˝ÖżÁ ˝ń ˝h ˝Ŕ  ˝Ţ  ˝đ  ˝` ź}đ źuđ ź` ˙    ˙ţ˙ţB˙ţ˙ţB˙ţ˙ţB?ţ˙ţB?˙ţ˙ţB)@>˙ţBţ˙ţBdţ˙ţB?˙ţ˙ţB!˙ţ˙ţB˙ţ˙ţBţ˙ţCţ˙ţCţ˙ţCâţ˙ţ    ˙˙˙    ­ i429  	D            ˙˙˙˙    ˙˙˙˙˙˙     0 0       ˙Ŕ @˙Ŕ @ @ @ @˙ü ˙ü  ô˙ţ ô˙:ţ ô 8rô(R8rô ž|úô 8sü(R 8r   ž|ú   ˙ţ     ˙ ˙ř ˙üÉ     0˙
°˙°ˇ˙°˙°´ | ü ü ü              ˙ ˙    ?˙?˙   j  H  H  ˙ř ˙ ř  9ř˙ý˙ýřcÇk×­řcÇ˙ýřA˙ýřcÇ k×Ź cÇ ˙ü A ˙ü    Q˙Ŕ˙Ŕ˙đ˙đ˙đ˙đ˙đ˙ü˙ü˙˙ž˙˙˙˙?˙?˙    Ž i430  	D    ˙˙˙˙      ˙˙  ˙˙˙˙˙˙     0 0       l˙0     ˙       ˙2ü            ˙    | ˙ú>@x{ţ˙ű˙űţ@x ˙űţ˙ú@x{ţ˙ű˙űţ@8{˙űţ 2ţ˙řCţ˙űCţ˙űCţ˙űCţ˙řCţ˙űCţ ˙đB!ż˙đB!˙   b Ŕ? đ ? ř? x ?Çx đ<ůŕ đ<ůŕ đ<ůŕ đ<ůŕ đ<ůŕ ŕ<ůŕ ˝÷Ţ@ ˝÷Ţ    ˙˙˙    Ż i431  	D      ˙˙          ˙˙˙˙      ˙˙           0 0       x˙D  Á  ˙    	á  Á  ˙    	Á ˙ůÁ  	Á  	ý  	Á ˙ qă ?<c   x D˙÷ţ\?ô"@?÷ţ_˙đ \?÷ţ@?ôf^á÷ţ^ö^˙÷ţ^á÷"^÷ţ_˙đ \?÷ţ@?ô\?÷ţ_˙ö2˙÷ţ "˙÷ţB!>˙÷ţB!˙÷ţB!"˙÷ţ ˙`˙Á   j #Ŕ ?Ŕ   #Ŕ ?Ŕ ! !ţ ! ! !ţ     > ř      =Ţŕ =Ţŕ =Ţŕ  @ @   ´ Ŕ @ ŔÂ    ¸ Ć    ˙˙˙    ° i432  	D       ˙˙    ˙˙˙˙  ˙˙˙˙˙˙            ˙˙      ˙˙˙˙    ˙˙  ˙˙                ˙˙       0 0                       0       2       0          03113 
3DC4U11343 03DC4fS5s7w3D403fc6s7wCD03fc61CDBD03fc613D4343#"3D3#)3D33#)3DID3 3#)3DID3 0#)3D3 0#"3DID3Ş:3D3Ş:3D4D4DTD3ŁŞ3D4D4D3Ł3D4D4D3   ˙˙˙    ą i433  	D              ˙˙          ˙˙˙˙˙˙     0 0         đP0
 Ŕ  @ `                             @  ŔP0
 đ    }                                ˙   x p >| .ţ ţřfg`zŕ}đnzđl6đó×x÷ďxď÷x đ .đ ď÷x÷ďxűĎxt6đnvđŽyđŢyŕŚfŕx@ ţ ţ >| p         ŕ  a a  &É (đřđř0 É  Q ! Y ŕ        ű      	 đp?ü ˙˙˙Á˙á˙ń˙ń˙ů˙ů˙ů?˙ý?˙ý?˙ý?˙ý?˙ý?˙ý?˙ý?˙ý˙ů˙ů˙ů˙ń˙ń˙á˙Á˙ ˙
p?ü đ˙    ˛ i434  	D          ˙˙         0 0       đđđđ   đđđđ   ˙˙˙    ł i435  	D            ˙˙˙˙˙˙     0 0       ˙ rżţżţżţżţżţżţżţýýýýýýýżţżţżţżţżţżţżţýýýýýýý ˙    ˙ţ@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ ˙ţ    t 6ü ü ü ü ü ü ü?ţ ?ţ ?ţ ?ţ ?ţ ?ţ ?ţ 6ü ü ü ü ü ü ü?ţ ?ţ ?ţ ?ţ ?ţ ?ţ ?ţ    ˙˙˙    ´ i436  	D            ˙˙˙˙˙˙             0 0       i ˙ţ˙Rţ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ˙ţ˙ţ    Y               ŔpŔpŔpŔpŔp    ^ """""*vÝŘvÝŘvÝŘvÝŘţ˙řţ˙řţ˙řvÝŘvÝŘvÝŘ"""""    Z ŔpŔpŔpŔpŔp                    } ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ     ľ i437  	D          ˙˙˙˙˙˙                   0 0        ˙ü@ AAAA_˙ôAAAAAAA_˙ôAAAAAAA_˙ôAAAA@ ˙ü     ?˙ř>ţř>ţř>ţř>ţř  >ţř>Ćř>ř>ř>ř>Ćř>ţř  >ţř>Ćř>ř>ř>ř>Ćř>ţř  >ţř>ţř>ţř>ţř?˙ř    s                           ˙˙   *Ľ 8 | | | 8 8 | | | 8Š    *Ś 8 | | | 8 8 | | | 8Ş     ˙ü˙ü˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙    ś i438  	D          ˙˙˙˙        ˙˙  ˙˙         0 0       h ˙ŕ `˙X A ˙ţ A ?˙ú  
  
ŕ   
   ?˙ú  
  
ŕ   
   ?˙ú  
Ŕ 
   
   ?˙ř    Y đ > >    @ @ @ @đ@đ đ ń ń  | | | | |    b Ŕ ŕ  ů  | | | | |    @ @ @ @ đ đ đ đ đ    a  @ @ @ @ @ đ@ đ đ ń ń  | | | | |              | ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙ŕ?˙Ŕ?˙?˙ ?˙ţ ?˙ü ?˙ř     ˇ i439  	D          ˙˙      ˙˙˙˙˙˙     0 0       p ?Ŕ ńx s> 	bq fq"Dă@&Ěć@DĚ MąŘŕI3ŕc'ŕgOśfXŚĚđŹČřŹÉ ŽÁ Ś@ ˇ@ @ [  9đ		  @ 0a  Â r     q  NŔ   ť3;f3Ŕ2N' 6Ěl dŘ m°ŕI§ŕY3l S7x S6đ Q>ŕ Y§ŕ Hŕ lŕ $çđ đ đ đ ŕ ?ŕ     5Ĺ  < <  ŕ ü ü ü | | <      ?Ŕ ˙ř ˙ţ ˙ ˙?˙Ŕ?˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙đ˙đ˙đ˙ř˙ţ ˙ü ˙ţ ˙ţ ˙"ţ ˙ţ ?˙űđ˙ů˙˙ůţ ˙ńţ ńţ ?áţ ţ ţ ~      ¸ i440  	D  ˙˙                      ˙˙˙˙˙˙     0 0       I ě U P Đah<	-JMd "JŔĐ h  7 ,  `  @ `ˇ    R  %.Ş@ /˙( ŔöŇtľ˛Ýľ</íř˙ŕ x ŕ @  }  k >  pł    `Š ˙  #â L P   Ŕ @ 	 É D $ ˘ @ @ @    ţ    Y­ ţ  3ä /ř _Ě 9î 1đ gđ n0 ~8 ~  ? ? ? ~ > ţ    ž 0      Ŕ     ü ?˙Ŕ ˙ř˙ü˙ţ˙ţ˙ü˙ř˙ŕ˙˙ ?˙ţ ?˙ţ ˙ü ˙ţ ˙ ~˙x˙ůp˙ů ˙| ˙< ˙ž    ˙ ˙ ˙ ţ     š i441  	D            ˙˙˙˙˙˙  ˙˙˙˙       0 0         ` 0 Ŕ  Ŕ 0
 Ŕ@0$ 0  Ŕ Ŕ pĚgs@L`@C ŕ    ŕ  @  ŕ Ŕ  ŕ ŕ ŕ ü` ă ŕ ŕ ŕ @    w  ŕ ?ř ˙ ˙Ŕý˙đ?űżüôđď˙Ŕ ß˙ ?ř ŕ " °źŔ˙Ŕ˙Ŕ˙Ŕż˙Ŕ˙ ţ ü ř ŕ     ą  0 ` Á    
É ŕ ŕŚ      ŕ ?ř ˙ ˙Ŕ˙đ?˙ü˙?˙ü˙đ˙Ŕ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙ ˙ţ ˙ü ˙ř ˙ŕ ă ŕ ŕ ŕ @     ş i442  	D          ˙˙         0 0        đ p  @ ŕ	   @@@    ˙   @ @ @	 Ŕ!  Đ ` @ p đ     đ ţ ˙ ˙ ˙)`ţpţřţř?żýü?żýü?żůüßűţßűţßűţßűţ !ßűţßűţßűţ?ßűü?ßűü?żýü?üřţx˙p˙ ˙˙ ţ đ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     ť i443  	D          ˙˙˙˙˙˙  ˙˙         0 0       ˙,                     ˙ PpPÁááá˙Á   Á          	 ˙    Q˙ U˙ U˙ Q˙ ˙ ˙  ~? | x p xßţ|Żţ~>ţ~Żţţţü~Äř>ÔđÔđÄđ ř> ţ ü~ ř> ˙ţ ˙ę ˙â ˙ę ˙ö    M . * * .  Ŕ ŕ đ ř đ ŕ Ŕ  : * * :Ş    f˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ °˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙    ź i444  	D          ˙˙˙˙˙˙                   0 0       } ?ř @ @ j?˙   ř     @ůü 	@vő@@@@@@@@@@@@@ő   ˙ü     ?ř ?ţ ˙  ű oŰ G G oŮ Ŕ öů
              
 ˙ř    o @ ` ` ` ` `   0 x p ` ` ` ` ` ` ` ` ` ` ` ` ŕ Ŕ  ˙ ţ       8p 8p  Ő    Cš ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ     ?ř ţ ˙ ?˙ ˙Ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ˙ŕ˙đ˙ř˙đ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙ ˙ ţ     ˝ i445  	D ?             ˙˙˙˙˙˙          ˙˙      ˙˙˙˙       0 0       l˙ P §Č ¨Ä §ä   @ n  Č °  č 0 @ x ŕ 	đ ńŔ đ 
 @Ŕ `    A 
ýťŕ ýť ś ˙ řÇ  ŕ p  ř đ -Ŕ       3 D D H p ¤   6 8 x      V  ` Ŕ  ţ ˙ü­ ŕ 2 b Ţ  đ `"ŕIř F 1 ÇćŔš $~vŔéŃ    1  ß ˙ ˙ ˙ ţ ü ř p  Č    L   @ @ @ @  ŕ    ˙ŕ ř  8 ŕ       ˙ý˙đ ý˙ŕ ˙Ŕ ˙(˙üß˙ü˙đ˙çČ˙ďÄţçäüŕ řŔ pn   Č °  ŕ řý2˙Ŕßř ˙˙ŕ>˙ř˙ţ~˙üó˙ţĚ˙í˙ţí˙ďů     ž i446  	D                ˙˙˙˙˙˙     0 0        Ŕ         Ŕ   ţ  ř @˙  @  ˙        ˙ż  Đ	  ß˙ŕ  ŕ ˙    r Ŕ Ŕ Ŕ @ Ŕ   n  ř  ˘ ?ü    Ŕ Ŕ đ 8 @ } ˙ř` Áŕ ř    K  ^   w\ x     Ŕ ç /đ   >đ đ     Ŕ ŕ ŕ 	ŕ ` Ŕ ŕ /ţ ď˙ ˙˙Ŕ˙ ˙ ţ ˙ ˙   Đ Ŕ ř ?ü ˙ ˙ý˙ů ˙řp˙ŕ˙đ˙ŕ ˙     ż i447  	D          ˙˙˙˙      ˙˙˙˙˙˙           0 0        ţ   @ 0  0   Ŕ 0  0       @C ţ @ @ @ @ @Ŕ 0`@   0d xň 0b         G ţ ˙ ĎŔ Ďŕ ˙ŕ ?đ đ đ đ ?đ ˙ŕ ˙ŕ ˙Ŕ ˙ ţÁ    q   Ŕ p      >  | ř ˙đ ˙ŕ ?   < | ř đ ŕ        >ź  Ŕ ?ŕ ?ŕ ?ŕ ?ŕ ?ŕ Ŕ  H xđ 0`    -Ú  ?ŕ đ ˙ř Ď    Ď ˙ü    ţ ˙ ˙Ŕ ˙ŕ ˙đ ˙đ ˙ř ˙ř ü ?ţ ?ţ $˙ţ ˙ţ ˙ţ˙ţÇ˙ü?ă˙řń˙đđ˙ŕđ?đ řŔ?ü?ŕüđü˙řů˙üń˙ţă˙ ˙ ˙ ˙ ˙    Ŕ i448  	D  ˙˙  ˙˙    ˙˙    ˙˙˙˙˙˙  ˙˙        ˙˙˙˙  ˙˙˙˙               0 0       4 ŕ đ č ?ě ?ü ?ü ?ü ř đ ŕÔ    0 x ü ö ÷ ˙ ˙ ˙ ţ ü xŇ    *              @ľ    7 Ŕ ŕ đ đ ö ţ ţ ţ ü ř đš    3¨   Ŕ Ŕ Ŕ č ŕ đ ŕ Ŕ˛    9Ž ` đ ř ě ě ě ü ?ü ř đ ŕ¨    LŻ  0       Ŕ @ @ A @ @ a1 Ŕ @    } ŕ xđ üřţ?ü˙?ü˙?ü˙ü˙ř˙đ˙ŕ˙ŕ˙đ˙ř˙ü˙,üű˙üů˙üč˙üČßřOđGŕA @ @ a1 Ŕ @     Á i449  	D ?             ˙˙  ˙˙  ˙˙    ˙˙˙˙    ˙˙    ˙˙         0 0       y ˙ŕ       ăŕ " " " >       ńř˙ÁÁ?Áń?Á0Á0Áń˙ń˙11˙   & ˙Ŕ ˙Ŕ    Ě ţ ţ    BŽ                    2˝      ţ ţ ţ Ŕ Ŕ Ŕ Ŕ    0Ň p p p p p đ đ        +× > > > >` >` >` ` Ŕ Ŕ    f ˙ŕ ˙ŕ ˙ŕ ˙ŕ > > > >       ˙˙˙˙˙ń˙ń˙ń˙ń˙    Â i450  	D  ˙˙      ˙˙˙˙      ˙˙        ˙˙  ˙˙  ˙˙          ˙˙˙˙˙˙       0 0       A Ŕ          8 8 0 0 0ž    B 0 p ` ŕ Ŕ Ŕ         ž    ?     8 0 ` ` Ŕ      ž    E ţ ü đ ŕ     8 p ŕ Ŕ Ŕ  ˝    ;    ` Ŕ      0   ` @˝    =Ĺ Ŕ @ ? *Ŕ`                 Ŕ| ?    .É 8 8 đ ŕ Ŕ Ŕ Ŕ       9É   ŕ ŕ ?đ ?đ ?đ đ ŕ ŕ ?     ˙ţ ˙ţ ˙ţ ˙ř ˙ŕ ˙Ŕ ˙ ˙ ţ ü ?ř ?đ ?ŕ ?ŕ ?Ŕ Ŕ Ŕ ? *˙ŕ ˙đ ˙đ ˙ř ˙ř ˙ř ˙ř ˙đ ˙đ ˙ü ?     Ă i451  	D            ˙˙˙˙˙˙     0 0         @   @       	 @  x  	J @  J J 	  A 	J @x         @  @      ŕ ?ü ˙ ˙˙Ŕ?˙ŕ˙đ˙Bř9˙ü3üüsř ţwřx~wđ~÷ń?˙ń?˙đ?˙đü?˙đ?˙ń?ń>đ~řx~?ř ü?ţü˙ř˙đ˙ŕ˙Ŕ˙ ˙ ?ü ŕ    W ŕ Ŕ   7 x ţ  1y yŔ 1Ŕ Ŕ 1Ŕ yŔ y 1   üĄ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Ä i452  	D            ˙˙         0 0        đ ţ ˙jňOŔÂCŕ@đ@x>@|<@<x@x@x@đ@đŕ˙ü?˙ř ř ˙ü?˙đŕđ@x@x@x@<@<>@|@x@đÂCŕňOŔ˙ ţ đ    q           řđřđ              š Ŕ Ŕ Ŕ Ŕš    z đ ţ ˙óĎŔĂ%ŕŔđŔx>Ŕ|<Ŕ<xŔxŔxŔđŔđŕ˙%đŕđŔxŔxŔxŔ<Ŕ<>Ŕ|ŔxŔđĂŕóĎŔ˙ ţ đ     Ĺ i453  	D          ˙˙              ˙˙˙˙˙˙     0 0        đ ŕ  ˙Ŕ @       8  Đ          @Ŕ      đ    a @ @ ` P 0P  P  H 0H hD $D $@ ˘B ˘B ˘D ĄH ĄP    Ŕ    Ş    D                ś     @           ő `     đ ŕ Ŕ UŔ ç˙üŔ 8Ř@ 0Đ`  Ř  0Ř  xě0 üäźäŽâŽâŚć§ě§řŁ° ˘Đ ˘ "@Ŕ     ř đ     Ć i454  	D      ˙˙    ˙˙˙˙     0 0        đ ˙ ˙ŕ ˙ř ţ ?˙ü ˙ţ ŕ˙ ř˙  ü˙ > ţ˙ > ˙˙ţ ~ ţ?˙ü ˙ ü˙řü p˙ŕđ Ŕ˙ ` đ    c ţ ˙Ŕ ˙đ ?˙ü üŕ~ řx ˙đ ˙á˙ ˙Á˙ Á˙ ˙ ? ˙ ˙ ˙ ţ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ˙˙˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Ç i455  	D            ˙˙˙˙˙˙      ˙˙    ˙˙       0 0       { ˙   ?ú"4" "T?˘#"˘#>˘#"˘˙%# >˘UT#Ş¨"¨ #Ş >ĽU`#@  "U #*Ş ?˙ŕ" " " ?˙ŕ    y ţ ü ü üŔü@üü ü ü ü ü ü @       @ @ Ŕ ĚŔD@ĚŔ ˙Ŕ    i 1       +  ] ë ] ë ] ë?ţ] #ę˙ü]Ş¨ëUPW˙ŕíU@ZŞż˙ jŞŐU       ˙ř                            ˙ř   | @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @  0˙đ    P ˙ ˙ ľ˙ţ˙ü˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř    Č i456  	D ?           ˙˙  ˙˙˙˙˙˙        ˙˙                 0 0       ˙                              ˙   < đ đ đ `  ~ | x p @Č ŕ ü| ţ    ~ /˙ţ ˙ţ Çţ żţ ś˙ţ˙ţÓ˙ţĐţß˙ţ8_˙ţ~O˙ć}cď{$ěţgűáţăţÄăţŕţxţďĂţĎŮţßÍţ˙î üŢűî§Ě>˙Ü˙ů űž~Ţ|î    ^ 8 @ 	 
    đ         ` Ŕ đ ţ @       c @ `         0       ŕ <             P¨      ` 8 x đ  0   0  ř  X0      ˙˙˙    É i457  	D          ˙˙˙˙˙˙      ˙˙  ˙˙         0 0        ˙đ@ @ @ @ @ @ @ @ _˙Ř@ @ @ @ @ @ @ _˙Ř@ @ @ @ @ @ @ @ ˙ř?˙ř    s ?˙ŕ?ßŕ7X×`:×Zŕ=×]ŕ:×Zŕ7X×`?ßŕ   ?ßŕ7XŘŕ:×W`=×W`:×W`7XŘŕ?ßŕ   ?ßŕ8×W`7ZÚŕ7]Ýŕ7ZÚŕ8×W`?ßŕ?˙ŕ    F                     E                    ˙đ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř?˙ř     Ę i458  	D  ˙˙                             0 0       ~Ł8Ł`ĆqÇ`ĆŁ8Łł9łš;š $š;šł9łŁ8Ł`ĆqÇ`ĆŁ8Łł9łš;š $š;šł9łŁ8Ł`ĆqÇ`ĆŁ8Łł9łš;š š;šł9łŁ8Ł`Ć   yDB(B B(BDH$H@ @üÇü@ @H$HDB(B B(BDH$H@ @üÇü@ @H$HDB(B B(BDH$H@ @üÇü@ @H$HDB(B   1°°ŕ ŕ°°1@DŔl8Ŕl@D1°°ŕ ŕ°°1@DŔl8Ŕl@D1°°ŕ ŕ°°1@DŔl8Ŕl@D1°°   5  (   (   (      ˙˙˙    Ë i459  	D                       ˙˙  ˙˙                    ˙˙      ˙˙      ˙˙˙˙˙˙    ˙˙      ˙˙˙˙    ˙˙˙˙       0 0      
!@UD@Pvp 	$	(J ´ŤĽJW	#,yŁRSGZ@ĚÇĆŞ¨ŹĄŠzŠÉ­t3#Ěp35Š\YľŁ*´y9zÎwŽzJD{AzťvQ9ĺUxZ
~ÄSĆŠtgZÚáYKĽ¤|Y	Z[:8yŽ,Éz*R  Jł4Ô:9´ăiVZ V@kˇĺëZŹ*	ŕŠwYçÚzWčŤťcŐÝŕĘ5ąˇĆąFˇŚÝPéš3žĚHDd¤˘*îÁ8ŞŢĆĄş BD¨JŽĄČZş @ćĘŞŁŚŤxÁZîwľ% zZ1Ľ%YÇU6Ě(ťšŠ˝1X8é.ĽK"b§iPŚĄäěŞŠËÜ ĚĂUśWUyD´şPŹ­KT1¨ĘĆw*YŹ9W3ĽsPĺ,ĽŮěcŞy§jŠ	Y¤4Ł: AaĆp)
´¨\}sI°ZĽŹ\ě Ź9	ŞXşŞşk§	V
ľZŞTSYťŤkfŞĽ Z]ĺŞłë)ŚDAgV:4S:@ŁŞŠáČÉ3ăŽsÝŞJŠqĽÚÝíÝ D ~Ô ŘŐ    GůőÔŽü˙÷˙˙ţ˙ţ˙ţ˙ţ˙ü˙ů˙ű˙˙ţ˙˙ţ˙ţ˙ďż¸    Ě i460  	D                                           ˙˙        ˙˙    ˙˙˙˙        ˙˙  ˙˙  ˙˙    ˙˙˙˙     0 0       "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ "3CTevŠŞťĚÝ   ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙    Í i461  	D                 ˙˙˙˙        ˙˙    ˙˙˙˙                    ˙˙      ˙˙  ˙˙        ˙˙       0 0       !"03@DPU`f !"03@DPU`f !"03@DPU`f !"03@DPU`f !"03@DPU`f   qw  Ş qw  Ş qw  Ş qw  Ş qw  Ş   ĄŞ°ťPUŔĚ@D ĄŞ°ťPUŔĚ@D ĄŞ°ťPUŔĚ@D ĄŞ°ťPUŔĚ@D ĄŞ°ťPUŔĚ@D   ŔĚpw 03 ŔĚpw 03 ŔĚpw 03 ŔĚpw 03 ŔĚpw 03   QU `f Ş " QU `f Ş " QU `f Ş " QU `f Ş " QU `f Ş "  "    ˙}÷ß˙}÷ß}÷ß}÷ß}÷ß` }÷ß}÷ß}÷ß}÷ß}÷ß` }÷ß}÷ß}÷ß}÷ß}÷ß` }đ}đ}đ}đ}đ` ÷ß÷ß÷ß÷ß÷ß˙˙     Î i462  	D             ˙˙        ˙˙˙˙        ˙˙                  ˙˙˙˙˙˙    ˙˙  ˙˙          ˙˙    ˙˙˙˙           0 0      Ą  " 3@D U`f  " 3@D U`f  " 3@D U`f˛ w 	 Ş ťŔĚ w 	 Ş ťŔĚ w 	 Ş ťŔĚ˛ Ýŕî  3 " Ýŕî  3 " Ýŕî  3 "˛ ťPU DŔĚ f ťPU DŔĚ f ťPU DŔĚ f˛ Ş
`f 3 Ýŕî Ş
`f 3 Ýŕî Ş
`f 3 Ýŕîą    ˙˙˙    Ď i463  	D          ˙˙˙˙    ˙˙˙˙˙˙  ˙˙  ˙˙         0 0       9&fd  ˙č ($ $ $ ( ($ $ $ ( ($ $ $ ( ($ $ $ ( ($ $ $ ( ($ $ $ (˙č  &fd9    
Ş¨                          UP    { UP       ?ŔŔ Ŕŕ ŕ ŕ       
Ş¨    h ˙Ŕ˙Ŕ˙UŔü?ŔđŔđŔđŔŕŔŕŔŔŔŔŔŔŕŔŕŔŕŔâŔţŔüŔřŔđŔđŔŕŔŕ ŔŔ Ŕ    k Ŕ ŕ đ 	ř x |  | @< 0< <    ţ ř ü ü ţ ţ ˙ ?˙    Ą9?˙ü?˙ü˙ř˙ř?˙ü?˙ü˙ř˙ř?˙ü?˙ü˙ř˙ř?˙ü?˙ü˙ř˙ř?˙ü?˙ü˙ř˙ř?˙ü?˙ü˙ř˙ř?˙ü?˙ü˙ř˙ř?˙ü?˙ü9    Đ i464  	D   	              ˙˙      ˙˙˙˙    ˙˙˙˙˙˙    ˙˙˙˙      ˙˙           0 0      Y   1 BDE 13 BDE  BDE@ V BDTDT EDE FDT e BDE  BT Q0 BET QU BD QU B QU 1U 1 U 3 U 3  3 03 03 U03 U0 QU QU U 13U 3Uf3Uw	 3 vwx  p   ww   ˙ţč˙    Ń i465  	D             ˙˙˙˙  ˙˙˙˙˙˙            ˙˙        ˙˙      ˙˙˙˙          ˙˙             0 0      `  !"!"!" !"!3D%!"v7CT "!fw3D"""Thv7CT !"!	Dfw3D%"	IThv7C !	Dfw3$	IThv7 !	wDfw#"	vIThv !"
!awDf!"vIT !"!awD!"v" !"!aw!"˘" !Ą!˘ !v&!b !v&!b !R ľ!ą%!ľ!P[[°ľ    ˙˙˙    Ň i466  	D              ˙˙  ˙˙  ˙˙  ˙˙˙˙    ˙˙         0 0       ˙              !        ż ż    	ü ?á˙˙ý˙   X ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙űü˙ţ˙ţ˙ţú˙ţ˙v˙ţ˙Ţ˙ţ˙Ŕ~˙ 8ś    4Ŕ x ?~ ˙ţÇ˙ţ˙ţ˙ţs˙ţa˙ţ@˙ţ@ü?ţađđ    á Ŕ đ đ ř Ŕ     ç ř` ţwŕţŕ  `     ˙˙˙    Ó i467  	D                    ˙˙˙˙  ˙˙˙˙˙˙  ˙˙        ˙˙    ˙˙˙˙       0 0          ˙ű                          ?˙˙   a ˙đ
Ş*ŕQVPŞĄ UÁPť =Đ÷up˝ÝĐďwĐzßpţ˙đ˙đ˙ßp˙p˙đ˙đ˙đsÉ°2I
"A "    + 
QU
Ş¨ UPŞ DP B  Â         ´       @      °       < p pŃ    Ä ť    Ř  6@Íś`ÝžpÝ˙đ       ˙ű˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó˙ó   ?˙˙    Ô i468  	D            ˙˙˙˙˙˙    ˙˙˙˙  ˙˙˙˙                 0 0               N    `   $"! P  @      `            @  	   8˙˙   w h˙ŕ @   _˙  h   H                                       <˙üUT$*Ş¨UT$Ş¨    t Y?˙Ŕ   @  @ 0 @ p @ Đ @ @UT@Ň¨@ŃP@Đ @Đ @ĐŔ@ą @p @Đ @ @P @Đ @Đ @Đ @Đ @° 	
jŞ¨ŐUTŞ¨UT    1 ? ?  ˙ ˙ Ş T ¨ P  Ĺ     Ŕ Ŕ á    AŽ     ? ˙ ˙ ţ ü đ ŕ  ˘     Ę      ˙ ˙       ˙ă ˙ă ˙ă ˙ă ˙ă ˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă˙ă?˙˙?˙˙?˙?˙˙    Ő i469  	D  ˙˙                    ˙˙˙˙      ˙˙˙˙      ˙˙       0 0        ¤   @          @ 0 2 Ŕ x< p 0 `  ŕ `ŕ   `Ě ŔF     ŕř`>?ŕř D Ä # 1   `8 8˙ţ ţ      Ŕ ` 7ř Ŕ  ŕ Đ yü Ť ď p p 0 ?¸ kü _h ˙ óŔ p ;ř ;ř sÜ çÎ ˙o żűű˙Ŕ Ü      Ł  @        Ť         Ť     5     pŔŔ  @ ü  ˙ ?˙       Ŕ đ ?ř ˙ţ ˙ ?ţ ?ř ü ˙˙ŕ˙đ˙đ˙Ŕ ü ˙ţ ˙ ˙ ˙ŕ˙ţ˙˙ü ˙ţ ˙ ˙˙˙ŕ?˙ř˙ţ˙ ?˙     Ö i470  	D    ˙˙    ˙˙                 0 0       c ŕ ?ř K˙~ ÷ď ţ˙ßű@ř?Ŕ°ŕŕŔŕđŔĐ@đŔ°Ŕđ@đŕ°ŕŕpŕ81@aŔ   `    l       @      @  @  Ŕ ă ÷Ţ ÷Ţ ÷Ţ ÷Ţ ă Ŕ     l Ŕ     S8 Ŕ 0 ` p 0 `  `  `  `  `  `  `  p 0 1 d 9 H                    v ŕ ˙ř ˙ţ ˙ ˙˙6Ŕ?ř˙Ŕ?đŕŕ?ŕŕđŔđŔđŔđŔđŔđŕđŕ?ŕ?đŕ?řŔ˙Ŕ˙˙ ˙ţ ˙ţ ˙ţ Ŕ      × i471  	D             0 0       k @ H  ¸ 8 8 8 8 8 8 ˙Ŕü9  đ ř| >Ü o Ďî ţ `        k @ H  ¸ 8 8 8 8 8 8 ˙Ŕü9  đ ř| >Ü o Ďî ţ `         Ř i472  	D               0 0         > ţ ü ü ˙ř ˙ř ˙đ ˙đ ˙ŕ ˙ŕ ˙Ŕ ˙Ŕ ˙ ˙ ˙ ˙ ţ ţ ü ü ř ř đ đ ŕ ŕ Ŕ Ŕ     | 0 > Ŕ ř ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙   ? ?               0 > ţŔüřü˙ř˙ř˙đ˙đ˙ŕ˙ŕ˙Ŕ˙Ŕ ˙ ˙ ˙ ˙ ?ţ ?ţ ü ü ř ř đ đ ŕ ŕ Ŕ Ŕ      Ů i473  	D               0 0       |             ? ? ? ?                  LŔ ˙Ŕ?˙ŕ˙ŕ˙ŕ ˙đ ?˙đ ˙đ ˙ř ˙ř ?ř ü ü ü >                  ? ? ?˙?˙˙˙ ˙ ?˙ ˙ ˙ ˙ ?˙ ˙ ˙ ˙ ?      Ú i474  	D               0 0       |   Ŕ Ŕ Ŕ ŕ ŕ ŕ đ đ đ ř ř ř ü ü ü ü ř ř ř đ đ đ ŕ ŕ ŕ Ŕ Ŕ Ŕ    BŔ ˙ü˙đ˙Ŕ˙ ˙ü ˙đ ˙Ŕ ˙ ü đ Ŕ  < 0       Ŕ Ŕ Ŕ ŕ ŕ ŕ đ đ đ ř ř ř ü ˙ü˙đ˙Ŕ˙ ˙ü ˙đ ˙Ŕ ˙ ˙ü ˙đ ˙Ŕ ˙ ü đ Ŕ     Ű i475  	D               0 0          Ŕ Ŕ ŕ ŕ đ đ ř ř ü ü ţ ţ ˙ ˙ ˙ ˙ ˙Ŕ ˙Ŕ ˙ŕ ˙ŕ ˙đ ˙đ ř ř |      é ŕ ü ˙˙đ˙ü˙ţ      Ŕ Ŕ ŕ ŕ đ đ ř ř ü ü ţ ţ ˙ ˙ ˙ ˙ ˙Ŕ ˙Ŕ ˙ŕ ˙ŕ ˙đ ˙đ ˙ř ˙ř ˙ü˙ü˙ţ˙ţ    Ü i476  	D                ˙˙  ˙˙˙˙˙˙     0 0        
  @   @   @   @   @   @   @ "Ş U *Ş T 
¨ T 
¨ P   P   @  @       @   @   @   @   @   @   @   QU *Ş T *Ş T 
¨ P 
¨ P   @   @      {                  @ @                 n               @ @                  ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ 
ŕ ˙ ˙ ˙ţ ˙ţ ü ü ?ř ?ř đ đ ŕ ŕ Ŕ Ŕ        Ý i477  	D      ˙˙  ˙˙˙˙˙˙               0 0       & Ŕ   0 Ŕ  ţ 0 @Ă    Ľ   0 Ŕ  ţ Ă    DŚ  @ 
   Ş U*ŞU
ŞU Ş @ 
 @ Ą    EŚ @  @ * U ŞU*ŞUŞ U@ * @  @Ą    L Ŕ  Ŕ ?Ŕ ˙Ŕ ˙˙?˙˙?˙˙˙ ˙Ŕ ?Ŕ Ŕ Ŕ ŔĄ     Ţ i478  	D      ˙˙            ˙˙˙˙˙˙     0 0       '  Ŕ 0   ţ Ŕ 0  Ŕ    DĽ  @   T  Ş U@Ş UTŞ U@ Ş T   @ ˘    DĽ   P  ¨ U ŞUTŞ¨UPŞ U ¨ P  ˘    Ś Ŕ 0   ţ Ŕ 0 Ŕ    L  Ŕ đ ü ˙ ˙Ŕ˙đ˙ü˙ţ˙ü˙đ˙Ŕ ˙ ü đ Ŕ ˘     ß i479  	D      ˙˙            ˙˙˙˙˙˙     0 0       z                @ @                     @   @   P ¨ P ¨ T 
Ş T 
Ş U *Ş U   P   P   P   P   P   P   P     @ @   P   P ¨ T ¨ T 
Ş U 
Ş U (Ş P   P   P   P   P   P   P      n                                   Ŕ Ŕ ŕ ŕ đ đ ř ř ü ü ?ţ ?ţ ˙ ˙ 
ż˙ ż˙ đ đ đ đ đ đ đ đ đ đ đ đ đ đ     ŕ i480  	D      ˙˙        ˙˙˙˙˙˙     0 0       "     Ž    ł     ř  
  " " " " " " " " " " " ţř   Ŕ @ŕ đ ř ü ţ  ?  Ŕ       z đ đ đ đ đ đ đ đ đ đ đ đ đ đ đ ˙ŕ ˙Ŕ ?˙ ˙ ţ ü ř đ ŕ @     ř ř ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ˙ř đ ?ŕ Ŕ        á i481  	D      ˙˙        ˙˙˙˙˙˙     0 0       ;       @         @ż    q    	  ! A  ˙ü    > ˙ţ?˙üÁ˙řá˙đń˙ŕů ý ˙  >      T     > ~ ţ ˙ü˙ü˙ü˙ü˙ü ţ ~ >    ˘    x     ?  ˙ ˙ ˙ţ˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţ?˙ü˙ř˙đ˙ŕ˙ ˙ ˙  >       â i482  	D      ˙˙        ˙˙˙˙˙˙     0 0       &   @       @ Ă    ~ 0 X     @  ˙đ     ˙đ˙đ ż˙Đ@˙˙       @      j   h ě î ď ď ďŔ ŕ˙đ˙ř7˙üw˙řw˙đp ŕ` Ŕ@ / o î ě č ŕ ŕ Ŕ        p ř ü ţ ˙ ˙ ˙Ŕ ˙ŕ˙đ˙ř?˙ü˙ţ˙ü˙ř˙đ˙ŕ˙Ŕ˙˙ ţ ü ř đ ŕ Ŕ       ă i483  	D      ˙˙        ˙˙˙˙˙˙     0 0       R         @        °           @           @ @    ţřţđúŕňŔ?â " " " " " " " " " " !ř #đ 'ŕ /Ŕ      @ ŕ đ ř ü ţ ˙ ?˙ ˙Ŕ ˙ŕ đ đ đ đ đ đ đ đ đ đ đ đ đ đ đ        Ŕ ŕ đ ř ü ţ ?˙ ˙ ˙Ŕ˙ŕ˙đ˙ř˙đ˙ŕ?˙Ŕ?˙ ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?đ ?ŕ ?Ŕ ?     ä i484  	D            ˙˙˙˙˙˙     0 0       m ü ô ô ô ô ô ô ô ô ô ô ˙ŕ˙@ ˙ţ ý ?ú ô č Đ   Ŕ     X ` ` ` ` ` ` ` ` ` `    Ŕ ŕ p 8        J                   @    s ü ü ü ü ü ü ü ü ü ü ü ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ř ?đ ŕ Ŕ       ĺ i485  	D            ˙˙˙˙˙˙     0 0       a      ˙đ / _˙đ ż˙đ˙đ˙đ˙đ ˙đ ˙đ ?˙đ ˙đ         X       @        Ŕ ŕ pŔ 8        &     ŕ   @  Ă    k      ?˙đ ˙đ ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ ˙đ ˙Ŕ ?         ć i486  	D            ˙˙˙˙˙˙     0 0       ] @ ` P h t ˙ú  } ˙ţ˙@˙ ˙Đ˙ŕ˙Ŕ˙˙ ˙ţ | x p ` @    [               ˙         &      ˙   @  Ŕ    k @ ` đ ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ř đ ŕ Ŕ      ç i487  	D            ˙˙˙˙˙˙     0 0       n  @   Đ č ô ?ú ý ˙ţ˙@˙ŕ ô ô ô ô ô ô ô ô ô ô ü    \       @     ŕ ` ` ` ` ` ` ` ` ` ` đ    N  @                      s  Ŕ ŕ đ ř ?ü ţ ˙ ˙˙Ŕ˙ŕ˙ ü ü ü ü ü ü ü ü ü ü đ     č i488  	D    ˙˙˙˙˙˙             0 0         
  P ?ř ?ř *¨ UTŐ     
 ĺ    AĽ UT *¨ ˙ţ ˙ţ ˙ ˙ţ?˙ř˙ŕ˙ ˙ţ ?ř ŕ Š    U 
  đ ?ř ?ř ü ü ˙ţ ˙ţ ˙ ˙ţ?˙ř˙ŕ˙ ˙ţ ?ř ŕ Š     é i489  	D            ˙˙˙˙˙˙     0 0       h     > ~ .˙ú ˙ô ˙ú ˙ô ˙ú ˙ô ?˙ú ˙ô ˙ú ˙ô ˙ú ˙ô ˙ú ~ >        l Ŕ  Ŕ  Ŕ  Ŕ  Ŕ  Ŕ    ü Áú áü qú 9         Ö Š         > ~ Ŕ ˙˙Ŕ˙˙Ŕ˙˙Ŕ?˙˙Ŕ˙˙Ŕ˙˙˙ ˙ü ˙ţ ˙ü ú ?          ę i490  	D            ˙˙˙˙˙˙     0 0       <  Ŕ đ ˙ü ˙ ˙Ŕ˙đ˙ü˙ü ˙ü ˙ü UT Ş¨Ĺ    ľ Ş¨ UT ˙ü ˙ü Ş¨ UTľ    Ĺ UPš    L  Ŕ đ ˙ü ˙ ˙Ŕ˙đ˙ü˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ř UTľ     ë i491  	D            ˙˙˙˙˙˙     0 0       }     @   Đ č g˙ô ˙ú˙ü˙ř˙đ˙ŕ˙ÇŔüđ ?Ŕ ? ? ~ | | x x p p p        a       8  ř@  8	 `
 @          Ŕ Ŕ @ @    -    @ x     `    Ď         Ŕ ŕ ˙đ ˙ř ˙ü ˙ţ˙ü˙ü˙ř˙đ˙ŕ˙Ŕ˙?ř ?ŕ    ~ ü ř ř đ đ đ ŕ ŕ @ @     ě i492  	D            ˙˙˙˙˙˙     0 0       e  ˙Ŕ ŕ @đ @ ř @ p @   @ @ @  @ @ @ @ @ @@Ŕ@ŕŔđŔ ř# |A >       + ˙     0 ` Ŕ  Ă    Q  ˙ ˙ ˙ ˙ ˙ ˙ ?˙ ˙ ˙˙ ˙ ý ?ř đ ŕ Ŕ      l ˙Ŕ ˙Ŕ˙Ŕ ˙Ŕ ˙Ŕ ?˙Ŕ ˙Ŕ ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙÷Ŕ ˙ă Á ?        í i493  	D            ˙˙˙˙˙˙     0 0       d )˙ř    >  |  8              Ŕ ŕ	 ŔŔ  > | ř đ ŕ Ŕ     , ˙ŕ @  Ŕ ` 0    Ĺ    Q ˙ ˙ ˙ '˙ ˙Ŕ ˙ŕ ˙đ ˙ř ˙ü ˙ţ ˙ü ˙ř đ ?ŕ Ŕ   ˘    j %˙ř ˙ü ˙ţ ˙ü ˙ř ˙đ ˙ř ˙ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙Ŕ˙˙ żţ ü ř đ ŕ Ŕ      î i494  	D            ˙˙˙˙˙˙     0 0       g    > |A ř#đŔŕŔŔ@@ @ @ @ @ !@  @ @ @   @ p @ ř @đ @ ŕ @ ˙Ŕ    +   Ŕ ` 0   ˘      RĄ    Ŕ ?ŕ đ ˙ů˙˙˙ ˙ ˙ ?˙ ˙ ˙ ˙ ˙ ˙    n    ? Á ˙ă˙÷Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ ˙Ŕ ˙Ŕ ?˙Ŕ ˙Ŕ ˙Ŕ˙Ŕ ˙Ŕ ˙Ŕ     ď i495  	D            ˙˙˙˙˙˙     0 0       e   p ř | > Ä čđŔŕŕ@đ ř p   @               ˙ţ    $       ° `Ć    Q˘ @ ŕ đ ř ü ţ ˙ ˙˙Ŕ˙˙ ˙ţ ˙ü ˙ř ˙đ ˙ŕ ˙đ ˙ř    l   p ř ü ţ Ç˙ ď˙˙Ŕ˙ŕ˙đ˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ˙ţ ˙ ˙˙ ˙ţ     đ i496  	D  ˙˙      ˙˙˙˙                  ˙˙     0 0       " Ŕđ       Ű     Ŕđŕř x  Ű    U đ (~ Î3˙Ŕ˙Ŕ˙~p˙đĎřóčýčţč˙ř˙đ˙0˙ŕ˙ŔĎó ~> řĄ    K   Ŕ`   <   0        < ¨    J 0        Ŕ 0`Áđŕđ˙ř?˙ü˙ţ˙ţ    y 	Ŕđŕř˙ü?˙ü?˙ü?˙ř˙ü˙ţ˙˙˙˙˙˙˙˙ţ˙ţ˙ü˙ř˙đ˙đ˙ř?˙ü˙ţ˙ţ     ń i497  	D ?         ˙˙      ˙˙  ˙˙          ˙˙˙˙˙˙     0 0        đ 0 Ŕ ŕ8@` 	 0 Č0 H"D$$ $@$ $ $ $" D H Č	 ` 8@ŕ Ŕ 0 đ     
  T ¨
 @   @             (    @   @  P *¨ P    e P   @      @                   @    k 
¨   @                  @   @ (  
     9 ŕ  p Ŕ          @  ˇ    Y ř ~ ?˙ G˙ G˙ óă ůăŔüĎŔ~Ŕ>Ŕ˙Ŕ˙Ŕ˙˙ ˙ ˙ ~ ř ŕ     đ ?ü ˙ ˙˙Ŕ˙ŕ˙đ˙đ˙ř˙ř?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü˙ř˙ř˙đ˙đ˙ŕ˙Ŕ˙ ˙ ?ü đ     ň i498  	D          ˙˙˙˙˙˙  ˙˙         0 0        ŕ ü ˙
 đÁŔBŕ!đ< x8  8xP <r( p ŕ
 ŕ ŕďAîŕ Ŕŕ  ŕ `p Pr 0x  <8 
8< x!đ
ŕÁŔđ˙ ü ŕ    l ŕ >ř ţB Ţ÷ ţ˙ßýŔŻűŔ×÷`ëďŕőßđúżđýđţž˙?đ˙_đ˙đ˙Żŕ˙Ď`˙ßŔ˙Ŕţ˙Ţ÷ ţ >ř ŕ    ˘       @É     ŕ ü ˙ ˙˙Ŕ˙ŕ˙đ?˙ř?˙ř˙ü˙ü˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü˙ü˙ü?˙ř?˙ř˙đ˙ŕ˙Ŕ˙˙ ü ŕ     ó i499  	D ?               ˙˙      ˙˙˙˙˙˙    ˙˙  ˙˙     0 0        Ŕ      ŕ 0 Ďć 0 A@@
  
 0P`PŔPĂP P P P
 
  @@A0 Ďć ° Oĺ       @     `Ţ @       Ŕ Ŕ  ŕ 0 Ŕ     @ @               @ @   Ŕ 0 ŕ    VĄ ŕ >ř ně ţ, ˙ń á ăÇńř<8ţ?˙?˙ ˙Ď ţÎ nä >ř ŕ    9˛       @ @ @           Ę   @ @          Ŕ ŕ đ đ đ ŕ ?ř ˙ţ ˙ ˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙ŕ˙ŕ˙Ŕ˙Ŕ˙˙ ˙ţ ˙ţ Ďç      ô i500  	D          ˙˙      ˙˙˙˙˙˙       0 0        Ŕ 0 'Č X4  
  * DE B A @ @  
  
 X4 gĚ X4 WÔ Q Q Q Q Q S T T T S P H$ 'Č  ŕ     Ŕ 0   A @      @ A   0 'Č                         0 0 ŕ    t Ŕ ŕ Đ 9 <8 .h ?ř ?ř đ ŕ Ŕ   ŕ ŕ ŕ ŕ `       ` ŕ Ŕ    L    @     Ŕ      
 	 
       Ŕ đ ?ř ü ˙ţ ˙ţ ˙ ˙ ˙ ˙ ˙ ˙ţ ˙ţ ü ü ü ü ü ü ü ü ü ü ü ü ü ü ü ü ?ř đ ŕ     ő i501  	D            ˙˙˙˙˙˙     0 0       ˙đ   $ D˙$ $ $ $ $ $ $ $$ $ $ $	Á$ $ $ $$ $ $( 0   @˙    ~ ˙đ˙č X˙¸ Ř˙X˙*Xý˙XžďXÝ÷Xü˙XüűX|ýXü˙Xü˙Xř=Xü>X˙X˙
X˙űXýX˙Xß
XíďPţ˙@ Ŕ˙    V  )   @          Â            ˙    ˙đ˙ř˙ü |˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ř˙đ˙ŕ˙Ŕ˙     ö i502  	D            ˙˙˙˙˙˙     0 0       x Ŕ đ 8  đŔđ wěS?ü x ŕ1;ü ř Đ  ` @``` ` ` Ŕ Ŕŕ8Ŕţ`áđ    c  Ŕ Ŕđáđřđr.`B Â á Ŕ  `!Á A Á A AN ¸ Gă     b   Ŕ   Đ =¸ 
=t }  ?Ţ _š ^~ } Ţ~ >x > >~ >| >° @       Ŕ đ 8  đŔđŕ÷ďđ˙ř?˙ü?˙ü?˙ü?˙ü˙ř˙đ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙Ŕ˙˙˙˙Ŕ˙ŕáđ     ÷ i503  	D          ˙˙˙˙˙˙    ˙˙         0 0        Ŕ 
  
  @ đ0$`HEDJ ¤4 X    A  !   @	 @ @@@@ @ @          @  ` đ    y    đ0đ0 ř@ßö ˙> ˙ž˙ŔŢ˙@î˙ŕö˙ŕú˙ŕüđüĐüđű˙đ÷˙ŕď˙ŕß˙`ż˙Ŕ˙Ŕ˙żű ˙ţ ~ü đ     @ @   `
   Ŕ `   0                   0   ` Ŕ  ` đ    A               @   @      Ŕ ŕ ŕ Ŕ đ0<üx}˙|˙ü?˙ř˙ŕ˙đ˙đ?˙ř?˙ř˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü?˙ř?˙ř˙đ˙đ˙ŕ˙Ŕ˙˙ ü đ     ř i504  	D            ˙˙˙˙˙˙  ˙˙         0 0       AŐp ęđ Őp ˙đ Ŕp   ? ŕâ 1 	 &$$ L &@HpHHK:xHH4pL&@$&$ 1 ŕâ ?   Ŕp ˙đ Őp ęđ Őp     *  *  *         @         8 ` @ Ŕ     (  *  * ˙ř    c  ,Ŕ Ŕp  {Î űö 	ŰS ˙ť _Y7îýőý°4{Ĺý°7ý~Ůţű 	Űs űv {Î  Ŕx ŕ     Ş   @   Ć    !˙đ ˙ř ˙ř ˙ř ˙ř ˙ř ˙ü ˙ţ ˙ ˙?˙?˙Ŕ˙Ŕ˙đ˙ř˙ü˙ü˙ü˙ř?˙ŕ?˙Ŕ˙Ŕ˙˙˙ ˙ţ ˙ü ˙ř ˙ř ˙ř ˙ř ˙ř     ů i505  	D          ˙˙˙˙˙˙             0 0       ` ˙ü˙Müč \Đ ,Đ ,Đ,Đ,Đ ,Đ ,Đ ,Đ ,Đ ,Đ ,Đ ,Đ ,×ó?ŹĐ,×÷żŹĐ ,Đ ,č \˙ü˙ü    Q Lü˙ /ü˙Đ/<ńĐ.;`Đ.8dĐ/<řĐ/<ńĐ/<ăĐ/<çĐ.ŕĐ.ŕĐ/ü˙Đ/ü˙Đ(ŔP/űĐ(@P/ü˙Đ/ü˙Đü˙     ]                     ?˙?˙    +Ą 
Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ 
Ŕ ŕ ŕ˝     ˙ü˙üÔ˙?˙?˙     ú i506  	D          ˙˙˙˙˙˙        ˙˙      ˙˙˙˙       0 0       { ˙˙p` ` ` ` ```ŕ` ` ` ` a˙üb b˙úb
b
b
b
b
bĘ~˙~˙~˙
 
 ˙ú   ˙ţ ˙ü    o ˙ü˙ü@˙üüü<xy~  < |đü}đ}đ}đ
}ńü|1ü {đ wđ ođ đ đ    	 ţ?řä    FĽ ŕŔŕŕŕŕŕ ŕ ŕŕ ŕ Ŕ   ` ŕ ŕ       @ź ;˙ü                           ˙ü    { ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ü     ű i507  	D          ˙˙      ˙˙˙˙˙˙      ˙˙     0 0       ˙7ř Ŕ ţČ ˙Ě Ď˙ Ď˙ Ŕ Ŕ Ŕ  ŕ  ŕ  ŕ  p  p P X ŔH Ŕl `l `ć 0§ 8Ł Ą Ą  Ŕ  @ đ` đ?˙˙`  `  ˙ţ      r?đ p0 p 0 0 p 0 x ?ţx ?üxá    S  N?˙ř ˙ü ˙ü >  c .1Ç 'ńç 7Áă řsţyç8Ŕá@đ`|>0˙ř?˙řż˙ü˙üŔ    IŹ ŕŔ ůŕ đ Î8  >   Ç @ă@á@ÁŔ@ @ @ ˙ü ˙ü    ˙ř ˙ř ˙ř ˙ü ˙ü ˙ü ˙ü ˙ţ ˙ţ ˙ţ ˙ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙đ˙ř˙ř˙ü˙ü˙ţ˙˙˙ ˙ ˙ţ     ü i508  	D  ˙˙                                ˙˙˙˙˙˙    ˙˙˙˙     0 0            Č    t @    óOţúAßńA`şQ1:\
z^Đ z_   @  @ @     %¤ eŽ %ź        Ć  @ @    S @ @ @ ° ° °               @ @    #Ź   
 P 
 P   @­    5Ź ŕ ŕ @ Ŕ  @ @        °  	 
 P    ˝    ľ    ž       Ŕ Ŕ Ŕ Ŕ ˙ţ˙˙ţ?˙ü˙đ ˙ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ   đ ?ü ţ ?ü       ý i509  	D         0 0          Ŕ Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ đ ř ?ü ţ ˙ ˙Ă˙ĂÇ˙ăĎ˙óß˙ű˙ ŕ ŕ ŕ ř ?ü ţ }ž        Ŕ Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ đ ř ?ü ţ ˙ ˙Ă˙ĂÇ˙ăĎ˙óß˙ű˙ ŕ ŕ ŕ ř ?ü ţ }ž      ţ i510  	D          ˙˙˙˙˙˙              ˙˙     0 0       q  / p  H ! K ! DA DA Bŕ ` @  q   h Ŕ 0  `  @     př  ` A &     g  ) 0  0  ; , ;  = l ŕ^ ?ü| y˙ gđ ßţ !w˙Ŕ ˙đ żč 9ďě n{ ßţ żţ| đ Ŕ  <     _             `     p @ đ 
        š      @  ­    Ë   ŕŹ    t   p  x ? { ?   ŕ˙ ü˙ ˙ ˙ ˙ o˙Ŕ˙đ˙
ř ˙ü ˙ţ ˙ţ˙˙
˙ţţřř ?ŕ  >      ˙ i511  	D          ˙˙˙˙˙˙  ˙˙         0 0       [° ˙ü       @ >     ŕÁ!Č$I)ő×ëŻ	  @Ŕ   P´ %˙ü ˙ţ ńű ńűŔxŔŔţŔţń˙üń˙ü˙ţ|ř>xđpŕaĂcĆ @`ŔŔ    !˝   ? ? ?  Ş    A° ˙ü ˙ţ ˙ ˙˙Ŕ˙ţ˙	üř?ůĎóóçĎ÷ď÷ďđŕŕŔŔ      i512  	D          ˙˙      ˙˙˙˙˙˙    ˙˙˙˙            ˙˙             0 0       UĄ ˙  ţ~ " C Â ü ˙ 4ĆČŔ|p˙ŔŔ0!@˙ ?Ŕ Ŕ ă ˛ x˙ °  ŕ    Ś ţ < x ˙żđâ@Ŕ    =Ş  ¨     @ * E    @  ŕ  @    Ť   Ş   E` *­    ­  < ˙ ř080ź    ?Ž B A @    < 8 @  Ŕ Ŕ  ~ ˙    Ĺ ?   ďü xĄ    Ě   ˙Ŕ ~ p~    [Ą ˙ 	˙ ˙ţ ?˙ ˙˙˙˙˙˙ţ˙ü˙ř?˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙ ˙ţ      i513  	D             ˙˙    ˙˙˙˙      ˙˙˙˙˙˙                  ˙˙    ˙˙˙˙              ˙˙      ˙˙  ˙˙           0 0      WŚ     !2"# 1B$DB$ 0#DCD4D2 5CDFDdD4S 3BFtvwgGd$3 PfDvwvwgwgDf Pfwvwvwgwgwf Pfwhwf P P  Y Y R% PŞť¨ťŞ  ĽşŤťŞťşŤZ 	RŞŤťşťĘÝ%  ŐÍşŤÜ] RÝÜĚÍÝ%  ŐÍÝ] RÍÜ%  ŐÜ] "U" "  D JT¤ PŞę PŽę  U     ?đ ˙ü ˙ţ ˙ ˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙Ŕ˙˙˙ ˙ţ ˙ü ř ?đ ŕ Ŕ   Ŕ ŕ ŕ ŕ      i514  	D                ˙˙˙˙˙˙              ˙˙         0 0         `   H@$@ ¨ČĐĐ					°Đ		
P0 @@@?ţü
  ńđ   Q  ŕ p 0   0     ` ` ` ` ` @˛ `    i  Ŕ@R`Ŕ Ŕ ŔŕŔŕŔŕŔŕŔŕŔŕŔŕŔ/ŕŔoäŔďć@ďç ďçďçŔďgŕďgđ?îgř?îgř?îgř  Ŕ    m    )                          @                   @Ý      @ Ţ    ô @`Ŕ`      ŕ đ ř ř@?üŕżýđ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙ř?˙ü˙ţ˙ţ˙ţ?˙üńđŕŕńđ     i515  	D      ˙˙  ˙˙˙˙˙˙          ˙˙      ˙˙˙˙       0 0       ˙
űß˙ż˙ßű˙ţ˙ź˙űř>˙ńďżń˙ń˙ń˙ţń˙ďń˙ńű˙Ń˙żń˙ń˙ţń˙ń˙ďń˙ń÷űá˙Á˙ß˙˙ž ˙ü {ü üü<xěx<w˙ř?˙đ˙   X   @   @   @       @        @          @                             0 ( H$ " !  °,h@       Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Đ 6Ř vÜ ÷Ţ ÷ß äO Â  @ @ 
     í     @    ˙˙˙     i516  	D ?             ˙˙              ˙˙˙˙˙˙     0 0       &Ĺ 0 Ä 6ř Ŕ ŕ 	ŘŮô     "Ĺ Ŕ ŕ  0  mśŕ    É  	  d`Ŕ $&Ą    ,Ę 8  ˙đ  ˙
äŰmźI˙đ    Ń ?ü­    	ä $@    9Ĺ đ ˙ü ?ü ˙ŕ˙đ˙ř˙ü˙ü˙ü˙ř˙đ      i517  	D               0 0       0Ş    ř  ř ˙ŕ_˙ř˙ü_˙ř˙ŕ°    ś pÉ    0Ş    ř ř ř ˙ŕ_˙ř˙ü_˙ř˙ŕ°      i518  	D          ˙˙      ˙˙˙˙       0 0       (° 	ŕ đ ˙đ˙ü˙ü˙đđ ŕą    ź  ( ť    ź  P ť    (° 	ŕ đ ˙đ˙ü˙ü˙đđ ŕą      i519  	D          ˙˙˙˙    ˙˙      ˙˙˙˙˙˙     0 0       ^ Ŕ           ˙ř$$?óţ|*B*B?çü	$$˙ř    <                    H     " B  @ (   ĂřxĂřx áü<áü< ĂřxĂřx    +­    
         e Č  $  : z <@ *    ˙ř˙ü˙ü?˙ü?˙ţ?˙ţ?˙ü˙ü˙ü˙ř      i520  	D ? ˙˙˙˙      ˙˙      ˙˙˙˙˙˙                   0 0       =% B  `  [0  nŔ @ Q A    Ď    z % P `   d   A  $ H  @         @         Ŕ    z @    @  > ? ? Ŕ @ŕ đ ?ř ü ţ ˙ ˙ ˙Ŕ ˙ŕ ?đ ŕ Ŕ ¨    @    ( " Q   p   $ , , Ó    /   ¸ @     (       t  2 A @ Ŕ@     @       @       @  4 D D Č  ŕ Ŕ    % w` ÷` ˙č ř ˙ř ˙ü ţ ˙ ˙ ˙Ŕ >˙ŕ l˙đ H˙ř ˙ü ţ ?˙ ˙ ˙Ŕ ˙ŕ ˙đ ˙ř ˙ü ü ?ü ü ü ř ř ŕ Ŕ     	 i521  	D  ˙˙˙˙        ˙˙    ˙˙˙˙˙˙  ˙˙                       0 0       ~   B     0č 4    `  @ ` 
     c   @ 0 ( @      d    0 @    
  
Á  	  T  `         @ 	     e   B    `A    Ŕ    @       H H  B    Ŕ    3      	 ˘  é Đ@       b    @         ŕ  ř ň ä á ú?Ŕ?Ŕ ŕ ?đ 
ŕ (Ŕ @¨     @    [­   Đ   0  ń    @	 Ŕ a  @  4 D D Č  ŕ Ŕ    .Í     @     (          4Ć Â0pÁŕq;ű(˙ ˙˛ ˙ö ˙ü ˙ü@?˙ţ@?˙ ?˙?˙Ŕ?˙ŕ?˙đ˙ř˙ü˙ü˙üúßüşĎü*Çř
Cř ŕ  Ŕ     
 i522  	D            ˙˙˙˙˙˙    ˙˙       0 0       n ü  Z   @ !ü  &  8 ŕ (   &  !ü  @      0 ` )ü   ř  &s  GŻ #Ţ  3` )           @    ü    (   ŕ   Ŕ ŕ đÍ    $ |   Ŕ üŔ ?  Í    L­ B @  Ŕ Ŕ ?˙ŕ ˙Ŕ ˙ @ Ŕ Ŕ 8Pŕ !Ŕ q s@ ˙Ŕ ˙Ŕ ˙ ˙ ü    n ü ˙ Z˙ ˙Ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ˙đ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ˙đ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ˙Ŕ ˙ ˙ ü      i523  	D          ˙˙˙˙    ˙˙˙˙˙˙  ˙˙        ˙˙       0 0       { 
đ çL Ă `    T@ŕ       0 ` (   &  !ü  @      0 ` )ü   ř  &s  GŻ #Ţ  3` )           @    ü    3 0 o< ö ~w Ď ő	 Ŕ  Ŕ   üÍ     ő    -    0ä 
ö  ˙ ţ řŃ    L­ B @  Ŕ Ŕ ?˙ŕ ˙Ŕ ˙ @ Ŕ Ŕ 8Pŕ !Ŕ q s@ ˙Ŕ ˙Ŕ ˙ ˙ ü    } đ ˙ü ˙ ˙ ˙˙˙Ŕ˙Pŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ˙đ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ˙đ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ˙Ŕ ˙ ˙ ü      i524  	D          ˙˙      ˙˙˙˙˙˙     0 0       e Ŕ 0     ?  *˙Ä ˙â ˙â ˙ň ˙đ ˙đ ˙đ ˙đ ˙đ ýŕ ˙ŕ ˙Ŕ  ?    )ś  $  Đ ě Ř  D @    Ý ˘    c Ŕ 0     ? 2 ˙Ä$˙â˙âĐ˙ň ˙ńě˙đ ˙đŘ˙ń ˙öD˙ŕ ˙ŕ@ ˙Ŕ  ?      i525  	D ? ˙˙          ˙˙  ˙˙˙˙˙˙                         0 0       r Ŕ 0        @ @           @  @ @ @ @     q  @ @  @ @                     `     i Ŕđřü? ţ ü? y @B  ŕ3ř?üŔřĆŕ ! @ `~ đ ü? řđŕ    4Š Ŕ `   ŕ       Ś    &ą < & :x ^Č ^ř ,ô ě Xą    +˛  ŕ   @    Ŕŕ =ü­    u ŔđŔřŔü?ŔţŔ˙˙ ˙ ˙ ˙ŕ˙ř?˙ü˙ţ?˙ü˙ř˙ŕ ˙ ˙ ˙ţü?ŔřŔđŔŕŔ      i526  	D             0 0       ˙ţ  Ŕ Ŕ ` <  |˙ţ0äÄ    ˙ţ  |?@ü? üx 
 ˙ţ  > ~ ~ <  ˙ţ 
     ˙ţ  Ŕ Ŕ ` <  |˙ţ0äÄ    ˙ţ  |?@ü? üx 
 ˙ţ  > ~ ~ <  ˙ţ 
       i527  	D             0 0       v  ˙  ˙ 8 ˙   @ Ŕ 8Ŕ 8˙@ ˙@D ˙ÄD ˙D ˙ Ŕ   8 8 ˙#˙"˙"˙   v  ˙  ˙ 8 ˙   @ Ŕ 8Ŕ 8˙@ ˙@D ˙ÄD ˙D ˙ Ŕ   8 8 ˙#˙"˙"˙     i528  	D          ˙˙˙˙˙˙     0 0       ` ˙Uţqćqćqćqćqćqćqćqćqćqćqćqć!B!B!B!B!B!B!B!B!B˙ţ    Y Tqăqăqăqăqăqăqăqăqăqăqăqă{Ţ÷ź{Ţ÷ź{Ţ÷ź{Ţ÷ź{Ţ÷ź{Ţ÷ź{Ţ÷ź{Ţ÷ź{Ţ÷ź    ` ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ      i529  	D                ˙˙     0 0          @ "& Q ę DĆ "˘   Ć@ ž  Ł ˘ âD ž"   a    t@     A A A "        Ŕ  ŕ p 8     AŔ @ŕ @p 8     ü ţ w  Ŕ ŕ | & . >     ľ      Ż       Ŕ #ć qú řú |ţ >ž   ÇŔ ˙ŕ çđ îř ţ| ž>  	 ˙ ţ ˙ ˙ wŔ ŕ ü ţ g o  >      i530  	D          ˙˙˙˙˙˙  ˙˙           0 0       } ř       @ @      1 A A   (1 H` |( HcŔń("0HaŔ0  Ŕ@ 80  â     | ř ü` ý` ý  ?ýŔ ý ˙ń óđ Âđ ?ŕ Ŕ â ú ţ Ě ü áü < â ÝĚ < ýĚ ůü ?l Ě ü     < p     p `      p `Ç    kĽ  <Ŕ <ŕ0 ŕp đĐ ń° 3p Đ ° p Đ ° p ŕ Đ ¸ Ŕxřđ˙ŕ ?ăŔ ˙ ˙      ř ţp ˙đ ˙đ ?˙đ ˙đ˙đ˙đ˙ř˙ř˙ř˙ř˙řq˙řa˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙đ˙ř ˙ř˙đ˙	ŕ ?˙Ŕ ˙ ˙       i531  	D            ˙˙˙˙    ˙˙˙˙˙˙     0 0        0    8 ` ` @`  @  A  F  Ä       @  	    ř  q  ` @ @ ř  ˙ü@ G @ G @ ˙ü    q                 @     @       ?˙ţ   _ @ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ ?ŕ ŕ ˙đ ˙ř ř |       ţĄ    ­ ś ?˙ř8ă˙ř?ă˙ř8ă˙ř?˙ř     0   : 0 ` p @`đ @đ Ađ Fđ Äđ đ żđ ˙đ ˙ř 	˙ü ˙ţ ˙ţ ˙  Ŕ ŕ ŕ ŕ ˙Ŕ ˙˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ţ     i532  	D              ˙˙˙˙    ˙˙      ˙˙  ˙˙           0 0       { ?Ŕ ` ÇŔ   Č 0  Î  F ŕG ŕa !   !Ŕ p` q  s<  ü0 ţ ň Ŕ  `      Ŕ    a  8 x `           Ŕ    Ŕ ?p 5Đ 0 ` ŕ     4  @     
  @           ¨ĺ     Pĺ    JŠ 0          Ŕ Ŕ J  Ŕ   @    Ń ` @       { ?Ŕ ř ˙Ŕ ř ř ř 0ü  ţ  ~ ŕ ŕ *? ? Ŕ ŕ q˙ŕ s˙ŕ ˙đ ˙đ ˙ř ˙ř ˙ř ř ?ř đ ŕ Ŕ      i533  	D          ˙˙˙˙˙˙       0 0       m Ŕ ` ŕ `      @ @ @ @ @       @    ˙ŕ >     S      ? ?Ŕ ?Ŕ ?Ŕ ?Ŕ Ŕ ŕ ˙đ ˙đ ˙ü ˙ü ˙üĄ    AŚ ` p p x 8 8 8 8 <     Ŕ Ŕ     o Ŕ ŕ ŕ ŕ đ ?ř ?ř ü ü ü ü ü ˙ţ ˙ţ ˙ ˙˙Ŕ˙ŕ˙ŕ˙ŕ >       i534  	D            ˙˙˙˙˙˙     0 0       r ˙˙ŕ>  ŕ < ŕżü 'ç čŕ           @, ^ 
¨Ż  Q ŕ ř      c ÁđŔ˙ŔĂ˙ 
@ŔŔ Ŕ ŕ ŕ h 
đ p đ đ ?ä đ ?ŕ ?Ň   WP ĎŽ ř    ­    ˘ 0     | ˙˙ŕ˙ŕ˙ŕ˙ŕ˙ŕçŕď÷ŕ đ ř ř ř ř ř ?ü ?ü ?ü ţ ţ ˙ ˙ ˙ ř        i535  	D            ˙˙˙˙˙˙     0 0        @$đ@<đ<đ <đ <đ <˙ä $đ <đ <đ<đ@<đ @< $ $đ <đŔ<đ <đ <đ <˙ä $đ <đ <đ <đ <đ < $ $đ <    ßˇŔÚˇŔěoĂößĂř?Ăţ˙Ă 5ţ˙Ăř?ĂößĂěoĂÚˇĂŢˇĂ ĂŢ÷ĂÜ÷Ăč/ĂößĂř?Ăţ˙Ă &ţ˙Ăř?ĂößĂîďĂÜ÷ĂŢ÷Ă ĂŢ÷ĂŢ÷Ă?˙?˙      	  Ŕ  ` `  Ŕ 	   ! ! `˙~`  !  	  Ŕ  ` `  Ŕ 	       `ţ`       ß÷ä˙ß÷üđ˙?˙?˙     i536  	D ?           ˙˙˙˙˙˙  ˙˙˙˙        ˙˙         0 0        ?ŕ 1` 8ŕ ˙ ˙fU\ ŞŹ DL  U\ ŞŹ U\ ŞŹ U\ ŞŹ U\ ŞŹ U\ ŞŹ U\ *Ź                   ˙ ˙   [   Ş  UP  D@ Ş  UP Ş  UP Ş  UP Ş  UP Ş  UP *  PŽ    v   	 3030                         l đx  đ @h  đ  x @đ h đ đx đ đh đ x đ h đ x đ h đ đx đ đh đ }x    f                             K đ ° đ đ ° đ đ đ đ đ đ đ đ đ đĄ    W ?ŕ ?ŕ ?ŕ ˙ ş˙˙?˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙     i537  	D   	          ˙˙˙˙˙˙  ˙˙˙˙    ˙˙                               0 0         "" ""  " " " 03 " 03D3 "3CD3 " "03D3 " P 03D43 P " 3   " 3cf3S 3f63 U " cf63QU " 3f3U0 3PU0 " 3w3U0 " 0sw73 3 0sw73 "03w383 "3s783 !0383 "33 "!03 Q03 "U" ""  "" " "     -O˙ň ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţŔ˙ţŕ˙ţŕ˙ţŕ˙ŕ˙Ŕ˙ ˙ ˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙˙ ˙ţ ˙ř ř ˙ţ ˙ţ ˙ţ ˙ţ      i538  	D          ˙˙˙˙˙˙      ˙˙             0 0       w  ? O 	0ŕx ŕ˙˙ř˙ Â 7` pŔp	q	qqqqppŔp` p?Ŕ  ˙ţ ˙˙˙ţ    * @ ŕ đ ř ` ` ` =ŕś ŕ    # 0 ` p p p   ž    < ü ˙ŕ                 @   Ł    F­  4ßř?ďř{öxwöxwŰx[x[x~×řˇř?ďřßřŔ?ř˙đ˙ř ˙đ    F  ?Ŕ ŕ 0˙ńŕy˙űŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ţ°˙˙˙˙˙˙ţ      i539  	D ?             ˙˙˙˙      ˙˙˙˙˙˙  ˙˙         0 0        ŕ      A @ŔE˘0GE˘C@GA $ ťwřťtŕ$GG`h03 Ŕ@h @  Ŕ 	˙	0 
 Á ˙ ˙   w    Ŕ    @   @Ŕ    @  `   @      ? @ Ŕ @ ŕ ˙ţ    Y Ŕ 0  ( #Ä 
"D"D`#Ä0(P
G0DŔD G (P 0 `  P ą    d @   
P ( (@
P  (P@ ř (Sű   @   8 P ť Ü ŕ ŕ ó= ˙    ž @  ˙   Ľ    â      ŕ ř ?ü ?ü ţ ţŔţ?đţřţřţ˙ü?ü˙ü?ü˙ř˙ŕ˙˙˙˙ř?˙ř˙ř˙ř˙˙˙˙˙	˙	0ŕ Áđ ˙     i540  	D          ˙˙˙˙˙˙    ˙˙         0 0        ˙ň  ŞŻö_ţŞ	˛QUXU UZPw ]UXq˙ŕ@ ˙ Č ť 	°  đ đ : gŕ Č  
Ň Ń 	?ŕŕxŔ<Ŕ    ; 	˙ŕ UP @ @   ´  ŕ @      @      î    ^ 
  pU@Ş§ŕ ˙÷ŕ*ŞĽ ˙÷ŕ Ş§ŕ ÷ 0 @ @ đ 	  ŕ (  . N      ˙ň ˙ţ˙ţ˙ţq˙ň}˙đ}˙đ˙đ˙đ}˙đq˙ŕ˙Ŕ ˙ ř ű đ ř đ đ ?đ gŕ Ďř ü ţ ˙ ˙˙ŕŕxŔ<Ŕ      i541  	D                ˙˙˙˙˙˙    ˙˙˙˙      ˙˙           0 0       f        Č  P´@˙8 űŘ ˙Č űř űČ ˙Đ   ŕ            ţ @ ˙ xŔ    { ˙ A ]     ˙ŕ 0&Ü G$F $G$6ż<0  _Ŕ	 P P Ľ }  ` `    ˙ŕ    N :   @ @ @ @ @ @ @ Ě     2  2 0   Z     Q   
    
P 	
Ş@     	 P  @ @ @ ú    K "   "            @    @ @ @   @ @ @˘    &        ü ś    (      0ě űŔ   Ś     ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ŕ˙ř?˙ü˙ü˙ü˙ü˙ü?˙ü˙ř˙đ˙Ŕ˙đ ˙đ ˙đ ˙đ ˙đ ˙Ŕ ˙ŕ ˙ŕ ˙ŕ      i542  	D               0 0       [ ţ?ŕ ţ?ŕ     ŕ  đ  đ ŕ ˙ŕ @ ˙ " > A     E  üŔ ,üŔüŔüŔüŔüŔüŔýßŔřŔűďŔřŔüŔ ~?  >    ^ !ţ?ŕţ?ŕţ?ŕţ?ŕţ?ŕţ?ŕţ?ŕţ?ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ ˙ ˙ > >        i543  	D            ˙˙˙˙˙˙     0 0       f !ř?x'x'x'üŔüŔüŔ<CŔ?˙=ř;˙ýř;˙ýřKűĺüKűĺüKűĺüKűĺüK˙ĺüOügüüüüüGŔ|GŔ|GŔ|GŔ|Ŕü    J    @                       4Ź 8 0 0 0 0 0  0  0  0  0  0     m !ř?ř?ř?ř?üŔüŔüŔüŔ?˙ř?˙ř?˙ř˙ü˙ü˙ü˙ü˙!üüüüüüüŔüŔüŔüŔüŔü       i544  	D          ˙˙˙˙˙˙       0 0        Ŕ 0  9   _  0 p ŔČ a 3    @  @ Ŕ`0 đ A   @ ˙   @˙   w Ŕ đ ü ţ ˙ ˙ ˙Ŕ  ?0 x ü ţ ˙ !Á˙ @˙ @Ŕ ?ŕ ŕ đ đ  đ ` 8   ˙     Bľ @ ` p 8 < > ?  ĎŔ ăđ x|   ˙     Ŕ đ ü %ţ ˙˙˙ß ˙đ ˙đ ˙ř ˙ü ˙ţ ˙ ˙˙Ŕ ˙Ŕ˙ŕ˙đ˙đ˙ř˙ř˙ř ţđ  ? Ŕ ˙ ˙˙Ŕ˙    ! i545  	D            ˙˙˙˙˙˙     0 0       @ ° Đ *¨ P 
  P *¤ J   N@ '   H $    o   	 @           p  p     @   P *¨ 5X *¨ X ´ â á 0 @    Č ä â á 3Î ź@ ü@ ü@ x  H P H 0 H  H  ü      ü    CĽ     @       0 @            Ŕ đ đ ?ř ?ř ?ř ?ř ?ü ţ ˙ ˙ Ŕ ?ŕ đ ř ü ţ ˙ 7˙ ţ üŔ üŔ üŔ xŕ x p x 8 x  x  ü  ü  ü  ü     " i546  	D            ˙˙˙˙˙˙     0 0       ~ @            T  PV @
 Ŕ  , T ŞŹ \ ¸ Oń 'â   p        v   Đ č ô :č ô :č ô &/¨ UŔŻ¨ żőŔ ?č Ń ŻŠQ ŞĄA  Ŕ `
 ?ô  wř wř         
 Ń     ŕ đ ř ?ü ?ü ?ü ?ü ?ü ?ü ýŔ˙ţ ˙ŔżýŔżýżýżýżýů Ďó ç p ?ü đ   ÷ţ ÷ţ     # i547  	D            ˙˙˙˙˙˙     0 0       e    P       @  8  
   @* ŕ `˙ ! Ŕ Ŕ     l `   \ 2   @ 8 , Ć ă ń xŔ <` 0   ř ň! ŕ  0@     6 @       @      @¤    j ŕ đ ř | >   Ŕ ř ü ţ ˙ ˙ Ŕ ?ŕ đ> ř ř˙ ü˙ ˙á ˙ŕ ?Ŕ      $ i548  	D            ˙˙˙˙˙˙     0 0          ( ŕ  `  	   H @ H @ 	@~>Ŕ><@ @ @ @ @@Ŕ  Gâ @ A     ř    a Ŕ  Ŕ   @           8 < < < < < < < ¤     ŕ 8 ç
 ůţŔ˙`˙`˙°˙°˙°˙¸˙ ¸Á ÁĂý˙ý˙ý˙ý˙}ţ |~ ţ ţ 8 ?ü >| ř ř     ŕ ?ü ˙ ˙˙Ŕ˙ŕ˙đ˙đ˙ř˙ř˙ř?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü˙Ř˙ ˙ ţ ţ ţ ?ü ?ü ř     % i549  	D          ˙˙˙˙˙˙       0 0        ŕ  0 @ á @ @         	  	  !	  	    @ @ @ "   A  	  @ @     @     D    Ŕ @        @ 
      P `  @     @      	   @   
      ŕ  0 @ á ř@ Ä@ â  â  q  1  	  	  !	  	    @ @ ˛@ â â Ç    @ @     @      & i550  	D                ˙˙˙˙˙˙      ˙˙     0 0          G5Ŕ *° "]DŤp v  ŕ           Ŕ     \   p " D   ü   @  ˙č Ş° ˙ŕ      
 @   T â    S    8 p ŕ Ŕ Ŕ     8 p ŕ ř ?đ č     B  đ ˙ ˙ŕ ˙ü ˙ć ˙ä ˙ü ?ř ř đ đ `¨ U@    (Ŕ Ŕ Ŕ  0            ?Ŕ ?đ >ý|˙đř ˙đ ˙ŕ ˙ü ˙ ˙# ˙ţ ˙ţ ˙ü ˙üĂ˙řÇßřđ  p >0 | ř đ ü ?ü ü ˙ü ˙ř ˙đ ˙ŕ     ' i551  	D          ˙˙˙˙˙˙     0 0       j ˙ţ ˙   ŞŤ   ˙ü ü %    "  D    /ü    @ !  c ü 	  $ ( H P 0    V ˙ü UT ˙ü ü ˙ě ˙Ü ˙¸ ˙p ţŕ Ŕ ˙ ß       0      l ˙ţ ˙ ˙ ˙ ˙ţ ˙ü ü %˙ţ ˙ţ ˙ţ ˙ü ˙ř ˙đ ?˙ŕ ?˙Ŕ ?˙ ˙ ü   < 8 x p 0     ( i552  	D            ˙˙˙˙˙˙     0 0          
 ZŔ| !!!#$A$A$A$C¸ÄB¨*Gü;HHHH|ü   ŕ @ @          !< @              0!T`  @  Ŕ   `Ŕ  >^  0        a 
Ŕ@ Ŕ Ŕ Ŕ Ŕ Ă Ă Ă Ă   ü ü ü ü ü ü ü ü ü         .Ŕ|˙ŕţ˙ńÁ˙ń˙ń˙ó˙÷Á˙÷á˙÷á˙÷ă¸÷ăü?ç.ü?ÇďţÇď˙ď˙ď˙ď˙Ď˙˙˙˙˙>ţ đ p `       ) i553  	D            ˙˙˙˙˙˙  ˙˙         0 0       ˙ ˙ţ˙    Ŕ @ ü      ˙ţ  ü UT ü @ @ @ @ @ @ @ ü <x Ŕ        üł     =Ľ ü ü ü ü ü ?ř <x <x 8 <x >ř ?ř    Ő   Ŕ      ˙ ˙ţ˙    Ŕ Ŕ ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ü UT ü ü ü ü ü ü ü ü ü <ř Ŕ       * i554  	D            ˙˙˙˙˙˙  ˙˙         0 0       ˙ ˙ţ˙    Ŕ @ ü      ˙ţ Ŕ @ @ @ @ @ @ @ ü <x Ŕ            ?řŁ     =Ľ ü ü ü ü ü ?ř >ř <x 8 <x <x ?řĽ    Ĺ   Ŕ  Š    ˙ ˙ţ˙    Ŕ Ŕ ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ü ü ü ü ü ü ü ü <ř Ŕ           + i555  	D ?               ˙˙˙˙˙˙            ˙˙     0 0       \˙ŢÍ˙Ý˙ÝM˙˝˙Ýľ˙ß;˙í{˙ís˙Ŕ˙ü ř đ  p p 0   ŕ ř ţ    ~ !       @  @  Ŕ   Ŕ @ Ş   ŕ UŔ (  Ŕ / _ ( .xP Tü  9ţ@
ü 2Ťđ ý@ ¨   T         
    ?> Ŕŕ *ŞńUGŞ§U
WęŤď?ţL <  ?~ /Ă A   @ 0 ř Ŕ x  ˙˙?Ŕ˙   XĽ /ž U˙ŕ p    Ŕ ˙Ş Ô ŕ ˙Đ@ ˙  Ń  ?Ş @Ŕ 0 T  @    ­ U Ş UPŞ  TÁ    Ä   ŕŔ üą    C´˙˙˙˙?˙˙ďĂ˙Á(˙řp˙üŕ?˙ţ@˙ü ?˙đŔýAř ¨˙ ˙ŐU˙    , i556  	D  ˙˙˙˙˙˙               0 0       \ ˙Ŕ˙Ŕ ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ ˙đ ˙   ?  Ŕ    g     ˙ŕ                 ŕ  ˙ţ ~ | | ř ŕ Ŕ Ŕ 0 ü      ŕ  ˙Á    y ˙ŕ˙ŕ ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ ˙ţ ˙ţ ü ü ?ř ŕ Ŕ Ŕ đ ü     - i557  	D ?                   ˙˙˙˙˙˙    ˙˙˙˙       0 0       }   p L [KŔđ |< GÁ @x9 @ @ u @  @  @  @  @  @Ő @9 @ @ @Ĺ @ = @  @  @  @  0    đ  đ    w  "         
¨ .U 
Ş  UB 
Ş  UB 
Ş  T 
ŠD T* 
ŠT T( 
Ş UB 
Ş  UB Ş  UB Ş¤ @      t 
 P  * RP  * * P *Ş UB *Ş  UB *Ş  U@ *Ş  T *ŠT T¨ *Ş T *Ş UB *Ş  UB 
Ş  UB 
  @      Ŕ | Ŕ x Ů    h                         ŕ  ţ ˙ Ŕţ (ü  ř đ* ŕ Ŕ        Ć š      ?đ ˙ ˙đ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ŕ˙ţ˙˙ţ˙ü˙ř˙đ˙ŕ?˙Ŕ˙ ˙ ţ ü     . i558  	D ?           ˙˙˙˙        ˙˙    ˙˙˙˙  ˙˙         0 0        |  x ?$ CD á	1b~§áâ$!˘",!ŞD4!Şř-ĄŞU!Şä!Ş¤!˘ô!Ş¤!Şô!Ş¤!˘Šô!Ş¨¤!ŞŠô!˘¤!˘ô!˘¤!˘ô!˘¤!˘ô"˘¤$˘ü(ă´0>řçŕ    p ŕ Č < x( đSŕ §@ NŔ Ŕ ;Č Đ w  w wP v wP v wP V WP V wP v wP v wP v vP t p@    z   ( P ¨ P   @                              Ţ Ţ Ţ ^ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ţ Ü Ř Đ Ŕ    V¤ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @    *˛              = | ü ü ?ü ü ˙˙á˙?˙ă˙˙ç˙ç˙ďČ˙ţ˙ü˙	ř˙ü÷đ>řçŕ    / i559  	D            ˙˙˙˙    ˙˙          ˙˙     0 0       ŕ     +  ř  	  	  řů    ř? Š! Š! ¨Š- Ż% Š)@% Š
% Š%`Š-P
!PŠ!0Š!(!(!!!?
?
!
!˙˙    v Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ    u p p p p pP pP P Pp P p @P @pP Pp  p  Pp Pp p p p p p p p p p    j                              JŠ                      ŕ ŕ ŕ ŕ řŕ řŕ řŕ ř˙ŕ ř˙ŕ ř˙ ř˙ ř˙ ř˙ ˙ ˙@˙ŕ˙ŕ˙`˙p˙p˙0˙8˙8˙˙˙˙˙˙˙˙˙     0 i560  	D              ˙˙  ˙˙˙˙˙˙       0 0       d [đŔ     x    ˙ü   řrž 
˘˙Ę¤  *ź  *Ź  *ô  *¨  +Đ  *   /@  *!=   * <çô @ ( ˙Đ    ˙ŕ    Q            @         ˙Ŕ    M đŔ Ŕ x@ @˙ý@ @řu@ )5@˙Ő@ßŐ@Ő Ő Ô T Đ ýP âŔ çŔĽ    3š   ř  @ŕ  ů 
    =ďŔ    t öŔ ?˙ŕ ˙ŕ ˙ŕ˙ŕ˙ŕ˙ţ˙ţ˙ü?˙ü?˙ü?˙ü?˙ř?˙đ?˙ŕ?˙Ŕ?˙?˙ ?˙ţ ?˙ü ˙ř ˙đ ˙ŕ ˙ŕ     1 i561  	D ?       ˙˙˙˙˙˙                  ˙˙         0 0       }  8`˙Ŕ                    ˙ü ŕ    i  /:ŕ˙ď¸%j?ďÚ+ú?ďş%j?ďş+ę˙ďşUę˙ďş!j˙ďÚUú˙ďşSj˙ďÚŤú˙řz˙Ç ˙ü @    n  @ d ! e A d A e AŞe Ad !Şe AŹd !T`  8a  ˙ż˙    % Ŕ Ŕ @ @ @ @ ŔŇ         Ö    [¨  Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ đ ˙Ŕ ˙ŕ ˙đ ˙ř    B  ?ŕ˙ü˙ţ˙˙˙˙˙˙ßÁ˙Ŕ ˙ŕ ˙đ ˙ř     2 i562  	D          ˙˙  ˙˙    ˙˙          ˙˙     0 0         @   `      (  $ " @! '`Ŕ@` P`h	8HČ
¨c	YŻ0PŔŘ)p6 Ř B` !  
 `     Q  Ŕ ŕ đ ˙ř ˙ü ˙ţ ˙ ˙˙ţ ?ř ŕ Ď ć p 0 ś    j       @   ~ 	ř ŕ0đđ Ŕ ? @ü  đ` Áŕ ŕ  ~ ř ŕ     1ˇ    p Ŕ  @  p Ŕ   ˘    9Č   @     Č ä r  9         Ŕ ŕ đ ˙ř ˙ü ˙ţ ?˙ ?˙?˙Ŕ?˙ŕ˙Ŕ˙ŕ˙đ˙ř˙ü˙ř˙ř˙ř˙ü˙đ˙ř˙đ˙đ˙đ ˙ř ˙ŕ ?˙ ţ ř ŕ      3 i563  	D          ˙˙˙˙˙˙        ˙˙     0 0       n  h $  X ŕ  P @(   
  @#dŁá\&?řh Ą Bf8 !8Č  L 0 @Ŕ C Ě p    7  x *Ě > ó ĎĂ<ŔáóŕđĎ0 ř|ř |3ŕ > ˝    b 0 Ŕ Ó  h0 4Ă  0Ŕ L   @x #Ůŕ     0  đ đ OŔ ? < 0    /Ĺ  Ŕ  s@p 9Ŕ Ç | 0       v  x ü ţ ß˙ ˙˙Ŕ?˙ŕ˙đ˙ř˙ü˙ü˙ü˙ţ˙ř˙ř ˙ü ˙ř ?˙ř ˙ř ˙ü ˙đ ˙Ŕ ˙ ü p     4 i564  	D    ˙˙    ˙˙˙˙˙˙          ˙˙      ˙˙  ˙˙     0 0         ? 3 0 0 0 0                8 0 0 p p ` ` ` ŕ ŕ    e  Ŕ 3ČĚÎđxđâpHđ gâgđ?yâgđ0|pâhđđŔyđâ°ŕŔpđĆy°ČŔxđ`0    q f˙ř˙üŕ?ŔŔŔáĂĚŔŔáĂĚŔŔáĂĚŕŔáĂĚŕ3ŔáĂCĚŕ3ŔÁĂ	CĚŕ3ŔŔŔ˙˙˙    { 
Ŕ Ŕ`0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 03Ě?ü    H   ŕ ` ` ` ` ŕ Ŕ       Ą      ? ? ě˙ ŕ ŕ     5 i565  	D          ˙˙˙˙˙˙    ˙˙         0 0       }  s Đ` Đ HĐ˙ŔĐ @Đ `Đ `Đ `Đ `Đ `Đ `Đ `Đ pĐ pĐ hÜhĂdüküÄ ë˙    D ˙   ˙    h  / +ŕ .đ @/ł˙+ç˙.÷U/ˇ˙+çU.÷˙/ˇU#ç˙÷U/ˇ˙ /çU#÷ů<wú8 ŕř  ř ř ř x 8    A   @   Ş @ Ş  @Ş   Ş @ Ş ü­    ´    Ż ~ ~       ˙ŕ ˙đ ˙ű˙Ŕ˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙đ˙đ˙ř˙ř˙ü˙ü˙ü ˙ü ü ü ü | ˙ ˙ ˙ ˙     6 i566  	D          ˙˙˙˙˙˙    ˙˙         0 0       q %˙ŕ   ˙ü 	  
ů 
 
 
 
˙ý 	 M@@  -śĐ  Űh m´ ˙ü     H  (    ˙ü    d ˙ŕ  :˙ř  lB Cş Cş   ˙ţ d˛ ż˙ŇI ß˙ŕé$ď˙đô@ô đ ÷˙ř w˙đ 7˙đ ˙đ ˙đ     P   ¸ @ @   @    ˙ř    @       ˙ř    Ą  8 8Ö     ˙ŕ ˙ř ˙ü ˙ţ ˙ ˙ ˙ ˙ ˙ ˙˙Ŕ˙ŕ˙đ˙đ˙ř˙ř˙ü˙ü˙ü˙ü˙ü ˙ü ˙ü ?˙ü ˙ü ˙ü     7 i567  	D        ˙˙˙˙˙˙          ˙˙          ˙˙    ˙˙          ˙˙  ˙˙     0 0        ?˙ü                                                      ?˙ü     ˙ř H x h˙ř˙řđřHđř˙ř˙ř˙ř˙řP_˙řPß˙ř˙ř˙ř    y  3 	˙ ď÷óŕ ď÷ó čó ď÷ó ď÷ó ď÷ó ó ÷ó  ÷ó  ÷ó  ÷ó ď÷ó  ˙˙    ˙˙Ŕ  Ś    Š ŕ  Ą   §    ą ŕÍ    %Ě ŕ       
  	  ŕ    Ń @Ž     ?˙ü?˙ü?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙˙˙    8 i568  	D          ˙˙˙˙˙˙       0 0       x 8 D GÇř   Ýâ " ă   O ]ţ- ˘9ăřą á˙âÁ     0 0P `˙!Ŕ @ ` ˙ @      
   ˙đ    k 8 8 ˙ř  Ýě t ˙° Đ ]ţŔ @˙ű  ˙ě ô ˙đ đ ˙ŕ Ŕ ˙ ˙ ˙   ˙ŕ ˙đ ˙đ    Y " "     > ~đ ţ ţţţ 
ţřü  ř ?đ ?ŕ Ŕ _˙Ď      ~ 8 | ˙ř ˙ü ˙ţ ˙ţ ˙ţ ?˙ ˙ ˙˙˙˙˙˙˙˙˙?˙ţ˙ü˙ř˙đ˙ŕ˙Ŕ?˙?˙ ˙ţ ˙ü ˙đ     9 i569  	D          ˙˙˙˙˙˙     0 0       ~˙ uüü   ˙đ (DáD!)ů 	 	ń9Á  ¨¤ §Ŕ˘ @˘ @˙á !˙ý˙   ~ ˙uţŕţďűţďűţŕţ˙ţ˙ţ˙ţx ţ{˙ďţ`ďţo×ţoťţo|oťŢ`Ö˙îö˙îöxřĆw{ţ>w{˙ţg{˙ţW[˙ţX?ţ]ßżţ]˙żţcŕ ď˙Ţ| ü}ţýú    ˙˙˙    : i570  	D    ˙˙˙˙          ˙˙˙˙    ˙˙˙˙˙˙        ˙˙    ˙˙  ˙˙  ˙˙         0 0       v ü˙       ˙ď˙       đĂ˙      ˙ţ        ü   đ   ü    ˙Ŕ      ˙ D D ř(       üř    ü     ü ü ţ ü üâ    a ďŕ ŕďŕďŕďŕďŕďŕ č  ě `ě `î ŕ ŕoŕoŕ ďŕ ďŕ ďŕ î î î ďŕ    Ľ ¨        ľ ˙ ˙ ţ | 8 8 ą    Đ ř ü ü ü ř    ă ř ř ř ř ř    ü˙˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙˙đ?˙đ?˙đ?˙ü˙ü˙ü˙ü˙üüü    ; i571  	D        ˙˙˙˙˙˙     0 0       }˙ü˙ýż˙ýż˙ýż˙ţ ˙ ˙ţ˙Ď˙ç˙ó˙ů˙ü˙ţ˙ţ˙ü˙ů˙ó˙ç˙Ď˙˙?˙ ţ ˙ďű˙ţ3˙ďű˙î;˙÷ű˙   }  @ @ @ ˙ţ ˙ ` 0           0 ` Ŕ ˙˙  Ě  Ä     ˙˙˙    < i572  	D             0 0       | 8    @ @ @  @ @  @ @   ŕ   `   đ     `   ŕ   `  8     | 8    @ @ @  @ @  @ @   ŕ   `   đ     `   ŕ   `  8      = i573  	D  ˙˙      ˙˙˙˙˙˙        ˙˙             0 0       ˙                              ˙    J˙îx˙Ţs~˙Ţw}˙Ţw~űŢw|űžwűžw;úŽwWűwoĂ>woŰ>wWÚ^w;Âîwýţwýţwűţwűţg÷ţ÷ţďţßţßţ
?ţ?~˙ţ_}˙ţc˙ţ|˙ţ ˙ţ˙ţ    x                           ˙ţ      k          @ @ @ @               Ŕ @    ŕ    L    %    D( <@$@($ D=     pł    ˙˙˙    > i574  	D    ˙˙            ˙˙˙˙˙˙     0 0       L@ ŐU @ ŐUQ @ ŐU @ ŃE @ ŃTEQ @ ŐU !BcĆ    J       Ŕ Ŕ    ` `      Ş    <Š ` `     Ŕ Ŕ   B $  ¨    Ć @š    i@ ŐU @ ŐUW    @` ŔŐuUŐ    LcŔÝw]Ő á B¤LÝW]W @ ŐU !BcĆ     ? i575  	D          ˙˙  ˙˙      ˙˙    ˙˙      ˙˙˙˙             0 0       x ^  á 0 @ 
 @  `  @ @ @˙Á˙Ŕ@ä@		D@ň"!I @ aL  q8 đ>   đ ŕ     . ŕ ?ř ô ?î  ˙ ˙ ˙ ˙Ě    @  Ŕ ŕ đ ř ü > ü ř đ ŕ Ŕ ˛    A§ @             ` @ @     đ    !ş  ? ;    ­    "˝     6 n  Ś    "ž   Ŕ Ŕ ŕ ŕ ° ŔĽ     ^  á ?ú ü ˙ţ ˙ ˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕç˙ŕ˙ŕó˙ŕ˙Ŕ˙Ŕ ˙Ŕ ˙  ţ ü>ř  đ ŕ      @ i576  	D              ˙˙        ˙˙            ˙˙      ˙˙˙˙  ˙˙˙˙       0 0       q đ 0 Č @ 	  ŔŔ˙ř          @  Đ 0 đ    *          Â    " p | | x x p ` @É    2 0 đ đ ř ř ř ü ü ü ţž    .˘   Ŕ Ŕ ŕ ŕ ?đ ?đ đź    .Č 
Ş T 
¨ T ¨ P   P      1Č T 
¨ T ¨ P ¨ P   P      0Ę !˙đ ˙đ ˙đ ˙ŕ ˙ŕ ˙Ŕ ˙Ŕ ˙ ˙ ü đ    ~ đ ?ü ˙ ˙˙Ŕ˙ŕ˙ŕ˙đ˙đ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙đ˙ŕ˙ŕ˙Ŕ˙ ˙ ?ü đ     A i577  	D            ˙˙˙˙˙˙  ˙˙      ˙˙˙˙      ˙˙˙˙      ˙˙     0 0       v ˙č ˙ě ˙î ˙ŕ ˙V ß˙ ˙ | p? `? ` ` ` `  `  `  `  `  `  `  d ? | ? | ? ~   ˙ Ă˙ ˙ ˙               @ @        H D D 
B ~ @ @ @    <   ˙    [   Ŕ        @     @ @ @ @ @ @    @   ŕ ŕ ŕ ŕ ŕ ŕ       Ż    1Ś   Ŕ Ŕ ŕ ŕ p 0 8 8 <ą    š 5 * U Şş    :š 
 U Ş U ˙ ż ż ż ż ż ż ü     ˙ě ˙î ˙ď ˙ď˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙     B i578  	D           ˙˙˙˙˙˙  ˙˙          ˙˙  ˙˙  ˙˙        ˙˙˙˙      ˙˙˙˙                   0 0      ^Ą      " " " 0  D3" D3" D3" @0  D3" 	DU3  
DU`vw @P`fvw DUfw DUifw DUifw @P fv DUi DUŞ 9ŁŞ 93ŁŞ 3ŁŞ 3ŁŞ
 03ŁŞ 03ŁŞ     ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙ř˙ü˙ţ˙˙˙˙˙ ˙ ˙ţ ˙ü ˙ř đ Ŕ    C i579  	D          ˙˙˙˙˙˙      ˙˙  ˙˙         0 0        ř x Ŕ ŕ 0     0             0     ˙ü˙ř˙đ˙ŕ˙Ŕ ˙ ?ţ đ    Z đ ?ţ Kż ÷šŔóűŕ÷ŕ?÷0˙çx˙ďř˙ďř˙ďĚ˙ĎÜ˙ßü˙ßü˙ßü˙ü˙żř˙żř˙żř˙?đ˙ŕ     + @ F   Ŕ Ŕ   0  Ä    F˘       0       ` @ @ @ Ŕ       ř ˙ ˙˙ŕ˙đ˙đ˙ř˙ü˙ü˙ü?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ˙ü˙ü˙ü˙ř˙ü˙ř˙đ˙ŕ˙Ŕ ˙ ?ţ đ     D i580  	D          ˙˙˙˙˙˙  ˙˙          ˙˙  ˙˙˙˙       0 0       o ?ü ˙ŕŕ đ 8 p ŕ  9 ! 9 !Ü !` 0    0 ` Ŕ Ŕ ~˙ ˙    S ř ˙ ˙Ŕ˙8ŕ˙đ˙řcsĆosŢcsĆosŢ#îŢîü÷˙ř÷˙đű˙ŕű˙Ŕ ý˙ }˙ >ţ    BŠ   @ @                  *ą ! ! A A  Ś @ ˙    í ?ţ    b ?ü ˙˙ŕ˙đ˙ř?˙ü˙ţ˙˙?˙ţ˙ü˙ř˙đ˙ŕ˙Ŕ ˙ ˙ ˙ ˙ ˙     E i581  	D ?         ˙˙˙˙˙˙      ˙˙    ˙˙˙˙    ˙˙         0 0       ˙    9      J             @ @ @        ˙    ˙ü@ @ @ @ @ @ŕ @p A B D @H  P ` ` P H D B A @ @ @  @ @ @ @ @ @     ?˙ţ?˙î#˙Ć?˙î?˙ţ?đţ?ăţ>üţ=˙.~;ř7ž7ŔŢ/Áî?čöě~(˙î>1˙ß>;˙ßţ=˙ßţ>˙żţ?żţ?żţ?ßţ?ďţ?÷ţ?ú˙ţ?ü˙ţ?ţ˙ţ?˙ţ˙ţ    !­ Ŕ ?đ ř0 Ŕ   ť    ś    ˝    
Ă Ŕ Ŕ¸    ˙˙˙    F i582  	D          ˙˙˙˙˙˙             0 0       | ?˙ř@   ˙
âśŰbśŰb 
"śŰbśŰb 
"ŮbśŰb 
"6Sbśb 
"śŰbśŰb "śŰb˙â  @ ?˙ř    r ?˙ř˙řp ` ` ` ` ` ` `Ř`"`A`A`g p` ` ` ` ` ` ˙ř˙ř    r ˙ä                    ?˙ř    H  	I$I$˙"ŔI$I$ăţ I$ žűŔI$ I˙
ŔI$I$˙ŔI$     q ?˙ř˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü?˙ř     G i583  	D      ˙˙˙˙      ˙˙                ˙˙˙˙˙˙  ˙˙         0 0       }  *ř?Ťř?W+ř>Ťř=W/ř:Ť85W8*Ż9ř_9ř*ż9ř9ř*˙8C˙<8+˙?đ˙?č.?Đ?¨>?P>>¨>=P>:¨>5P>*¨?űX?÷*°ëp×*đŤř?W˙   h        @             @                  D      @             @     @   "          @          (  @          @          @     @     ~ Ŕ @ @ Ŕ "@ Ä@ Ä@ Ŕ @ @ @ ÇŔ Ä@ @ "Ađ Áđ A Aŕ Aŕ Á A A @ Ŕ       Ŕ    *        Í    >š          Ŕ Ŕ Ŕ    {  ?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙?˙˙    H i584  	D      ˙˙      ˙˙˙˙        ˙˙         0 0       G˙ř˙5óđg>}Ďźţ?ŮţÇů~gĎóžóçůÝü?Éţ ˙ă˙˙ó˙ ˙Ŕ˙ ~   ¨    E   Ŕ 0@   Ŕ0             0 ŕ Ž    G |        @ ŕ `    0     ŕ < ¤    6  0Ŕ Ŕ` 0       p Ŕ   8 ŕł    )¸ ` đ ř đ Ä    ˙˙ ˙Ŕ˙ř¤˙   ˙˙˙    I i585  	D             ˙˙        ˙˙      ˙˙  ˙˙            ˙˙              ˙˙˙˙  ˙˙˙˙        ˙˙˙˙˙˙           0 0      c  " 3D " 3D " 3D " 3D " 3D PU`f wPU`f wPU`f wPU`f wPU`f w˙   Ş ťĚ Ş ťĚ Ş ťĚ Ş ťĚ Ş ťĚ 03ĐÝ fŞ
03ĐÝ fŞ
03ĐÝ fŞ
03ĐÝ fŞ
03ĐÝ fŞ
    ˙ř˙ř˙ř˙ů˙ů˙ůß˙ůß˙ů˙ů˙ř˙ř˙ř˙ @ 
@řŔđ ŕ @˙ř˙ř˙ř˙ř˙ů˙ű˙ű˙ů˙ř˙ř˙ř˙ř˙    J i586  	D          ˙˙˙˙˙˙  ˙˙˙˙             0 0       ˙ř   @    @                     ˙ř    UPŞ T@Ş T@  ˙ŔŞ* T@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@Ş*  Ş U@     Ş UPŞ* T@ Ş*   T@Ş* T@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@Ş* U@ U@Ş     c     ˙Ŕ                 ˙ŕ     r @ @   @  @                   ˙đ    Ą˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř    K i587  	D              ˙˙˙˙    ˙˙˙˙˙˙  ˙˙         0 0       `Ź ˙ţ Ŕ  
 " Bý˙          ˙ţ   S° UT*¨Ş¨UPUTj¨jŹ5PUXZ¨Ş´, !hWü˙Ô*¨*¨UPUT*¨j¨UTŐT*ŠŞ¨UTUT*Ş*¨UT*Ş¨UTUT*Ş¨    V° *Ş¨TUP
¨* P@B¨*!TUP ( (UPUT*¨*¨UPT*¨*¨UTUT*Ş¨U
T*Ş*¨UTUT*Ş¨UT    š    Ś    0Á               VŹ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    L i588  	D  ˙˙                  ˙˙˙˙    ˙˙˙˙˙˙     0 0       6  " A    @ <  Ŕ      Í     ˙ @     @  ˙ßţ                 ˙ţ   s *ŞU@Ť Yup?ź>ř˙ßü *Ş¨UT*Ş¨UT*Ş¨UT*Ş¨UT*¨Ş¨UPUT*¨*¨UTUT*Ş¨UT*Ş¨UT*Ş¨UT*Ş¨    o U ŞAT@
  @ UT*Ş¨UT*Ş¨UT*Ş¨UT*Ş¨UTUT*¨*¨UPUT*¨Ş¨UT*Ş¨UT*Ş¨UT*Ş¨UT    
Ő  Ś      " A  ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    M i589  	D          ˙˙˙˙    ˙˙˙˙˙˙     0 0       {  Ć 9Ŕ @ @ @ 0K@ ĚŔ@3 @Ŕ @ @ @ @ @ @ @ @ @ @ @ Ŕ  0 Ŕ   ° Ŕ    v   Q ¤ Q 
  D  D  D  D  D  D  D  D@  D  @    m D F¨ S Ś K ". ť .î;ť nî;ť nî;ť nî;ť nî;ť nî;ť ně ;° nŔ ; l 0 @      Ç ˙Ŕ ˙Ŕ ˙Ŕ ˙Ŕ ?˙Ŕ ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙ ˙ü ˙đ ˙Ŕ ˙ ü đ Ŕ     N i590  	D          ˙˙˙˙˙˙  ˙˙˙˙       0 0       m   ah fY&`*` 
 	        ` 0` Ŕ     0 `Ŕ c , 0    c  
 DP + eP GUP* ~UP	řŞ ĺUPĘŞ  ŐUPJŞ UP Ş U ¨ UP 
       [  "  4P  PP *  UP
 * UP Ş UP
Ş UP 
Ş U@ Ş UT 
  U@ 
     v   x ˙ř˙řß˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙Ŕ˙ ˙ü ˙đ Ŕ  < 0     O i591  	D          ˙˙˙˙    ˙˙˙˙˙˙           0 0        ˙   (ž ˙Ŕž@@˙É@ I@ )@ )@ @ @˙Ŕ˙ţ?˙ü 0 (* (Ö '*  T    0 @Ŕ Ă d   č đ ŕ     U * A * A *ć    j * U U " U  U Ş UB Ş˘ UB ŕ Ô ( Ô ¨ đ Ŕ ? <  ŕ x     $  P    
Ş U@ Ş U@ Ş Í    )  D $ $    Ě     ˙ ˙ ˙ ˙ ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙ţ?˙ü ?ţ ?ţ ?ţ ?ţ ?ü ?ř ?đ Ŕ ˙ ü ü ü ř đ ŕ     P i592  	D          ˙˙˙˙˙˙       0 0       }x ?˙ţ       'Ŕ    'ŕ       '˙â    '˙â    '˙â 8  g˙ â ` â  ž   ~ţ     |   ˙    w r˙ü ˙ü ?ü ˙ü ü ˙ü ˙ü   ˙ü   ˙ü   ˙ü  | ~ü˙˙çü˙ř˙ţü˙ţüA˙âü˙ęü˙âüţ ˙ţ ţ ˙ţ ţ ˙ţ    }                         ˙     ˙   q ?˙ţ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ˙˙˙˙˘˙˙˙˙˙˙    Q i593  	D          ˙˙˙˙˙˙       0 0       }x ?˙ţ    /˙ú ( 
 (
 (<
 (~
 (r
 (%
 (` (C (!
 (
 8
 f
­
 `Ę *` Z Z úž  ţ  ~      |   ˙    x /˙ü              <   A  ~˙˙çÄ˙ů¤˙ţ¤˙ţA˙âü˙ę ˙â ţ ˙ţ ţ ˙ţ ţ ˙ţ    ~  1 ˙ń çń Ăń ń ń Ŕń q q Ŕń ŕń ŕń áń @ń 1       ˙       ˙   y ?˙ţ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ˙˙˙˙˙˙˙˙˙˙˙˙    R i594  	D            ˙˙˙˙˙˙     0 0         @ 0 0 p ŕ f i i é ć ŕ Fp 0 f ` c  `      ž      ~      |   ˙       Ä â â á á A                    ˙   j 	  ° đ đ đ đ ŕ Aŕ Ŕ ~˙ ˙ŕ ˙ř ˙ţ ˙ţ A˙â ˙ę ˙â ţ ˙ţ ţ ˙ţ ţ ˙ţ      Ä ô ?ň ň ˙ů ˙ů ˙ů ˙ů ˙ů ˙ů ˙ů ň ?ň ~ä˙ä˙ă˙ř ˙ţ ˙ ˙˙˙˙˙˙˙˙˙˙˙˙    S i595  	D          ˙˙˙˙˙˙             0 0       {  ( D   ( @   D "  A D"
*˙T ¨ž P  ž @ ˙   ˙   ü   ˙    s  8 | î × ë uŔ ťŕ ßđ >ďř wü űťřÝđîŕ÷wŔ ,˙ţ A˙â ˙â A˙â ˙ţ  ~ ˙ţ  ţ ˙ţ ţ ˙ţ    Cť    ( P   @        ˙    Ň ­      8 | ţ ˙ ˙ ˙Ŕ ˙ŕ ˙đ ?˙ř ˙ü ˙ţ˙ü˙ţ˙ü˙ţ˙ü˙ř˙đ˙ŕ˙Ŕ˙˙˙˙˙˙˙˙˙     T i596  	D          ˙˙˙˙˙˙    ˙˙         0 0         1 @ r               @  đ ü ţ ˙ (˙h˙¨˙Á(˙Â¨˙Ĺ¨˙Ę¨˙ÔĐ˙Ř üP@ŕ@ŔA B  D  H  P  ` ˙Ŕ       ?Ŕ ŕ ˙ŕ ˙Đ ˙  ˙@ ţ ý ú ô č Đ   @        ?  ˙ ˙ ˙ ˙       @       P  ° p  đ đ đ đ /Đ _ ? > < 8 1 #  '@ / ? > < 8 0      Ç @ @ @ @Ź      ? Ŕ ˙ŕ ˙đ ˙đ ˙ř ˙ř ˙ř ?˙ř ˙ř ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ˙ř ˙đ ˙ŕ ˙Ŕ     U i597  	D          ˙˙˙˙˙˙    ˙˙         0 0         1 C@ P  	       @ đüţ˙˙˙˙Ô˙Ô˙Ô˙Ô˙Ř˙Ŕ ü@ é@ŇA ¤B @D ˙Č  P  ` ˙Ŕ    }   8Ŕ pŕ ŕ ŕĐ ŕ  ŕ@ ŕ á ę č č Č ( H       - [ ż  ˙ ˙       @       P  ° p  đ đ đ đ #đ Cđ #đ #đ #đ #đ #đ 'ŕ ?Ŕ ? ? > < 8 0      "        Ő      ? Ŕ ˙ŕ ˙đ ˙đ ˙ř ˙ř ˙ř ?˙ř ˙ř ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ˙ř ˙đ ˙ŕ ˙Ŕ     V i598  	D          ˙˙˙˙˙˙       0 0        ŕ ` Ć a?đ@0a   	@p8ŔÇ@p8@Á@	@@tTDHDHI HI LÉ $ $Ŕ$đ$řř ř p?ř ˙ř ˙ŕ ˙   q ŕ p8 ç ŔŔ ˙ţ ř Ŕ p   p ?Ŕ 1 1 3 ł    É É É É y     o Ŕ@ Ŕ    8G p> ý ; @ D+ D; ; $6 $6 "6 v l l l | px Ŕ     ŕ ř ˙ţ ˙˙Ŕ˙ŕ˙ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙˙˙˙˙ ˙ ˙ ˙ ˙Ŕ˙đ˙ř˙ř ˙ř ˙ř ˙ř ˙ŕ ˙    W i599  	D          ˙˙˙˙˙˙       0 0       vs ˙ŕ  `     @   ˙ü     ô @ G D @ @ @ @ ô   ô @ G D @ @ @@@ő   ˙ü     ˙ ˙ ?ţ ü ˙ř ˙ř  żč ¸č ¸č żč żč żč żč  ˙ř  żč ¸č ¸č żč żč żč żč  ˙ř    { @ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ        ˙ŕ ˙ŕ ?˙ŕ ˙ŕ ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü     X i600  	D          ˙˙˙˙˙˙       0 0       v ˙ŕ  `     @   ˙ü     ô @ G D @ @ @ @ ô   ô ô @   ţ4 T @ă5 F ü   ţ     ˙ ˙ ?ţ ü ˙ř ˙ř  żč ¸č ¸č żč żč żč żč  ˙ř    ˙Č Č ý ý   ü8 ü ü ü     @ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ ?ăŔ #Ŕ Ŕ #Ŕ c ă áÂ       ˙ŕ ˙ŕ ?˙ŕ ˙ŕ ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ˙ ţ ţ     - i813  	D          ˙˙˙˙˙˙           0 0          Ŕ@ `  ° X l #ś {˙ ž _ý /ű ő é Ń Ą !A               đ Č  Ć l < °    |  ? Ŕ Oŕ 'đ đ Iŕ  @   Đ č ô ú  ý@ ţ ˙ ˙ ˙ ˙ ˙ ˙ ß  7 { 9     f   ţ   
    > ~ ~ ~ ~ ~ ~ ~ ~ ~ | x p ` @    ů       ˙ ˙Ŕ ˙ŕ ˙đ ř ü ˙ţ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ţ ü ?ř đ     . i814  	D          ˙˙˙˙˙˙       0 0        @        !   @ ` P hTŚ I@°P(JĘJ
  K *     Ŕ    z @ ŕ đ ř ü ţ ˙ ?ţ ü /ř đ #ŕ AŔ  O Ż × ę p ° 0 ° đ p 0     cŚ      0?          ~ | x p ` @     @ ŕ đ ř ü ţ ˙ ?˙ ˙ ˙ ˙ ˙˙˙˙˙˙˙˙˙˙˙˙˙ ˙ ţ ?ü ř đ ŕ Ŕ     / i815  	D          ˙˙˙˙      ˙˙˙˙˙˙         0 0          @      @      @   ?˙ř               ü     ŕ     ř    ?˙ř        ŕ ° .č ;¸ î ť îťîŕ 
Ş UT
Ş¨ UT
Ş¨ UT
Ş  P
Ş UP

 UP
Ş  P
Ş UP    } @         @                      ˙ü     @  @  D  D  D@ UP
Ş¨ UT
Ş¨ UT
Ş¨ UP
 UP
Ş  P
Ş UP
 UP
Ş     ž Ŕ Ŕ Ŕ Ŕ Ŕ°      Ŕ ŕ đ ř ?ü ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü˙ü    0 i816  	D          ˙˙˙˙    ˙˙˙˙˙˙           0 0       ^ ˙ř        ˙ü  ˙ŕ  ˙p  ˙ř    N UP*Ş¨ UT*Ş¨ UT*Ş¨ UP*Ş T P*Ş UP* 
 UP*Ş T P*Ş UP     Q *Ş UT*Ş¨ UT*Ş¨ UT*Ş UP*  UP*Ş T P*Ş UP*  UP*Ş      O                  ˙ü    ˘ Ŕ Ŕ Ŕ Ŕ ŔĚ    U ˙ř˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü     1 i817  	D          ˙˙˙˙    ˙˙˙˙˙˙           0 0       S ˙6  8 & " " B D D D˙ýD D D˙áD D ˙p  ˙ř    S UT *Ş¨UT*Ş¨ UT*Ş¨UT *Ş(T *Ş(UT* 
(UT*Ş(T P*Ş UP     S *Ş UT*Ş¨UT*Ş¨ UT *ŞUT* (UT*Ş(T *Ş(UP*  UP*Ş      O                  ˙ü    ˘    8 0 0Č    M ˙ ˙¸˙ž˙ż˙ż˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü˙ü˙ü˙ü     2 i818  	D          ˙˙˙˙˙˙    ˙˙˙˙       0 0       ˙ţ   
   
ťü  
ďö  
űź  
ü   
   
   
   
ďř  
ž   
ß÷  
ţß  
   
 ˙ţ     ˙üP p P p P p P p P p P p P ˙üP p P p P p P p P p P p P ˙ü    {                              ˙    ˙ŕ˙ŕ˙ŕDŕ˙ŕ	ŕ˙ŕCŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ ˙ŕ˙ŕ˙ŕŕ˙ŕA˙ŕ˙ŕ ŕ˙ŕ ŕ˙ŕ˙ŕ˙ŕ    
˙ţř˙˙    3 i819  	D          ˙˙˙˙˙˙    ˙˙˙˙       0 0       x ˙ř 
   @( @  ˙ţ @  (  @
   ˙đ 
   @( @  ˙ţ @  (  @
   ˙ř    ` ˙ŕ @   ?˙ţ ?˙ţ     @˙ŕ ˙ŕ @   ?˙ţ ?˙ţ     @˙ŕ    i   ođ0 ` Ŕ   @ oĐ       ]ŕ0 ` Ŕ   @ ]ŕ    ˙ţ    : 
˙ţ  ˙ř ˙ř , ˙ţ 
˙ţ ˘ ˙ř ˙ř ˘ ˙ţĄ     ˙ř˙ü˙ř˙đ?˙ŕ˙Ŕ˙˙?˙Ŕ˙ŕ˙đ˙ř˙ü˙ü˙ř˙đ?˙ŕ˙Ŕ˙˙?˙Ŕ˙ŕ˙đ˙ř˙ü˙ţ     4 i820  	D          ˙˙˙˙˙˙    ˙˙         0 0       ˙ţ                      đ       0  `   üx     ˙ü˙ü~čť<~KÜ~ŠŞÜ~ëşÜ~čť<˙ü~ ˙ü˙ü˙ü˙ü˙ü˙ü~ ˙ř˙ř˙ř˙đ˙ŕ˙ř ~ ˙đ ˙ŕ ˙Ŕ ˙ ü |x            ˙ý      ˙ý      ˙óř     p Ŕ  ~<     DŔ´m VU E DŔŕ    ?˙ţË˙ţ˙ţ˙ţ˙ü˙ř˙ţ ˙ü ˙ü ˙ř ˙đ ˙Ŕ ˙ ~<     5 i821  	D          ˙˙˙˙˙˙    ˙˙         0 0       ˙ţ                      đ       0  `   üx     ˙ü˙ü~ěÁ~kw|~Ťw<~Ëw|~ě÷˙ü~ ˙ü˙ü˙ü˙ü˙ü˙ü~ ˙ř˙ř˙ř˙đ˙ŕ˙ř ~ ˙đ ˙ŕ ˙Ŕ ˙ ü |x            ˙ý      ˙ý      ˙óř     p Ŕ  ~<     >ŕTŔ4ŕŕ    ?˙ţË˙ţ˙ţ˙ţ˙ü˙ř˙ţ ˙ü ˙ü ˙ř ˙đ ˙Ŕ ˙ ~<     6 i822  	D          ˙˙  ˙˙  ˙˙      ˙˙˙˙˙˙                 0 0        0 P   @ 2 z  (ţP`ŕ  `	@ 	ŕŕ	  	@ŕ~a  B@ <ŕ 0  0@ 0ŕ 0Ą 0B 0ä 0¨ 0P 0?˙Đ      G   @         @      
  (¸    Y            
            a ` Ç + {ŕ zđ x_đ xđ s˙đ `~` ' _˙ ˙Ŕ ˙Ŕ ˙Ŕ ˙Ŕ ?Ŕ ˙ŔđŔ˙	Ŕ˙Ŕ˙Ŕ@      O¤   
  
  
  
  
  
  
         :Ź @ @ @ @ | @ Ŕ @ ŕ @ ü ? ˙Ŕ    &°           @ ` ˙Ŕ    x 0 p ŕ Ŕ  ~ ˙ ˙˙ŕ˙ţ˙˙˙ţ˙ü˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙ŕ˙Ŕ     7 i823  	D          ˙˙˙˙˙˙          ˙˙         0 0       } ˙ŕř Ž E â` Ą @ ŕA  `@ŕ @ Xŕ¸  @ [ŕ "  b@ ˙` ?˙ B " ˙   ˙    d ˙ŕQ˙*ŕ:˙ŕ˙ŕ^ç˙ŕ?y˙ŕžŕ_ßŕ?ďçŕ÷ůŕ_űţ`?ý˙ ţ@_˙yŕ?˙¤č˙Ýl_˙ý?˙ţü | | | <     Ř ˙Ľ    
ď P      
ď . ^     ˙ŕ˙đ˙đ˙đ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ü˙ţ˙ţ˙ţ˙ţ˙ţ?˙ţ ~ > ˙ ˙ ˙ ˙     8 i824  	D                      ˙˙˙˙˙˙  ˙˙      ˙˙˙˙       0 0       ~ -śŔ Ű` -śĐ    0  0  (  (  $ $ " Ł˙`       P   /   t  @  ,< HP ° đ   Ŕô C? !          _˙Ŕ    L ` BI                 
      R 	$ @ @ @ @ @ @ @ @ Ŕ @Ŕ Ŕ Ŕ @ @ _ő @ @    $  
Ş  UP 
Ş  UP Ş¨ UT Ş¨Ô    j @       ˙Ŕ  ˙Ŕ ŕ Ŕ q¸ řßŔün ü/ŔýüŔ˙çŔ?Ŕ óŔ 
Ŕ ˙Ŕ ˙Ŕ    @ U@ 
Ş  UP Ş¨ UP Ş¨ UT ˙ţ¤ 0 p p p X (     2Ź    @         @Ľ     śŔ ˙ŕ ˙đ ˙đ ˙ř ˙ř ˙ü ˙ü ˙ţ˙ţ˙˙˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ˙ŕ?˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ?˙ŕ˙ŕ ˙ŕ _˙Ŕ     9 i825  	D ?                     ˙˙˙˙˙˙  ˙˙         0 0        Űl mś Űm      @ @      F  @ ˙ü                          /˙ü    r 0 !$ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @    l H                            ü     |                        =  UT Ş U ŞU ŞU@ Ş  U@ *Ş  UPÄ    g             ˙ü ţ +˙ü ˙ ˙ü ˙ŕ ˙ü ˙ř ˙ü ˙ü ˙ü ˙ü ˙ü    ? 
Ş U Ş U ŞU@ Ş U@ Ş  U	P *Ş  ?˙řŔ     	Űl ?˙ţ ?˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙đ˙đ˙ř˙ř˙ü˙8ü˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ /˙ü     : i826  	D ?         ˙˙                ˙˙˙˙˙˙       0 0       z    ` R       ˙üp P   p P   p P   p P   pP   p` Q & ˙ú     x    U Ť U 
Ť U 
Ť U 
Ť U 
Ť U 
Ť U 
Ť U 
Ť T 
¨ @ 
      t   * T Ş T 
Ş T 
Ş T 
Ş T 
Ş T 
Ş T 
Ş T 
Ş P 
   
     *          0 ˙ř    WŚ ř ř ř ř ř ř ?ř ř ř ř ř ř ř ˙ř 8 ˙Ř      ;¨     @   p   |    ˙Ŕ  ˙đ˙ř ˙ř         ˙ ˙ ˙ ?˙ü˙ü˙ţ?˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţ?˙ţ?˙ţ?˙ü˙ř     ; i827  	D ?         ˙˙˙˙˙˙    ˙˙  ˙˙  ˙˙             0 0        @        D  ˙@ @  1â  	 M >) A1ţ8Ą Áţ"  
  0 P  ˙Ŕ @ ˙ŕ@         ˙ř    f @ ŕ đ ř Ü î w ?ťżřÝŔîáěđtżď°ßÁĐ ˙žŔ @ţ;  ˙ě _ô ˙đ Uđ ˙ŕ WŔĄ    ;     D "   @   Ŕ   Ş ¨˘       @ 
  @ š    _ @       
  @* T Ş T ¨ P  
  @˙Ş  
Ş UD 
Ş¨ UP    Wł   
  * T Ş T Ş T 
¨ P *  @ 
U 
Ş UD Ş      @ ŕ đ ř ü ţ ˙ ŕ?˙ř˙ü?˙ţ˙ţ˙˙˙˙˙˙˙˙˙˙˙ţ?˙ü˙ř˙đ˙ŕ˙Ŕ?˙˙ ˙ţ ˙ü ˙ř     < i828  	D          ˙˙˙˙˙˙  ˙˙˙˙       0 0        đ   ˙ţ     ˙ń   ˙ń   ˙ń      @@~üţ    } nŕ ;° nč ;ťşnî;ťşnî;ťş` ;ťşnî;ťş` ;ťşnî;ťş` ;ťşnî;ťşnî;ťşnî:;¸şl.čn8;¸:    [  D@  DDD DD DD DDDDD@D    & đ ˙ř ˙ř ˙ţÔ˙ţü˙ţü˙~üţ     = i829  	D          ˙˙˙˙    ˙˙˙˙˙˙     0 0       ~ ˙ţ     ˙ń   ˙ń   ˙ń      @@~üţ    L DDD DD DD DDDDD@D    n ;ťşnî;ťşnî;ťş` ;ťşnî;ťş` ;ťşnî;ťş` ;ťşnî;ťşnî;ťşnî:;¸şl.čn8;¸:     ˙ţÔ˙ţü˙ţü˙~üţ     > i830  	D          ˙˙˙˙˙˙       0 0       n   8ţ H@ @@ @@Ŕx@@"wď"Ŕ"x ˙ř@Ä˙D D #˙@ @  ?˙Ŕ    d   ?ţ +  ?ţ  >żţhżţÜÜ ?ü `ý ý @8Ŕ ˙řŔ `ř` 0 0 0 ` Ŕ?˙     P ` Ŕ   Ŕ ` ?Â      żý     0 `˙Ŕ    {   ?ţ ˙ ˙Ŕ ˙Ŕ˙ř˙ü˙ţ˙ţ˙ţ˙ü˙ř˙đ˙đ˙ř˙ř˙ü˙
| | ü?˙ř˙đ˙ŕ?˙Ŕ     ? i831  	D ?           ˙˙˙˙˙˙    ˙˙˙˙  ˙˙˙˙    ˙˙         0 0       ˙ţ@ @ @ @˙ňA 
OđČP?âP@`@jŞ
@ ˙   ?ř   ?ř  ˙ ˙    ˙    { *Ş¨*Ş¨*Ş¨* ¨*            U  UT(*Ş@T âŞ@TŞ@T
żú¨ P*   @* ˙*Ş	
UT*Ş¨*     UTUTUT PUR¤đ Ŕ÷óżä ?ŕUT ˙ţkęŞWŐUToŞ_PT~Ş}_őTzŞu@Vk˙ŽT ^j˙>T |j úUôjŞŤęUWÔ     ŞP đ 'ŕÜ    Ľ  @*Ş¨Đ    É ŕľ    A˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţĚ˙     @ i832  	D            ˙˙          ˙˙˙˙˙˙    ˙˙˙˙  ˙˙˙˙       0 0       ˙ţđ *đ   ň 
0Čó?âH@ 8@jŞ
@ ˙   ?ř   ?ř  ˙ ˙    ˙   z ˙ü UT ˙ü UT ř P 0  U  UT(*Ş@T âŞ@TŞ@T
żú¨ P*   @* ˙*Ş	
UT*Ş¨*     ` ` ` ` ` `° ŕą     
Ş¨ Ş¨  ĺ     đ ř ŕ Ő Ďđ gŔˇÇżä ?ŕUT ˙ţkęŞWŐUToŞ_PT~Ş}_őTzŞu@Vk˙ŽT ^j˙>T |j úUôjŞŤęUWÔ     
P  'ŕŘ    Ž @*Ş¨Ě    <˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţĚ˙    A i833  	D   	        ˙˙˙˙˙˙  ˙˙˙˙          ˙˙                ˙˙           0 0      +ˇ        !  "  "! 0 " 
3 ! 03       A    A  PV qw`e  PV `Xe PV  `e    §       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ü˙ţ˙ţ ˙ţ ˙ţ ?˙ţ ˙ţ ˙ţ üţ ř đ ŕ @     B i834  	D          ˙˙˙˙      ˙˙˙˙      ˙˙  ˙˙˙˙˙˙  ˙˙           0 0             @   á B      ţ       @ đ   >@   ű˙ @@ ( @ ŕ     ˙ţ    k ŕ 	˙Ŕ ˙ ˙  < x đ ŕ Ŕ  ř đ ŕ Ŕ   Ŕ      ˘    #Ř ?ă ÇŔ ˙ŕ Ŕ?ŕ˙đđř ˙ü    
Ú 0 Ą    
Ú 
 Ą    Ú       ĺ ?Ŕ đ     ˙đ ˙ŕ ˙Ŕ ˙ ˙ ~ ü ř đ ŕ ţ ü ?ř đ ŕ Ŕ đ ŕ ?Ŕ   ˙ ˙?˙Ŕ˙ŕ˙đ˙ř˙ü˙ţ ˙ţ     C i835  	D   	        ˙˙˙˙˙˙  ˙˙˙˙      ˙˙˙˙              ˙˙  ˙˙      ˙˙  ˙˙     0 0      §        # 03C  3CT  3CU 	0T  U       a   a r    	a p r   p pr (  q     §       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü?˙ţ˙ü˙ţ˙ţ˙ţ˙ţ ˙ţ ˙ţ ?˙ţ ˙ţ ůţ đ ŕ Ŕ      D i836  	D          ˙˙˙˙˙˙    ˙˙                ˙˙˙˙       0 0       e UP Ş¨           ˙ř     ˙ř ťŞť ťŞť ťżŔŞ @ťżŔ    & UP ˙đ őP ˙đ ýP ˙đ UP ˙đÍ    l                        ˙ţ˙ţ     
    Ş Ń    i  ?˙ř                                    ?˙ř    X¤ ˙đ đ đ đ đ˙đDpDpDp˙đDpDpDp˙đD@0D@0D@0˙đ    Ŕ        UP ˙ř ˙ü ˙ţ ˙ţ ˙ţ ˙ţ ?˙ř?˙ü?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ˙ţ˙ţ     E i837  	D            ˙˙˙˙  ˙˙˙˙    ˙˙˙˙˙˙     0 0       ˙Ŕ ` `˙ţ`˙ţ`Ŕ`Ŕ`˙ţ` `î`Ş`î` `î`Ş`î` `î`Ş`î` `î`Ş`îę` 
`ţę`Ş`ţî` ` ŕ˙ŕ˙Ŕ    ˙˙     ˙˙˙˙˙ń˙˙     ?ü ?üĺ    #Š D D D D    |D    Ą˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ    F i838  	D ?         ˙˙˙˙      ˙˙˙˙˙˙          ˙˙     0 0       p  ˙ţ  z j Z z  ˙ţ ż˙úIRJ ż˙úIRJ ż˙wúIRJ P°Wú°rJ  ˙ţ   $¤ ˙ü˙@ @ ¤@ @ ü˙üŔ    SŹ ?˙đ ?˙đ ?˙đ ?˙đ ˙ü@ I$$˙ü@ I$$˙ü@ I$$˙üI$I$$˙ü¨    4Ž     $$ $$ $$         ě   mW˙ü    
í Ŕ Ŕ    b  ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    G i839  	D          ˙˙      ˙˙˙˙˙˙           0 0        ?˙đ` ß˙ě° 4    °đ4ąńtŁÔ˘      
°4ątŁÔ˘      °<4ą|tŁŔÔ˘° 4ß˙ě` ?˙đ    u ˙ŕ  @ F1J
RLcHBHBD!@ F01JPRL`cH@BH@BD !@ F1JRLcHBHBD!@   ˙ŕ    R ˙	ŔůÎ`ôĽ  	đ ůÎ`˙	ŕĎÎ`§Ľ  	 ĎÎ`˙	ŕÎ~`Ľ=  	< Î~`˙Ŕ    ? @Ŕ1! @Ŕ01 ! @Ŕ1!    y ?˙đ˙ř˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ř?˙đ     H i840  	D            ˙˙    ˙˙˙˙˙˙      ˙˙˙˙    ˙˙               0 0       b < B !$ D H <đ  Ŕ¸0D  @ @@@@@@@ @ @ 0ŕŔ     <  8 0Ô    ¸ Ç    Fş     X \ < Dź | Eü +ü ř 7ř đ Ŕ    9ť @ Đ ?ŕ ?  }  jŔ ;@ n : T 0     8ź  ` ź ?Č >ŕ ? P =  )@  @    >˝    @ 6  t $Ž Ţ ž ü ź ř ŕ    g < ~ ?< | x đ  Ŕ¸đü?ř?ţü?ţü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?ţü?ţüü?řřđŕŔ     I i841  	D          ˙˙˙˙       0 0              
 @ @        B ! Ŕ      ` 0 `đ     Ŕ ˙    a     Ŕ Ŕ ŕ p x ź Ţ ď ÷Ŕ űŕ ýř ţ~ 
˙ ăŔ ü ˙Ŕ ˙            Ŕ Ŕ ŕ ŕ đ ř ü ţ ˙ ˙Ŕ ˙ŕ ˙ř ˙ţ ˙˙ŕ ˙đ ˙đ ˙ŕ ˙Ŕ ˙     J i842  	D          ˙˙        ˙˙      ˙˙˙˙          ˙˙˙˙˙˙     0 0       -        Ŕ @ @Ö    Ľ Ú    UŞ     QP *Ş T "Ş T Ş T "Ş T *¨ UT Ş¨ UP *    BŞ 8  (?ŕP sř*gřU@ďř" ˙ř@˙Ŕ  ˙Ŕ @˙Ŕ ˙đ@˙đ"đT ?ŕ ?ŕ     Ş  @ ( É    JŤ @ü  X ,  Ŕ
 Ŕ   !+ Ŕ Ŕ+ V@˘Ş UT!*¨ţp<Ŕ    +´      ?ţ ?˙ ?ţ  Š    c        Ŕ Ŕ @Ŕü?đ?˙ř˙ü˙ţ˙ţ˙˙ţ˙ţ?˙ü?˙řţ?đ<Ŕ     K i843  	D          ˙˙˙˙˙˙             0 0         ŕ 8 sÎ Ě30ŕŔ8s Î˙ ˙AE˘( ( ( ( ( ( ( ( ( ( ( ( ( ( E˘˙ţ@ ˙ ˙   j Ŕ 0 0 Ăó üŔ?˙0 ˙ţ @8ç÷NzhNzhHh@
hBJhBzh@hH
hNJhBJh@
hHhNzhNzh8ç÷    f Ŕ  0 Ŕ @ @               @ ?˙ü ˙ţ    Hą   ŕ đ °  ŕ đ ° ° đ ŕ        ŕ ř ţ ˙˙ŕ˙ř˙ţ˙˙ţ?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü˙ţ˙ţ˙ţ˙    L i844  	D    ˙˙˙˙            ˙˙˙˙˙˙     0 0       w          T 8 ˙ďţ 8 T                    @ đ Ř l 6   L !   Á   Đ @h   ÁŔ i` %° 
Ř ě ö 8  Ę m ś ó a  @     v 0      b !  @     ä 4      Ä b 1   @      v         A  @     @    @         @          p ř ü ~ ?  ţ ˙ ˙ ˙Ŕ ˙ţ ůđ ôř ň| đü ůü }ü ?ü ü ţ ˙ ü ţ ˙ ˙ ö ó á Ŕ ŕ °    M i845  	D          ˙˙      ˙˙˙˙˙˙     0 0       ~ ŕ 0 @ B Á 0  @@@@@@@@@@@@@      " " ř>  ŕ<0x ` 0 `    U ŕ ?ř ü 2ř> ŕ Ŕ ŔŔ Ŕ Ŕ ŕ ŕ ŕ­    Ő p pĽ     ŕ ?ř ü ˙ţ ˙< ř?ŕŕŔŔŔŔŔŔŔŔŔŔŔŔŔŕŕŕđ đ đ ř> ř> ř>  ŕ<0x ` 0 `     N i846  	D          ˙˙˙˙˙˙     0 0       u p­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­E­Ö­Ľ­Ö­Ľ­Ö­E­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­PTM *  *  @    ¸ @ @° @ @    u p­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­E­Ö­ĺ­Ö­ĺ­Ö­E­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­­Ö­PTM ;ŕ ;ŕ @     O i847  	D               0 0       _  Ŕ Ŕ   ` đ đ ` 0 x x x 0   Ŕ Ŕ Ŕ     j Ŕ ŕ    đ đ đđđ p p p   p x ţp s ţ| `đ ř ř ř ř      Ŕ Ŕ  Ŕ ŕ    ` đ đ `đ đ đđđ p p> | >x x 0  pxĂţpŔsÁţ|`đ ř ř ř ř     P i848  	D             0 0         Ŕ ŕ ŕ ŕ Ŕ  0 | ü ü oě oě gĚ c gĚ oě oě /č đ đ ?ř ?ř đ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ      Ŕ ŕ ŕ ŕ Ŕ  0 | ü ü oě oě gĚ c gĚ oě oě /č đ đ ?ř ?ř đ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ     Q i849  	D             0 0          Ŕ ŕ ŕ ŕ Ŕ  0 ~ü ~ü ~ü ~ü ně ně ně gĚ oě oě /č ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ Ŕ       Ŕ ŕ ŕ ŕ Ŕ  0 ~ü ~ü ~ü ~ü ně ně ně gĚ oě oě /č ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ Ŕ     R i850  	D             0 0       ŔŕÁđÁđÁđŕŔ`1ýů>\ýů?ţýů?ţýů7öÝŮ7öÝŮ3ćÝŮ1ĆĎ3ćßŮ7ößŮ7ö_ŃôÁřÁřÁüÁüÁřÁ`Á`Á`Á`Á`Á`Á``   ŔŕÁđÁđÁđŕŔ`1ýů>\ýů?ţýů?ţýů7öÝŮ7öÝŮ3ćÝŮ1ĆĎ3ćßŮ7ößŮ7ö_ŃôÁřÁřÁüÁüÁřÁ`Á`Á`Á`Á`Á`Á``    S i851  	D             0 0       } xGŔOŕOŕOđOđOđOđOđOđĎŕĎŕŔ    } xGŔOŕOŕOđOđOđOđOđOđĎŕĎŕŔ     T i852  	D               0 0          đ ˙ţ ˙˙ŕ˙đ?˙ř˙ü˙ţ˙ţ#B                  ţ ü    ZŤ 	{Ü÷˝B!                   ~       đ ˙ţ ˙˙ŕ˙đ?˙ř˙ü˙ţ˙B!                 ˙ ˙ ~     U i853  	D              ˙˙      ˙˙      ˙˙˙˙                       0 0         Ŕ ř 2sç ŔD !BB!B!  !B-uz3xć!PB @ @ @ @ @ @ @ @ @ 
Á@ !@ !@   a     .  p ŕ Ŕ      Ë    ,   Ŕ ŕ đ ř x | < Č    &    < < | x ř Ę    ( ` 8 <      Č    (   Ŕ Ŕ Ŕ ŕ ŕ `É    .ş        @   Q 
    .ž       @  A "       Ŕ ř ˙ ˙Ŕ˙ŕ˙đ˙ř˙ü˙ü?˙ţ?˙ţ?˙ţ3řć!ĐB Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ 
ÁŔ áŔ áŔ ó ˙       V i854  	D          ˙˙˙˙˙˙       0 0        p    " F  ! B( DP H  	Q@     Đ 	0  $ H    @     !      | p ř ä Ü ¸ p ŕ =Ŕ ; 7 . l č ŕ @     0 ` Ŕ          :      @        Ľ        p ř ţ ţ ţ ţ ţ ?ü ř đ ŕ 	Ŕ ˙ ˙ ţ đ đ 0  < x đ ŕ Ŕ   ? ?       W i855  	D          ˙˙˙˙˙˙       0 0        đ  ` Hü  ţ < 4 (ň 0 ( 4đ        @  O    @  	    $  H 0 /   @      x đ ř  ˙ Ăx Ëp × Ď × Ë ˙ ˙ đ ŕ ?Ŕ  ˙ ţ ü ř đ ŕ Ŕ      Q   x p   0 ` Ŕ      0 ` Ŕ       đ ř ü 3˙ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ü ˙ř ˙đ ˙ ˙ ˙ ?˙ ˙ ˙˙đ ˙ŕ ˙Ŕ ˙ ˙ ?ţ ?ü ?ř ?đ ?ŕ ?Ŕ       X i856  	D          ˙˙˙˙˙˙       0 0          @     C L  Q # 	D¤ D %R Bń Ę Ä@W(/ Ü˘ <D !r !q 0â  (@ $  	" Ä H P ŕ    v   Ŕ ŕ <p k8 ÷8 Žp Üŕ š@ s Ľ = j ô8 ¨P Đŕ !@ Ă     đ ŕ Ŕ    l @ @    8 p ŕ !Ŕ     8 p ŕ 	Ŕ c    8 °         Ŕ ŕ ?đ ř ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ?˙ř ˙đ ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ?˙ř ?˙đ ?˙ŕ ?˙Ŕ ?˙ ˙ ţ ü ř đ ŕ     Y i857  	D          ˙˙˙˙˙˙       0 0       w ŕ 
  
 	B L˘ Db ˘" QF (  
, X  â° A` 	@Ĺ@	%@%$e HŚ  < !@ >(  G   !     b ŕ đ x ź \  @  8 Đp čŕ őŔ ú  > | ř đŔ áŔ Ă   §    h     Ŕ       @ ŕ ň :    0X pŔ ç Ç       | ŕ đ ř ü ţ 'ţ Çţ ăţ ńţ řţ ýţ ˙ü ˙ř ?˙đ ˙ŕ ˙Ŕ˙Ŕ˙Ŕ˙˙ ˙ţ ?˙ü ?˙Ŕ ?ď ?Ç ? ?      Z i858  	D          ˙˙˙˙˙˙       0 0        đ        @  ŕ  B Ŕ@ ü     H `P '  /Č  /ä  /T  -ň  *
  $
  
@ 
 S   ř     đ ř ř ř ř đ ?ŕ Ŕ  ß > ü 
ýř ţđ ˙`   o 7  Ť 	 á ŕ ŕ @      u      0 ` Ŕ      0   @ @ @ @ @ Ŕ Ŕ  ľ , ü ř     đ ř ţ ţ ţ ţ ?ţ ü ˙ř ˙đ ˙ŕ ˙Ŕ ˙˙7 ˙ţ ˙ü ˙ř ˙đ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ?˙ŕ ˙Ŕ ˙ ˙ ţ ü ř     [ i859  	D               0 0        ˙đ         @    	  *  @!  @!  @!  @!  @!  @A  @  ? @       ˙ŕ   @   0 ` Ŕ        ( h Ř .˙° đ` ďĆ ß ¸ ° ° ° ° ° ° Ŕ  = ˙ű ˙ö ˙ě   đ <˙ŕ y ó ć Ě  0 ` <Ŕ    H ˙ř  8  x ř ˙đ !˙ç #˙Ď #˙ #ř/ #đ/ #đ/ #đ/ #đ/ #đO #đ #˙ @   ?˙˙ţ˙ü˙ř˙đ ?˙ŕ@ ˙ ţ ü ř đ ŕ ?Ŕ     \ i860  	D          ˙˙˙˙˙˙     0 0        Ŕ Ŕ Ŕ Ŕ  ŕ    ` @ `   ° ° ˙    0 0 ` ` Ŕ Ŕ Ŕ Ŕ @ @    ,Ą ` ` `    Ŕ @ @˝     Ŕ Ŕ Ŕ Ŕ  ŕ đ đ đ ŕ Ŕ ŕ ŕ đ đ ˙    0 0 ` ` Ŕ Ŕ Ŕ Ŕ @ @     ] i861  	D          ˙˙  ˙˙  ˙˙˙˙˙˙          ˙˙˙˙             0 0         @   0 ( d F E  	@ 3  â  x  6 % Î @ 0  čP ( B !  @        1   @ 
  
¨    P Î    $  @ 
 @ 
  Ú         ( P   @Î    3Ľ      p    0 p Ŕ­    ]Ž  @   @   @ 
   @   QP (¨ P 
(   @      U˛  @   @ 
 @   
  * @ 
  P ¨ P ¨ P      Ŕ ŕ đ ř ü ţ ˙ ˙ ˙Ŕ ˙ŕ ˙đ ˙ř ü ?ţ ˙ ˙ ˙Ŕ ˙ŕ ˙đ ˙ř ř ?ř ř ř ř ř ř     ^ i862  	D ?         ˙˙˙˙˙˙      ˙˙  ˙˙      ˙˙˙˙         0 0        Dć ¤é îé Şď Şé Şé Şé ˙@@@ @   
ţ             ţ    m @  ż ż ż ˙ż ˙ ˙ ˙ ţ  ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ü     @ @ @ @ć        ć       ĺ    ;Â              ţ     Dć äď îď îď îď îď îď ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ ţ     _ i863  	D                 ˙˙˙˙      ˙˙˙˙  ˙˙˙˙˙˙      ˙˙            ˙˙               0 0      Ä  !32" 13" 132  !3"   12 A  1#"  Q 132 T P !3"  U 12 aTt !Q !#" AU 1 12  !3# 1#"FE 13# 132Tet !3# 13"VE 13# !32Tet !3# 12"VE 13# !#2Tet !3# 12"VE 13# 1#2Tet  !3"VE   12Tet   1#"VE   132Tet  13"VE U 132Tet U 13"VE Ą !32"Tet   Ą     ?ŕ ?ŕ ?đ k?đ ?đŔ<?đŕ<?ńđ~?ńđ~?óř˙?óř˙?óř˙?÷ü˙ż÷ü˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţóţ     ` i864  	D            ˙˙˙˙           0 0       y ˙        ˙Ş     ˙                   `        Ľ ˙ ˙                  o ~ | ~ x ~ | ~ Uw˙˙˙˙˙ | ~ p ~ | ~ x ~ | ~ p ~ | ~    Ĺ ~ş    p ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ¨˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙     a i865  	D          ˙˙˙˙˙˙       0 0          P H $ R Ź @ 	  "@ A  ˘`    
  @ ( A ˘ Ô ¨ p        @    _   0    @     < X đ ` Ŕ    < X   P ˘    N    @   P  
  ( P   @   
   p       p x < ~ ě ŕ  Ŕ ?ŕ đ ˙đ ţ ü ř đ ŕ ?Ŕ  ˙ ţ ü ř đ       @     b i866  	D          ˙˙        ˙˙        ˙˙     0 0         G@ . ďŕ ďŕ          ďŕ ďŕ   t   Ŕ Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ` ` ` ` ` ` ` ` ` ` ŕ ŕ ŕ ŕ ŕ ŕ    t   Ŕ Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ` ` ` ` ` ` ` ` ` ` ŕ ŕ ŕ ŕ ŕ ŕ    t   Ŕ Ŕ ŕ ŕ ŕ ŕ ŕ ŕ ` ` ` ` ` ` ` ` ` ` ŕ ŕ ŕ ŕ ŕ ŕ     ÇŔÇŔďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕďŕ    c i867  	D                 ˙˙˙˙      ˙˙˙˙  ˙˙˙˙˙˙      ˙˙            ˙˙               0 0      Ă  !32" 13" 132  !3"   12 A  1#"  Q 132 T P !3"  U 12 aTt !Q !#" AU 1 12  !3# 1#"FE 13# 132Tet !3# 13"VE 13# !32Tet !3# 12"VE 13# !#2Tet !3# 12"VE 13# 1#2Tet  !3"VE U  12Tet U  1#"VE U  132Tet  13"VE U 132Tet U 13"VE Ą !32"Tet   Ą     ?ŕ ?ŕ ?đ k?đ ?đŔ<?đŕ<?ńđ~?ńđ~?óř˙?óř˙?óř˙?÷ü˙ż÷ü˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţ˙ż÷ţóţ     d i868  	D                ˙˙˙˙˙˙              ˙˙˙˙       0 0       x˙ë˙ß÷˙ďw˙×Ŕ˙ďŔý˙Ŕú˙Ŕ{ý˙Ŕ˙Ŕ˙KŔ} ŔŔŔŔŔ~ŔŔŔŔŔŔ| Ŕ| Ŕ~ Ŕ~ Ŕ| Ŕ| Ŕ| Ŕx Ŕx Ŕp Ŕp 0  ˙   H      (                 s    >   0   > K ˙ţ0   >   ţ8  đ>  ţ8  > 8ţ    ü ř    N         ü ü ü   ŕ Ŕ Ŕ ŕ ŕŠ    @ş  ü ä ü  ü ä ü ü  ü ü ř     Ů ŕ đ đ ř ř ř    ä ? ? Ŕ ˙ŕ    ˙˙˙    e i869  	D          ˙˙˙˙˙˙     0 0        Ŕ    $H ( ( +¨ ,h )( *¨ *¨ *¨ *¨ *¨ *¨ *¨ *¨ *¨ *¨ *¨ *¨ .¸ (  (  (  (  (  (  (  '  @      Ŕ ` 0     Đ P P P P P P P P P P P P @ @ @ @ @ @ @ @ Ŕ      Ŕ ŕ đ <x 8 8 ;¸ ?ř ?ř >ř >ř >ř >ř >ř >ř >ř >ř >ř >ř >ř >ř >ř 8ŕ 8ŕ 8ŕ 8ŕ 8ŕ 8ŕ 8ŕ ?ŕ Ŕ      f i870  	D          ˙˙˙˙˙˙    ˙˙˙˙     0 0        Ŕ   	 H ( `( ˙ďţp ( P ( P ( P ( P( P( P( P( P( P( P( P( P( P( P( P( P( P( P( PČ P Pŕ P @     Ŕ ` 0                       0 ŕ    ľ 8Çţ 8Çţ <ţ     Ŕ ŕ đ x 8 8 ˙Zţp 8 P 8 P 8 P 8 P8 P8 P?˙ţP8 P8 P8 P8 P8 P8 P?˙ţP8 P8 P8 P8 P8 Př P?˙ţPŕ P @     g i871  	D              ˙˙    ˙˙˙˙˙˙  ˙˙˙˙        ˙˙  ˙˙             0 0       =ŕ %/˙Ü'8ĂT*ˇ]T*°UT-ˇŐt-¨Ő?ç÷ü ?˙ţ$"    ?˙ţ -đ?Ç O˙ @.?ŔB"@B"@"@"@b"@b"@ąî"@Ă"@&"A"?ÂîJ˙ţ   k  " " "   óűţŁ  ` `< `< `x aü c g N < x 
` ŕ m´     Ŕ Ç<H˘O˘H"G"xä      Ý    @¨ wnÜ˙ü˙ü             Â `˝    Ä  ś    ř     ?đ ?˙Ü?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ >đ?Çţ?Ď˙?Ŕđ>?Ŕđ~?Ŕđ~?Ŕńţ?Ŕóţ?Ŕ÷ţ?Ŕ˙ţ?Ŕ˙ţ?Ŕ˙>?Ŕţ>?Áü>?Ă˙ţ˙ţ˙ţ    h i872  	D            ˙˙˙˙    ˙˙˙˙˙˙     0 0       G ŕ      ţŔ9 E E@ E?˙Ŕ9 {    ŕ¸    r   P 
¨ T * U8*ŞU *yT 
¨ P ¤ (
 T*ŞUmŞUm*ŞUT*Ş T 
¨ @    ? @ 
¨ T 
¨ DţŞU *Ş D 
¨ T 
¨ @ź    4Ć  
¨ T*ŞUD*Ş	UT*
¨ T 
¨ @    n ŕ ř ü ?ţ żţ˙Ç˙Ç?˙˙żţ{?ţ ü ü ?ţ ü*Ťżţ˙ď˙Ć˙ď?˙żţü*?ţ ü č @     i i873  	D          ˙˙˙˙˙˙  ˙˙˙˙          ˙˙               0 0        ŕ  `      @ @ @ @@  A A B @        đ   đ  đ  0 Ŕ    j ŕ ř ţ u^ ęŤ ŐU ¨
P @  Ŕ   P h. 0 8 ¸ ¸ ° °  Ľ    C 
  T *Ş Wő Żú _ý ľJ Wí 7ę [Ô -¨  	˝    Š Ő    Š  Ő    %Á   ŕ @ @ @ @ @Ľ    á ŕ đ đ đ Ŕ     ŕ ř ţ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙ ˙ ˙ ţ ţ ?ü ?ü ř ř đ đ đ ř đ ř đ ř đ Ŕ     j i874  	D            ˙˙˙˙˙˙     0 0       `  H $    Ŕ ŕ đ x ?ŕ   Ë á á@ 	ŕ` 	`  Ŕ        & ŔO 0 > | ř đ ŕ Ŕ    4 @   °        Ŕ      J    ¤ ŕ t 4    Ŕ ?Ŕ ˙Ŕ ˙ŕ Ř ° `    ` đ x <    Ŕ ŕ đ x ?ŕ ü ţ ˙ ˙ ˙Ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ř ˙ţ ˙ ?˙ ţ ü ř đ ŕ Ŕ     k i875  	D                ˙˙      ˙˙˙˙˙˙       0 0       ŕ 0 @ ú    HH  8 @       (     
@A #P"¨@ŔP Px ŕ
Ô ¤ ?Â  B @$ @(  ˙ŕ     
  P ( P   @  ă    ! @ *¨ T   @   ă    y ř ü ţ ˙ /˙ ˙Ŕ ˙ŕ ˙Đ ˙č ˙ň řő đyŕ>@ŕ  ŕ ŕ ŕ `  @     @  ?Ŕ ?Ŕ ŕ    ă   < <      ŕ ?ř ü ˙ţ ˙ţ ˙ţ ˙ ˙ ?˙Ŕ ˙ŕ ˙đ ˙ř ˙ţ ˙ ˙)ř˙Ŕđŕđ?đđ?¸đđŔđŔđŕđř ŕü ü ?ţ ?ţ ü ř ˙đ ˙ŕ    l i876  	D          ˙˙˙˙˙˙  ˙˙˙˙         0 0       ] Ŕ  8 ˙)ŕ  ç˙ŕ 2B @Ŕ Ŕ@ @  @  0  L  a> | ř 	đ ŕ Ŕ     B Ŕ   ˝ ż ?  ˙ ˙Ŕ ˙° ?` Ŕ  Š    Ľ g˙Ů    +§ `     @ @    Ľ    _ Ŕ ?ř ˙ŕ˙đ˙!ŕ?˙˙Ŕ ˙Ŕ@˙Ŕ ˙Ŕ ˙đ ˙ü ˙ţ ţ ü ř đ ŕ Ŕ      m i877  	D ?                 ˙˙˙˙  ˙˙˙˙˙˙  ˙˙˙˙       0 0       C     0 p x x ü ü ü ř ó ç N   ˇ    p  @ @  D           @Ŕ@Ą?ů b $ JŔ, p l $ ÉB 2|  ŕ    LŤ   
  +    P    `  Ŕ  Ŕ    °     ż    Bł  
  Ŕý˙ ű˙°÷?řß ˙ď đ lü Ű` 6°      ś   Ŕ `ź     0 @0 @8 x |  |  ţ  ţ ˙ ˙˙Ŕ˙Ŕ˙˙?˙ţ˙ü˙đ˙˙˙˙ ˙ţ ?ü đ ŕŔ  Ŕ     n i878  	D               0 0                     ˙ü˙ü˙ü                 s @ @ @ @ @ @ @ @ @ @ @ @  ?üţ @ @ @ @ @ @ @ @ @ @ @ @ Ŕ      Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ ˙ü˙ţ˙ţ?˙ţ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ     o i879  	D               0 0       ¸ ˙ü˙ü˙üź    ż  ?˙ţ¸    ¸ ˙ü˙ţ˙ţ?˙ţ¸     p i880  	D               0 0         8 8| |> ř đŕŔŔŕđ ř> | >ř đ ŕ Ŕ ŕ đ >ř | ř> đ ŕŔŔŕ đ> ř| |8 8     n    0 ` Ŕ      0      0 ` Ŕ            8 8| |> ţ üřŔđŕŕđŔ ř? | >ţ ü ř đ ŕ đ ?ř | ţ> ü řđŔŕŕŔđ? ř |> >       q i881  	D               0 0       Z  Ŕ ŕ ŕ ŕ Ŕ  ˙ü˙ü˙ü  Ŕ ŕ ŕ ŕ Ŕ     9˘   0 ` Ŕ  ?˙ţ   0 ` Ŕ    i  Ŕ ŕ đ đ đ ŕ Ŕ ˙ü˙ţ˙ţ?˙ţ  Ŕ ŕ đ đ đ ŕ Ŕ     r i882  	D               0 0       &¤ ˙ü˙ü˙ü ˙ü˙ü˙ü¨    Ť  ?˙ţ  ˙ţ¤    0¤ ˙ü˙ţ˙ţ?˙ţ ˙ü˙ţ˙ţ˙ţ¤     s i883  	D          ˙˙      ˙˙˙˙˙˙      ˙˙     0 0       c ˙                  ˙    2 `Á Ć Ř Ŕ ˙ ˙ Ŕ Ř Ć `Á˝    I & 8   ? Ŕ ? 8 &     @ ŕ @     Y ţ`˙ţx˙ţ ţ > ö wâxăö`÷ţţ˙î˙ţ}˙ţx˙ţ}˙ž˙˙ž˙ţ     Đ˙     t i884  	D          ˙˙      ˙˙˙˙˙˙     0 0       c ˙                  ˙    D ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    #´ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ´     Đ˙     u i885  	D                ˙˙˙˙        ˙˙  ˙˙˙˙˙˙     0 0       c ˙                  ˙    Y ˙ţ˙ţţţđţŔţ ţx ` @ @ ` x  ţŔţđţţţ˙ţ˙ţ    AĽ  đ ?ü ř đŕŕř?ŕü?ŕüŕřđŕ ř ?ü đ Ľ    *ą ŕ ° ř 8 Č đ p ŕą    ś @  Ŕ 0  ľ     Đ˙     v i886  	D          ˙˙      ˙˙˙˙˙˙     0 0       c ˙                  ˙    S ţţţţţáţÁţÉţţ˝ţůţńţáţţţţţţ    V ţ ţ ţ ~ ~ x |> l6 f B ` p x ~ ~ ţ ţ ţ     Đ˙     w i887  	D          ˙˙      ˙˙˙˙˙˙     0 0       c ˙                  ˙    D ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ  ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    N p p p p p p p ˙ţ˙ţ˙ţ p p p p p p p p     Đ˙     x i888  	D          ˙˙˙˙˙˙      ˙˙     0 0       c ˙                  ˙    @ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    O x x x x x x x ˙ţ˙ţ˙ţ˙ţ x x x x x x x     Đ˙     y i889  	D              ˙˙  ˙˙˙˙˙˙  ˙˙         0 0       c ˙                  ˙    \ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ    \ ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř    \ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ     Đ˙     z i890  	D          ˙˙      ˙˙˙˙       0 0       J ˙             ˙    (° ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ´    #Ě ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ     Đ˙     { i891  	D ?                 ˙˙    ˙˙˙˙˙˙  ˙˙      ˙˙˙˙       0 0       c ˙                  ˙    \ U@ *  U@ *  U@ *  U@ *  U@ *  U@ *  U@ *  U@ *  U@ *     \ *  U@ *  U@ *  U@ *  U@ *  U@ *  U@ *  U@ *  U@ *  U@    \ ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř    \ T Ş T Ş T Ş T Ş T Ş T Ş T Ş T Ş T Ş    \ Ş T Ş T Ş T Ş T Ş T Ş T Ş T Ş T Ş T     Đ˙     | i892  	D              ˙˙  ˙˙˙˙˙˙  ˙˙         0 0       c ˙                  ˙    / UT *¨ UT *¨ UT *¨ UT *¨ UTÂ    M *Ť˙ţUT *Ť˙ţUT *Ť˙ţUT *Ť˙ţUT *Ť˙ţ ˙ţ ˙ţ ˙ţ ˙ţ     BĄ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ     Đ˙     } i893  	D          ˙˙      ˙˙˙˙˙˙      ˙˙     0 0       c ˙                  ˙    V @00@ a  ŕ ˙ţ˙ţ ŕ  ! Á Ŕ `    K 0@L@2@LA°bF@Y f řţ řţ &d Ú[ "DŔÂC @Řd@&@    A ü?đü?ŔAü?p|>|8>~ ~ţ Ŕţ ţ|8>x<`ü?ü?Ŕü?ŕ     Đ˙     ~ i894  	D          ˙˙      ˙˙˙˙˙˙     0 0       c ˙                  ˙    Z ˙ţ˙ţ˙ţ˙ţ~˙ţ|˙ţyő˙ţyű˙ţyő˙ţy˙ţy˙ţ|˙ţ~˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    +Ź ŕ  
  
    ŕ˛     Đ˙      i895  	D          ˙˙      ˙˙˙˙˙˙     0 0       c ˙                  ˙    Q ˙ţ˙:ţü?ţü?ţü?ţü?ţü?ţţţţţü?ţü?ţü?ţü?ţü?ţ˙ţ˙ţ    HĽ Ŕ Ŕ Ŕ Ŕ Ŕ ţ ţ ţ ţ Ŕ Ŕ Ŕ Ŕ ŔĽ     Đ˙      i896  	D              ˙˙  ˙˙˙˙       0 0       c ˙                  ˙    D ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ  ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    N p p p p p p p ˙ţ˙ţ˙ţ p p p p p p p p     Đ˙      i897  	D ?         ˙˙      ˙˙˙˙    ˙˙˙˙˙˙               0 0       c ˙                  ˙    F ˙ţ˙ţ˙ţ˙ţ˙ţ `   L ˙ţ˙ţ˙ţ˙ţ˙ţ    %°  ď˙ţ×˙ţ}Ş˙ţ|Ćţ| ţ|ţ|ţÇ˙ţ°    ą      8˛    ľ (    @  ľ    ¸ U 8  š     Đ˙      i898  	D          ˙˙˙˙˙˙      ˙˙  ˙˙         0 0       c ˙                  ˙    # ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţĚ    #´ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ´    #Ě ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ     Đ˙      i899  	D                ˙˙      ˙˙˙˙    ˙˙˙˙˙˙     0 0       c ˙                  ˙    Y ŕ ŕ ŕ ŕ  ` ~` } } | } } ~@ `  ŕ ŕ ŕ    L G˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ťţ Çţ Ćţ Çţ +ţ <˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ    0­ |   D      D   |Ş    ˝ 8 ( 8  Ž     Đ˙      i900  	D          ˙˙      ˙˙˙˙˙˙      ˙˙     0 0       c ˙                  ˙    D `Á Ć Ř Ŕ ˙ ˙@ Ŕ ŕŘ @Ć `Á   @ ŕ @     * & 8   ? ?   8 &ž    W ţ`˙ţx˙ţ ţ ţ ž x˙ž`˙ţ{ú˙ńđ˙űú˙ţ˙ţ˙ž˙˙ž˙ţ     Đ˙      i901  	D          ˙˙      ˙˙˙˙˙˙      ˙˙     0 0       c ˙                  ˙    D ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ  ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ    J P P P P P P P ß˙ţ ß˙ţ P P P P P P P P    L                 ˙ţ                       Đ˙      i902  	D          ˙˙      ˙˙˙˙˙˙      ˙˙     0 0       c ˙                  ˙    # ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţĚ    #´ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ´    #Ě ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ     Đ˙      i903  	D ?               ˙˙˙˙˙˙  ˙˙      ˙˙˙˙           0 0       _ ˙         ŕŔ      ˙    Y đ đ đ đ đ đ đ ň  ö ń` đ đ đ đ đ đ đ đ    Z ř ř ř ř 8 ¸      8 ř ř ř ř ř ř    \ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ    Ž Ŕ @ ŕ @ ŔÁ    
ž   ž     Đ˙      i904  	D          ˙˙˙˙˙˙  ˙˙         0 0       c ˙                  ˙    S ˙ţ˙ţ˙2ţü?ţđţŕţŕţŔţŔţŔţŔţŕţŕţđţř?ţ˙ţ˙ţ˙ţ    >Š Ŕ đ ř ř ?ü ?ü ?ü ?ü ř ř đ ŔŠ     Đ˙      i905  	D                ˙˙˙˙˙˙  ˙˙         0 0       c ˙                  ˙    \ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ    \ ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř    \ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ     Đ˙      i906  	D  ˙˙˙˙˙˙        ˙˙  ˙˙         0 0       T   *  
U_đ|*żůüU@ *  U_˙ř*ż˙đ ˙đ˙ŕ ˙Ŕ˙Ŕ p p 0    d    Á            p   0ř ` ` Ŕ     * Ş  U@ Ş  U@ Ş  U@ Ş  U@Ę    7   ŕ> ˙ü ˙ř ˙đ˙đ ˙ŕ?˙ řŕ `     m  Şż ˙ŕ˙ó˙˙ţ˙ţ˙ţ˙ü˙ü˙ř˙ř˙ř˙ř˙đ?˙đ˙ŕ˙đ˙đ˙ř ŕx ŕx Ŕ8       i907  	D      ˙˙    ˙˙      ˙˙˙˙˙˙     0 0       | x đ ` đ đ đ đ đ p 0 q q q á Ŕ Ŕ   8 x @~ <  1 Ć 1 đ     v         Ŕ Ŕ @ 0       Ŕ Ŕ Ŕ   Ŕ  ŕ <      j              @ $   ?˙   $ D@        VŠ        @   @  đ ˙  C@ "  P (      x ţ | ô ő ő ÷ ÷ v 6 w wŔ wŔ ÷Ŕ 7ŕ đ ř ř 'ř ţ ü ?˙Ŕ ˙Ŕ W˙Ŕ ç˙ w˙ 7˙ 
˙Ŕ 7˙ ˙ŕ ź        i908  	D  ˙˙˙˙˙˙  ˙˙          ˙˙       0 0        0 ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ŕ Ŕ        Ŕ ü ü ř ř ř ř ŕ ŕ ŕ Ŕ Đ đ đ đ đ đ ř đ ü ü ř đ         ř cř ďř ˙ř ˙ř ?ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř ř    j     @     8              8 >p đ     0 ř ü ˙ ˙Ŕ˙üc˙ţ˙ţ˙ţ˙ţ˙ř˙ř˙ř˙đ˙ô˙ü˙ü˙ü˙ü˙ü˙ţ˙ü˙˙˙ţ˙üź ˙ř ?đ đ      i909  	D            ˙˙˙˙    ˙˙         0 0       8     8 ü żţ ż˙ ˙ ˙ţ ˙ ˙ ˙Đ         @  Ŕ Ŕ  Ŕ @ ` ` `   đ Ŕ            @ i~      -° ˙˙˙˙Ŕ˙ ˙ü ˙ř ˙ŕ ˙ŕ­    0Ô ˙đ ˙đ ˙ř ü ˙ţ ˙ü ˙ř ˙ř żř          ¸ ţ ż˙ ˙˙Ŕ˙Ŕ˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙đ˙Ŕ˙ ˙ţ ˙ř ˙ř ˙ü ˙ü ˙ţ ˙ ˙˙ ˙ţ ˙ţ oţ        i910  	D    ˙˙      ˙˙˙˙˙˙     0 0       O   ` ` @ $Ŕ         {   üę ÇÄ 
     Q   > 8~ ţ ~ ~Ž¨ ~Č ţ˙í~Ď@~?Đ~đţě> Čr č        Ă    §    d   ` ` @ $Ŕ  > 	~ ţ ~1 ~ŽŻ ~Č ţ˙ď~Ďŕ~?đ~ôţü>ű ř~ ú<üú ĎÄ        i911  	D  ˙˙        ˙˙˙˙                      ˙˙˙˙˙˙     0 0       ` 1 ˙ř ˙Ŕ ˙đ ˙Ŕ˙ü˙ü  ( ( ÉŔ    "@ ˙ř ?˙đ ?˙ŕ ˙ ü Ŕ     a¤ x    | ŕ Ŕ           x ` ?  đ     5¨ ˙,řă˙đŐ˙ă˙ A~ A>  < Q A8 Q< >c> ˙řŠ    ­    Â    &­   @  @ @  @­    ą "       "ś    !š        ­    { 1 ˙ř ˙Ŕ ˙đ ˙Ŕ˙ü˙˙˙ţ˙ü˙ŕ˙Ŕ˙˙˙ ˙ ˙ţ ?˙(˙˙ţ ?˙ţ ?˙ü ˙ř ˙ŕ ˙  đ       i912  	D              ˙˙    ˙˙       0 0        đ p  @        @ @ @         @ @ @          @ p đ     đ Î / /  ]  Ř8 ?ř8 ?đ8?ŕ|	?ŕ~?ŕ~ßđ˙řĎ˙üń˙üń˙ţüţ?ü ü?ü |?ü |ü x˙ř˙đ˙Ăŕ˙ÇŔ˙Ç ć đ    z  Ax0 đĐđĐŔúđŕ˙ŕp˙ŕx˙ŕ ˙Ŕ˙Ŕ÷ŔöŔŔ`ŕ  ŕ  0     p ˙ ˙ ˙ ˙ ţ ţ < 8 8     z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ      i913  	D          ˙˙               0 0         Ŕ             @ @ @ @    6      a @B  b R ) Ŕ
?ńä ńŕO ¸đ g 8       @   Ŕ   Ŕ ?  ?Đ ?ŕ ?Đ č đ č đ ˙č *˙ô ˙ů ˙ô=˙ú@˙ô -˙úP˙ô¨?ń@Ŕ˙ńŕ °đ G     c @  @   @   P             	  
@   	P        Ŕ ŕ ŕ ?đ ?đ ?đ ?đ ř ř ř ř ˙ü ˙ü ˙ü ˙ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ü˙ü˙ř˙ŕ˙ţ ˙đ  8      i914  	D          ˙˙˙˙       0 0         @ 	   $H H$   	 A@	Á ŕ$đHđ$ 
H$H	 @C 	  H$ $H  	  @       Ŕ ` ° 7Ř oě >ßö žű |}ř>Ŕđ`ŕ°7ŕŘoüě_üôoüě7üŘü°ü`ü~Ŕ|}ź{ ßö oě 7Ř ° ` Ŕ       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ü ?ř đ ŕ Ŕ       i915  	D          ˙˙˙˙       0 0         @ 	   $H H$   	 @@	   `$ pH x$˙ü ˙ţ
˙üH x$ pH `	  @@ 	  H$ $H  	  @       Ŕ ` ° 7Ř oě >ßö żű ý˙ţŔ˙`˙°7˙Řo ě_ ôo ě7˙Ř˙°˙`˙ţŔýżű ßö oě 7Ř ° ` Ŕ       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ü ?ř đ ŕ Ŕ       i916  	D          ˙˙˙˙       0 0         @ 	   $H H$   	 C@	 $H$ 
Hđ$đHŕ	Á @A 	  H$ $H  	  @       Ŕ ` ° 7Ř oě >ßö ź{ |}ü~Ŕü`ü°7üŘoüě_üôoüě7ŕŘŕ°đ`ř>Ŕ|}žű ßö oě 7Ř ° ` Ŕ       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ü ?ř đ ŕ Ŕ       i917  	D          ˙˙˙˙       0 0         @ 	   $H H$   	 @@	   $ H< $ţ ˙ţ
ţH< $ H 	  @@ 	  H$ $H  	  @       Ŕ ` ° 7Ř oě >ßö żű ý˙ţŔó˙`ă˙°7Ă˙Řoě_ ôoě7Ă˙Řă˙°ó˙`˙ţŔýżű ßö oě 7Ř ° ` Ŕ       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ü ?ř đ ŕ Ŕ       i918  	D          ˙˙˙˙       0 0         @ 	   $H H$   	 @@	  ü$?ţH?ü$8 8
8 H8 $8 H8 	8 @@ 	  H$ $H  	  @       Ŕ ` ° 7Ř oě >ßö żű í˙ćŔŕ`Ŕ°7ŔŘoÇçě_ÇďôoÇ˙ě7Ç˙ŘÇ˙°Ç˙`ÇţŔýżű ßö oě 7Ř ° ` Ŕ       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ü ?ř đ ŕ Ŕ       i919  	D          ˙˙˙˙       0 0         @ 	   $H H$   I @äň@	ů  ŕ$ ŕH ŕ$ŕ ŕ
ŔH $ H 	 @@ 	  H$ $H  	  @       Ŕ ` ° 7Ř oě >ßś ż ~üŔ˙`˙°7˙Řođě_ŕôoŕ?ě7ă˙Řă˙°ă˙`ăţŔcýżű ßö oě 7Ř ° ` Ŕ       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ü ?ř đ ŕ Ŕ       i920  	D          ˙˙˙˙       0 0         @ 	   $H H$   	 Oä@	 $?řH?ř$?ř ?ř
0H0$H	 @X4 i  H$ $H  	  @       Ŕ ` ° 7Ř oě >ßö ° oíëîŔáď`Ŕ°7ŔŘoŔě_ŔôoçĎě7çĎŘóç°ýű`ůňŔsĺ§Ë ß oě 7Ř ° ` Ŕ       Ŕ ŕ đ ?ř ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙đ?˙ř˙ü˙ţ˙ţ˙ţ˙ü?˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ü ?ř đ ŕ Ŕ       i921  	D  ˙˙      ˙˙˙˙˙˙     0 0        ŕ p ă ü˙ţ@˙ ˙Đ'˙Č/˙č_˙ô_˙ô_˙ôż˙ú° ° ° ° ° ż˙ú_˙ô_˙ô_˙ô/˙č'˙Č˙Đ˙ ˙ţ@üă p ŕ     ŕ p    @   0       @ O˙äO˙äO˙äO˙äO˙ä@         0   @  p ŕ     ŕ ü ˙ ˙˙Ŕ˙ŕ˙đ?˙ř?˙ř˙ü˙ü˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü˙ü˙ü?˙ř?˙ř˙đ˙ŕ˙Ŕ˙˙ ü ŕ      i922  	D  ˙˙      ˙˙˙˙˙˙     0 0       t ŕ ?ř ˙ţ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ ŕ ŕ ŕ ŕ ŕ˙ŕ˙Ŕ˙Ŕ˙˙˙ ˙ţ ?ř ŕ    ´ ˙ ˙ ˙ ˙ ˙š    t ŕ ?ř ˙ţ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙Ŕ˙Ŕ˙˙˙ ˙ţ ?ř ŕ      i923  	D  ˙˙      ˙˙˙˙˙˙     0 0        ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙2ţx@s32fs32fsó2fqó2fxó2f|s2~32~32~s32~s32~xs~˙ţ?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ˙ ţ    6¨ żyđĚÍĚÍ"ÍÍÍÍđĚÍ ĚÍĚÍĚÍy¨     ţ ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ˙ ţ      i924  	D                        ˙˙       0 0        ř "5T č+đĐXŕřĐđŕđĐŕčŔ Ô "jŞ ÔđčXĐřŕđĐđŕŕĐŔ č+ "T čđĐXŕřŔđŕđŔŕŕŔ Đ (, X đ ŕ     
¨  (         ( T (         (  (            (  
     * Ŕ ŕ đ đ đ đ ŕ ŔŮ    *­ Ŕ ŕ đ đ đ đ ŕ Ŕľ    4Í Ŕ ŕ đ ř ř ř ř đ ŕ Ŕ     ř ?ü ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ţ ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ţ ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ?ü ř đ ŕ      i925  	D                  ˙˙˙˙             0 0        ř "5T č+đĐXŕřĐđŕđĐŕčŔ Ô "h* ĐđŕXŔřŕđŔđŕŕĐŔ č "T č+đĐXŕřĐđŕđĐŕčŔ Ô *Ź X đ ŕ     
¨  (         (  	(            (  (         ( P 
     * Ŕ ŕ đ đ đ đ ŕ ŔŮ    4Š Ŕ ŕ đ ř ř ř ř đ ŕ Ŕą    *Ń Ŕ ŕ đ đ đ đ ŕ Ŕ     ř ?ü ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ţ ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ţ ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ?ü ř đ ŕ      i926  	D            ˙˙                   0 0        ř "4 čđĐXŕřŔđŕđŔŕŕŔ Đ "h* ÔđčXĐřŕđĐđŕŕĐŔ č+ "UV č+đĐXŕřĐđŕđĐŕčŔ Ô *Ź X đ ŕ     (            (  (         (  *¨  (         ( P 
     4 Ŕ ŕ đ ř ř ř ř đ ŕ ŔŐ    *­ Ŕ ŕ đ đ đ đ ŕ Ŕľ    *Ń Ŕ ŕ đ đ đ đ ŕ Ŕ     ř ?ü ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ţ ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ţ ˙đ˙ř˙ř˙đ˙đ˙ŕ˙Ŕ ˙ ?ü ř đ ŕ      i927  	D              ˙˙       0 0        ˙ţ@ @ "JAR@"H B@"HB@"HB@"JB@ @ ˙ţ@ @ @ @ @ H @ "@ BES@ "@ B$^@ ˙ţ    x ?˙ü?˙"ü5÷žŹ?Ý{ü7ßź?Ý{ü7ďź?Ý{ü7ďź?Ý{ü5÷ź?˙ü?˙ü ?˙ü?˙*ü7vďl7vďl7vďL2$o\:­o:Źo8/\=ŰŻL=ŰĄl=ŰĄl?˙ü    )Č $ R RŔS $P $P$^     ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ       i928  	D            ˙˙         0 0        ˙ţ@ @ @ 
@ ˛@ @@ @  @ @ @A" NB@ ˙ţ@ @ @ @ @ H @ "@ BES@ "@ B$^@ ˙ţ    v ?˙ü?˙*ü1ă:6Ý:7]ź7][ź7]Kź7]kź7]kź6]cź0Ásź1ăsź?˙ü ?˙ü?˙*ü7öďl7vďl7vďL2$o\:­o:Źo8/\=ŰŻL=ŰĄl=ŰĄl?˙ü    P $Ĺđ	"Ä@˘¤@˘¤@˘@˘@˘@	"@@ $	 R RŔS $P $P$^     ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ     Ą i929  	D            ˙˙˙˙˙˙     0 0       ˙                              ˙    ˙ţ˙ţ˙ţ˙ţ˙Vţ˙üţ˙ř~˙ř~˙ř~˙üţ˙đţ˙ŕ~˙Ŕ~˙>˙˙˙Ŕţ˙đ~˙ŕ~˙â>˙Ć>˙Ç>˙Î~˙~˙~˙>˙ţ˙ţ˙ţ˙ţ    g        ? Ŕ oü x ?   Ŕ 9Ŕ 8Ŕ 1 q c sŔ    ˙˙˙    ˘ i930  	D            ˙˙         0 0       ˙                              ˙    ˙ţ˙ţ˙ţ˙fţ˙ţ˙ţ|˙ţ|˙ţ|˙ţ|˙ţd˙ţd˙ţd˙ţd˙ţdţdţd?ţ`?ţ` ţ` ţ` ˙ţ`˙ţp˙ţp˙ţp˙ţx˙ţx˙ţx˙ţx˙ţ˙ţ    w ` ` l l l l l l l l l` |ŕ ýŔ ýŔ ˙ ˙ ˙ ţ ţ ü ü ř ř ř ř    ˙˙˙    Ł i931  	D          ˙˙         0 0        đ         đđ       đřđř         ř ř     ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ˙ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ     đ đ ř ř ř ř ř ř ř ˙đ˙đ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř ř ř ř ř ř ř ř ř ř ř     ¤ i932  	D      ˙˙  ˙˙˙˙˙˙     0 0       c˙˙˙˙˙˙˙Ç˙Ç˙ŕ˙ŕ˙ł˙˙8˙ţx˙ţř˙ţü_ţöţó˙?çż˙Ç˙˙Ŕ˙đ˙   c p ř ř ř p p 8 8 ř ř L î Çü ţ   	đŕ Ŕ@ ŕ8 p ?ŕ     ˙˙˙    Ľ i933  	D  ˙˙      ˙˙˙˙˙˙             0 0        đ ţ ˙
đŔŔŕ ^đ x?Ŕ <;ŕ yđ př p| ŕ> ŕ ŕŕŔŕŕŕđŕ řŕ |p >p x 8 Ü< ü ř đŔŕđŔ˙ ţ đ    r đ ?ü ˙ $˙ ?űŔüŕď`ď0÷°ÁńŘŕýđ~¸ 
8|8~8 8˙ř˙Áđ˙ŕđ˙đ`˙ř ˙ü ˙ţ ˙ţ ?ü đ    8    Ŕ @   ` @ř?ŔŔŔ˙Ŕ´    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Ś i934  	D      ˙˙  ˙˙˙˙˙˙     0 0       s     Ŕ Ŕ ŕ ŕ đ đ >ř <8 x| pü áţ Ŕ ˙ ˙ ú?řř˙ŔřŔ˙ŕ˙ŕ    8š  Ŕ    ?ř p ŕ Ŕ       y     Ŕ Ŕ ŕ ŕ đ đ ?ř ?ř ü ü ˙ţ ˙ţ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ     § i935  	D  ˙˙      ˙˙˙˙˙˙     0 0       m   Ŕ Ŕ ŕ ŕ đ p 8 8 < < |> |> ţ ţ ˙˙
ţŔţŔ˙ŕ˙ŕ    9ą  Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ        p   Ŕ Ŕ ŕ ŕ đ đ ř ř ?ü ?ü ţ ţ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ     ¨ i936  	D            ˙˙    ˙˙˙˙˙˙     0 0        đ p  @        @ @ @         @ @ @          @ p đ     đ ţ řŕŔŔŕŔđřř?ü?ü?&ü˙ţ˙ţţţţţüţüţřţřţ?řü?˙ü?ţüřřřřđđđŕřŔř ~ đ     ŕ ř ?ü ?ü ţ ţ ~ ~ ~ ü ü ř ř đ đ ŕ ŕ ŕ  ŕ ŕ đ đ ŕ ŕ     z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Š i937  	D          ˙˙˙˙       0 0        ŕ 7p    ŔŕŔđ?Ŕř?ŕřđüđüř?ü˙üţ˙üţ˙ţ˙ţ˙*ţŔŔ@ŕ@đ@đ ?ř üü˙ţ ˙@˙˙ ü ŕ    w ŕ ü ˙ţ ˙ţ ü ?ř ?ř đ ŕ ŕ Ŕ    )üüř?üř?ü?đř?ŕř?ŕřŔđđŕ Ŕ      ŕ ü ˙ ˙˙Ŕ˙ŕ˙đ?˙ř?˙ř˙ü˙ü˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü˙ü˙ü?˙ř?˙ř˙đ˙ŕ˙Ŕ˙˙ ü ŕ     Ş i938  	D        ˙˙˙˙˙˙         0 0        ŕ  ü ř˙ đŕ?Ŕŕ?ŕŕ?đ?đř?ř˙ř˙FüŔ?ü˙Ŕ?ü˙ř?ţ˙ř?ţ˙ř?ţ˙ř?ţ˙ř?ţ˙ř?ţ˙ř?ţř?ţř?ţř?ü?ř?ř?ř?řŔđŔŕŔŕ˙˙ ü ŕ    x   Ŕ Ŕ Ŕ   ?Ŕ ?Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ ?ř ?ř ?ř    ˇ Č     ŕ ü ˙ ˙˙Ŕ˙ŕ˙đ?˙ř?˙ř˙ü˙ü˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü?˙ř?˙ř˙đ˙ŕ˙ŕ˙˙ ü ŕ     Ť i939  	D          ˙˙˙˙       0 0        đ p đ@đ đ<đ đ đ@đ@đ@đđđđđđđđđ@đ@ @ ŕ ŕđđŕ ŕ@ p đ    ~ đ Lţ đđŔđŕđđđřđř?đü?đü?đüđţđţđţđţđţđţđţđţ?đü?˙ü?ţüřřřřđđđŕřŔř ~ đ    z đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ˙ţ ˙˙ţ˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Ź i940  	D          ˙˙˙˙˙˙       0 0       ˙ţ   ^Ŕ 	
P
P
P
P
P
P
P
P
P
P@@@@@     ˙ţ   z ˙ü˙ř` ` `Ŕ ` R` ` ` ` `( `( `( `( `( `( `( `( `( `8 `  `  `  `  ` @ `  ` ` @    ~  ˙bţü?ţřţóďţóçţóçţňgţđ'ţđţđţđţđţđţđţđţđţđţđţóţóţóţóţű?ţüţü˙ţ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    ­ i941  	D          ˙˙˙˙˙˙       0 0       ˙ţ    :@@  	ČČ#Ä#ÄCÂCÂ  
AA !˙á    ˙ţ    ˙ü˙ř` ` ` @ ` @ ` `  ` ` ` ` ` `$ `  `" ` 
 ` ! `@` `@
`Ŕ ` @a 	a @ b Ŕ ` c˙đ` @      ˙ţ˙>ţţ?ţţ?ţü?ţüţůßţůĎţóďţňgţä7ţäţĚţĚţţţ>ţ>~?~˙>ţžţ?˙?Ţ  ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    Ž i942  	D          ˙˙˙˙˙˙       0 0       ˙ţ   "  @@  2!#ČGOżú q áŔ AA !˙á   ˙ţ    ˙ü˙ř` ` `  ` `@ ` `  ` ` ` ` ` )` ` ` ` Â `A `@ ` `a 0 a `@b Ŕ b  dŔ ` g˙đ@      ˙&ţţ˙ţţţüţü?ţůżţůţóßţóĎţçďţç6ţÎ÷ţĚ3ţţ9ţ }ţ ţ`ţ~ú~ř>ř?žřü?Ţ  ?˙ţ˙ţ    ˙ţř˙˙ţ    Ż i943  	D          ˙˙˙˙˙˙       0 0       ˙ţ   Lŕ đ đ đ ŕ ŕ p p ?đ?đ Ü řü  A á Á0Ŕpŕ
Ŕ     ˙ţ    ˙ü˙ř` ` ` ` ` ` ` ` ` ` 	`  `ř ` ` `Ŕ `đ ` ` ` 0` ` @`  ` 0 ` ŕ ` ` @      ˙ţI˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţŔţŔţ`ţ#˙ţţ0ţxţřžěćĂ?žţţŔţđţ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    ° i944  	D          ˙˙˙˙˙˙       0 0       ˙ţ    "đřá ! ! ! ! ! "!řáđ    ˙ţ    ˙ü˙ř` ` ` `č ` ` ` ` ` ` cüĐb b b b b ` "côđ` ` ` ` ` `  `ř ` @      ˙ţ˙&ţđţđţóçţóçţóçţóçţóçţŕđ˙Î˙Î˙Î˙Î˙&Îŕŕóçţóçţóçţóçţóçţđţřţ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    ą i945  	D          ˙˙˙˙˙˙       0 0       ˙ţ   
    Â0 @@a@@ 0Á  
      ˙ţ   | ˙ü˙ř` ` 	`  `  ` `  `GŔ ` `  `  `@ )`@ b@f@0`@ `  `  `  `  `H0 `Ŕ ` @` 	`  `  ` @      ˙Rţţ˙ţţţ˙ţ˙ţ~x<ţ ţÇçţűţůţ?ýţ?üţ?ü?üÎ?üţżůţůţßóţçÇţ0ţ|?~˙žţ˙ţţţ˙ţ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    ˛ i946  	D          ˙˙˙˙˙˙       0 0       ˙ţ      ŕ	 Ä@ňůý ü ţ ţ ţ ţ üýů@ň Äŕ      ˙ţ   z ˙ü˙ř` ` ` ` ` 
`ŕ ` `  `@ 9`@ ` ` @`@`@`@`@` `@`  ` : ` d ` `ŕ ` ` ` @      ˙ţ˙ţ˙ţ˙NţřţŕţÇ3ţţ?ţ?~~> > > > > ~? ~ż ţßţçţđţüţ˙ţ˙ţ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    ł i947  	D          ˙˙˙˙˙˙       0 0       ˙ţ      ŕ#ÄOňůżý?üţţţţ?üżýůOň#Äŕ      ˙ţ   z ˙ü˙ř` ` ` ` ` 
`ŕ ` `  `@ 9`@ ` ` @`@`@`@`@` `@`  ` : ` d ` `ŕ ` ` ` @      ˙ţ˙ţ˙ţ˙"ţřţŕţÄ3ţţ ţ ~@~ > > > ">@ >@ ~  ~° ţÜţçţđţüţ˙ţ˙ţ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    ´ i948  	D          ˙˙˙˙˙˙       0 0       ˙ţ       >Ŕ0#Oä_ôňżúżúżúň_ôOä#0Ŕ        ˙ţ   y ˙ü˙ř` ` ` ` ` ` 
`Ŕ ` `  1`  `@ `@ `@ `@ `@ ` 
 `  `t `Č `0 `Ŕ ` ` ` ` ` @      ˙ţ˙ţ˙ţ˙ţ˙ţř?ţŕţÄgţţ	ţ ţ ţ ţ ţ  ţ ţţŘţćţđţü?ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ţ˙ţ    ˙ţř˙˙ţ    ľ i949  	D          ˙˙˙˙˙˙     0 0       MĄ Ŕ 0 # Oä _ô ň żú żú żú ň _ô Oä # 0 ŔĽ    CĽ Ŕ p 0   ` @ @ @ `   0 p ŔŠ    MĄ Ŕ đ ?ř ü ü ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ü ü ?ř đ ŔĽ     ś i950  	D  ˙˙              ˙˙˙˙˙˙     0 0       ]       ŕ đ đ 
?ř ?ř` ?ř đ đ ŕ          MĄ Ŕ 0   @ @      @ @   0 ŔĽ    CĽ Ŕ p 0   ` @ @ @ `   0 p ŔŠ    g     Â đ ?ř ü ü ˙ţ 
˙ţ ˙ţ` ˙ţ ˙ţ ü ü ?ř đ Á         ˇ i951  	D          ˙˙˙˙˙˙       0 0        ŕ   !Â F1 H	 H	 H	 H	 H	 H	 0	 	 ˙ůđ0	x	(0H 9˙ţ( X ¨ X ¨ X ¨ X ¨ P   @ ˙ţ    y ŕ ř < 8 0 0 0 0 0 0    ĎöŕöŔĎů˙ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ    ?ż  0 ` Đ   P˙ţ  P˙ţ  P˙ţ  P˙ţ  @˙ţ     ŕ ř ü ?ţ ~? x x x x x x 0  ˙đ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙ŕ˙Ŕ˙˙ţ     ¸ i952  	D          ˙˙˙˙˙˙       0 0       | ŕ   !Â F1 H	 H	 H	 H	 ĎůđH	H	(0H 9˙ţ( X ¨ X ¨ X ¨ X ¨ P   @ ˙ţ    h ŕ ř < 8 0 0 0 0 0 ˇöŕˇöŔĎů˙ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ    ?ż  0 ` Đ   P˙ţ  P˙ţ  P˙ţ  P˙ţ  @˙ţ     ŕ ř ü ?ţ ~? x x x x ˙đ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙ŕ˙Ŕ˙˙ţ     š i953  	D          ˙˙˙˙˙˙       0 0        Ŕ 0 # Ld   
  
 Ŕ
  
 ŕ
 
 ę 0 C 6 Á đ>řoě@wÜ@ü~@ř>@2@ř>@ü~@wÜoě>ů ň GÄ 0 ŕ     Ŕ p 0 ` @ @  @    ä <x ~ü ř> á Á #ÁgÍ	 #  Á a 80 Ŕ    Ţ @            Ŕ đ ?ř | đ ŕ ŕ Ŕ ŕ ŕ  î ?ţ ţ ˙ţ ˙ ˙˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙˙ ˙ţ ü ?ř ŕ     ş i954  	D          ˙˙˙˙˙˙       0 0        Ŕ 0 # Ld   
  
  
  
 Żę ° Ă 6 Á đ>řoě@wÜ@ü~@ř>@2@ř>@ü~@wÜoě>ů ň GÄ 0 ŕ     Ŕ p 0 ` @ @ @ @ @ Oä <x ~ü ř> á Á #ÁgÍ	 #  Á a 80 Ŕ    Ţ @            Ŕ đ ?ř | đ ŕ ŕ ŕ ŕ ďî ˙ţ ˙ţ ˙ţ ˙ ˙˙˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙˙˙ ˙ţ ü ?ř ŕ     ť i955  	D       ˙˙                ˙˙                ˙˙˙˙      ˙˙˙˙˙˙  ˙˙˙˙    ˙˙             0 0           " "!"  "!! "!"" "" !"2 !"@D"2@UE"@eW"H)" @uV"H" @eW"H)@uVH@eWH! @uV"H!3 @egH" @uvH" @egW"H" @uvV"H!2 @eg%H  @H" @D  PU  U  @D4 @ŞD´ťK @DtwG @D PU     ţ ˙ ˙ŕ ?˙đ ˙ř ˙ü ˙ü˙ţ ?ţ˙˙˙˙˙˙˙˙˙ţ˙ţ˙ü˙ü˙ř˙đ˙ŕ˙ůţ ˙ŕ ˙ŕ ˙ŕ ˙ŕ ˙ŕ     ź i956  	D            ˙˙  ˙˙  ˙˙˙˙    ˙˙˙˙˙˙    ˙˙˙˙      ˙˙           0 0       '    A  A  A A   Ő       <       Ŕ Ŕ ŕŕ ä ţ ü đ đ đ ŕ ŕ Ŕ       ŕ ŕ    1  @   @   @    Ć    '     @    Ę        >Ł Ĺ     @ň    
  í    ą ˙Ŕ Č     ŔŕŕŕŔ  ŔŔŕá˙Ŕç˙˙ ü đ đ đ ŕ ŕ Ŕ       ŕ ŕ     ˝ i957  	D          ˙˙˙˙˙˙       0 0       X˙đ   	˙Č 
 ( 
 ( 
 ( 
 ( 
 ( 
 ( 
 ( 
 ( 	˙Č     Č      	˙ř@    ˙ř@  ţ  ? C  ú  ř    Z C˙đ  0 ˙Đ ˙ ˙ ˙ ˙ ˙ ˙    0 ˙đ ˙đ ŕ0 ˙đ ˙đ ˙đ ˙đ < x đ    - @ @ @ @ @ @ ˙ŔĄ ˙đ      X˙đ ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ř ˙ţ ˙ů˙ř@˙ř ˙ř ˙ř@  ţ  ?  ˙ ţ ü ř     ž i958  	D   	        ˙˙˙˙˙˙          ˙˙˙˙    ˙˙        ˙˙˙˙      ˙˙    ˙˙       0 0      j   " 23DTU& 23CDUe& 23DTUf& 2CDUef& 2DTUf	& BDUef' BDTUfv' BDUefw' BTUfvw' BUefw	' RUfvw( RUefw( RUfvw( Refw( Rfvw( "  U     !  !     ˙ü˙ü?˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü?˙ü˙ü˙ü ˙ ˙ ˙ř˙ü˙ţ˙ţ˙?˙˙    ż i959  	D ?     ˙˙              ˙˙˙˙˙˙        ˙˙         0 0       )       @  	 Ý     ` đ     S  Ŕ 
 ` 	 0 p @Đ 
!  8 8 < >D /$4 'l #ÄÔ 1ĺ¤ ÷D ~ = J0 ¤` ÔŔ e 7      @   P ¨ T Ş U Ş U Ş  @ (  @ 
  @ 
  H J ( 
  ¨ P B  Ą@ R )      z   P ¨ T Ş U Ş U@ *  J  @ 
  @ 
  @ 	  * H    @  	      /Ź    Ŕ ` đ p ° P 0Ž    ş đ   ź     6 `  đ ř ü ţ@˙˙ ˙Đ ˙ŕ ˙đ ˙đ ˙đ ˙đ ˙4đ?˙đ ?˙đ?˙ř ?˙ü ?˙ü ?˙ü ?˙ü ?˙ü ˙ü ˙ü ˙ř ˙đ ˙ŕ ˙Ŕ  ?      Ŕ i960  	D             ˙˙          ˙˙˙˙˙˙          ˙˙    ˙˙˙˙  ˙˙˙˙    ˙˙  ˙˙         0 0      ż "3 03"34 Pc3"3C Ue3"34D PU56#3CD 3U6#34D3 03SUc#3CD43 p3Ue!3D3 w	3S5!3CD43 w3U6!34D3 x7Sc!3C437e3C3 "3 3"C403 ŠD0303D0
03C40"	03 3!"0343Vs03C4365s 3DC3cU3w 3	CD43aS53w 03D31VU3 03CD43216U53 3DC321cU3 @D4321cSU DC3"3VU @43"36 0C3"3 3"    p đ ţ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü?˙ü˙ţ˙ţ¨˙˙ţ˙ţ?˙ü?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ţ đ     Á i961  	D   
          ˙˙              ˙˙      ˙˙˙˙˙˙    ˙˙˙˙  ˙˙˙˙    ˙˙  ˙˙     0 0        !23 @!23 PU4!23 SU423c 03UE236f p3SE23cf w3U136f6 7S413cf63 753f63 	 "3 3f3 )"2f03 9`f3 03`f	 03f0#"	 03 3!" 03c63Ss 03	cfcF5s 033f6AU3w 030cf	3#aT5303`f63#aTU3cff
c3#aFU50c3`6	3#FU3c3`3#a03c303#03c3 03c3f63c3 c3 3 c3 c3 03    l ţ ˙ ˙ŕ ?˙đ ˙ř ˙ü ˙ü˙ţ˙ţ˙˙˙˙˙˙˙˙˙˙˙˙ţ˙ü˙ř˙đ˙ŕ    Â i962  	D            ˙˙˙˙˙˙     0 0       K¸ 4űŃđçńîűŔ' . <cX\c"^ Bţř ˙ ˙ů ˙   =š .   `     `	A 	    0     Gź 0 đřđ ?đ˙řř˙řqř'nyü#xÜ!ř_p ć>xđţ_˙ö ˙ţ@ ˙ţ    7¸ ˙đ˙ř˙ř˙ř?˙ü?˙ü?˙ü˙ţ˙ţ˙ţ ˙    Ă i963  	D            ˙˙˙˙˙˙     0 0       }   c . 'Č@ Nđ  çĎČäbĂa"á"ÔĂ3ůÇ)â˘"â¤(
3hP)đ Á@	Jľ 
N 9 Ŕř Ąŕ R -      l   c 7 0Ŕ p` đ0'đ`ř`<ŕŕđ<8pŕŔĚ Ć c> 1ü  ř p Ć` ?      [       Ŕ   @@   @   
J 1   @ !         ă ÷ ?˙Ŕ ˙ŕ ˙đ˙ř˙ü˙ţ˙˙?˙?˙?˙ü˙ř˙đ˙ŕ˙Ŕ˙˙ ˙ţ ˙ü ˙ř ˙ŕ  ?       Ä i964  	D ?             ˙˙  ˙˙    ˙˙˙˙˙˙           0 0         " *@ Q @   3(   AD( "$"D (P@  Š8@  @I * # - ź ćĘ%ÉyĆI$A("	"|ĚŤ`) đ    = Ŕ ?ŕ đ ˙ř ˙đ ˙ŕ ˙Ŕ ˙˙Ŕţ ŕü p ř 8 p   Ę    h     Ŕ ŕ p >8 | řđŕ Ŕ  ß ţ  ? Ŕ ŕ đ ŕ ŔĽ    b T ¨     Ŕ ?ŕ oŔ Ç c 6 T     @  0! Pŕ ŔH P`    "Î      >     )×  0  0 `Ŕ Ŕ ŕ p 0      ?ţ ~˙ ˙ů˙Ŕ˙ŕ˙đ?˙ř˙ü?˙ţ?˙ţ?˙ţ˙ü˙ř˙đ˙ŕš˙Ŕ ˙ ˙ ~?˙ -˙ ˙ź ˙ţĎç˙˙Ç˙7˙o˙ţţüü3đűđřŕř]yř đ     Ĺ i965  	D            ˙˙˙˙˙˙     0 0       ˙ř D D T T D D D D D D D D D D D˙Ä   ˙ÄDDDDDDD@D?˙ř     p 8p :p +p +p ;p ;p ;p ;p ;p ;p ;p ;p ;p ;p ;p ;˙ű˙ű˙ű ;űťaűťműťműťműťműťaűť?űť ?˙˙ţ   P ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ŕ    "˙ř˙ü˙ţä˙˙?˙?˙˙ţ    Ć i966  	D                ˙˙˙˙      ˙˙˙˙˙˙     0 0        8 x x H H H x x x x x x x x x x x | >˙ţ˙ţ˙ţ~ ţ}đ ~}đ ~}đ ~}đ ~}đ ~}đ ~ ~ ~    g ˙ŕ    $  $  4                        ˙ŔŹ ˙     ˙Ŕ˙Ŕ˙Ŕě    v                   ˙ ˙˙˙˙˙˙ă˙0 ˙đ   b  ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ           ?˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ţ˙đ    Ç i967  	D            ˙˙˙˙˙˙     0 0        Ş¸=U<$Ş¤%U$<Şź=U<Şź=U<Şź=U<Şź=U<Ş<> |?˙ü?˙ü?˙ü?˙ü?˙%ü? ü> ü> ü> ü>ü>üüü ř                         ˙ţ 8     !  1   ˙ü    \ Ş U ŞU Ş U Ş U Ş U Ş˘ á ˙á Çá Çá Çá Çá Çá ˙á     Şž?˙>?˙ž?˙>?˙ž?˙>?˙ž?˙>?˙ž?˙>?˙ž?˙>?Ş> ~?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ?˙ţ˙ţ˙ü     Č i968  	D          ˙˙˙˙˙˙       0 0       ˙üđ <đ <đ <đ <đ 8đ <˙ü˙ü˙ü˙)ü˙řü˙ŕü˙ŕü˙Ŕü˙Ŕü˙Ŕü˙Ŕü˙ŕü˙ŕü˙řyü˙ůü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü˙ü    # ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕä    x         )  `             `               ?˙?˙   :˙ü˙üŠ˙ř˙đ?˙ŕ˙ŕ˙ŕ˙ŕ˙đ?˙řŠ˙?˙?˙    É i969  	D          ˙˙˙˙˙˙       0 0       x?˙ř P ( P ( P ( S˙aU U U U?˙řUP (UP (]P (EP (EP (EP (EĐ (DP (DP (DP ($_˙č@ @ C˙čB(Âa( Ba( Ba( "( ˙ř    r /˙Đ /˙Đ /˙Đ , *˙ý *˙ý *˙ý *Ŕ L*Ż˙Đ*Ż˙Đ"Ż˙Đ:Ż˙Đ:Ż˙Đ:Ż˙Đ:/˙Đ;Ż˙Đ;Ż˙Đ;Ż˙Đ  ż˙đż˙đź ź Đ < Đ < Đ < Đ  Đ    g   ` `              ţ    ţ 	 ˙ţ ˙ţ    ?˙ř ˙ř ˙ţ ˙ţ ˙˙˙ŕ˙ŕ˙ř˙ř˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ ˙ţ ˙ţ ?˙ţ ˙ţ ˙ţ ˙ţ     Ę i970  	D            ˙˙˙˙˙˙            ˙˙    ˙˙˙˙  ˙˙˙˙           0 0       h  ˙Ŕ            đ Ŕ   @( ¨ ¨ ¨ r¨     ˙ŕ         @ A B A H TP b0 0 0 0     ~< " B 8 ! >       ü      ˙ŕ   ` ` ` ` ` ` ` ` ` ` `   ?ü| )~ ?ü~ "< ?ü~ ?ü ?ü|řx< T @T AT }T T ü    ~ ˙           ˙" Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ ˙ ˙ ˙ đ ö ö
 ö
 p    9 ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ Á     ` `Â  ˘    JŚ ? > < > 7 #  Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ        ż @   @     ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙ŕ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţđ˙ţö˙ţö˙ţö˙ţp     Ë i971  	D          ˙˙˙˙˙˙    ˙˙          ˙˙     0 0       } ˙Ŕ@ @ @O˙ü@ @ @O˙ü@ @ @ @ @ @˙Ŕ ˙  ~ ˙ ˙     ˙ ˙ ˙ ˙   4 ?˙?˙ 0  ?˙ţ ?˙ţ 0  ?˙ţ 1˙ţ 1˙ţ§  ¨    3        ?˙?˙Ě    
¤  ×    <ź < < < < < < < < <  =ď =ďŔ ď      ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ < < < < ˙< ˙< ţ ˙< ˙< <  =ď=ďß˙ď˙ ˙ ˙    Ě i972  	D          ˙˙˙˙˙˙    ˙˙          ˙˙     0 0       } ˙Ŕ@ @ @O˙ü@ @ @O˙ü@ @ @ @ @ @˙Ŕ ˙  ~ ˙ ˙     ˙ ˙ ˙ ˙   * ?˙?˙ 0  ?˙ţ ?˙ţ 0  ?˙ţ 1˙ţ 1˙ţŐ    3        ?˙?˙Ě    #¤            <ź < , < < , < < , <  =ď 5kŔ =ď      ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ˙Ŕ < < < < ˙< ˙< ţ ˙< ˙< <  =ď=ďß˙=ď˙ ˙ ˙    Í i973  	D ?         ˙˙˙˙˙˙    ˙˙              ˙˙       0 0       U ˙ ˙ŕ ż˙đ ß˙ü Ż˙ţ ˙˙Ŕ˙đÂ &xĂ˙ţň rż˙ý>      ż˙ýż˙ý  ˙    F¤ @       đ   ˙ţ@ @ @ @ @ @  ˙ţ    0Ź @ ` p x <˙<   ˙đ ˙đ Ű°¨    Ő 	Š    Ö  Š    × @¨    S ˙ ˙ŕ ˙đ ˙ü ˙ţ ˙˙Ŕ˙đ˙ř˙ţ˙˙?˙˙˙˙˙˙ ˙     Î i974  	D            ˙˙˙˙  ˙˙         0 0       W¤ ˙ţ˙ţ˙ţ    ˙ţ˙ţ˙ţ˙ţ 8 D @ @qŘě@$@$D$8q$    ° ˙
řOů>HOů>H˙řŔ    ´ 0Á°0Á°Ä    S¤ ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ 8 D @ @qŘě@$@$D$8q$     Ď i975  	D          ˙˙˙˙˙˙    ˙˙         0 0       K ˙ ř Ŕ   4 d "Ě 0 $` L˙ü˙ý0˙ţ`JŞŹŔ˙ý˙ ˙ţĄ    <˘ ~ >ýđ }űŕ ű÷Č÷ďďß ßž@ż|~ů   @ 0  Š    JĽ    
    @* @R  ˘ F   0 ` Ŕ ˙    Đ UP­    Z ˙ ˙ř ˙ü˙ü˙ţ˙ţ˙ţ˙ţ?˙ţ˙ţ˙ţ˙ü˙ř˙đ˙ŕ˙Ŕ˙˙     Đ i976  	D          ˙˙˙˙˙˙       0 0        ü   " @  g0  Ú  Ú  Ú  Ú           ü @@ *Ş?őU     ü ř  ř  ř ř  ü 	$  	$  	$  	$  ü ü ř ř  ř  ř        ]  ä  ä   ř l l l l   ä  ä  ř  Ŕ     ü ţ ţ ţ" ţ@ţ fţ ţg0ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ţ ü ŔŔ?ęŤ?őU     Ń i977  	D            ˙˙˙˙˙˙     0 0        @ ?  x đH â( ĺ( â( <đKř x?8`gĄŕg @' g ' IĐ' Qč' "wç $x' ÷ 	,O y' ň uT r y$ <H  ´ 
Ě  
( *¤   j    Ŕ Ŕ Ŕ    @  @    Ŕ `   ` @    
H  ( *¤      Ŕ ` 0    0 Kř ţ   "żŘ _Ř 6/Ř .Ř  X  h Ŕ0   
     @     Ŕ ?ŕ đ ˙ř ˙ř ˙ř ˙ř 	˙űř ˙ţ?˙˙˙ ˙ ˙ ˙ ˙ ?˙ ?˙ ˙ ˙ ˙ ˙ü ü ü ü ?ř ř 
üŞĚŞ *Ž( *Ź    Ň i978  	D            ˙˙˙˙˙˙    ˙˙˙˙           0 0           :Řć      ˙ţ     "     śÚ  śÚ  śÚ  śÚ   żú  żú  żú  ťú  ˙ţ    W ü ü @ @ @ @ @ @Ś ü @ ü @ ü @ ü @ ü      ?ř ;č .Ř 5č ?ř ?řÍ    /ľ ü I$ ü I$ ü I$ ü I$ üŠ        :Ř ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ ˙ţ     Ó i979  	D          ˙˙˙˙˙˙       0 0       l -?˙ŕ Ŕ ů	sů Áţ>$
I)$ T@  ż˙   p        ˙Ŕ P    [ V?˙ŕ ńYřéôüě~ě~^ ˙* @ý Ű{Pśö míPŰÚ +ţľP_˙j @ ŐP˙Ş ˙Ő ˙Ş ˙Đ ˙  ˙Ŕ    [   đ      P   P   P 
  P *  U@ * T ( @      u ?˙ŕ ˙ř˙ü˙ţ˙˙˙˙˙ţ˙ř˙ř˙ř˙ř?˙ř˙ř˙ř˙ř˙ř˙ř˙˙ţ ˙ř ˙ŕ ˙Ŕ p     Ô i980  	D          ˙˙˙˙˙˙       0 0        @     ˙ŕ     P@ ¨  DP   4    @   @         H   $ `    	@  y  ř    ^Ľ   Ŕ ;  }p ţř ýü űţ ÷˙ ď˙ _˙Ŕ ?˙Ŕ ˙Ŕ ˙Ŕ ˙Ŕ ˙ ˙@ ţ y  x    8Š  @   Ŕ ` 0           @     ˙ŕ     ßŔ ˙ŕ đ ˙ř ˙ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙ŕ˙ŕ ˙ŕ ˙ŕ ?˙ŕ ˙ŕ ˙Ŕ ˙ ˙ ţ ř     Ő i981  	D          ˙˙˙˙˙˙       0 0       z   ˙ŕ     R@ Ľ  H 2H   A  D ( @  @    `    H@ $  	
  h  ŕ    ]Ą   Ŕ 7` o° ßx žü }ţ ť˙ ×˙ o˙Ŕ ?˙Ŕ ˙ ˙@ ţ ý ş ô h  `    9Ľ  @   Ŕ ` 0  @           ˙ŕ     ßŔ ˙ŕ đ ˙ř ˙ü ˙ţ ˙ ˙˙Ŕ˙ŕ˙ŕ˙ŕ ˙ŕ ˙Ŕ ?˙ ˙ ţ ü ř đ ŕ     Ö i982  	D          ˙˙˙˙˙˙       0 0               
 U@Ş  P     ˙ü ˙đUP˙đ ˙÷ňUR˙÷ŇUr˙÷Ň TR˙÷ň ˙ü    f       U@    ˙ü` üjŞŻü` ü˙ü` jŞŹ` ,jŞ` ,k˙ŤŹ` ˙ü    W    U                ?˙ţ   Y         U@˙ŕUp 8   ˙ü˙ţ°˙˙?˙ţ    × i983  	D          ˙˙˙˙˙˙       0 0        	 Ş¨ UT! eH @ (  Q ˘ 	ED ˘ %Q B"Š QS(¨ŚQTL˘Ş	EQ0Ş`!DŔH*U Ş& ATL "¨ Q0 Ş` DŔ )   L 8    }   2 i HÓ Ś@ M   5H z¤ <ÍP gŚ  ÓS@ŚŠMTŔŽ 5T j¸ 3Őp iŞŕ sUŔ >Ť W Ž T ¸ Đ ŕ p           @   P  ( @ 
     0     Ŕ @        0 ` Ŕ           	 Ş¨ UT?  ˙Ŕ ˙ŕ ˙đ ˙ř ˙ü ˙ţ ?˙ ˙ ˙˙ţ˙ü˙ř˙đ˙ŕ?˙Ŕ˙˙ ˙ţ ˙ü ?˙ř ˙đ ˙ŕ ˙Ŕ ˙ ˙ ţ | 8     Ř i984  	D          ˙˙˙˙˙˙       0 0       I˙Ŕ  ` ( P H H  D  D äD D ÄD D D ˙đ 
  " â "; "5@"3?â  "# "  "  "  "  "  #˙ń $ 	 (    ˙ü   z *˙ ˙  7˙ w˙  w˙ w  w w9  w w9  wź Hwů˙ŕwő˙čwí˙äwÝ˙čp˙äe]ÄhJŔ$ Ěh Ć$ Ě¨ îd ˙č ˙ä ˙č ˙ä   UT Ş¨    q    (  r(  b( B @   
 @Ę?Ŕ  J F   
  
  Ş˘ UR ˙ü    ˙Ŕ ˙ŕ ?˙đ ˙ř ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙ü ˙đ˙ř˙ü˙ţ˙˙?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ?˙ ˙ţ ˙ü    Ů i985  	D          ˙˙˙˙˙˙       0 0         " D@  " D@D(  ŔD 	F!ŔC ń	!	ÄB!â#CAŠůĹ! EB#ř
	D " ) I(HA˙ŕ   }  ; wŔ ďŕßđ;ż¸wÇ|oŕ˙ţ_÷}ü?űťř}Mßđ~ţďŕ}|wŔ?ř_đ}oŕwŔö;ęÜ<nžzV:˙ş|=÷Ü~ëîőöťűć_Ý˙Ćoî˙wÇ ž    HŤ       <  x  đ  ŕ < Ŕ x  đ ŕ Ŕ   	0  p 0 ŕ    +  ? Ŕ ˙ŕ˙đ?˙řÇ˙ü˙ď˙ţŰ˙đ˙ŕ    Ú i986  	D          ˙˙˙˙˙˙       0 0          @ $  H  & 0($BADc"$AĹDR Á" (D/°H*¸˝	(PJ b@R *  @ 
      @     t   Ŕ 7` u° 0îŕ ËĐ ĺŘóź ůž|Á>89 p}pOŕ>ŕ'ŔĐO° p Bđeđ  5đ @đ ŕ Ŕ       `   @      @   P@ (8 p@ 
ŕ Ŕ             Ŕ ?ŕ đ ˙ř ˙đ ˙ř˙ü˙ţ˙Ç˙?ç˙ó˙ů˙6ř˙ţ˙řü˙ř?ř˙řř˙řř˙řđřŕřŔđ ?ŕ Ŕ       @      Ű i987  	D          ˙˙˙˙˙˙       0 0       q ˙ @ Gń @ @ _ľ @ [í Ŕ˙]˝Ŕç	_ŐMŔ'˙5@ m˙Í Y QŕB DŕH P `˙Ŕ    g ?ţ 8 ?ţ ?ţ  J ?ţ $ ?ţ ˘Bü?ţ *0?ţ` Ŕ?˙ ˙@ CíC˙áCí_˙_˙    Nš    
  2 &#˙Ž  <  ;  7  .   8˙đ?˙ŕ˙Ŕ    c ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙˙˙˙˙?˙˙ţ˙ţ˙ü˙ř˙đ?˙ŕ˙Ŕ     Ü i988  	D ?         ˙˙˙˙    ˙˙˙˙˙˙      ˙˙˙˙      ˙˙     0 0       # ˙đ      	˙   @ ţ@    'ü @ Oů   ?˙ü      ä             ˙ř     ˙đ    5 Ş  U@   U   U  T   UT *¨Ń    5 U@ Ş  @ 
Ş  
Ş  *Ş  *¨ UTŃ    x   0 0 ` ` Ŕ Ŕ                   ˙ü˙ř   6´ ˙ř˙ř˙ţ˙ř˙ř˙ř˙ř˙ř˙ř˙ř¤    ŕ ˙đ˙đ˙đ˙đ˙đ    ) ˙đ ˙đ ˙ř ˙ř ˙đ ˙đ ?˙ŕ ?˙ŕ ˙Ŕ ˙Ŕ ˙ ˙?˙ü?˙?˙?˙?˙?˙?˙?˙?˙?˙˙˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ü˙ř    Ý i989  	D ?         ˙˙˙˙˙˙      ˙˙        ˙˙  ˙˙         0 0       v ˙   ?ň   ˙Č   ˙    @ Oü ˙ý         ˙ü    ?˙đ    g ţ Ŕ ˙ř  0 ˙ŕ  Ŕ ˙ 0  ţ˙ü ˙ú˙ús?˙ú˙ú˙üO˙ĎúäüäĚ˙ř ˙ŕ˙ŕ    2°   ţ ŕ       ˙ř    Č Ŕ 0 0Š    Ú ` `     Ţ 0Ą    D ˙ ˙ ˙ţ ˙ü ˙ř ˙đ ˙ŕ ?˙Ŕ˙˙Ż˙?˙ţ?˙ü?˙ř˙ř     Ţ i990  	D          ˙˙˙˙˙˙  ˙˙˙˙             0 0        ˙ţ      @ ŕ 080!J02$0#ę0"10"10 0 0˙ü R R R˙Ň ˙ň     ˙ţ    { Ş¨ U Ş¨ U Ş¨ U@ * T@ Ę T@  UD@ Ş U@       ˙ü˙ü˙ü˙ü˙ü    A UT Ş¨ U Ş¨ UT Ş ED@   D@   UD@  U@ Şź    Č       Ş ¤    Č ˙˙ ˙  U@¤     ˙ţ ˙ ˙˙˙Ŕ˙ŕ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ     ß i991  	D            ˙˙         - 0       k ř  #Ŕ @pB@A !A "@"ÎD 
HD D $D $D +$D $D 
D"ÎH"@!@A pA  @@Ŕ ř    f ř ţ ˙ŔŔ` `8 08 8 8 8 8 8 8 0``ŔŔ˙ţ ř    a p  ř0 Ŕ0 0 ń ń       ' Ŕ0 @0 0 p0 ŕ Ŕ ŕ˙ ţ    s ř ţ ˙Ŕ˙Ŕ˙ĂŔ˙áŕ?˙ńŕ?Çđ?ţđ˙x˙| > > /> > ~?Ď~?çü?ÇđřĎńř˙ńđ˙óđ˙ăŕ˙Ăŕ˙ŕ˙ ţ     _ i607 	 D          ˙˙˙˙˙˙  ˙˙  ˙˙  ˙˙        ˙˙˙˙  ˙˙˙˙      ˙˙       0 0       u  `      ä  â  á  ů  y  x   @              ` Ŕ  ü    g  ŕ Ăđ Ă I   ˙ ˙ ń˙ ń˙ 0?0?Ŕ>8ŕţ0`đpđpřđđâŕ âŕ ÇŔ Ç ü     < < ü đ đÖ    ´   Ŕ Ŕ Ŕş    ľ   Ŕ Ŕ Ŕ Ŕľ    Í ü ü ü ü      Ů ŕ ř ř 8 8    ~  ŕ ˙đ ˙ř ˙ü ˙ţ ˙ ˙ ˙ ˙˙˙˙Ŕ˙ŕ˙đ˙řđ˙ř˙ř˙ř˙ř˙đ˙đ ˙ŕ ˙Ŕ ˙ ü     ` i608 	 D  ââ      ĎĎËËĎĎ  ŕŕ    ˙˙˙˙      ˙˙      ˙˙˙˙      ˙˙     0 0         ˙ ˙ ˙ ˙ý ţ đ Ŕ ? ~ ü ř đ ŕ Ŕ      < < < x x x x x x x đ x    
 ř       ˙ ˙ ?˙ ý ˙ ř ŕ Ŕ  > | | ř đ ŕ ŕ Ŕ Ŕ Ŕ            iŁ  ˙ ˙ ˙ ?ý  ü ř ŕ Ŕ    > < < | x x x x x đ x    _ł   ˙ ˙ ý ? ~ ü ř đ ŕ Ŕ Ŕ           EĂ   ˙ ˙ ý Ŕ  > < | x x x x đ x    8Ó  ? ˙ ˙ ý ŕ Ŕ          ˙ ˙ ˙ ˙ ˙ ˙ ˙ ?˙ ˙ ˙˙˙˙˙˙˙˙˙˙?˙?˙?˙˙˙ý˙ŕ˙Ŕ˙˙˙˙ ˙    ŕ    	D  ŘŘ      řř``ČČ    ``  řřřřČČ  ČČ``  řřČČ  0000``     0 0        ˙
  ˙˙6Ŕü˙ŕü˙đ7äřoäüßäüż$üż$üż$üż$üż$üż |ż |ż |ż üż "üż üż üż üż üżüřŔđŕŕ˙Ŕ˙˙     _ ţ         @ @ @ @ @ @ @ @ @ @ @ @ @ @ @Ł      @                             @ ˙       @  @  ˝    o   	  	  	  I  I  I  I  I  I! @" 5        @  0 ŕ    i   @ @ @ @ @ @ @  ŻŔ ˙Ŕ ˙ć ˙ü ˙ü ˙ř ř đ đ ?ŕ Ŕ     ă       @  ˙     ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ˙     á    	D   
        řřřřřř  řřČČ  @@@@@@  ČČ``          ````ČČ  ČČČČřř  řř  0000``     0 0       23" P" P" PB$" `w PB" `
q	 PB" vw PB" `qwh	P"" pwP" qwP" qwhP" WUWUWUwhP" whP" whP" WUWUWwhP" whP" whP" WUWUw	hP"BD whP" whP" WUuUuUwhP" wP" wP" `wh	P"D vh P" `f	 P" P" P" P D PU   ˙˙˙    â    	D   
        řřřřřř  řřČČ  @@@@@@  ČČ``          ````ČČ  ČČČČřř  řř  0000``     0 0      Ť 23" P" P" PB$" `w PB" `
q	 PB" vw PB" `qwh	P"" pwP" qwP" qwUuwhP" wWuwUwhP" wWuwUwhP" wUwhP" wWuwhP" wUwhP" wWuwhP" wWuw	hP"BD whP" wWuwhP" wWuwhP" wP" wP" `wh	P"D vh P" `f	 P" P" P" P D PU   ˙˙˙    ă    	D            řřřř    řřřřřř  ČČ``  @@@@@@  PPPPPP     0 0         Ŕ @ `   0    0   a CÂ Ă Á ÁŔŔŔ@`  0  0Ŕ Ŕ`@ Ŕ Ŕ ˙ţ   X  @    H   @    @    @   @       |    Ŕ Ŕ ŕ ŕ 0 0 8 ,8 ,< \< \> ź> ź? |? |?ţ˙Ŕ˙Ŕü?ŕü?ŕü?đü?đ˙ř    j                 @ @              : @         @     ?˙ü    Š  @ @ Š    
ř ?˙ü      Ŕ Ŕ ŕ ŕ đ đ ř ř ?ü ?ü ţ ţ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙đ˙đ˙ř˙ř?˙ü?˙ü˙ţ˙ţ˙˙ţ    ä    	D  xx      řř      xx||xx  řřüüřř     0 0        ŕ ŕ     @     @ @ @         @ @ @        @   ŕ ŕ    | ŕ ˙ü ˙ţ ˙˙Ŕ˙BŔż÷ŕ?ăđ>Áđ?đřŔřŕřđ?řđ?řŕřŔřř?đ>Áđ?ăđż÷ŕ˙Ŕ˙Ŕ˙˙ţ ˙ü ŕ    e                   8 x đ ŕ ` ?˙ ř    P @ ŕ đ> ř| |ř ?đ ŕ Ŕ Ŕ ŕ ?đ |ř ř| đ> ŕ @Ľ    ~ ŕ ˙ü ˙ţ ˙˙Ŕ˙ŕ˙đ?˙ř˙ř˙ü˙ţ˙ţ˙ţ˙˙˙˙ţ?˙ţ˙ţ˙ü˙ř˙ř˙đ˙ŕ ˙ ?˙ ř     ĺ    	D  xx||xx  ¸¸źź¸¸  řřüüřř      řř             0 0        ŕ ŕ        @ @        @ @     < x đ ŕ ŕŔ <     8     H      @  @ @  @              } Ŕ ř ˙ţ đ?đ?Ŕđ?ŕđ?ŕ?˙đ?˙&đŕ?řř?řř?řř?řř?ř?ř?đ?ř?đř?ŕŕŕ˙Ŕ˙˙ţ ř Ŕ Ŕ Ŕ Ŕ Ŕ @    C  Ŕ Ŕ  Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ đľ    p @                  @   ŕ           `     ŕ ˙ü ˙ ˙˙Ŕ˙ŕ?˙đ˙ř˙ü˙ţ˙ţ˙˙˙?˙ţ˙ţ˙ü˙ř˙đ˙ŕ ˙Ŕ ?˙ ř ř ř x 8      ć    	D  xx||xx  ¸¸źź¸¸  řřüüřř              řř     0 0        ŕ ŕ        @ @        @ @     < x đ ŕ ŕŔ <     8     [        (    @  $   @                | Ŕ ř ˙ţ ˙*ŕŔĆŕĎŕ?Ăđ?ÂđÂřü?řüřüřü˙ř?˙đ?řđřŕřŕřŔ˙˙ţ ř Ŕ Ŕ Ŕ Ŕ Ŕ @    p @                  @   ŕ           `    D Ŕ ŕ 0đ <đ <đ ŕ Ŕ       ˛     ŕ ˙ü ˙ ˙˙Ŕ˙ŕ?˙đ˙ř˙ü˙ţ˙ţ˙˙˙?˙ţ˙ţ˙ü˙ř˙đ˙ŕ ˙Ŕ ?˙ ř ř ř x 8      ç    	D  xx||    řřüü    ¸¸źź¸¸          xx||xx     0 0       z         @ @                 @ @     @           Ŕ ?Ŕ ?ŕ ŕ p đp (đx đx đ| đ| đ~ đ~ ř˙ ř˙ ř˙ý˙˙Ŕ?řŔ?řŕřŕřđ˙đ˙ŕ?˙Ŕ    K   @           @             @ @                    @  @              ˙ŕ    |   0           Ŕ Ŕ ` ` 0 0          ˙ţ˙ü      ŕ đ ?ř ?ř ü ü ˙ţ ˙ţ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙đ˙đ?˙ř?˙ř˙ü˙ü˙ţ˙ţ˙˙?˙˙ţ˙ü     Icon Chooser   ¸on openCard
  set the hilitedButton of group 2 to 0
end openCard

on mouseUp
  local otype, tbut, newicon
  if the selectedObject is empty
  then exit to MetaCard
  get the name of the selectedObject
  if the number of words in it is 3 and word 2 of it is not "id"
  then put word 2 of it into otype
  else put word 1 of it into otype
  if otype is not "stack" and otype is not "button"
  then exit to MetaCard
  put the hilitedButton of group 2 into tbut
  if tbut is 0 then
    if  there is a group 3
    then put the hilitedButton of group 3 into tbut
    if tbut is 0
    then exit to MetaCard
    else put the icon of button tbut of group 3 into newicon
  else put the icon of button tbut of group 2 into newicon
  if otype is "stack" or the targetprop of this stack is "icon" then
    if there is a field "icon" of stack "properties"
    then put newicon into field "icon" of stack "properties"
    set the icon of the selectedObject to newicon
  else
    if there is a field "hiliteIcon" of stack "properties"
    then put newicon into field "hiliteIcon" of stack "properties"
    set the hiliteIcon of the selectedObject to the icon of button tbut of group 2
  end if
  close this stack
end mouseUp
       Ýt   targetprop  icon             U 
Helvetica   U 
Helvetica   é card id 1001   	@          t    %   card id 1001   	@          t      é card id 1001   	@          t    ę  1    	@          t          	@          t    ŕ  3    	@          t    4  É    	P jon openCard
  set the hilitedButton of group 2 to 0
  set the hilitedButton of group 3 to 0
end openCard
           t    Ę  ň  w card id 1001   	@          t    x    % Page 1   é           H  ( Icon ÂBd         ( (              -            	  é   8 Icon ÂBd       ,  ( (              .            	  é   : Icon ÂBd       T  ( (              /            	  é   ; Icon ÂBd       |  ( (              0            	  é   < Icon ÂBd       ¤  ( (              1            	  é   = Icon ÂBd       Ě  ( (              2            	  é   @ Icon ÂBd       ô  ( (              3            	  é   A Icon ÂBd        ( (              4            	  é    Icon ÂBd      D  ( (              5            	  é    Icon ÂBd      l  ( (              6            	  é    Icon ÂBd        , ( (              7            	  é    Icon ÂBd       , , ( (              8            	  é    Icon ÂBd       T , ( (              9            	  é    Icon ÂBd       | , ( (              :            	  é    Icon ÂBd       ¤ , ( (              ;            	  é     Icon ÂBd       Ě , ( (              <            	  é   ! Icon ÂBd       ô , ( (              =            	  é   " Icon ÂBd       , ( (              >            	  é   # Icon ÂBd      D , ( (              ?            	  é   $ Icon ÂBd      l , ( (              @            	  é   % Icon ÂBd        T ( (              A            	  é   & Icon ÂBd       , T ( (              B            	  é   ' Icon ÂBd       T T ( (              C            	  é   ( Icon ÂBd       | T ( (              D            	  é   ) Icon ÂBd       ¤ T ( (              E            	  é   * Icon ÂBd       Ě T ( (              F            	  é   + Icon ÂBd       ô T ( (              G            	  é   , Icon ÂBd       T ( (              H            	  é   - Icon ÂBd      D T ( (              I            	  é   . Icon ÂBd      l T ( (              J            	  é   / Icon ÂBd        | ( (              K            	  é   0 Icon ÂBd       , | ( (              L            	  é   1 Icon ÂBd       T | ( (              M            	  é   2 Icon ÂBd       | | ( (              N            	  é   3 Icon ÂBd       ¤ | ( (              O            	  é   4 Icon ÂBd       Ě | ( (              P            	  é   5 Icon ÂBd       ô | ( (              Q            	  é   6 Icon ÂBd       | ( (              R            	  é   7 Icon ÂBd      D | ( (              S            	  é   8 Icon ÂBd      l | ( (              T            	  é   9 Icon ÂBd        ¤ ( (              U            	  é   : Icon ÂBd       , ¤ ( (              V            	  é   ; Icon ÂBd       T ¤ ( (              W            	  é   < Icon ÂBd       | ¤ ( (              X            	  é   = Icon ÂBd       ¤ ¤ ( (              Y            	  é   > Icon ÂBd       Ě ¤ ( (              Z            	  é   ? Icon ÂBd       ô ¤ ( (              [            	  é   @ Icon ÂBd       ¤ ( (              \            	  é   A Icon ÂBd      D ¤ ( (              ]            	  é   B Icon ÂBd      l ¤ ( (              ^            	  é   u Icon ÂBd        Ě ( (              _            	  é   v Icon ÂBd       , Ě ( (              `            	  é   w Icon ÂBd       T Ě ( (              a            	  é   x Icon ÂBd       | Ě ( (              b            	  é   y Icon ÂBd       ¤ Ě ( (              c            	  é   z Icon ÂBd       Ě Ě ( (              d            	  é   { Icon ÂBd       ô Ě ( (              e            	  é   | Icon ÂBd       Ě ( (              f            	  é   } Icon ÂBd      D Ě ( (              g            	  é   ~ Icon ÂBd      l Ě ( (              h            	  é    Icon ÂBd        ô ( (              i            	  é    Icon ÂBd       , ô ( (              j            	  é    Icon ÂBd       T ô ( (              k            	  é    Icon ÂBd       | ô ( (              l            	  é    Icon ÂBd       ¤ ô ( (              m            	  é    Icon ÂBd       Ě ô ( (              n            	  é    Icon ÂBd       ô ô ( (              o            	  é    Icon ÂBd       ô ( (              p            	  é    Icon ÂBd      D ô ( (              q            	  é    Icon ÂBd      l ô ( (              r            	  é    Icon ÂBd        ( (              s            	  é    Icon ÂBd       , ( (              t            	  é    Icon ÂBd       T ( (              u            	  é    Icon ÂBd       | ( (              v            	  é    Icon ÂBd       ¤ ( (              w            	  é    Icon ÂBd       Ě ( (              x            	  é    Icon ÂBd       ô ( (              y            	  é    Icon ÂBd       ( (              z            	  é    Icon ÂBd      D ( (              {            	  é    Icon ÂBd      l ( (              |            	  é   x My Icons 1   é"on mouseUp which
  if which is 3 and word 1 of the name of the target is "button" then
    local tcard
    put the icon of the target into tcard
    if tcard > 650 then
      go to card tcard - 650 of stack "My Icons"
      palette "Paint Tools"
    end if
  else pass mouseUp
end mouseUp
        0 XH ¨  ( Icon ÂBd       4 \ ( (                          	  w   8 Icon ÂBd       \ \ ( (                          	  w   : Icon ÂBd        \ ( (                          	  w   ; Icon ÂBd       Ź \ ( (                          	  w   < Icon ÂBd       Ô \ ( (                          	  w   = Icon ÂBd       ü \ ( (                          	  w   @ Icon ÂBd      $ \ ( (                          	  w   A Icon ÂBd      L \ ( (                          	  w   D Icon ÂBd       4  ( (                          	  w   E Icon ÂBd       \  ( (                          	  w   G Icon ÂBd         ( (                          	  w   H Icon ÂBd       Ź  ( (                          	  w   J Icon ÂBd       Ô  ( (                          	  w   K Icon ÂBd       ü  ( (                          	  w   L Icon ÂBd      $  ( (                          	  w   M Icon ÂBd      L  ( (                          	  w   N Icon ÂBd       4 Ź ( (                          	  w   O Icon ÂBd       \ Ź ( (                          	  w   Q Icon ÂBd        Ź ( (                          	  w   R Icon ÂBd       Ź Ź ( (                          	  w   S Icon ÂBd       Ô Ź ( (                          	  w   T Icon ÂBd       ü Ź ( (                           	  w   X Icon ÂBd      $ Ź ( (              Ą            	  w   Y Icon ÂBd      L Ź ( (              ˘            	  w   Z Icon ÂBd       4 Ô ( (              Ł            	  w   [ Icon ÂBd       \ Ô ( (              ¤            	  w   _ Icon ÂBd        Ô ( (              Ľ            	  w   a Icon ÂBd       Ź Ô ( (              Ś            	  w   b Icon ÂBd       Ô Ô ( (              §            	  w   c Icon ÂBd       ü Ô ( (              ¨            	  w   d Icon ÂBd      $ Ô ( (              Š            	  w   e Icon ÂBd      L Ô ( (              Ş            	  w 
     H          T  ä (           	My Icons   Ę fortyeights   é        2 6< 8  Ë Icon ÂBŠd       6 : 0 0              Y            	  É   Ě Icon ÂBŠd       j : 0 0              Z            	  É   Í Icon ÂBŠd        : 0 0              [            	  É   Î Icon ÂBŠd       Ň : 0 0              \            	  É   Ď Icon ÂBŠd       : 0 0              ]            	  É   Đ Icon ÂBŠd      : : 0 0              ^            	  É    Page 2   é           H   Icon ÂBd         ( (              }            	      Icon ÂBd       ,  ( (              ~            	      Icon ÂBd       T  ( (                          	      Icon ÂBd       |  ( (                          	      Icon ÂBd       ¤  ( (                          	      Icon ÂBd       Ě  ( (                          	      Icon ÂBd       ô  ( (                          	      Icon ÂBd        ( (                          	       Icon ÂBd      D  ( (                          	     Ą Icon ÂBd      l  ( (                          	     ˘ Icon ÂBd        , ( (                          	     Ł Icon ÂBd       , , ( (                          	     ¤ Icon ÂBd       T , ( (                          	     Ľ Icon ÂBd       | , ( (                          	     Ś Icon ÂBd       ¤ , ( (                          	     § Icon ÂBd       Ě , ( (                          	     ¨ Icon ÂBd       ô , ( (                          	     Š Icon ÂBd       , ( (                          	     Ş Icon ÂBd      D , ( (                          	     Ť Icon ÂBd      l , ( (                          	     Ź Icon ÂBd        T ( (                          	     ­ Icon ÂBd       , T ( (                          	     Ž Icon ÂBd       T T ( (                          	     Ż Icon ÂBd       | T ( (                          	     ° Icon ÂBd       ¤ T ( (                          	     ą Icon ÂBd       Ě T ( (                          	     ˛ Icon ÂBd       ô T ( (                          	     ł Icon ÂBd       T ( (                          	     ´ Icon ÂBd      D T ( (                          	     ľ Icon ÂBd      l T ( (                          	     ś Icon ÂBd        | ( (                          	     ˇ Icon ÂBd       , | ( (                          	     ¸ Icon ÂBd       T | ( (                          	     š Icon ÂBd       | | ( (                          	     ş Icon ÂBd       ¤ | ( (                          	     ť Icon ÂBd       Ě | ( (                           	     ź Icon ÂBd       ô | ( (              Ą            	     ˝ Icon ÂBd       | ( (              ˘            	     ž Icon ÂBd      D | ( (              Ł            	     ż Icon ÂBd      l | ( (              ¤            	     Ŕ Icon ÂBd        ¤ ( (              Ľ            	     Á Icon ÂBd       , ¤ ( (              Ś            	     Â Icon ÂBd       T ¤ ( (              §            	     Ă Icon ÂBd       | ¤ ( (              ¨            	     Ä Icon ÂBd       ¤ ¤ ( (              Š            	     Ĺ Icon ÂBd       Ě ¤ ( (              Ş            	     Ć Icon ÂBd       ô ¤ ( (              Ť            	     Ç Icon ÂBd       ¤ ( (              Ź            	     Č Icon ÂBd      D ¤ ( (              ­            	     É Icon ÂBd      l ¤ ( (              Ž            	     Ę Icon ÂBd        Ě ( (              Ż            	     Ë Icon ÂBd       , Ě ( (              °            	     Ě Icon ÂBd       T Ě ( (              ą            	     Í Icon ÂBd       | Ě ( (              ˛            	     Î Icon ÂBd       ¤ Ě ( (              ł            	     Ď Icon ÂBd       Ě Ě ( (              ´            	     Đ Icon ÂBd       ô Ě ( (              ľ            	     Ń Icon ÂBd       Ě ( (              ś            	     Ň Icon ÂBd      D Ě ( (              ˇ            	     Ó Icon ÂBd      l Ě ( (              ¸            	     Ô Icon ÂBd        ô ( (              š            	     Ő Icon ÂBd       , ô ( (              ş            	     Ö Icon ÂBd       T ô ( (              ť            	     × Icon ÂBd       | ô ( (              ź            	     Ř Icon ÂBd       ¤ ô ( (              ˝            	     Ů Icon ÂBd       Ě ô ( (              ž            	     Ú Icon ÂBd       ô ô ( (              ż            	     Ű Icon ÂBd       ô ( (              Ŕ            	     Ü Icon ÂBd      D ô ( (              Á            	     Ý Icon ÂBd      l ô ( (              Â            	     Ţ Icon ÂBd        ( (              Ă            	     ß Icon ÂBd       , ( (              Ä            	     ŕ Icon ÂBd       T ( (              Ĺ            	     á Icon ÂBd       | ( (              Ć            	     â Icon ÂBd       ¤ ( (              Ç            	     ă Icon ÂBd       Ě ( (              Č            	     ä Icon ÂBd       ô ( (              É            	     ĺ Icon ÂBd       ( (              Ę            	     ć Icon ÂBd      D ( (              Ë            	     ç Icon ÂBd      l ( (              Ě            	     ę Page 3   é           H  ë Icon ÂBd         ( (              Í            	  é   ě Icon ÂBd       ,  ( (              Î            	  é   í Icon ÂBd       T  ( (              Ď            	  é   î Icon ÂBd       |  ( (              Đ            	  é   ď Icon ÂBd       ¤  ( (              Ń            	  é   đ Icon ÂBd       Ě  ( (              Ň            	  é   ń Icon ÂBd       ô  ( (              Ó            	  é   ň Icon ÂBd        ( (              Ô            	  é   ó Icon ÂBd      D  ( (              Ő            	  é   ô Icon ÂBd      l  ( (              Ö            	  é   ő Icon ÂBd        , ( (              ×            	  é   ö Icon ÂBd       , , ( (              Ř            	  é   ÷ Icon ÂBd       T , ( (              Ů            	  é   ř Icon ÂBd       | , ( (              Ú            	  é   ů Icon ÂBd       ¤ , ( (              Ű            	  é   ú Icon ÂBd       Ě , ( (              Ü            	  é   ű Icon ÂBd       ô , ( (              Ý            	  é   ü Icon ÂBd       , ( (              Ţ            	  é   ý Icon ÂBd      D , ( (              ß            	  é   ţ Icon ÂBd      l , ( (              ŕ            	  é   ˙ Icon ÂBd        T ( (              á            	  é     Icon ÂBd       , T ( (              â            	  é    Icon ÂBd       T T ( (              ă            	  é    Icon ÂBd       | T ( (              ä            	  é    Icon ÂBd       ¤ T ( (              ĺ            	  é    Icon ÂBd       Ě T ( (              ć            	  é    Icon ÂBd       ô T ( (              ç            	  é    Icon ÂBd       T ( (              č            	  é    Icon ÂBd      D T ( (              é            	  é    Icon ÂBd      l T ( (              ę            	  é   	 Icon ÂBd        | ( (              ë            	  é   
 Icon ÂBd       , | ( (              ě            	  é    Icon ÂBd       T | ( (              í            	  é    Icon ÂBd       | | ( (              î            	  é    Icon ÂBd       ¤ | ( (              ď            	  é    Icon ÂBd       Ě | ( (              đ            	  é    Icon ÂBd       ô | ( (              ń            	  é    Icon ÂBd       | ( (              ň            	  é    Icon ÂBd      D | ( (              ó            	  é    Icon ÂBd      l | ( (              ô            	  é    Icon ÂBd        ¤ ( (              ő            	  é    Icon ÂBd       , ¤ ( (              ö            	  é    Icon ÂBd       T ¤ ( (              ÷            	  é    Icon ÂBd       | ¤ ( (              ř            	  é    Icon ÂBd       ¤ ¤ ( (              ů            	  é    Icon ÂBd       Ě ¤ ( (              ú            	  é    Icon ÂBd       ô ¤ ( (              ű            	  é    Icon ÂBd       ¤ ( (              ü            	  é    Icon ÂBd      D ¤ ( (              ý            	  é    Icon ÂBd      l ¤ ( (              ţ            	  é    Icon ÂBd        Ě ( (              ˙            	  é    Icon ÂBd       , Ě ( (                           	  é    Icon ÂBd       T Ě ( (                          	  é     Icon ÂBd       | Ě ( (                          	  é   ! Icon ÂBd       ¤ Ě ( (                          	  é   " Icon ÂBd       Ě Ě ( (                          	  é   # Icon ÂBd       ô Ě ( (                          	  é   $ Icon ÂBd       Ě ( (                          	  é   % Icon ÂBd      D Ě ( (                          	  é   & Icon ÂBd      l Ě ( (                          	  é   ' Icon ÂBd        ô ( (              	            	  é   ( Icon ÂBd       , ô ( (              
            	  é   ) Icon ÂBd       T ô ( (                          	  é   * Icon ÂBd       | ô ( (                          	  é   + Icon ÂBd       ¤ ô ( (                          	  é   , Icon ÂBd       Ě ô ( (                          	  é   - Icon ÂBd       ô ô ( (                          	  é   . Icon ÂBd       ô ( (                          	  é   / Icon ÂBd      D ô ( (                          	  é   0 Icon ÂBd      l ô ( (                          	  é   1 Icon ÂBd        ( (                          	  é   2 Icon ÂBd       , ( (                          	  é   3 Icon ÂBd       T ( (                          	  é   4 Icon ÂBd       | ( (                          	  é   5 Icon ÂBd       ¤ ( (                          	  é   6 Icon ÂBd       Ě ( (                          	  é   7 Icon ÂBd       ô ( (                          	  é   8 Icon ÂBd       ( (                          	  é   9 Icon ÂBd      D ( (                          	  é   : Icon ÂBd      l ( (                          	  é    Page 4   é           H   Icon ÂBd         ( (                          	  1    Icon ÂBd       ,  ( (                          	  1    Icon ÂBd       T  ( (                          	  1    Icon ÂBd       |  ( (                           	  1    Icon ÂBd       ¤  ( (              !            	  1    Icon ÂBd       Ě  ( (              "            	  1    Icon ÂBd       ô  ( (              #            	  1    Icon ÂBd        ( (              $            	  1    Icon ÂBd      D  ( (              %            	  1    Icon ÂBd      l  ( (              &            	  1    Icon ÂBd        , ( (              '            	  1    Icon ÂBd       , , ( (              (            	  1    Icon ÂBd       T , ( (              )            	  1    Icon ÂBd       | , ( (              *            	  1    Icon ÂBd       ¤ , ( (              +            	  1    Icon ÂBd       Ě , ( (              ,            	  1    Icon ÂBd       ô , ( (              -            	  1     Icon ÂBd       , ( (              .            	  1   Ą Icon ÂBd      D , ( (              /            	  1   ˘ Icon ÂBd      l , ( (              0            	  1   Ł Icon ÂBd        T ( (              1            	  1   ¤ Icon ÂBd       , T ( (              2            	  1   Ľ Icon ÂBd       T T ( (              3            	  1   Ś Icon ÂBd       | T ( (              4            	  1   § Icon ÂBd       ¤ T ( (              5            	  1   ¨ Icon ÂBd       Ě T ( (              6            	  1   Š Icon ÂBd       ô T ( (              7            	  1   Ş Icon ÂBd       T ( (              8            	  1   Ť Icon ÂBd      D T ( (              9            	  1   Ź Icon ÂBd      l T ( (              :            	  1   ­ Icon ÂBd        | ( (              ;            	  1   Ž Icon ÂBd       , | ( (              <            	  1   Ż Icon ÂBd       T | ( (              =            	  1   ° Icon ÂBd       | | ( (              >            	  1   ą Icon ÂBd       ¤ | ( (              ?            	  1   ˛ Icon ÂBd       Ě | ( (              @            	  1   ł Icon ÂBd       ô | ( (              A            	  1   ´ Icon ÂBd       | ( (              B            	  1   ľ Icon ÂBd      D | ( (              C            	  1   ś Icon ÂBd      l | ( (              D            	  1   ˇ Icon ÂBd        ¤ ( (              E            	  1   ¸ Icon ÂBd       , ¤ ( (              F            	  1   š Icon ÂBd       T ¤ ( (              G            	  1   ş Icon ÂBd       | ¤ ( (              H            	  1   ť Icon ÂBd       ¤ ¤ ( (              I            	  1   ź Icon ÂBd       Ě ¤ ( (              J            	  1   ˝ Icon ÂBd       ô ¤ ( (              K            	  1   ž Icon ÂBd       ¤ ( (              L            	  1   ż Icon ÂBd      D ¤ ( (              M            	  1   Ŕ Icon ÂBd      l ¤ ( (              N            	  1   Á Icon ÂBd        Ě ( (              O            	  1   Â Icon ÂBd       , Ě ( (              P            	  1   Ă Icon ÂBd       T Ě ( (              Q            	  1   Ä Icon ÂBd       | Ě ( (              R            	  1   Ĺ Icon ÂBd       ¤ Ě ( (              S            	  1   Ć Icon ÂBd       Ě Ě ( (              T            	  1   Ç Icon ÂBd       ô Ě ( (              U            	  1   Č Icon ÂBd       Ě ( (              V            	  1   É Icon ÂBd      D Ě ( (              W            	  1   Ę Icon ÂBd      l Ě ( (              X            	  1   Ë Icon ÂBd        ô ( (              -            	  1   Ě Icon ÂBd       , ô ( (              .            	  1   Í Icon ÂBd       T ô ( (              /            	  1   Î Icon ÂBd       | ô ( (              0            	  1   Ď Icon ÂBd       ¤ ô ( (              1            	  1   Đ Icon ÂBd       Ě ô ( (              2            	  1   Ń Icon ÂBd       ô ô ( (              3            	  1   Ň Icon ÂBd       ô ( (              4            	  1   Ó Icon ÂBd      D ô ( (              5            	  1   Ô Icon ÂBd      l ô ( (              6            	  1   Ő Icon ÂBd        ( (              7            	  1   Ö Icon ÂBd       , ( (              8            	  1   × Icon ÂBd       T ( (              9            	  1   Ř Icon ÂBd       | ( (              :            	  1   Ů Icon ÂBd       ¤ ( (              ;            	  1   Ú Icon ÂBd       Ě ( (              <            	  1   Ű Icon ÂBd       ô ( (              =            	  1   Ü Icon ÂBd       ( (              >            	  1   Ý Icon ÂBd      D ( (              ?            	  1   Ţ Icon ÂBd      l ( (              @            	  1   ŕ Page 5   é           H  á Icon ÂBd         ( (              A            	     â Icon ÂBd       ,  ( (              B            	     ă Icon ÂBd       T  ( (              C            	     ä Icon ÂBd       |  ( (              D            	     ĺ Icon ÂBd       ¤  ( (              E            	     ć Icon ÂBd       Ě  ( (              F            	     ç Icon ÂBd       ô  ( (              G            	     č Icon ÂBd        ( (              H            	     é Icon ÂBd      D  ( (              I            	     ę Icon ÂBd      l  ( (              J            	     ë Icon ÂBd        , ( (              K            	     ě Icon ÂBd       , , ( (              L            	     í Icon ÂBd       T , ( (              M            	     î Icon ÂBd       | , ( (              N            	     ď Icon ÂBd       ¤ , ( (              O            	     đ Icon ÂBd       Ě , ( (              P            	     ń Icon ÂBd       ô , ( (              Q            	     ň Icon ÂBd       , ( (              R            	     ó Icon ÂBd      D , ( (              S            	     ô Icon ÂBd      l , ( (              T            	     ő Icon ÂBd        T ( (              U            	     ö Icon ÂBd       , T ( (              V            	     ÷ Icon ÂBd       T T ( (              W            	     ř Icon ÂBd       | T ( (              X            	     ů Icon ÂBd       ¤ T ( (              Y            	     ú Icon ÂBd       Ě T ( (              Z            	     ű Icon ÂBd       ô T ( (              [            	     ü Icon ÂBd       T ( (              \            	     ý Icon ÂBd      D T ( (              ]            	     ţ Icon ÂBd      l T ( (              ^            	     ˙ Icon ÂBd        | ( (              _            	       Icon ÂBd       , | ( (              `            	      Icon ÂBd       T | ( (              a            	      Icon ÂBd       | | ( (              b            	      Icon ÂBd       ¤ | ( (              c            	      Icon ÂBd       Ě | ( (              d            	      Icon ÂBd       ô | ( (              e            	      Icon ÂBd       | ( (              f            	      Icon ÂBd      D | ( (              g            	      Icon ÂBd      l | ( (              h            	     	 Icon ÂBd        ¤ ( (              i            	     
 Icon ÂBd       , ¤ ( (              j            	      Icon ÂBd       T ¤ ( (              k            	      Icon ÂBd       | ¤ ( (              l            	      Icon ÂBd       ¤ ¤ ( (              m            	      Icon ÂBd       Ě ¤ ( (              n            	      Icon ÂBd       ô ¤ ( (              o            	      Icon ÂBd       ¤ ( (              p            	      Icon ÂBd      D ¤ ( (              q            	      Icon ÂBd      l ¤ ( (              r            	      Icon ÂBd        Ě ( (              s            	      Icon ÂBd       , Ě ( (              t            	      Icon ÂBd       T Ě ( (              u            	      Icon ÂBd       | Ě ( (              v            	      Icon ÂBd       ¤ Ě ( (              w            	      Icon ÂBd       Ě Ě ( (              x            	      Icon ÂBd       ô Ě ( (              y            	      Icon ÂBd       Ě ( (              z            	      Icon ÂBd      D Ě ( (              {            	      Icon ÂBd      l Ě ( (              |            	      Icon ÂBd        ô ( (              }            	      Icon ÂBd       , ô ( (              ~            	      Icon ÂBd       T ô ( (                          	       Icon ÂBd       | ô ( (                          	     ! Icon ÂBd       ¤ ô ( (                          	     " Icon ÂBd       Ě ô ( (                          	     # Icon ÂBd       ô ô ( (                          	     $ Icon ÂBd       ô ( (                          	     % Icon ÂBd      D ô ( (                          	     & Icon ÂBd      l ô ( (                          	     ' Icon ÂBd        ( (                          	     ( Icon ÂBd       , ( (                          	     ) Icon ÂBd       T ( (                          	     * Icon ÂBd       | ( (                          	     + Icon ÂBd       ¤ ( (                          	     , Icon ÂBd       Ě ( (                          	     - Icon ÂBd       ô ( (                          	     . Icon ÂBd       ( (                          	     / Icon ÂBd      D ( (                          	     0 Icon ÂBd      l ( (                          	     4 Page 6   é           H  5 Icon ÂBd         ( (                          	  3   6 Icon ÂBd       ,  ( (                          	  3   7 Icon ÂBd       T  ( (                          	  3   8 Icon ÂBd       |  ( (                          	  3   9 Icon ÂBd       ¤  ( (                          	  3   : Icon ÂBd       Ě  ( (                          	  3   ; Icon ÂBd       ô  ( (                          	  3   < Icon ÂBd        ( (                          	  3   = Icon ÂBd      D  ( (                          	  3   > Icon ÂBd      l  ( (                          	  3   ? Icon ÂBd        , ( (                          	  3   @ Icon ÂBd       , , ( (                          	  3   A Icon ÂBd       T , ( (                          	  3   B Icon ÂBd       | , ( (                          	  3   C Icon ÂBd       ¤ , ( (                          	  3   D Icon ÂBd       Ě , ( (                           	  3   E Icon ÂBd       ô , ( (              Ą            	  3   F Icon ÂBd       , ( (              ˘            	  3   G Icon ÂBd      D , ( (              Ł            	  3   H Icon ÂBd      l , ( (              ¤            	  3   I Icon ÂBd        T ( (              Ľ            	  3   J Icon ÂBd       , T ( (              Ś            	  3   K Icon ÂBd       T T ( (              §            	  3   L Icon ÂBd       | T ( (              ¨            	  3   M Icon ÂBd       ¤ T ( (              Š            	  3   N Icon ÂBd       Ě T ( (              Ş            	  3   O Icon ÂBd       ô T ( (              Ť            	  3   P Icon ÂBd       T ( (              Ź            	  3   Q Icon ÂBd      D T ( (              ­            	  3   R Icon ÂBd      l T ( (              Ž            	  3   S Icon ÂBd        | ( (              Ż            	  3   T Icon ÂBd       , | ( (              °            	  3   U Icon ÂBd       T | ( (              ą            	  3   V Icon ÂBd       | | ( (              ˛            	  3   W Icon ÂBd       ¤ | ( (              ł            	  3   X Icon ÂBd       Ě | ( (              ´            	  3   Y Icon ÂBd       ô | ( (              ľ            	  3   Z Icon ÂBd       | ( (              ś            	  3   [ Icon ÂBd      D | ( (              ˇ            	  3   \ Icon ÂBd      l | ( (              ¸            	  3   ] Icon ÂBd        ¤ ( (              š            	  3   ^ Icon ÂBd       , ¤ ( (              ş            	  3   _ Icon ÂBd       T ¤ ( (              ť            	  3   ` Icon ÂBd       | ¤ ( (              ź            	  3   a Icon ÂBd       ¤ ¤ ( (              ˝            	  3   b Icon ÂBd       Ě ¤ ( (              ž            	  3   c Icon ÂBd       ô ¤ ( (              ż            	  3   d Icon ÂBd       ¤ ( (              Ŕ            	  3   e Icon ÂBd      D ¤ ( (              Á            	  3   f Icon ÂBd      l ¤ ( (              Â            	  3   g Icon ÂBd        Ě ( (              Ă            	  3   h Icon ÂBd       , Ě ( (              Ä            	  3   i Icon ÂBd       T Ě ( (              Ĺ            	  3   j Icon ÂBd       | Ě ( (              Ć            	  3   k Icon ÂBd       ¤ Ě ( (              Ç            	  3   l Icon ÂBd       Ě Ě ( (              Č            	  3   m Icon ÂBd       ô Ě ( (              É            	  3   n Icon ÂBd       Ě ( (              Ę            	  3   o Icon ÂBd      D Ě ( (              Ë            	  3   p Icon ÂBd      l Ě ( (              Ě            	  3   q Icon ÂBd        ô ( (              Í            	  3   r Icon ÂBd       , ô ( (              Î            	  3   s Icon ÂBd       T ô ( (              Ď            	  3   t Icon ÂBd       | ô ( (              Đ            	  3   u Icon ÂBd       ¤ ô ( (              Ń            	  3   v Icon ÂBd       Ě ô ( (              Ň            	  3   w Icon ÂBd       ô ô ( (              Ó            	  3   x Icon ÂBd       ô ( (              Ô            	  3   y Icon ÂBd      D ô ( (              Ő            	  3   z Icon ÂBd      l ô ( (              Ö            	  3   { Icon ÂBd        ( (              ×            	  3   | Icon ÂBd       , ( (              Ř            	  3   } Icon ÂBd       T ( (              Ů            	  3   ~ Icon ÂBd       | ( (              Ú            	  3    Icon ÂBd       ¤ ( (              Ű            	  3    Icon ÂBd       Ě ( (              Ü            	  3    Icon ÂBd       ô ( (              Ý            	  3    Icon ÂBd       ( (              Ţ            	  3    Icon ÂBd      D ( (              ß            	  3    Icon ÂBd      l ( (              ŕ            	  3    Common   )        H (   Prev ÂBŤp *on mouseUp
  go to prev card
end mouseUp
        L                  @            	  3 	  É 	  w 	  é 	   	  é 	  1 	      Next ÂBŤp *on mouseUp
  go to next card
end mouseUp
       lL                  A            	  3 	  É 	  w 	  é 	   	  é 	  1 	     n Clear Icon ŔDŤp on mouseUp
  if the selectedObject is empty
  then exit to MetaCard
  set the icon of the selectedObject to 0
  close this stack
end mouseUp
        ¤L T          	  3 	  É 	  w 	  é 	   	  é 	  1 	     ň sixtyfours   é         b   ó Icon ÂBŠd       "  B B              !            	  É   ô Icon ÂBŠd       h  B B              "            	  É   ő Icon ÂBŠd       Ž  B B              #            	  É   ö Icon ÂBŠd       ô  B B              $            	  É   ÷ Icon ÂBŠd      :  B B              %            	  É   ř Icon ÂBŠd       " Ô B B              &            	  É   ů Icon ÂBŠd       h Ô B B              )            	  É   ú Icon ÂBŠd       Ž Ô B B              *            	  É   ű Icon ÂBŠd       ô Ô B B              +            	  É   ü Icon ÂBŠd      : Ô B B              ,            	  É   ô 
Navigator          m ř  D              é 	Nav card   	P ion preOpenCard
  set the label of button "Stack Name" to the short name of the topstack
end preOpenCard
             D  ę  ë  ě  í  î  ď  đ  ń  ň  ô  ę First âBw fon mouseUp
  set the defaultStack to the label of button "Stack Name"
  go to first card
end mouseUp
           $ $ Go to First Card               ?            	  é   ë Prev âBw eon mouseUp
  set the defaultStack to the label of button "Stack Name"
  go to prev card
end mouseUp
       $   $ $ Go to Prev Card               @            	  é   ě Next âBw eon mouseUp
  set the defaultStack to the label of button "Stack Name"
  go to next card
end mouseUp
       H   $ $ Go to Next Card               A            	  é   í Last âBw eon mouseUp
  set the defaultStack to the label of button "Stack Name"
  go to last card
end mouseUp
       l   $ $ Go to Last Card               B            	  é   î Start âBw ^on mouseUp
  set the defaultStack to the label of button "Stack Name"
  go start
end mouseUp
          $ $ Go to First Viewed               F            	  é   ď Back âBw _on mouseUp
  set the defaultStack to the label of button "Stack Name"
  go back 1
end mouseUp
       ´   $ $ Go Back               E            	  é   đ Forward âBw bon mouseUp
  set the defaultStack to the label of button "Stack Name"
  go forward 1
end mouseUp
       Ř   $ $ Go Forward               D            	  é   ń Finish âBw _on mouseUp
  set the defaultStack to the label of button "Stack Name"
  go finish
end mouseUp
       ü   $ $ Go to Last Viewed               C            	  é 
  ň Find            ( D            
In stack:   ô Stack Name ŕ4)e       D ( Ř  
Navigator      MC Stack Menu        	  é    Find           nźT               é 
Find Card   	P3on preOpenCard
  set the label of button "Stack Name" to the short name of the topStack
end preOpenCard

on MCFind
  local thilited, tstring
  set the cursor to watch
  put the hilitedButton of group 1 into thilited
  put field "Find" into tstring
  set the caseSensitive to the hilite of button "case sensitive"
  set the defaultStack to the label of button "Stack Name"
  if thilited is 1
  then find tstring
  else if thilited is 2
  then find whole tstring
  if the result is "not found"
  then beep 1
end MCFind

on returnInField
  MCFind
end returnInField
           T   ř  ě    ô  ő  ú  ˙  ě Type   é       ˙ţ " Ţ   î partial words  DŠ        & h         	  é  ď whole words  DŠ       n & j         	  é   ô Find ŕDŤp !on mouseUp
  MCFind
end mouseUp
        > b T         	  é   ő Help ŔDŤp on mouseUp
  help
end mouseUp
        Ć b T         	  é 
  ř Find  )`        D         é  
  ú            @ D            
In stack:   ˙ Stack Name ŕ4)e       H @ ü  Dialog Box Help      MC Stack Menu        	  é    case sensitive  DŠ       Ř ( x         	  é   ˙ File Selector         Öl         Save     ˙˙˙˙     U 
Helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   é File Selector Card   	PŘon help
  go to card "File Selector" of stack "Dialog Box Help" as modeless
end help

on refresh
  local filterstring, fnames
  set the cursor to watch
  lock screen
  set the itemDelimiter to "/"
  if the number of items in field "Directory" > 1 and the last char of field "Directory" is not "/"
  then put the last item of field "Directory" into filterstring
  if filterstring is empty then put "*" into filterstring
  put the directory into field "Directory"
  if the last char of field "Directory" is not "/"
  then put "/" after field "Directory"
  put filterstring after field "Directory"
  put the directories into field "Directories"
  if field "Directories" is empty
  then put ".." into field "Directories"
  else sort field "Directories"
  if the visible of field "Files" then
    put the files into fnames
    filter fnames with filterstring
    put fnames into field "Files"
    sort field "Files"
    local dirwidth, filewidth, cwidth
    put max(48, the formattedWidth of field "Directories") into dirwidth
    put max(48, the formattedWidth of field "Files") into filewidth
    put max(the formattedWidth of field "Directory" + 16, dirwidth + filewidth + 24, 250) into cwidth
    set the width of field "Directories" to dirwidth
    set the width of field "Files" to filewidth
    set the left of field "Files" to the right of field "Directories" + 8
    set the left of field "Flabel" to max(the right of field "Dlabel", the left of field "Files" - 8)
  else
    set the width of field "Directories" to 304
    put 320 into cwidth
  end if
  set the width of this stack to cwidth
  local twidth, perspace, toffset
  repeat with i = 1 to the number of buttons
    add the width of button i to twidth
  end repeat
  put (cwidth - twidth) / 5 into perspace
  put perspace into toffset
  repeat with i = 1 to the number of buttons
    set the left of button i to round(toffset)
    add the width of button i + perspace to toffset
  end repeat
  set the width of field "Directory" to cwidth - 16
  set the width of field "Selection" to cwidth - 32
  set the scroll of field "Directories" to 0
  unlock screen
end refresh

on returnKey
  send "mouseUp" to button id 1013
end returnKey

on escapeKey
  send "mouseUp" to button id 1014
end escapeKey

# command, title, prompt, filter, response
on preOpenCard
  set the itemDelimiter to numToChar(0)
  if item 2 of the dialogData is empty then
    if word 1 of item 1 of the dialogData is "answer" then
      if word 2 of item 1 of the dialogData is "folder"
      then set the title of this stack to "Choose Directory"
      else set the title of this stack to "Open"
    else set the title of this stack to "Save"
  else set the title of this stack to item 2 of the dialogData
  put item 3 of the dialogData into field "Prompt"
  put the directory & "/" & item 4 of the dialogData into field "Directory"
  put item 5 of the dialogData into field "Selection"
  if word 2 of item 1 of the dialogData is "folder" then
    hide field "Files"
    hide field "Flabel"
    set the name of button id 1013 to "Choose"
  else
    show field "Files"
    show field "Flabel"
    if word 1 of item 1 of the dialogData is "answer"
    then set the name of button id 1013 to "Open"
    else set the name of button id 1013 to "Save"
  end if
  refresh
end preOpenCard

on closeStack
  put empty into field "Directory"
  put empty into field "Directories"
  put empty into field "Files"
  put empty into field "Selection"
  put empty into field "Prompt"
  set the dialogData to empty
end closeStack

on resizeStack
  local cheight
  put the height of this card into cheight
  repeat with i = 1 to 4
    set the bottom of button i to cheight - 12
  end repeat
  set the bottom of field "Selection" to the top of button 1 - 12
  set the bottom of field "Prompt" to the top of field "Selection" - 2
  set the height of field "Directories" to the top of field "Prompt" - 4 - the top of field "Directories"
  set the height of field "Files" to the top of field "Prompt" - 4 - the top of field "Files"
end resizeStack
           l  ů  ó  ő  ˙  ö  ÷  ę  í  ď  đ  ń  ř
  ę Directories ˇ)pĂon mouseUp
  if not the visible of field "Files" then put the selectedText of me into field "Selection"
end mouseUp

on mouseDoubleUp
  local olddir
  put the directory into olddir
  set the directory to olddir & "/" & the clickText
  if the result is not empty then
    answer "Can't set to that directory."
    set the directory to olddir
  else refresh
  if not the visible of field "Files" then put empty into field "Selection"
end mouseDoubleUp
         T  Ă             ě    )`       s U  Á
  í Files ˇ)p Řon mouseUp
  put the clickText into field "Selection"
end mouseUp

on mouseDoubleUp
  send "mouseUp" to button id 1013
end mouseDoubleUp

on rawKeyUp
  put the selectedText of me into field "Selection"
end rawKeyUp
         T Ô Ă             î    )`      O U  Á
  ď Dlabel           < \            Directories: 
  đ Flabel           < 0            Files: 
  ń Prompt          @             
  ó 
Directory ipÜon closeField
  local olddir, newdir
  put the directory into olddir
  put me into newdir
  if newdir contains "/" then
    repeat until the last char of newdir is "/"
      delete last char of newdir
    end repeat
  end if
  set the directory to newdir
  if the result is not empty then
    answer "Can't set to that directory."
    set the directory to olddir
    put olddir into me
  else refresh
end closeField

on openField
  select after last char of me
end openField
         \               ő Save ŕDŤpËon mouseUp
  local fname
  put field "Selection" into fname
  if the visible of field "Files" then
    repeat for each char c in fname
      if c is in " :?*<>\()[]{}|'`" & quote & tab then
        answer "Invalid file name character" && quote & c & quote && "in" & cr & fname
        exit to MetaCard
      end if
    end repeat
  end if
  if char 1 of fname is not "/" then
    if fname is empty
    then put the directory into fname
    else
      put "/" before fname
      if the directory is not "/"
      then put the directory before fname
    end if
  end if
  if the short name of me is "Save" then
    get fname
    set the itemDelimiter to "/"
    delete last item of it
    if there is no directory it then
      answer error "Directory" && it && "does not exist."
      exit to MetaCard
    else
      if there is a file fname then
        answer question "File" && fname && "exists.  Overwrite?"  with "Yes" or "No"
        if it is not "Yes" then exit to MetaCard
      end if
    end if
  end if
  if the short name of me is "Open" and there is no file fname then
    answer error "File" && fname && "does not exist."
    exit to MetaCard
  end if
  close this stack
  set the dialogData to fname
end mouseUp
        ] <        	  é   ö Cancel ŔDŤp +on mouseUp
  close this stack
end mouseUp
        Ę] :        	  é   ÷ Help ŔDŤp on mouseUp
  help
end mouseUp
       "] ,        	  é 
  ř             P            File Filter: 
  ů 
Selection ip Gon returnInField
  send "mouseUp" to button id 1013
end returnInField
        5L               ˙ Filter ŔDŤ`       x] 4        	  é    Cursors          a               U 
Helvetica   é    	@                 ď    	@                 ě    	@                 ń    	@                 ó    	@                 ő    	@                 ÷    	@                 ů    	@                 ű    	@                     	@                     	@                 	    	@                     	@                     	@                     	@                     	@                     	@                     	@                   c5   	D          ˙˙˙˙˙˙     0 0       d  ř ě Ä NwŢ üň ńĂ ÇÁ Á°ŔáŕŔÁ @Aŕ@`Ŕ`   0 p Đ08ŕă 8 ŕ    ^  8    < 8> ă> O?  ">ß > ? ˙Ŕ ˙ ˙  ü` ńŔ Ç  p Ŕ    j  ř ü ü wţ ˙ţ ˙ ˙ ˙˙˙Ŕ˙0Ŕ˙Ŕ˙ŕ?˙ŕ?˙đ˙đ˙đ˙đ˙ŕ˙ţ ř ŕ       c11   	D          ˙˙˙˙˙˙     0 0       [    5 [       @   A   H 0 ŕ     J   
 $ p ř đ ŕ Ŕ   > | x ° Ŕ Ł    [    ?  ţ ü ř đ ŕ Ŕ ?  ţ ü ř đ ŕ        c12   	D          ˙˙˙˙˙˙     0 0       Y >  ˙ ˙ ˙ ˙  ?  0 @   A    đ ŕ Ś    .Ş  Ŕ ŕ Ŕ   > | x p˛    Y >  ˙ ˙ ˙ ˙ ˙ ˙ ţ đ Ŕ ?  ţ ü ř đ ŕ Ś       c16  	D          ˙˙˙˙˙˙     8 8     KŔ đ !ř Aü Aü ţ ţ ˙ţ ˙ ˙   ? 0 Ŕ    2   > > ~ ~ ü ü ř ř đ Ŕ    B
ŔđD?ř 
ü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ          c17   	D          ˙˙˙˙˙˙     8 8     IŔ 0   p x< ü~ ţ ˙ţ ţ ü~ x< p   0 Ŕ    < Ŕ đ ŕ Ŕ     Ŕ ŕ đ Ŕ    AŔÔđŕ?řü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ        c18   	D          ˙˙˙˙˙˙     8 8     KŔ 0 ?   ˙ ˙ ˙ţ ţ ţ Aü Aü !ř đ Ŕ    2 Ŕ đ ř ř ü ü ~ ~ > >      B
ŔđD?ř 
ü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ        c19   	D          ˙˙˙˙˙˙     8 8     KŔ đ ?ř _ô Oä Â    Â Oä _ô ?ř đ Ŕ    -   0 x< | ~ü | x< 0      B
ŔđD?ř 
ü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ        c20   	D          ˙˙˙˙˙˙     8 8     KŔ đ !ř Aü Aü ţ ţ ˙ţ ˙ ˙   ? 0 Ŕ    2   > > ~ ~ ü ü ř ř đ Ŕ    B
ŔđD?ř 
ü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ        c21   	D          ˙˙˙˙˙˙     8 8     IŔ 0   p x< ü~ ţ ˙ţ ţ ü~ x< p   0 Ŕ    < Ŕ đ ŕ Ŕ     Ŕ ŕ đ Ŕ    B
ŔđD?ř 
ü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ        c22   	D          ˙˙˙˙˙˙     8 8     KŔ 0 ?   ˙ ˙ ˙ţ ţ ţ Aü Aü !ř đ Ŕ    2 Ŕ đ ř ř ü ü ~ ~ > >      B
ŔđD?ř 
ü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ        c23   	D          ˙˙˙˙˙˙     8 8     KŔ đ ?ř _ô Oä Â    Â Oä _ô ?ř đ Ŕ    -   0 x< | ~ü | x< 0      B
ŔđD?ř 
ü˙ýüP˙ţ 
˙ţ ˙ţ ˙ţ ˙ţü˙ýü?řBđ Ŕ        c1   	D  ˙˙˙˙˙˙             8 8     B Ŕ         @ Ŕ  ˛ é 	     7 @ ` p x | ~   | l L      J Ŕ ŕ `đ př Xü pţ E˙ 0˙Á˙Ŕ˙ŔEţ  ţ ď  E       c8   	D          ˙˙˙˙˙˙     8 8     J 	 	 	 	 	 	ŕ č¸ Ź * Ŕ
 ` 0       G       @ gP wÔ ?ô ü ü ř ř ř    C   5ó  %ŕďř%˙ü%˙ţ˙ţ%ţ?ţţüü      c24   	D  řřüüřř             8 8     A Ŕ            ˛ é 	     D @ ` p x |A ~A A Á |A lA LA A A     C HŔ ˙ýŕ Đđ ˙ýř Pü 
ţA ˙A ˙Á ˙Á˙ý˙Á˙ýţAţAďA A        c25   	D  řřüüřř             8 8     I Ŕ      > > ś 6 ˘ 6 ˛6 é> 	>     D @ ` p x |A ~A I É |] lI LI A A     B HŔ ˙ýŕ Đđ ˙ýř Pü ţ ˙ ˙ ˙ý˙ýţţď         c26  	D  řřüüřř             8 8     N@    p @ @ ˙   ˙ @ @ p    @    F Ŕ ŕ    ţ ţ    ŕ Ŕ     CŔ ŕ@đ˙ýđhŔuŔ ˙ý˙@˙ ˙ýŔ˙ýŔĐđđ@ŕ Ŕ       c27  	D  řřüüřř             8 8     H Ŕ @ @ 2L RJ y @ @ y RJ 2L @ @ Ŕ    >    ! a ýż ýż a !       > Ŕ@Ŕ˙ýŔh3ĚusÎ ˙ý˙@˙ ˙ýsÎ˙ý3ĚĐŔŔ@Ŕ        c25   	D          řřüüřř     8 8     Pŕ ř 8< p x Ě Ć Ă Á ŔĂ `f `6 p <8 đ Ŕ    > Ŕ 0  2 ) $ "D !$  H   Ŕ    Dŕ ř@?ü˙ýx>h|fţ ď ç@ăÇ áç˙ýpţ˙ýp~Đ|<?ř@đ Ŕ     2 Brushes          k°                é    	@               e  ě    	@               f  ď    	@               g  ń    	@               h  ó    	@               i  ő    	@               j  ÷    	@               k  ů    	@               l  ű    	@               m  ý    	@               n  ˙    	@               o      	@               p      	@               q      	@               r      	@               s      	@               t      	@               u      	@               v      	@               w      	@               x      	@               y      	@               z      	@               {  !    	@               |  #    	@               }  %    	@               ~  '    	@                 )    	@                 +    	@                 -    	@                 /    	@                 1    	@                     	@                     	@                     	@                 	    	@                  e b101   	D   ˙˙˙˙˙˙             0 0        ˙ř                        ˙ř    } ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ     ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř      f b102   	D   ˙˙˙˙˙˙             0 0       d ˙                 ˙    X ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙Ą    d ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙      g b103   	D   ˙˙˙˙˙˙             0 0       CŠ ü @ @ @ @ @ @ @ @ @ @ @ üĽ    9­ ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?ř ?řŠ    CŠ ü ü ü ü ü ü ü ü ü ü ü ü üĽ      h b104   	D   ˙˙˙˙˙˙             0 0       %ľ ŕ           ŕą    š Ŕ Ŕ Ŕ Ŕ Ŕľ    %ľ ŕ ŕ ŕ ŕ ŕ ŕ ŕą      i b105   	D   ˙˙˙˙˙˙             0 0        đ 0 Ŕ   @                             @  Ŕ 0 đ     đ ?ü ˙ ˙˙Ŕ˙ŕ˙ŕ˙đ˙đ˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙ř˙đ˙đ˙ŕ˙ŕ˙Ŕ˙ ˙ ?ü đ     đ ?ü ˙ ˙˙Ŕ˙ŕ˙đ˙đ˙ř˙ř?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü?˙ü˙ř˙ř˙đ˙đ˙ŕ˙Ŕ˙ ˙ ?ü đ      j b106   	D   ˙˙˙˙˙˙             0 0       Y ŕ    @            @    ŕĄ    L ŕ ř ?ü ţ ţ ˙ ˙ ˙ ˙ ˙ ˙ ţ ţ ?ü ř ŕĽ    Y ŕ ř ?ü ţ ˙ ˙ ˙˙˙˙˙˙ ˙ ˙ ţ ?ü ř ŕĄ      k b107   	D   ˙˙˙˙˙˙             0 0       >Š ŕ           ŕŠ    4­ ŕ ř ř ü ü ü ü ř ř ŕ­    >Š ŕ ř ü ü ţ ţ ţ ţ ü ü ř ŕŠ      l b108   	D   ˙˙˙˙˙˙             0 0       %ą Ŕ        Ŕľ    ľ Ŕ ŕ ŕ ŕ Ŕš    %ą Ŕ ŕ đ đ đ ŕ Ŕľ      m b109   	D   ˙˙˙˙˙˙             0 0          " D     @   " D     @   " D     @   "      t   8 p ŕ Ŕ     8 p ŕ Ŕ     8 p ŕ Ŕ            > | ř đ ŕ Ŕ   > | ř đ ŕ Ŕ   > | ř đ ŕ Ŕ   >        n b110   	D   ˙˙˙˙˙˙             0 0       [  @   @   " D     @   " D     @    N  Ŕ     8 p ŕ Ŕ     8 p ŕ @˘    [  Ŕ ŕ Ŕ   > | ř đ ŕ Ŕ   > | ř đ ŕ @      o b111   	D   ˙˙˙˙˙˙             0 0       1Ş   $ H    @  	  Ž    'Ž   0 ` Ŕ    ˛    1Ş   < x đ ŕ Ŕ    Ž      p b112   	D   ˙˙˙˙˙˙             0 0       $Ž  ( P   @   ś    ˛    @   ş    $Ž  8 p ŕ Ŕ   ś       b133   	D           ˙˙˙˙˙˙     0 0       >      B                A   @     @         @    d    @     B  @                @       b134   	D   ˙˙˙˙˙˙             0 0       ,    @       @    .   @              H     @  @            @       b135   	D           ˙˙˙˙˙˙     0 0       Ľ      Ľ    Ž     Š    +Ľ          Ľ       b136   	D           ˙˙˙˙˙˙     0 0       
ą   š    
ś @ ž    ą  @   š      q b113   	D   ˙˙˙˙˙˙             0 0       z  
   @     D "   @     D "   @     D (     l     Ŕ ŕ p 8     Ŕ ŕ p 8     Ŕ ŕ p 8     z     Ŕ ŕ đ ř | >   Ŕ ŕ đ ř | >   Ŕ ŕ đ ř | 8       r b114   	D   ˙˙˙˙˙˙             0 0       V @     D "   @     D "   @      IĄ @ ŕ p 8     Ŕ ŕ p 8         V @ ŕ đ ř | >   Ŕ ŕ đ ř | >   Ŕ        s b115   	D   ˙˙˙˙˙˙             0 0       5­  $  	  @    H $  Ľ    +ą      Ŕ ` 0  Š    5­  <    Ŕ ŕ đ x <  Ľ      t b116   	D   ˙˙˙˙˙˙             0 0       $ą  
   @   P  ą    ľ     @  ľ    $ą     Ŕ ŕ p  ą      u b117   	D   ˙˙˙˙˙˙             0 0        Ŕ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ Ŕ                                   Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ      v b118   	D   ˙˙˙˙˙˙             0 0       f Ŕ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ Ŕ    \                      f Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ      w b119   	D   ˙˙˙˙˙˙             0 0       HĽ              Ľ    2Š            Ş    HĽ              Ľ      x b120   	D   ˙˙˙˙˙˙             0 0       *ą        ą    ľ      ś    *ą        ą      y b121   	D   ˙˙˙˙˙˙             0 0       ´ ?˙ü    ?˙üź    ¸ ˙ř˙řŔ    ´ ?˙ü?˙ü?˙ü?˙üź      z b122   	D   ˙˙˙˙˙˙             0 0       ´ ˙Ŕ @ @˙Ŕź    ¸ ˙˙Ŕ    ´ ˙Ŕ˙Ŕ˙Ŕ˙Ŕź      { b123   	D   ˙˙˙˙˙˙             0 0       š ţ @ ţ˝    ˝ ?üÁ    š ţ ţ ţ˝      | b124   	D   ˙˙˙˙˙˙             0 0       š đ  đ˝    ˝ ŕÁ    š đ đ đ˝      } b125   	D           ˙˙˙˙˙˙     0 0           @              &        @        ~ b126   	D           ˙˙˙˙˙˙     0 0       Ş   @Ś    
ś   ˛    Ş      @Ś       b127   	D           ˙˙˙˙˙˙     0 0       
ś   ˛    Á ž    ś    ˛       b128   	D             0 0       ˝ Â    ˝ Â       b129   	D           ˙˙˙˙˙˙     0 0        Ł       Ą                     b130   	D           ˙˙˙˙˙˙     0 0       Ŕ ź    Ŕ ˝    Ŕ ź       b131   	D           ˙˙˙˙˙˙     0 0                Ľ @  Š      @             b132   	D   ˙˙˙˙˙˙             0 0       š   ž    ˝ Â    š   ž     p Brush Chooser         `×~ ľ              é Brushes Card   	Pzon preOpenCard
  if the tool is "eraser tool"
  then set the hilitedButton of group 1 to the eraser
  else if the tool is "spray tool"
          then set the hilitedButton of group 1 to the spray
          else set the hilitedButton of group 1 to the brush
end preOpenCard

on mouseUp
  if the target contains "button" and the hilite of the target then
    if the tool is "eraser tool"
    then set the eraser to the number of the target
    else if the tool is "spray tool"
           then set the spray to the number of the target
           else set the brush to the number of the target
    close this stack
  end if
end mouseUp
           ~ ľ  %  % Icons   é         d   ( Icon ÂBŠd                         e            	  é   8 Icon ÂBŠd        :                 f            	  é   : Icon ÂBŠd        b                 g            	  é   ; Icon ÂBŠd                         h            	  é   < Icon ÂBŠd       :                  i            	  é   = Icon ÂBŠd       : :                 j            	  é   @ Icon ÂBŠd       : b                 k            	  é   A Icon ÂBŠd       :                  l            	  é   D Icon ÂBŠd       b                  m            	  é   E Icon ÂBŠd       b :                 n            	  é   G Icon ÂBŠd       b b                 o            	  é   H Icon ÂBŠd       b                  p            	  é   J Icon ÂBŠd                         q            	  é   K Icon ÂBŠd        :                 r            	  é   L Icon ÂBŠd        b                 s            	  é   M Icon ÂBŠd                         t            	  é   N Icon ÂBŠd       ˛                  u            	  é   O Icon ÂBŠd       ˛ :                 v            	  é   Q Icon ÂBŠd       ˛ b                 w            	  é   R Icon ÂBŠd       ˛                  x            	  é   S Icon ÂBŠd       Ú                  y            	  é   T Icon ÂBŠd       Ú :                 z            	  é   X Icon ÂBŠd       Ú b                 {            	  é   Y Icon ÂBŠd       Ú                  |            	  é   Z Icon ÂBŠd                        }            	  é   [ Icon ÂBŠd       :                 ~            	  é   _ Icon ÂBŠd       b                             	  é   a Icon ÂBŠd                                    	  é  b Icon ÂBŠd      *                              	  é   c Icon ÂBŠd      * :                             	  é   d Icon ÂBŠd      * b                             	  é   e Icon ÂBŠd      *                              	  é   j Icon ÂBŠd      R                              	  é   k Icon ÂBŠd      R :                             	  é   l Icon ÂBŠd      R b                             	  é   m Icon ÂBŠd      R                              	  é    Pattern Chooser            P              é Pattern Card   	Pon preOpenCard
  set the hilitedButton of background 1 to the brushPattern
  set the icon of button "Brush or Pen" to 309
end preOpenCard

on mouseUp
  local tid
  put the number of the target into tid
  if tid > 31
  then add 19 to tid
  add 64 to tid
  if the icon of button "Brush or Pen" is 308
  then set the penPattern to tid
  else set the brushPattern to tid
end mouseUp

on mouseDoubleUp
  local tcard
  put the icon of the target - 250 into tcard
  go to card tcard of stack "My Patterns"
end mouseDoubleUp
            P  %  X  % Icons   É            P  8 browse ÂBd                           É            	  é   \ browse ÂBd                          Ę            	  é   ] browse ÂBd                           Ë            	  é   ^ browse ÂBd       0                   Ě            	  é   _ browse ÂBd       @                   Í            	  é   ` browse ÂBd       P                   Î            	  é   a browse ÂBd       `                   Ď            	  é   b browse ÂBd       p                   Đ            	  é   c browse ÂBd                          Ń            	  é   d browse ÂBd                          Ň            	  é   e browse ÂBd                           Ó            	  é   f browse ÂBd       °                   Ô            	  é   g browse ÂBd       Ŕ                   Ő            	  é   h browse ÂBd       Đ                   Ö            	  é   i browse ÂBd       ŕ                   ×            	  é   j browse ÂBd                          Ř            	  é   k browse ÂBd                         Ů            	  é   l browse ÂBd       0                  Ú            	  é   m browse ÂBd       H                  Ű            	  é   n browse ÂBd       `                  Ü            	  é   o browse ÂBd       x                  Ý            	  é   p browse ÂBd                         Ţ            	  é   q browse ÂBd       ¨                  ß            	  é   r browse ÂBd       Ŕ                  ŕ            	  é   s browse ÂBd       Ř                  á            	  é   t browse ÂBd         ( ( (               â            	  é   u browse ÂBd       ( ( ( (               ă            	  é   v browse ÂBd       P ( ( (               ä            	  é   w browse ÂBd       x ( ( (               ĺ            	  é   x browse ÂBd         ( ( (               ć            	  é   y browse ÂBd       Č ( ( (               ç            	  é   z browse ÂBd      (                   ű            	  é   { browse ÂBd      8                   ü            	  é   | browse ÂBd      H                   ý            	  é   } browse ÂBd      X                   ţ            	  é   ~ browse ÂBd      h                   ˙            	  é    browse ÂBd      x                               	  é    browse ÂBd                                    	  é    browse ÂBd                                    	  é    browse ÂBd      ¨                              	  é    browse ÂBd      ¸                              	  é    browse ÂBd      Č                              	  é    browse ÂBd      Ř                              	  é    browse ÂBd      č                              	  é    browse ÂBd      ř                              	  é    browse ÂBd                        	            	  é    browse ÂBd      (                 
            	  é    browse ÂBd      @                             	  é    browse ÂBd      X                             	  é    browse ÂBd      p                             	  é    browse ÂBd                                   	  é    browse ÂBd                                    	  é    browse ÂBd      ¸                             	  é    browse ÂBd      Đ                             	  é    browse ÂBd      č                             	  é    browse ÂBd                                    	  é    browse ÂBd      ( ( ( (                          	  é    browse ÂBd      P ( ( (                          	  é    browse ÂBd      x ( ( (                          	  é    browse ÂBd        ( ( (                          	  é    browse ÂBd      Č ( ( (                          	  é    browse ÂBd      đ ( ( (                          	  é   X Brush or Pen Bson mouseUp
  set the hilite of me to false
  if the icon of me is 308 then
    set the icon of me to 309
    set the hilitedButton of group 1 to the brushPattern
  else
    set the icon of me to 308
    set the hilitedButton of group 1 to the penPattern
  end if
end mouseUp
        ř  ( (              5            	  é   / Paint Tools   Đon changeTool
  set the hilitedButton of group 1 to \
      itemOffset(word 1 of the tool, "select,pencil,brush,eraser,spray,bucket,dropper,line,polygon,curve,rectangle,oval,rounded,regular")
end changeTool
       yŤ? ŕ              é Paint Tools Card   	Pťon preOpenCard
  if word 1 of the tool is in "pointer browse button field scrollbar image graphic"
  then set the hilitedButton of group 1 to 0
  set the hilite of button "filled" to the filled
  set the hilite of button "centered" to the centered
  set the hilite of button "roundEnds" to the roundEnds
  set the thumbPos of scrollbar "Line Size" to the lineSize
  set the thumbPos of scrollbar "Poly Sides" to the polySides
end preOpenCard
           ? ŕ  ý  ţ        
      -  .  /  ý filled  DŠ =on mouseUp
  set the filled to the hilite of me
end mouseUp
        X  \         	  é   ţ 	centered  DŠ ?on mouseUp
  set the centered to the hilite of me
end mouseUp
        X 0 \         	  é 
  
           D ° R            polySides: 
             D  H            
lineSize:    
roundEnds  DŠ @on mouseUp
  set the roundEnds to the hilite of me
end mouseUp
        X P \         	  é    
Line Size  éq Mon scrollbarDrag
  set the lineSize to the thumbPos of me
end scrollbarDrag
         p  $  2 1  64          Poly Sides  éq Non scrollbarDrag
  set the polySides to the thumbPos of me
end scrollbarDrag
            $ÓiíÓ#O 3  32          Icons   É |on mouseUp
  if word 1 of the name of the target is "button"
  then choose (the short name of the target) tool
end mouseUp
       ˙ü˙ü H č   select ÂBd                            3            	  é    pencil ÂBd                            4            	  é     brush ÂBt <on mouseDoubleUp
  modal "Brush Chooser"
end mouseDoubleUp
                             5            	  é   ! eraser ÂBt <on mouseDoubleUp
  modal "Brush Chooser"
end mouseDoubleUp
                             6            	  é   " 
spray can ÂBt <on mouseDoubleUp
  modal "Brush Chooser"
end mouseDoubleUp
          @                  7            	  é   # bucket ÂBd         @                  8            	  é   $ dropper ÂBd         `                  M            	  é   % line ÂBd         `                  N            	  é   * polygon ÂBd                           =            	  é   ' curve ÂBd                           :            	  é   ) 
rectangle ÂBd                            <            	  é   & oval ÂBd                            9            	  é   + round rectangle ÂBd         Ŕ                  >            	  é   ( regular polygon ÂBd         Ŕ                  ;            	  é   - Patterns... ŕEŤp 4on mouseUp
  palette "Pattern Chooser"
end mouseUp
        Ü  T         	       . 
Colors... ŕEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
        Ü 0 T         	       / Help ŕEŤp on mouseUp
  help
end mouseUp
        Ü T T         	       î Stack Password          ţ0 h              é    	P >on closeCard
  put empty into field "Password"
end closeCard
            h  î  ě  ę  ë  í  ę Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
        j : 8         	  é   ë Help ŕDŤp on mouseUp
  help
end mouseUp
        ś : 8         	  é   ě OK ŕLŤp on mouseUp
  if word 1 of the selectedObject is "stack"
  then set the password of the selectedObject to field "Password"
  close this stack
end mouseUp
         : 8         	  é 
  í             P            
Password: 
  î 	Password  i`       V 
          é    î Stack Passkey          ŻR  h              é    	P >on closeCard
  put empty into field "Password"
end closeCard
             h  î  ě  ę  ë  í  ę Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
        j : 8         	  é   ë Help ŕDŤp on mouseUp
  help
end mouseUp
        ś : 8         	  é   ě OK ŕLŤpVon mouseUp
  if word 1 of the selectedObject is "stack"  then
    try
      set the passkey of the selectedObject to field "Password"
    catch errno
      answer error "Passkey doesn't match password!"
    end try
    if the passkey of the selectedObject is the password of the selectedObject
    then close this stack
  end if
end mouseUp
         : 8         	  é 
  í             l            Old Password: 
  î 	Password  i`       n 
          é    ű Stack Files         VH ŕ         x˙˙˙˙      é    	Pon resizeStack
  local twidth, tloc
  set the width of field 1 to the width of this stack - 16
  set the height of field 1 to\
      the height of this stack - the height of button 1- 56
  set the left of field 1 to 8
  set the top of field 1 to 40
  put the width of this stack into twidth
  set the width of button 1 to twidth - the left of button 1 - 8
  put 64,the height of this stack - 20 into tloc
  set the loc of button 2 to tloc
  put twidth div 2 into item 1 of tloc
  set the loc of button 3 to tloc
  put twidth - 64 into item 1 of tloc
  set the loc of button 4 to tloc
end resizeStack

on refresh
  local sf
  put the stackfiles of stack (the label of button 1) into sf
  delete last char of sf
  put sf into field 1
end refresh

on preOpenCard
  refresh
end preOpenCard
           H ŕ  ű  î  ň  ó  ő  ú
  î   Šp on mouseUp
end mouseUp
         (8               ő    )`      , (    ň OK ŔDŤp qon mouseUp
  set the stackfiles of stack (the label of button 1) to field 1 & cr
  close this stack
end mouseUp
         Ŕ D         	  é   ó Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
         Ŕ D         	  é   ő Help ŕDŤp on mouseUp
  help
end mouseUp
        ć Ŕ D         	  é 
  ú             8            Stack:   ű Stack Name č4)u "on mouseUp
  refresh
end mouseUp
        D  ü  Home      MC Main Stack Menu        	  é   í Saving         9Ć Ň p                é    	pon preOpenStack
  put "Saving stack" && the short name of the topStack into field 1
  if the mainStack of the topStack is not the short name of the topStack then
    put "as a substack of stack" into line 2 of field 1
    put the mainStack of the topStack into line 3 of field 1
    put "into file" & return & the effective fileName of the topStack into line 4 of field 1
  else
    put "as a mainStack" into line 2 of field 1
    put "into file" & return & the effective fileName of the topStack into line 3 of field 1
  end if
  set the width of field 1 to the formattedWidth of field 1 + 8
  set the height of field 1 to the formattedHeight of field 1
  set the left of field 1 to 0
  set the top of field 1 to 0
  set the width of this stack to the right of field 1
  set the height of this stack to the height of field 1
  set the loc of this stack to the loc of the topStack
end preOpenStack
     @      Ň p  í
  í field id 1005              Ň p        é Saving stack Message Box  as a substack of stack  MetaCard Menu Bar  
into file  /home/raney/mc/mctools.mc   ű 	Patterns          T	                |    	@                 ~    	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                     	@                      	@                 ˘    	@                 ¤    	@                 Ś    	@                 ¨    	@                 Ş    	@                  Ź    	@               Ą  Ž    	@               ˘  °    	@               Ł  ˛    	@               ¤  ´    	@               Ľ  ś    	@               Ś  ¸    	@               §  ş    	@               ¨  ź    	@               Š  ž    	@               Ş  Ŕ    	@               Ť  Â    	@               Ź  Ä    	@               ­  Ć    	@               Ž  Č    	@               Ż  Ę    	@               °  Ě    	@               ą  Î    	@               ˛  Đ    	@               ł  Ň    	@               ´  Ô    	@               ľ  Ö    	@               ś  Ř    	@               ˇ  Ú    	@               ¸  Ü    	@               š  Ţ    	@               ş  ŕ    	@               ť  â    	@               ź  ä    	@               ˝  ć    	@               ž  č    	@               ż  ę    	@               Ŕ  ě    	@               Á  î    	@               Â  đ    	@               Ă  ň    	@               Ä  ô    	@               Ĺ  ö    	@               Ć  ř    	@               Ç  ű    	@               Č  é    	@               É  ě    	@               Ę  ď    	@               Ë  ń    	@               Ě  ó    	@               Í  ő    	@               Î  ÷    	@               Ď  ů    	@               Đ  ű    	@               Ń  ý    	@               Ň  ˙    	@               Ó      	@               Ô      	@               Ő      	@               Ö      	@               ×  '    	@               Ř  )    	@               Ů  +    	@               Ú  -    	@               Ű  /    	@               Ü  1    	@               Ý  3    	@               Ţ  5    	@               ß  7    	@               ŕ  9    	@               á  O    	@               â  Q    	@               ă  S    	@               ä  U    	@               ĺ  W    	@               ć  Y    	@               ç  i    	@               č  k    	@               é  m    	@               ę  o    	@               ë  q    	@               ě  s    	@               í  u    	@               î  w    	@               ď  y    	@               đ   Ę icon 1   	D  qĆy˙˙     qĆ  ˙˙         < <      ˙ Ç Ç    ř ˙     8 8       p p p    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ë icon 1   ID  ÷Ţß}˛Ę          ˙˙˙˙˙˙     < <      ˙   ů Ë   ˙     B    0 ` r       @       %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ě icon 1   	D  ˙˙         qĆ     < <     ˙    ˙     ˙ ă ë ă ˙ ˙    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Í icon 1   	D  ˙˙ß}˙˙  ˙˙˙˙˙˙             < <      ˙ = ď ß W ˇ ż ţ          H     B   @     %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Î icon 1   	D  eee  ]uy˘     < <      ˙   š š   ˙     ~ ~ F F ~ ~    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ď icon 1   	D     qĆ          ˙˙˙˙˙˙     < <      ˙ ˙ ˙ ˙ ç ç Ç         ţ    
  0    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Đ icon 1   	D  8˛Ę×\  ÷Ţß}˛Ę    ˙˙ß}˙˙     qĆ     < <     Ť   Ă      T T ˙ ˙     *   J B     @       < $ $ <    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ń icon 1   	D  ˙˙      qĆy˙˙     < <      ˙ Ă Ľ   Ľ Ă ˙     < Z f f Z <    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ň icon 1   	D  ˙˙˙˙˙˙     qĆ     < <        ˙   ˙      g g ~ ~ c c    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ó icon 1   	D          ˙˙ß}˙˙     < <     Ă ~   Ă ~     <  ˙ ç ç ˙ <     %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ô icon 1   	D  ˙˙           < <      ˙  Ű Ă Ă   ˙     f $ < < f f    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ő icon 1   	D     qĆ  ÷Ţß}˛Ę     < <     ţ  ş ş ş  ţ      } E E E }  ˙    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ö icon 1   ID  eee  ÷Ţß}˛Ę  ˙˙˙˙˙˙  ÓLśÚ8     < <     Ă   Ă     < B     ~ <     < | L L |    
 0 0    %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      × icon 1   	D  qĆy˙˙     qĆ             < <      â Š B Ç  Ë  ř        8 | 4 b      @      %˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ř icon 1   	D  qĆy˙˙     qĆ  ˙˙      ˙˙˙˙˙˙     8 8     N˙ ˙ý ßÁ Ö	 Á č đ1 ě ŕ Ŕ Ň3 ÄO Ŕ ˛ ˙÷ ˙    :     4 Ě  
      x    B  8 )ň >` Ę 
 ę ~ 8x (Ě 8° 2^ M     Ľ     E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ů icon 1   	D     qĆ  ÷Ţß}˛Ę  ˙˙˙˙˙˙     8 8     JţŻ ţ ž ž d Ń  ó â ŕ0 ŕ3  ) K Ę ˙đ    O p A° @° ň ţ˙ .Ř ő ç Î L >ř Ö} ´˙ đ5     6 @  @ H        @     E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ú icon 1   	D  ]uy˘  ˙˙˙˙˙˙             8 8     L˙ ř ?ď ˙ß ß˙ ˙ ˙ ˙ ˙ţ ßö ˙ô Żú â Á á Ŕ    :   Ŕ       	  P ŕ Č: ¤ n>     @Ť    @     E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ű icon 1   	D  ˙˙         qĆ  ˙˙ß}˙˙  ˙˙˙˙˙˙             8 8     O˙     ý ý Ý˙ ýÇ Á Á  Ă Ŕ§ ý˙ ˙ţ    B |~ TÂ }  ° z  ( >F <B AF A$ X    2  < ` p @  8 ( 68 6                 Ź        E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ü icon 1   	D  ˙˙ß}˙˙     qĆ  qĆy˙˙     8 8     M˙ ˙ đ ÷ˇ ÷7 ňG Č Ów Ůg Ŕ ă§ ďŻ ď đ/ ţ˙ ˙    6 ř H Č ¸   X P x Đ      0ř , & 2đ     E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ý icon 1   	D     qĆ  8˛Ę×\     8 8     O˙ ŕ' Ď7 ó ş{ şy 8ý y= t 7Ý ą; ű ß÷ çĎ đ ˙    K p Ř 0Č f E E Ç Â b Č" NÄ c   0 ŕ    F˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Ţ icon 1   	D  8˛Ę×\             8 8     Hůß đ â˙ ăg éŻ éß Ń Ók s ˙ Ŕ Íc Í` ˙ ˙    ?  đ   P   .p , ` ?ř 2 2 ˙    E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      ß icon 1   	D  ÷Ţß}˛Ę  ˙˙      8˛Ę×\     8 8     G˙ ˙ ˙ ˙ đ ÷ď ô/ őŻ ô/ ÷ď đ ˙ ˙ ˙ ˙ ˙    % đ      đ     Ŕ @ Ŕ    E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      ŕ icon 1   	D  ˙˙      ÷Ţß}˛Ę  qĆy˙˙  ˙˙ß}˙˙     qĆ  ˙˙˙˙˙˙  ]uy˘  ÓLÓLÓL     8 8     "ĂÁ ˙ öó öđ ŠT ŠT ŠT    < 	 	§      ž       Ž     yç yç yçŽ      ˙ ˙ ˙    ¨ VŞ VŞ VŞ    Š    ˙ ˙ ˙    E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      á icon 1   	D  eee  ˙˙˙˙˙˙             8 8     Nţ	 Eĺ d- dm Mm É Ŕ{ Ű pĎ ` ç g § &  p    Dŕ ş Â       H ` H` Ůb ťh     G     2 6ü ? ř   ˙     @     E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      â icon 1   	D     qĆ          ˙˙˙˙˙˙     0 0       	˙đ R˙b ˙v ý| ,ţ\ ü=đ?öÁ/ü'Ćü?}?¸3ţ?Đ˙} ˙ž@ř?{ ;v ţ #7ţ e˙° O÷ŕ yýd A˙ţ ~ żü =˙ =˙ )­ Ť      @  Ľ             @     	 ˙ň­đ `˙ ˙˙,Łw˙ŔgţŔ	ţ>ĐŘ9čŔsŕŔGĚŔ/ú ßü Ażţ`ţŔ˙Ä	˙ä˙Čo˙ O˙  ˙˙ž ˙}`ţ@ýţÂ űýÂ ÷˙ÖBď˙ţTß˙ţůż˙ń˙ö   ˙˙˙     ă icon 1   	D  ˙˙ß}˙˙  ˙˙      qĆy˙˙  eee  ]uy˘     qĆ  ÷Ţß}˛Ę     0 0       ˙ ż˙ýż˙ý  Ż˙íŻ˙íŻ˙íŹ Ní­˙ţí­˙ţí­˙ţí­í­żîí­żîí­ ní­Żní­Šní­Šní­Šní­Żní­Żní­Śní­żîí­Îí­˙ţí­˙ţíŹ˙üí§˙Íż˙ý˙ů˙    ˙ţ@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ p     l ˙đ                        0    U  ˙L                                          Cą đ @ @ @ @ @ @ @ @ @ @ @ `0    *˝        Ľ    Ĺ   ˛    ˙˙˙     ä icon 1   	D  	˙˙      ÷Ţß}˛Ę    ÓLÓLÓL  ˙˙ß}˙˙  ]uy˘  ˙˙óÎűî  8˛Ę×\  qĆy˙˙     0 0          !03 A "0 3 1 A   0  R0 3 f@ R 0 3f Rp3 3 pf " 0 3pva "p 	v ' 36 "  0 R   f@ 0 30h@ 0  `@   3fD "  0 %" p !R  " fd@ 	!"@ 	" `H "d @ @`A @A @A D@A A A@A D A DA    ˙˙˙     ĺ icon 1   	D  	˙˙˙˙˙˙  ÓLÓLÓL  ]uy˘          eee  ĂĂĂ       qĆ  ˙˙óÎűî     0 0      W  "   "!" @@"  1" " " 0 "  "   C " "@ R 0@	@"    @ @2 P  	 D "$P @ @ @ # E0  @fB  $4@"@  ` B C @ $@ "&`@@ @ "  "@@ " @D@ " dD dC cC fC fC d3 d3 63 4C wuWUw	U xwxwWxwgwxwxwuxwwvhwwwgxwxwwxwxwwĹw   ˙˙˙     ć icon 1   	D  ˙˙˙˙˙˙     qĆ  ˙˙      ÓLśÚ8  ÷Ţß}˛Ę     0 0       k˙Ď˙ż˙?˙˙ţ˙ţ˙ü ˙đ ?ŕ ŕ Ŕ Ŕ    Ŕ Ŕ ŕ đ ř ?ü ˙ Ą˙    0 @ Ŕ   á    F  ){ó s{@ç{ ěš°=í˝Đ=Ď˝Ř}Ű˝Ř{ŰšŘ{Űť¸;ť¸;ť¸ť0ť3`ťw@ťv xîĄ    NĄ    B B B B F @ D @ @ Č   ˘    CĄ 8   Ŕ@  0         @` @@@@Ŕ@ @ @	 Ą    ˙˙˙     ç icon 1   	D          ÷Ţß}˛Ę     0 0       ˙Ŕß˙˙˙˙ţ×˙
T˙ţ˙ţ ˙˙Î˙Ŕ˙/ţ?˙ř˙˙ç˙ç˙ď˙ť˙Í˙ź˙˙>=˙?ý˙ż˙ý˙ż˙ý˙ż˙ý˙˙ü?˙ ?˙˙˙ţď˙ţîĎ˙ţNď˙˙    ?  ńđ ÷p ëř ď( 
Ťx ýx ˙đ ŕ 1ŕ ? /áŔ  `    D 2 C b ÁÂ Ŕŕ @  @  @  ` Ŕ` ˙Ŕ  ŕ ŕ 0 ą aŕ    ˙˙˙     č 	bfp3.pnm   	D  ˙˙˙˙˙˙          wwwwww     9 9     7              }÷ }÷ }÷ }÷ }÷ }÷    / }÷ ˙ ˙ }÷ }÷ ˙ ˙ }÷ }÷ ˙    E˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      é 
bfp15.pnm   	D          ˙˙˙˙˙˙     9 9     @Ş Ş Ş Ş Ş Ş Ş Ş Ş Ş Ş Ş Ş Ş Ş Ş    @U U U U U U U U U U U U U U U U    @˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      ę 
bfp14.pnm   	D  ˙˙˙˙˙˙             9 9     Lů˙   ˙ ˙   ů˙ ů˙   ˙ ˙   ů˙    8 ć| ć| ć| ć|   ć| ć| ć| ć|     D˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      ë 
bfp10.pnm   	D  ˙˙˙˙˙˙    ˙˙  ˙˙    ˙˙˙˙33      ÝÝ    ÝÝ    ˙˙      33˙˙˙˙     1 1       ď˙űÝó˙÷ťóýîwţÝď˙ýťßÝw§ťÜďgwÝßţďßżýß	˙űżýß÷~ď˙$żw˙ßť˙űďÝŕűwî˙űť÷˙Ý˙ßď˙ď˙÷÷˙űýűý(Ýţîţ÷ý˙ű˙ť˙ý˙w˙ţíů˙}Ýů˙ű˝˙7}˙ďü   8 " D       @            Ą    8 ~Ĺ      " b b        3    đ" D     @Ą ` ` ř°    @  ¤  @     D "    Ą Ŕ    B    	     ř­  D     @      9 " D     @ ž ř         -Ş     D "   |˘ ` ` đ   ˙˙˙     ě 
bfp19.pnm   	D ? ťťťťťť          ˙˙  33  ˙˙ff33  ff33    ˙˙       ) ) 0 0  Šţ˙ üţţ? ř?ü?ü đřř ŕřđ ŕđđ đŕř ř?Ŕü ţ˙˙ ţ  ţü ? ˙ü ?˙ űü ?ß ůü ? řü ? ř 8 ř  ř  ü ? ţ  ţ  ţ  ţ  ţ  ţ  ţ  ˙ ˙ ˙ ˙ ˙Ŕ ˙ ˙ ˙ ˙ ˙ ţ  ˙ ˙ ˙đ ˙ ˙ţ ˙ ˙ţ ˙ ˙˙ ţ˙˙ üŔţ? ř?ţü đţř ŕţđ ŕţđ đţř ř?ţü ţ˙ ţ˙ ţ˙     @ @@          @    `    @  @  @   @`  @  â G   8   `  Ŕ                 @     @      ř   đ   Ŕ @  `  ?ü@ @        @          B    @ @Ŕ  `@0  ŕ @@   8 ~ ţ >| >| Îs q@ ćgŔ ăâGÇŔ ˙ňO˙ ďú_÷ _řú ţů řń ĂţĂ đx ř>| ˙x˙ qţ ?Ä#ü âGř :đ\ p ú1_ Ä#ŕ ćg öo 2L :\ ¸    @ @   ` 0    @  ˘    t    Ŕ   Ŕ `  @  @˙ ű    Ŕ   Ŕ `  @  @    ž       @     @ ! 0   0      @        p  A       D˘° #D Č 	  	   @Ô    ä   @    	      @   @   A  (   Ŕ    PŔ
 $ $ Á A`   Q
 "Ä ( 
Đ  ŁE@ P  )  	   Ľ  @          ń˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      í 
bfp21.pnm   	D      ŞŞ          ˙˙ff    ÝÝ      33         1 1       z˙7ŕŕŔŔŔŔ   ŔŔŔŔŔŕ`ŕ ˙đ˙;đ˙ŕ ŕ`ŔŔŔŔ    ŔŔŔŔŕŕŕŕ˙   w đđ!!11Y4Y4MdMd MdMdY4411!	!ô_đ     ô_đ!	!118I$YdEDMDMdMdY4Y411!!đđ    j đđŕŕ&Č&Č22|22&Č&Čŕŕđđáŕ  Ŕ Ŕ  áŕđđŕŔ6Ř&:¸2¸|22&Č&Čŕŕđđŕŕ        š    Ą        Â    ˙˙˙     î 
bfp17.pnm   	D              ŞŞ  ˙˙ĚĚ      ĚĚ˙˙  ˙˙33       ) ) 0 0  	   B B B $$$ $$$ BBB                            B B B $$  $$$ BBB                            B B B $$$ $$$ BBB      f<f<f< $ $ $       $ $ $ <f<f<f ç ç ç <f<f<f ç ç ç <f<f<f ç ç ç <f<f<f ç ç ç <f<f<f ç ç ç <f<f<f ç ç ç <f<f<f ç ç ç <f<b<f ç ç ç <f<f<f $ $ $      $ $ $ f<f<f< ç ç ç f<f<f< ç ç ç f<f<f< ç ç ç f<f<f< ç ç ç f<f<f< ç ç ç f<f<f< ç ç ç f<f<f< ç ç ç f<f<f< ç ç ç f<f<f< $ $ $       $ $ $ <f<f<f    Ă Ă Ă ççç ĂçĂçĂç çĂçĂçĂ ççç Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă ççç çĂçĂçĂ ĂçĂçĂç ççç Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă Ă ççç ĂçĂçĂç çĂçĂçĂ ççç Ă Ă Ă    ¸                                                                           ˘ < < < < < < < < < < < < < < < < < < < < < < < <   ¤ < < < < < < < < < < < < < < < < < < < < < < < <   ˘    ń˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      ď 	bfp1.pnm   	D          ˙˙˙˙˙˙     1 1       Kđ    đ        đ     đ           Kđ˙đ˙đ˙đ˙˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙˙đ˙đ˙đ˙đ˙đ˙đ˙đ˙đ   ˙˙˙     đ 	fp10.pnm   	D  ˙˙˙˙˙˙             1 1       !Űl~ŞśŰŞmąđŞŰn>ŞśÇĆŞm¸řŞŰŞśăâŞl|FŞŰŞ˛ŃđŞf´>ŞŐŹŠ­jHŤkY$§ZÔŽÖ˛HľŠ$ť­dwkRHîZÉ%ÝÖ¤ťľGw­ îkýÝZ ťÖ˙w´ î­˙ýÝh ť[˙wĐ î   !$UI$qUNU$ÁUI89UGU$ŕáUIUFU$đqUM.UKÁU*SyVRˇTŚŰXĽ+mQ)MˇbJVŰDRm­ˇĽ6Ú")[lDJm¸R˙ů"Ľ˙üD) K˙ůR "˙üD¤ /˙ů   ˙˙˙      pat0   	D  ˙˙˙˙˙˙     < <      ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙           pat1   	D  ˙˙˙˙˙˙             < <      ˙ ˙ ß ˙ ˙ ˙ ý ˙    
              pat2   	D          ˙˙˙˙˙˙     < <      "  "     w ˙ Ý ˙ w ˙ Ý ˙           pat3   	D          ˙˙˙˙˙˙     < <        " "   " "     w w Ý Ý w w Ý Ý           pat4   	D          ˙˙˙˙˙˙     < <       Ş " Ş  Ş " Ş     w U Ý U w U Ý U           pat5   	D          ˙˙˙˙˙˙     < <      Ě Ş 3 Ş Ě Ş 3 Ş     3 U Ě U 3 U Ě U           pat6   	D          ˙˙˙˙˙˙     < <      î Ş ť Ş î Ş ť Ş      U D U  U D U           pat7   	D          ˙˙˙˙˙˙     < <      î ť ť î î ť ť î      D D   D D            pat8   	D          ˙˙˙˙˙˙     < <      ˙ ť ˙ î ˙ ť ˙ î     D  D            pat9   	D          ˙˙˙˙˙˙     < <      ˙ ˙ ˙ î ˙ ˙ ˙ î    
             pat10   	D  ˙˙˙˙˙˙             < <      ÷  ű ß ţ ď ý ż             @           pat11   	D             < <      ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙           pat12   	D  ˙˙˙˙˙˙             < <      Ý w Ý w Ý w Ý w     "  "  "  "            pat13   	D  ˙˙˙˙˙˙             < <      î Ý ť w î Ý ť w      " D   " D            pat14   	D  ˙˙˙˙˙˙             < <      Ď ^ ň ÷ ? g ě ý     0 Ą   Ŕ              pat15   	D  ˙˙˙˙˙˙             < <      ó   ü Ď É 9 ?      l c  0 6 Ć Ŕ           pat16   	D          ˙˙˙˙˙˙     < <     Ş Ş Ş Ş     U ˙ U ˙ U ˙ U ˙           pat17   	D  ˙˙˙˙˙˙             < <      Ş w Ý w Ş w Ý w     U  "  U  "            pat18   	D          ˙˙˙˙˙˙     < <       U " U  U " U     w Ş Ý Ş w Ş Ý Ş           pat19   	D          ˙˙˙˙˙˙     < <      Ý w Ý w Ý w Ý w     "  "  "  "            pat20   	D  ˙˙˙˙˙˙             < <      ˙ ˙ ˙ ˙ ˙ ˙ ý ˙                pat21   	D          ˙˙˙˙˙˙     < <      Ş U Ş U Ş U Ş U     U Ş U Ş U Ş U Ş           pat22   	D  ˙˙˙˙˙˙             < <      Ţ ? Ď ÷ ű ű ó í     ! Ŕ 0                 pat23   	D          ˙˙˙˙˙˙     < <      ä  
    
       î ő ű ű ű ő î          Ą pat24   	D          ˙˙˙˙˙˙     < <        "   P " P     w ú Ý ú w Ż Ý Ż          ˘ pat25   	D  ˙˙˙˙˙˙             < <      ú  ß ß Ż p ý ý      ř     P             Ł pat26   	D  ˙˙˙˙˙˙             < <      Í . w Ł  ż w ď     2 Ń  \ b @            ¤ pat27   	D  ˙˙˙˙˙˙             < <      Ý ß P ß Ý ý  ý     "   Ż   "  ú           Ľ pat28   	D          ˙˙˙˙˙˙     < <      Č &   1 J  #     7 Ů n o Î ľ k Ü          Ś pat29   	D  ˙˙˙˙˙˙             < <      ú  W Ř Ż P u       ú ¨ ' P Ż  r          § pat30   	D  ˙˙˙˙˙˙             < <      ˙ ˙ ď × ˙ ˙ ţ }      (            ¨ pat31   	D          ˙˙˙˙˙˙     < <                 ˙ ÷ ď ß ˙ ý ţ          Š pat32   	D  ˙˙˙˙˙˙             < <      ý ˙ Ý ˙ ý ˙ U ˙     "  Ş          Ş pat33   	D  ˙˙˙˙˙˙             < <     ý ý ý ý ý ý ý           ˙           Ť pat34   	D          ˙˙˙˙˙˙     < <              p     w ř ý ű ÷ ď ß           Ź pat35   	D  ˙˙˙˙˙˙             < <     ý ý ß ß ß ý       ˙       ˙           ­ pat36   	D          ˙˙˙˙˙˙     < <        > \  Ĺ ă Ń     w â Á Ł w :  .          Ž pat37   	D          ˙˙˙˙˙˙     < <     ţ ţ Â Â Â Â ţ       = = = =  ˙          Ż pat38   	D          ˙˙˙˙˙˙     < <     ú u    ˙ ý      u ú ý ˙           ° pat39   	D          ˙˙˙˙˙˙     < <      ë ×  A  A ë ×      ( } ž } ž  (          ą pat40   	D          ˙˙˙˙˙˙     < <     ŕ ń ń ń ŕ          ˙ ˙ ˙          ˛ pat41   	D  ˙˙˙˙˙˙             < <     ů ű   8 x ř       ˙ ÷ ç Ç            ł pat42   	D  ˙˙˙˙˙˙             < <      Ý î w ť ť w î Ý     "   D D   "          ´ pat43   	D  ˙˙˙˙˙˙             < <      ö o  ů ö o  ů     	  `  	  `           ľ pat44   	D  ˙˙˙˙˙˙             < <      î ˙ ť U î ˙ ť U     D Ş  D Ş          ś pat45   	D          ˙˙˙˙˙˙     < <      Ş ď  ë 
 ę     u U ˙  ÷  ő           ˇ pat46   	D  ˙˙˙˙˙˙             < <      á     á á á      á á á á             ¸ pat47   	D  ˙˙˙˙˙˙             < <      î w ť Ý î w ť Ý       D "   D "          š pat48   	D          ˙˙˙˙˙˙     < <     ˙ ˙ ˙ ˙     ˙ ˙ ˙ ˙          ş pat49   	D  ˙˙˙˙˙˙             < <      ż ß ď ÷ ű ý ţ      @                  ť pat50   	D  ˙˙˙˙˙˙             < <      ď ß ż  ţ ý ű ÷        @               ź pat51   	D          ˙˙˙˙˙˙     < <      ŕ p 8     Á       Ç ă ń ř | >          ˝ pat52   	D  ˙˙˙˙˙˙             < <      ń ă Ç   > | ř       8 p ŕ Á            ž pat53   	D          ˙˙˙˙˙˙     < <      Ě f 3  Ě f 3      3  Ě f 3  Ě f          ż pat54   	D          ˙˙˙˙˙˙     < <      Ě  3 f Ě  3 f     3 f Ě  3 f Ě           Ŕ pat55   	D          ˙˙˙˙˙˙     < <      ˙ ÷ ˙ ˙ ˙  ˙ ˙    
            Á pat56   	D          ˙˙˙˙˙˙     < <      ˙ ű ˙ ż ˙ ű ˙ ż      @  @          Â pat57   	D          ˙˙˙˙˙˙     < <      ˙ Ş ˙ î ˙ Ş ˙ î     U  U           Ă pat58   	D          ˙˙˙˙˙˙     < <     Á č x 8 x      >   Ç  ˙ ˙           Ä pat59   	D          ˙˙˙˙˙˙     < <         P          w w w Ż ß ý ú w          Ĺ pat60   	D  ˙˙˙˙˙˙             < <      Ě Ě 3 3 Ě Ě 3 3     3 3 Ě Ě 3 3 Ě Ě          Ć pat61   	D  ˙˙˙˙˙˙             < <      ż ˙ ż ˙ Ş ˙ ż ˙    @ @ U @          Ç pat62   	D  ˙˙˙˙˙˙             < <        o ö ů ů ö o     ` `  	   	           É icon 1   	D  ˙˙              ˙˙˙˙˙˙     < <      ˙ ç ˙ ą   ń ˙      J L `        "       ˙ ˙ ˙ ˙ ˙ ˙ ˙ ˙      Č pat62   	D  ˙˙˙˙˙˙             < <        o ö ů ů ö o     ` `  	   	          ę Answer Dialog   on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
       Ú[S v   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
Helvetica   U 
helvetica   ę    	PRon preOpenStack
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
           S v  z  î  Ř  Ů  Ú  Ý  Ţ  ß  ŕ
  î   @        C 2           Have you backed up mctools.mc?  ^This will transfer the new libUrl script and customProperties to your current "liburl" stack.   z icon ÂBP on mouseUp
end mouseUp
          ( (              H           	  ę   Ř Cancel ŕDŤ`        H M        	  ę   Ů OK ŕDŁ`       H 5        	  ę   Ú Yes ŕDŁ`       6 9        	  ę   Ý z ŕDŁ`       ÷ 4 '        	  ę   Ţ y ŕDŁ`       ° 4 '        	  ę   ß x ŕDŁ`       i 4 '        	  ę   ŕ w ŕDŁ`         4 )        	  ę   a Ask Dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
       ş@    macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
Helvetica   U 
helvetica   ę    	PJon doresize
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
          @    
fieldmode  plain  a  î  _  \  ]  `
  î                            \ OK ŕLŤp űon mouseUp
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
        B \ 4         	  ę   ] Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
        ¸ \ <         	  ę 
  _  é`        (              
  `   
!`       b 8 |         ę    a New Button Ŕ@@         $ (        	  ę     Edit Backgrounds          ć o\M             U 
helvetica   ę    	PQlocal bgids

on buildlist
  local tbg, bgnum, gids
  lock screen
  put the groupNames of this card of the topStack into field "Groups"
  put the groupIds of this card of the topStack into gids
  put the backgroundNames of the topStack into tbg
  put 1 into bgnum
  put empty into bgids
  repeat for each line l in the backgroundIds of the topStack
    if l is among the lines of gids
    then delete line bgnum of tbg
    else
      add 1 to bgnum
      put l & cr after bgids
    end if
  end repeat
  put tbg into field "Backgrounds"
  put empty into field "Create"
  set the disabled of button "Edit" to field "Groups" is empty
  set the disabled of button "Remove" to field "Groups" is empty
  set the disabled of button "Properties..." to field "Groups" is empty
  set the disabled of button "Place" to field "Backgrounds" is empty
  unlock screen
end buildlist

function getbgid which
  return line which of bgids
end getbgid
on preOpenCard
  buildlist
end preOpenCard

on openCard
  if field "Groups" is not empty
  then select line 1 of field "Groups"
end openCard

on returnKey
  if the selectedField is empty
  then exit to MetaCard
  if the short name of the selectedField is "Groups"
  then send "mouseUp" to button "Edit"
  else if the short name of the selectedField is "Backgrounds"
  then send "mouseUp" to button "Properties..."
end returnKey
           \M  ë  ó  í  ď  đ  ň  ń  ô  ő  ö  ÷  ř  ů  ú  ü
  ë Groups  ˇ)p on mouseDoubleUp
  send "mouseUp" to button "Edit"
end mouseDoubleUp

on returnKey
  send "mouseUp" to button "Edit"
end returnKey
          Ě P           Common   ě    9`       Ë   N
  í Backgrounds  ˇ)p on mouseDoubleUp
  send "mouseUp" to button "Place"
end mouseDoubleUp

on returnKey
  send "mouseUp" to button "Place"
end returnKey
         Ä Ě P           
MCPayment  
ISContact  CWCPayment  
MCLicense  CWCLicense  CWCPricing  
MCPricing   î    )`       Ë Ĺ  N  ď Edit ŕDpPon mouseUp
  get the hilitedLines of field "Groups"
  close this stack
  if it is empty
  then exit to MetaCard
  set the defaultStack to the topStack
  get line it of the groupIds of this card
  if the HCAddressing of this stack
  then start editing background id it
  else start editing group id it
  choose pointer tool
end mouseUp
        đ   \         	  ę   đ Remove ŔDpon mouseUp
  get the hilitedLines of field "Groups"
  #  close this stack
  if it is empty
  then exit to MetaCard
  set the defaultStack to the topStack
  get line it of the groupIds of this card
  if the HCAddressing of this stack
  then remove background id it from this card
  else remove group id it from this card
  set the defaultStack to "Edit Backgrounds"
  buildlist
end mouseUp
        đ < \         	  ę   ń Place ŔDpon mouseUp
  get the hilitedLines of field "Backgrounds"
  #  close this stack
  if it is empty
  then exit to MetaCard
  set the defaultStack to the topStack
  place background id getbgid(it) onto this card
  set the defaultStack to "Edit Backgrounds"
  buildlist
end mouseUp
        ô Ř X          	  ę   ň Create ŔDťp żon mouseUp
  local bgname
  put field "Create" into bgname
  close this stack
  set the defaultStack to the topStack
  create background bgname
  start editing background bgname
end mouseUp
        ň  X          	  ę 
  ó Create  ip Ťon returnInField
  if me is not empty
  then send "mouseUp" to button "Create"
end returnInField

on keyUp
  set the disabled of button "Create" to me is empty
end keyUp
          Ě               ô Edit ŕ@g        ¨T          	  ę   ő Edit ŕ@g        xT          	  ę 
  ö            ŞT            Stack Backgrounds 
  ÷            T            Card Groups   ř Edit ŕ@g        T          	  ę   ů Done ŔDŤp +on mouseUp
  close this stack
end mouseUp
        F* H         	  ę   ú Help ŔDŤp on mouseUp
  help
end mouseUp
        Ň* H         	  ę   ü Properties... ŔDpon mouseUp
  get the hilitedLines of field "Groups"
  if it is empty
  then exit to MetaCard
  close this stack
  set the defaultStack to the topStack
  get line it of the groupIds of this card
  select group id it
  choose pointer tool
  newTool
  palette "Properties"
end mouseUp
        đ X \         	  ę   ň MainStack Option         ú K n   retval  Yes              é    	P!on mouseUp
  if word 1 of the target is "button" then
    close this stack
    set the retval of this stack to the short name of the target
  end if
end mouseUp

on preOpenStack
  local bwidth, twidth, iwidth
  put "Stack" && the short name of the topStack &&\
      "is not a mainStack." into line 1 of field 1
  put 0 into bwidth
  repeat with i = 2 to 5
    add the width of button i to bwidth
  end repeat
  put max(the formattedWidth of field 1 + 64, bwidth) into twidth
  set the width of this stack to twidth
  set the width of field 1 to twidth - 64
  set the left of field 1 to 48
  put (twidth - bwidth) div 5 into iwidth
  put iwidth into twidth
  repeat with i = 2 to 5
    set the left of button i to twidth
    add the width of button i + iwidth to twidth
  end repeat
end preOpenStack
           K n  ę  í  î  ď  đ  ń  ę  ÂB on mouseUp
  help
end mouseUp
          $ $              J            	  é 
  í field id 1005  +        0  4        é &Stack Message Box is not a mainStack.  Should it be made one?   î Yes ŔDŤ`        F 8         	  é   ď No ŔDŤ`       ^ F 8         	  é   đ Cancel ŔLŤ`       ­ F 8         	  é   ń Help ŔDŤp on mouseUp
  help
end mouseUp
        ü F 8         	  é   ö MC Stack Menu          üd ä            ˙˙      U 
helvetica   é    	pŰon preOpenStack
  local snames, nnames
  put the openStacks into snames
  delete line 1 of snames
  put min(the number of lines in snames, 7) into nnames
  set the height of this stack to nnames * 24 + 4
  repeat with i = 1 to 7
    set the name of button i to line i of snames
    set the visible of button i to i <= nnames
  end repeat
  if the lookAndFeel is "Windows 95"
  then set the backColor of me to "white"
  else set the backColor of me to empty
end preOpenStack
            ä   ó  ě  ď  ö  đ  ő  ô  ě MetaCard Menu Bar ŕTi@         â         	  é   ď Dialog Box Help ŕTi@        2 â         	  é   đ Concepts & Techniques ŕTi@        b â         	  é   ó Find ŕTi@         â         	  é   ô  ŕTa@         â         	  é   ő Home ŕTi@        z â         	  é   ö Help Directory ŕTi@        J â         	  é   í Duplicate Stack Name         iđ0 e              é card id 1001   	P 
           0 e  ę  ë  í  ę Question Icon âB          $ $              K            	  é   ë OK ŕLŤp +on mouseUp
  close this stack
end mouseUp
        R :          	  é 
  í field id 1005  	        $  $        é &A stack with this name already exists    	Importer   on returnKey
  send "mouseUp" to button "Import"
end returnKey

on returnInField
  send "mouseUp" to button "Import"
end returnInField

on preOpenStack
  set the label of button "Stack Name" to the short name of the topStack
  if the lookAndFeel is "Macintosh" or the lookAndFeel is "Appearance Manager"
  then set the textSize of button 1 to "12"
  else set the textSize of button 1 to empty
end preOpenStack
       kóÉ Ë             U 
Helvetica   U 
Helvetica   U 
Helvetica   U 
helvetica   U 
helvetica   é 	Snapshot   	p on returnKey
  send "mouseUp" to button "Take Snapshot"
end returnKey

on returnInField
  send "mouseUp" to button "Take Snapshot"
end returnInField
           É Ë    r  y  z  {  |  u Image   	`          É Ë      |  \      h EPS   	`          É Ë      |    g 
AudioClip   	`          É Ë    |       
VideoClip   	@          É Ë    |      r Take Snapshot ŕLŤp xon mouseUp
  close this stack
  set the defaultStack to the label of button "Stack Name"
  import snapshot
end mouseUp
          v         	  é 
  y   	          ¨ d          ëTo take a snapshot, either just click on the window you want to capture, or click and drag out the area you want to capture.  Press the control key if you want to include the window border. Press the escape key to cancel the snapshot.   z Help ŔDŤp on mouseUp
  help
end mouseUp
       t  <         	  é   { Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
        Ŕ  L         	  é   \ Import ŕLŤp¤on mouseUp
  local fname, fileonly
  put field "File Name" into fname
  close this stack
  put the hilite of button "Link Only" into fileonly
  set the defaultStack to the label of button "Stack Name"
  lock screen
  if fileonly then
    create image
    set the filename of the last image to fname
  else import paint from file fname
  set the loc of the last image to the loc of this card
  unlock screen
end mouseUp
          J         	  u    Import ŕLŤp ´on mouseUp
  local fname
  put field "File Name" into fname
  close this stack
  set the defaultStack to the label of button "Stack Name"
  import eps from file fname
end mouseUp
          J         	  h    Import ŕLŤp şon mouseUp
  local fname
  put field "File Name" into fname
  close this stack
  set the defaultStack to the label of button "Stack Name"
  import audioClip from file fname
end mouseUp
          J         	  g    Import ŕLŤp şon mouseUp
  local fname
  put field "File Name" into fname
  close this stack
  set the defaultStack to the label of button "Stack Name"
  import videoClip from file fname
end mouseUp
          J         	      tabs   )         Ŕ Ä   New Button ŕÁŠ}    4on menuPick which
  go to card which
end menuPick

         ¸ ź   'Snapshot
Image
EPS
AudioClip
VideoClip        	       | Stack Chooser   )         l°    k Stack Name ŕ4	e       x p@  	Importer      MC Stack Menu        	  é 	  u 	  g 	   	  h 
  m Find           p h            Put into stack:    
Link Only @EŠ       Đ $ l         	       Set Directory @EŠ      D $ p         	       Common  )        
 &´       w Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
        Ŕ  L         	  u 	  g 	   	  h   ] Help ŔDŤp on mouseUp
  help
end mouseUp
       t  <         	  u 	  g 	   	  h   q 
Select... ŕDŤpon mouseUp
  local sfname, toffset
  answer file "Select file to import:"
  if there is a button "Set Directory" and the hilite of button "Set Directory" then
    put the effective fileName of stack (the label of button "Stack Name") into sfname
    set the itemDelimiter to "/"
    delete last item of sfname
    set the directory to sfname
    put "/" after sfname
    if the platform is "Win32" and char 1 of it is char 1 of sfname \
        or the platform is not "Win32" and item 2 of it is item 2 of sfname then
      repeat while char 1 of it is char 1 of sfname
        delete char 1 of it
        delete char 1 of sfname
      end repeat
      put offset("/", sfname) into toffset
      repeat while toffset is not 0
        put "../" before it
        delete char 1 to toffset of sfname
        put offset("/", sfname) into toffset
      end repeat
    end if
  end if
  put it into field "File Name"
end mouseUp
       x D @         	  u 	  g 	   	  h 
  n Find           , D            From file: 
  p 
File Name  i`        D\               š Color Chooser   
}local oldhilite

on refresh
  local s1, s2, hb, c
  put the number of button "Foreground" into s1
  put the number of button "Foregroundcolor" into s2
  set the backcolor of button "Pencolor" to the penColor
  set the backcolor of button "Brushcolor" to the brushColor
  put the hilitedButtonName of group "Index" into hb
  if hb is not "answer" then
    if the selectedObject is empty then
      set the label button "ink" to " "
      put empty into c
      if hb is not "Pen" and hb is not "Brush"
      then set the hilitedButtonName of group "Index" to "Pen"
      repeat with i = s1 to s1 + 7
        disable button i
      end repeat
    else
      set the label button "ink" to the ink of the selectedObject
      put the colors of the selobj into c
      repeat with i = s1 to s1 + 7
        enable button i
        set the label of button i to empty
      end repeat
      if hb is "Pen" or hb is "Brush"
      then set the hilitedButtonName of group "Index" to "Foreground"
      if word 1 of the name of the selobj is "graphic" then
        set the label of button s1 to "Line"
        set the label of button (s1 + 1) to "Fill"
        set the label of button (s1 + 2) to "Marker"
        set the label of button (s1 + 3) to "Marker Fill"
      end if
    end if
    repeat with i = s2 to s2 + 8
      set the backcolor of button i to line i - s2 + 1 of c
    end repeat
  end if
  send "resetcontrols" to group the selectedText of button "Chooser Type"
end refresh

on preOpenStack
  if the lookAndFeel is "Macintosh" or the lookAndFeel is "Appearance Manager"
  then set the textsize of button 1 to 10
  else set the textsize of button 1 to empty
  set the itemDelimiter to numToChar(0)
  if item 1 of the dialogData is "answer color" then
    set the width of me to 224
    set the height of me to 288
    set the width of button 1 to 212
    put the hilitedButtonName of group "Index" into oldhilite
    set the hilitedButtonName of group "Index" to "answer"
    if item 3 of the dialogData is empty
    then set the backcolor of button "answerColor" to the penColor
    else set the backcolor of button "answerColor" to item 3 of the dialogData
    hide group "Patches"
    hide group "Index"
    set the dialogData to empty
  else
    set the width of me to 456
    set the height of me to 242
    if the lookAndFeel is "Appearance Manager" and char 1 of the systemVersion is 1
    then set the width of button 1 to 208
    else set the width of button 1 to 444
    show group "Patches"
    show group "Index"
  end if
  refresh
end preOpenStack

on closeStack
  if oldhilite is not empty then set the hilitedButtonName of group "Index" to oldhilite
end closeStack
  @ żżżżżż    ?Č ň             U 
Helvetica   U 
Helvetica  
 U 
Helvetica  
 U 
helvetica   U 
helvetica   é    	PIon setcolor which
  local cindex, setstring
  put the short name of button (the hilitedButton of group "Index")\
      of group "Index" into cindex
  put "color" after cindex
  set the backColor of button cindex to which
  if cindex is "PenColor"
  then set the penColor to which
  else if cindex is "BrushColor"
  then set the brushColor to which
  else if the selectedObject is not empty then
    repeat for each line l in the selectedObjects
      put format("set the %s of %s to \"%s\"\n", cindex, l, which) after setstring
    end repeat
    do setstring
  end if
end setcolor

function getcolor nameOK
  local cindex
  put the short name of button (the hilitedButton of group "Index")\
      of group "Index" into cindex
  put "color" after cindex
  if nameOK or the number of items in the backColor of button cindex is 3
  then return the backColor of button cindex
  else
    get the effective backPixel of button cindex
    set the backColor of button cindex to empty
    set the backPixel of button cindex to it
    return the effective backColor of button cindex
  end if
end getcolor
           Č ň  Ł  ˇ  Ľ  Ś  §  ¨  Ż  ą  ˛  ľ  ś  š  Ł Chooser Type čÁŠ=   on menuPick newgroup, oldgroup
  hide group oldgroup
  send "resetcontrols" to group newgroup
  show group newgroup
end menuPick
  @ żżżżżż      ź ä   Palette
Name
RGB
HSV        	       Ľ Palette   ) aon resetControls
  set the selectedColor of colorPalette 1 to getcolor(false)
end resetControls
           Č Č   
Color map   	p ;on mouseUp
  setcolor the selectedColor of me
end mouseUp
   ||üü        $ Ŕ Ŕ  Ś Name   ! ëon resetControls
  put getcolor(true) into field "Color Name"
  get the short name of button (the hilitedButton of group "Index") of group "Index"
  set the disabled of button "Clear" to it is "Pen" or it is "Brush"
end resetControls
  @ żżżżżż      $ Č Ŕ
   Color Name  ip 8on closefield
  setcolor the text of me
end closefield
  @ żżżżżż      (          é 0,0,0 
  + Color Names  ś)p [on mouseUp
  get the clickText
  setcolor it
  put it into field "Color Name"
end mouseUp
         L Ŕ            
AliceBlue  AntiqueWhite  AntiqueWhite1  AntiqueWhite2  AntiqueWhite3  AntiqueWhite4  Aquamarine  Aquamarine1  Aquamarine2  Aquamarine3  Aquamarine4  Azure  Azure1  Azure2  Azure3  Azure4  Beige  Bisque  Bisque1  Bisque2  Bisque3  Bisque4  Black  BlanchedAlmond  Blue  Blue1  Blue2  Blue3  Blue4  BlueViolet  Brown  Brown1  Brown2  Brown3  Brown4  
Burlywood  Burlywood1  Burlywood2  Burlywood3  Burlywood4  
CadetBlue  CadetBlue1  CadetBlue2  CadetBlue3  CadetBlue4  Chartreuse  Chartreuse1  Chartreuse2  Chartreuse3  Chartreuse4  
Chocolate  Chocolate1  Chocolate2  Chocolate3  Chocolate4  Coral  Coral1  Coral2  Coral3  Coral4  	CornSilk  
CornSilk1  
CornSilk2  
CornSilk3  
CornSilk4  CornflowerBlue  Cyan  Cyan1  Cyan2  Cyan3  Cyan4  	DarkBlue  	DarkCyan  DarkGoldenrod  DarkGoldenrod1  DarkGoldenrod2  DarkGoldenrod3  DarkGoldenrod4  	DarkGray  
DarkGreen  
DarkKhaki  DarkMagenta  DarkOliveGreen  DarkOliveGreen1  DarkOliveGreen2  DarkOliveGreen3  DarkOliveGreen4  DarkOrange  DarkOrange1  DarkOrange2  DarkOrange3  DarkOrange4  DarkOrchid  DarkOrchid1  DarkOrchid2  DarkOrchid3  DarkOrchid4  DarkRed  DarkSalmon  DarkSeaGreen  DarkSeaGreen1  DarkSeaGreen2  DarkSeaGreen3  DarkSeaGreen4  DarkSlateBlue  DarkSlateGray  DarkSlateGray1  DarkSlateGray2  DarkSlateGray3  DarkSlateGray4  DarkTurquoise  DarkViolet  	DeepPink  
DeepPink1  
DeepPink2  
DeepPink3  
DeepPink4  DeepSkyBlue  DeepSkyBlue1  DeepSkyBlue2  DeepSkyBlue3  DeepSkyBlue4  DimGray  DodgerBlue  DodgerBlue1  DodgerBlue2  DodgerBlue3  DodgerBlue4  
Firebrick  Firebrick1  Firebrick2  Firebrick3  Firebrick4  FloralWhite  ForestGreen  
Gainsboro  GhostWhite  Gold  Gold1  Gold2  Gold3  Gold4  
Goldenrod  Goldenrod1  Goldenrod2  Goldenrod3  Goldenrod4  Gray  Gray0  Gray0  Gray1  Gray10  Gray100  Gray11  Gray12  Gray13  Gray14  Gray15  Gray16  Gray17  Gray18  Gray19  Gray2  Gray20  Gray21  Gray22  Gray23  Gray24  Gray25  Gray26  Gray27  Gray28  Gray29  Gray3  Gray30  Gray31  Gray32  Gray33  Gray34  Gray35  Gray36  Gray37  Gray38  Gray39  Gray4  Gray40  Gray41  Gray42  Gray43  Gray44  Gray45  Gray46  Gray47  Gray48  Gray49  Gray5  Gray50  Gray51  Gray52  Gray53  Gray54  Gray55  Gray56  Gray57  Gray58  Gray59  Gray6  Gray60  Gray61  Gray62  Gray63  Gray64  Gray65  Gray66  Gray67  Gray68  Gray69  Gray7  Gray70  Gray71  Gray72  Gray73  Gray74  Gray75  Gray76  Gray77  Gray78  Gray79  Gray8  Gray80  Gray81  Gray82  Gray83  Gray84  Gray85  Gray86  Gray87  Gray88  Gray89  Gray9  Gray90  Gray91  Gray92  Gray93  Gray94  Gray95  Gray96  Gray97  Gray98  Gray99  Green  Green1  Green2  Green3  Green4  GreenYellow  	Honeydew  
Honeydew1  
Honeydew2  
Honeydew3  
Honeydew4  HotPink  	HotPink1  	HotPink2  	HotPink3  	HotPink4  
IndianRed  IndianRed1  IndianRed2  IndianRed3  IndianRed4  Ivory  Ivory1  Ivory2  Ivory3  Ivory4  Khaki  Khaki1  Khaki2  Khaki3  Khaki4  	Lavender  LavenderBlush  LavenderBlush1  LavenderBlush2  LavenderBlush3  LavenderBlush4  
LawnGreen  LemonChiffon  LemonChiffon1  LemonChiffon2  LemonChiffon3  LemonChiffon4  
LightBlue  LightBlue1  LightBlue2  LightBlue3  LightBlue4  LightCoral  
LightCyan  LightCyan1  LightCyan2  LightCyan3  LightCyan4  LightGoldenrod  LightGoldenrod1  LightGoldenrod2  LightGoldenrod3  LightGoldenrod4  LightGoldenrodYellow  
LightGray  LightGreen  
LightPink  LightPink1  LightPink2  LightPink3  LightPink4  LightSalmon  LightSalmon1  LightSalmon2  LightSalmon3  LightSalmon4  LightSeaGreen  LightSkyBlue  LightSkyBlue1  LightSkyBlue2  LightSkyBlue3  LightSkyBlue4  LightSlateBlue  LightSlateGray  LightSteelBlue  LightSteelBlue1  LightSteelBlue2  LightSteelBlue3  LightSteelBlue4  LightYellow  LightYellow1  LightYellow2  LightYellow3  LightYellow4  
LimeGreen  Linen  Magenta  	Magenta1  	Magenta2  	Magenta3  	Magenta4  Maroon  Maroon1  Maroon2  Maroon3  Maroon4  MediumAquamarine  MediumBlue  MediumForestGreen  MediumGoldenrod  MediumOrchid  MediumOrchid1  MediumOrchid2  MediumOrchid3  MediumOrchid4  MediumPurple  MediumPurple1  MediumPurple2  MediumPurple3  MediumPurple4  MediumSeaGreen  MediumSlateBlue  MediumSpringGreen  MediumTurquoise  MediumVioletRed  MidnightBlue  
MintCream  
MistyRose  MistyRose1  MistyRose2  MistyRose3  MistyRose4  	Moccasin  NavajoWhite  NavajoWhite1  NavajoWhite2  NavajoWhite3  NavajoWhite4  Navy  	NavyBlue  OldLace  
OliveDrab  OliveDrab1  OliveDrab2  OliveDrab3  OliveDrab4  Orange  Orange1  Orange2  Orange3  Orange4  
OrangeRed  OrangeRed1  OrangeRed2  OrangeRed3  OrangeRed4  Orchid  Orchid1  Orchid2  Orchid3  Orchid4  PaleGoldenrod  
PaleGreen  PaleGreen1  PaleGreen2  PaleGreen3  PaleGreen4  PaleTurquoise  PaleTurquoise1  PaleTurquoise2  PaleTurquoise3  PaleTurquoise4  PaleVioletRed  PaleVioletRed1  PaleVioletRed2  PaleVioletRed3  PaleVioletRed4  PapayaWhip  
PeachPuff  PeachPuff1  PeachPuff2  PeachPuff3  PeachPuff4  Peru  Pink  Pink1  Pink2  Pink3  Pink4  Plum  Plum1  Plum2  Plum3  Plum4  PowderBlue  Purple  Purple1  Purple2  Purple3  Purple4  Red  Red1  Red2  Red3  Red4  
RosyBrown  RosyBrown1  RosyBrown2  RosyBrown3  RosyBrown4  
RoyalBlue  RoyalBlue1  RoyalBlue2  RoyalBlue3  RoyalBlue4  SaddleBrown  Salmon  Salmon1  Salmon2  Salmon3  Salmon4  SandyBrown  	SeaGreen  
SeaGreen1  
SeaGreen2  
SeaGreen3  
SeaGreen4  	Seashell  
Seashell1  
Seashell2  
Seashell3  
Seashell4  Sienna  Sienna1  Sienna2  Sienna3  Sienna4  SkyBlue  	SkyBlue1  	SkyBlue2  	SkyBlue3  	SkyBlue4  
SlateBlue  SlateBlue1  SlateBlue2  SlateBlue3  SlateBlue4  
SlateGray  SlateGray1  SlateGray2  SlateGray3  SlateGray4  Snow  Snow1  Snow2  Snow3  Snow4  SpringGreen  SpringGreen1  SpringGreen2  SpringGreen3  SpringGreen4  
SteelBlue  SteelBlue1  SteelBlue2  SteelBlue3  SteelBlue4  Tan  Tan1  Tan2  Tan3  Tan4  Thistle  	Thistle1  	Thistle2  	Thistle3  	Thistle4  Tomato  Tomato1  Tomato2  Tomato3  Tomato4  Transparent  
Turquoise  Turquoise1  Turquoise2  Turquoise3  Turquoise4  Violet  
VioletRed  VioletRed1  VioletRed2  VioletRed3  VioletRed4  Wheat  Wheat1  Wheat2  Wheat3  Wheat4  White  WhiteSmoke  Yellow  Yellow1  Yellow2  Yellow3  Yellow4  YellowGreen   ¤    )`       ť M     Clear ŕEťp Mon mouseUp
  setcolor empty
  put empty into field "Color Name"
end mouseUp
          ( 0         	       § RGB   !#on scrollbarDrag
  local newcolor
  put the thumbPos of scrollbar "R", the thumbPos of scrollbar "G", the thumbPos of scrollbar "B" into newcolor
  setcolor newcolor
end scrollbarDrag

on resetcontrols
  local pcolor
  put getcolor(false) into pcolor
  if the number of items in pcolor is not 3
  then put "0,0,0" into pcolor
  lock messages
  set the thumbPos of scrollbar "R" to item 1 of pcolor
  set the thumbPos of scrollbar "G" to item 2 of pcolor
  set the thumbPos of scrollbar "B" to item 3 of pcolor
  unlock messages
end resetcontrols
  @ żżżżżż      0 Č 
   LabelR  )         B             R:   2 R  éa       $ 4 ¨ $  (k   0  255         3 G  éa       $ h ¨ $  (k   0  255         4 B  éa       $  ¨ $  (k   0  255       
   LabelG  )         v             G: 
   LabelB  )         Ź             B:   ¨ HSV   !Ěon scrollbarDrag
  setcolor HSVtoRGB(the thumbPos of scrollbar "H", the thumbPos of scrollbar "S", the thumbPos of scrollbar "V")
end scrollbarDrag

function RGBtoHSV r, g, b
  local maxv, minv, diff, s, rc, gc, bc, h
  set the numberFormat to "0.###############"
  put r / 255 into r
  put g / 255 into g
  put b / 255 into b
  put max(r,g,b) into maxv
  put min(r,g,b) into minv
  put maxv - minv into diff
  if maxv <> 0 and diff <> 0 then
    put diff / maxv into s
    put (maxv - r) / diff into rc
    put (maxv - g) / diff into gc
    put (maxv - b) / diff into bc
    if r = maxv then put bc - gc into h
    else if g = maxv then put 2 + rc - bc into h
  else if b = maxv then put 4 + gc - rc into h
  multiply h by 60
  if h < 0 then
    add 360 to h
  end if
else
  put 0 into s
  put 0 into h
end if
return round(h),round(s * 100),round(maxv * 100)
end RGBtoHSV

function HSVtoRGB h, s, v
  local rgb, i, f, p, q, t
  set the numberFormat to "0.###############"
  divide s by 100
  divide v by 100
  if s is 0 then put v,v,v into rgb
  else
    divide h by 60
    put trunc(h) into i
    put h - i into f
    put v * (1 - s) into p
    put v * (1 - s * f) into q
    put v * (1 - s * (1- f)) into t
    if i is 0 then put v,t,p into rgb
    if i is 1 then put q,v,p into rgb
    if i is 2 then put p,v,t into rgb
    if i is 3 then put p,q,v into rgb
    if i is 4 then put t,p,v into rgb
    if i is 5 then put v,p,q into rgb
  end if
  return round(item 1 of rgb * 255), round(item 2 of rgb * 255), round(item 3 of rgb * 255)
end HSVtoRGB

on resetcontrols
  local pcolor
  put getcolor(false) into pcolor
  if the number of items in pcolor is not 3
  then put "0,0,0" into pcolor
  put RGBtoHSV(item 1 of pcolor, item 2 of pcolor, item 3 of pcolor) into pcolor
  lock messages
  set the thumbPos of scrollbar "H" to item 1 of pcolor
  set the thumbPos of scrollbar "S" to item 2 of pcolor
  set the thumbPos of scrollbar "V" to item 3 of pcolor
  unlock messages
end resetcontrols
  @ żżżżżż      0 Ę   Š H  éa       $ 4 ¨ $Um/[  ˝   359         Ş S  éa       $ h ¨ $/h     100         Ť V  éa       $  ¨ $Ű/h     100       
  Ź LabelH  )         B             H: 
  ­ LabelS  )         v             S: 
  Ž LabelV  )        
 Ş             V: 
  ą  	@         (            ink:   ˛ ink Ŕĺ	u on menuPick which
  if the selectedObject is empty then exit menuPick
  set the ink of the selectedObject to which
end menuPick
       0    srcCopy    ćclear
srcAnd
srcAndReverse
srcCopy
notSrcAnd
noop
srcXor
srcOr
notSrcOrReverse
notSrcXor
reverse
srcOrReverse
notSrcCopy
notSrcOr
notSrcOrReverse
set
-
srcBic
notSrcBic
blend
addpin
addOver
subPin
transparent
addMax
subOver
adMin        	       Ż Index   é bon mouseUp
  send "resetcontrols" to group the selectedText of button "Chooser Type"
end mouseUp
  @ żżżżżż     ô , Ô ´  e Foreground  EŠ       ř 0 d         	       f Background  EŠ       ř P d         	       g Hilite  EŠ       ř p d         	       h Border  EŠ       ř  d         	      i Top  EŠ      x 0 L         	       j Bottom  EŠ      x P L         	       k Shadow  EŠ      x p L         	       l Focus  EŠ      x  L         	       c Pen  EŠ       ř Č d         	       d Brush  EŠ      x Č L         	       ł answer  EĄ       ° h         	       ľ OK ŕLŤp ˇon mouseUp
  if not the visible of group "Patches" then # answer color mode
    set the dialogData to the backColor of button "answerColor"
    close this stack
  end if
end mouseUp
         ř 4         	  é   ś Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
         ř <         	  é   ˇ Patches  i        Ü ,  ´  z 	Pencolor ŕAg             ŕ Č           	       { Brushcolor ŕAg  ˙˙˙˙˙˙    ` Č           	       | Foregroundcolor ŕAg  ŘŘÜÜŘŘ     ŕ 0           	       } Backgroundcolor ŕAg  ŘŘÜÜŘŘ     ŕ P           	       ~ Hilitecolor ŕAg  ŘŘÜÜŘŘ     ŕ p           	        Bordercolor ŕAg  ŘŘÜÜŘŘ     ŕ            	        	Topcolor ŕAg      ` 0           	        Bottomcolor ŕAg      ` P           	        Shadowcolor ŕAg      ` p           	        Focuscolor ŕAg      `            	       š answerColor ŕAg             d ü           	       * Graphic Markers           ĘĽĽH              é Graphic Markers Card   	Plocal targetgraphic

on setprops
  lock screen
  select targetgraphic
  set the markerPoints of the selectedObject to field "Points"
  set the markerLineSize of the selectedObject to field "Line Size"
  set the markerFilled of the selectedObject to the hilite of button "Marker Filled"
  set the markerDrawn of the selectedObject to the hilite of button "Marker Drawn"
  unlock screen
  close this stack
end setprops

on mouseUp
  if word 1 of the target is "graphic" then
    put the markerPoints of the target into field "Points"
    set the markerPoints of graphic "Example" to field "Points"
    send "setone" to scrollbar "Scale"
    set the hilite of button "Marker Drawn" to true
  end if
end mouseUp

on preOpenCard
  if word 1 of of the selectedObject is not "graphic"
  then exit to MetaCard
  put the long id of the selectedObject into targetgraphic
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "Name"
  else put empty into field "Name"
  put the short id of the selectedObject into field "Id"
  put markerPoints of the selectedObject into field "Points"
  set the markerPoints of graphic "Example" to the markerPoints of the selectedObject
  put the markerLineSize of the selectedObject into field "Line Size"
  set the thumbPos of scrollbar "Line Size" to field "Line Size" * 1800
  set the markerLineSize of graphic "Example" to field "Line Size"
  set the hilite of button "Marker Drawn" to the markerDrawn of the selectedObject
  set the hilite of button "Marker Filled" to the markerFilled of the selectedObject
  send "setone" to scrollbar "Scale"
end preOpenCard
           ĽH        '    (    
  ů  ú  ű  ń  ň            #  $  %    &  )  *
  ń          D                Id: 
  ň Id  	       d  <             1003   ů OK ŕMŤp #on mouseUp
  setprops
end mouseUp
        " L         	       ú Cancel ŔEŤp :on mouseUp
  select empty
  close this stack
end mouseUp
        Ž L         	       ű Help ŔEŤp on mouseUp
  help
end mouseUp
       6 L         	     
  
 Name          x  Ä              
               l             Graphic Name:      	  ˙˙ff      ŞŞ       < 4         ˙ô˙ô    ˙ô  ˙ô   L D     	  ˙˙33    ˙˙˙˙˙˙      4         ˙ô˙ô ˙ô  ˙ô ˙ô˙ô     D     	  ˙˙ĚĚ       < \           ˙ô  ˙ô   ˙ô   L l     	  rr˙˙     h 4           ˙ô      ˙ô    ˙ô   x D   Example  	       B            ˙ô      ˙ô    ˙ô   R Ž
   Points  )`      " N l         é 0,-12  12,0  0,12  -12,0  0,-12       	`      z N  
             , <             Points:   # 
Line Size   ip Ľon scrollbarDrag
  put round(the thumbpos of me / 1800) into field "Line Size"
  set the markerLineSize of graphic "Example" to field "Line Size"
end scrollbarDrag
        ć N  ˙Ź˙
  $ 
Line Size          ŕ ě             4 
  %           Ě , D            
lineSize: 
   Scale           ě 0             1.00 
              , 8             Scale:    Scale   ip}local savepoints

on setone
  set the numberFormat to 0.00
  set the thumbpos of me to 13200
  put the thumbpos of me / 14700 + 0.1 into field "Scale"
  set the numberFormat to 0.######
end setone

on mouseDown
  put field "Points" into savepoints
  pass mouseDown
end mouseDown

on scrollbarDrag
  local scalefactor, newpoints, tline
  set the numberFormat to 0.00
  put the thumbpos of me / 14700 + 0.1 into scalefactor
  put scalefactor into field "Scale"
  put empty into newpoints
  set the numberFormat to 0.######
  repeat with i = 1 to the number of lines in savepoints
    put line i of savepoints into tline
    if tline is not empty
    then put round(item 1 of tline * scalefactor),\
          round(item 2 of tline * scalefactor) into line i of newpoints
  end repeat
  put newpoints into field "Points"
  set the markerPoints of graphic "Example" to newpoints
end scrollbarDrag
        Ś N  3˙	˙  & Clear ŕEŤp 8on mouseUp
  put empty into field "points"
end mouseUp
       " ö p         	       '   	              \           ˙ô     ˙ô          l  (   	  ˙˙˙˙˙˙     h \         !  ˙ô ˙ô ˙ő ˙ö 	˙÷ 
˙ů ˙ű ˙ţ        
  	 	  
       ˙ţ ˙ű ˙ů 
˙÷ 	˙ö ˙ő ˙ô ˙ô  ˙ô˙ţ˙ő˙ű˙ö˙ů˙÷˙÷˙ů˙ö˙ű˙ő˙ţ˙ô  ˙ô   x l  ) Marker Drawn @EŠ        Ţ t         	      * Marker Filled @EŠ        ö t         	        Page Setup           ] ÝhX             U 
Helvetica   é Print Setup Card   	P3function cn fieldname
  if field fieldname is not a number or field fieldname < 0 then
    beep 1
    select text of field fieldname
    return true
  end if
  return false
end cn

on setprops
  local pwidth, pheight, swidth, sheight, pscale
  if cn("Top") or cn("Bottom") or cn("Left") or cn("Right")
  then exit to MetaCard
  send "setMargins" to group "Units"
  if cn("Scale")
  then exit to MetaCard
  if the printRotated then
    put item 1 of the the printPaperSize into pheight
    put item 2 of the the printPaperSize into pwidth
  else
    put item 1 of the the printPaperSize into pwidth
    put item 2 of the the printPaperSize into pheight
  end if
  subtract item 1 of the printMargins + item 3 of the printMargins from pwidth
  subtract item 2 of the printMargins + item 4 of the printMargins from pheight
  put the width of stack (the short name of button id 1109) into swidth
  put the height of stack (the short name of button id 1109) into sheight
  if the hilite of button "Pack Horizontally" then
    subtract (field "Scale" - 1) * item 2 of the printGutters from pwidth
    put pwidth / (swidth * field "Scale") into pscale
    if sheight * pscale > pheight
    then set the printScale to pheight / sheight
    else set the printScale to pscale
  else
    subtract (field "Scale" - 1) * item 1 of the printGutters from pheight
    put pheight / (sheight * field "Scale") into pscale
    if swidth * pscale > pwidth
    then set the printScale to pwidth / swidth
    else set the printScale to pscale
  end if
  set the printCardBorders to the hilite of button "Print Card Borders"
  set the printColors to the hilite of button "Color"
  close this stack
end setprops

on preOpenCard
  local sname, c
  put the short name of the topStack into sname
  set the name of button id 1109 to sname
  send "loadMargins" to group "Units"
  send "resetMargins" to group "Units"
  set the hilite of button "Print Card Borders" to the printCardBorders
  set the hilite of button "Color" to the printColors
  set the hilite of button "Black and White" to not the printColors
end preOpenCard
           hX  V  S  T  {  o      ů  ú  ű  U  Y  Z  ~  ů OK ŔMŤp #on mouseUp
  setprops
end mouseUp
        $1 J         	       ú Cancel ŔEŤp +on mouseUp
  close this stack
end mouseUp
        0 L         	       ű Help ŔEŤp on mouseUp
  help
end mouseUp
        ř0 L         	     
  S Scale  i`       , (         é 1   T    ip ůon scrollbarLineInc
  if cn("Scale")
  then exit to MetaCard
  if field "Scale" > 1 then subtract 1 from field "Scale"
end scrollbarLineInc

on scrollbarLineDec
  if cn("Scale")
  then exit to MetaCard
  add 1 to field "Scale"
end scrollbarLineDec
       D *   Z˙	˙  U Page Setup ŕ4	e       <   Page Setup      MC Stack Menu        	  é 
  Y             8            Stack: 
  Z Cards           ,             Cards per row:   V Packing   é         &  8  W Pack Horizontally  EŠ Don mouseUp
    put "Cards per row:" into field "Cards"
end mouseUp
        
 *          	      X Pack Vertically  EŠ Eon mouseUp
  put "Cards per column:" into field "Cards"
end mouseUp
        
 B x         	       { Print Card Borders @EŠ       ¤ L          	       o Margins  )0(on scrollbarLineInc
  if cn("Top") or cn("Bottom") or cn("Left") or cn("Right")
  then exit to MetaCard
  if the hilite of button "Points"
  then subtract 1 from field (the short name of the target)
  else subtract 0.1 from field (the short name of the target)
end scrollbarLineInc

on scrollbarLineDec
  if cn("Top") or cn("Bottom") or cn("Left") or cn("Right")
  then exit to MetaCard
  if the hilite of button "Points"
  then add 1 to field (the short name of the target)
  else add 0.1 to field (the short name of the target)
end scrollbarLineDec
         ^Z ¨  ^ Units   é>local pmargins, pgutters

on loadMargins
  put the printMargins into pmargins
  put the printGutters into pgutters
end loadMargins

on resetMargins
  local factor
  put 1 into factor
  if the hilite of button "inches" then put 72 into factor
  if the hilite of button "cms" then put 72/2.54 into factor
  put item 1 of pmargins / factor into field "Left"
  put item 2 of pmargins / factor into field "Top"
  put item 3 of pmargins / factor into field "Right"
  put item 4 of pmargins / factor into field "Bottom"
  put item 1 of pgutters / factor into field "Row"
  put item 2 of pgutters / factor into field "Column"
end resetMargins

on getMargins
  local factor, lmargin, tmargin, rmargin, bmargin, rgutter, cgutter
  put 1 into factor
  if the hilitedButton of group "Units" is 1
  then put 72 into factor
  if the hilitedButton of group "Units" is 2
  then put 72/2.54 into factor
  put round(field "Left" * factor) into lmargin
  put round(field "Top" * factor) into tmargin
  put round(field "Right" * factor) into rmargin
  put round(field "Bottom" * factor) into bmargin
  put lmargin, tmargin, rmargin, bmargin into pmargins
  put round(field "Row" * factor) into rgutter
  put round(field "Column" * factor) into cgutter
  put rgutter,cgutter into pgutters
end getMargins

on setMargins
  getMargins
  set the printMargins to pmargins
  set the printGutters to pgutters
end setMargins

on focusIn
  getMargins
end focusIn

on mouseUp
  local bname
  put the short name of the target into bname
  if bname is "inches" or bname is "cms" or bname is "points" then resetMargins
end mouseUp
        Z r ŕ    ` inches  EŠ       ^ v L         	      _ cms  EŠ       ˛ v 8         	       a points  EŠ       ň v D         	     
  b             \            Top: 
  \ Top  i`       j  ,            1   ] Top   i`           H˙	˙
  c            ž [            Bottom: 
  f Bottom  i`       j ž ,            1   i Bottom   i`        ź   ˙	˙
  u            â \            Row Gutter: 
  v Row  i`       j â ,            0.5   x Row   i`        ŕ   l˙	˙
  d           ­  l            Left: 
  g Left  i`        ,            1   j Left   i`      J      ˙	˙
  e           ­ ž l            Right: 
  h Right  i`       ž ,            1   k Right   i`      J ź     ˙	˙
  w           Ž â l            Column Gutter: 
  y Column  i`       â ,            0.5   z Column   i`      J ŕ     ˙	˙
  |            t 8            Units: 
  ~            <            Output:    Printer... ŔEŤp on mouseUp
  if the platform is "Win32" or the platform is "MacOS"
  then answer printer
  else modeless "Printer Chooser"
end mouseUp
        D         	        Output   é        > Ě    Color  EŠ       B @         	       Black and White  EŠ                 	       ł Stack Components    Łon openCard
  send "refresh" to this card
end openCard

on preOpenStack
  set the label of button "Stack Name" to the short name of the topStack
end preOpenStack
       mž ň             U 
Helvetica   U 
helvetica   h    	pon refresh
  local sname, ncards, cnames
  put the label of button "Stack Name" into sname
  switch the selectedText of button "Type"
  case "Substacks"
    put the substacks of stack sname into cnames
    sort lines of cnames
    put cnames into field "List"
    break
  case "Audio Clips"
    put empty into field "List"
    repeat with i = 1 to the number of audioClips in stack sname
      put the short name of audioClip i of stack sname into line i of field "List"
    end repeat
    break
  case "Video Clips"
    put empty into field "List"
    repeat with i = 1 to the number of videoClips in stack sname
      put the short name of videoClip i of stack sname into line i of field "List"
    end repeat
    break
  case "Cards"
    put the cardNames of stack sname into field "List"
    break
  case "Externals"
    put the externals of stack sname into field "List"
    break
  end switch
end refresh

on doit
  local otype
  put the selectedText of button "Type" into otype
  switch otype
  case "Substacks"
    send "mouseUp" to button "Toplevel"
    break
  case "Audio Clips"
  case "Video Clips"
    send "mouseUp" to button "Play"
    break
  case "Cards"
    send "mouseUp" to button "Go"
    break
  case "Externals"
    send "mouseUp" to button "Add"
    break
  end switch
end doit
           ž ň  Ş        |  Ť  Ź  ­  Ž
   List  ś)p +on mouseDoubleUp
  doit
end mouseDoubleUp
         L p                  	`       M  n   Stack Name ŕ4)}    Pon mouseUp
  set the cursor to watch
  send "refresh" to this card
end mouseUp
        < x  Stack Components      MC Stack Menu        	  h 
   Find            4            Stack:   Ş Type ŕÁŠu con menuPick newgroup, oldgroup
  hide group oldgroup
  show group newgroup
  refresh
end menuPick
         ,Ź ź   2Substacks
Audio Clips
Video Clips
Cards
Externals        	       | Audio Clips   !        V Ŕ     Play ŕDp Ęon mouseUp
  local cname
  put the selectedText of field "List" into cname
  if cname is not empty then
    set the defaultStack to the label of button "Stack Name"
    play cname
  end if
end mouseUp
        Z Ä X         	  h    Delete ŕDp Âon mouseUp
  local cname
  put the selectedText of field "List" into cname
  if cname is not empty
  then delete audioClip cname of stack the label of button "Stack Name"
  refresh
end mouseUp
        Ä X         	  h   Ť Video Clips   a        V Ŕ     Play ŕDp śon mouseUp
  local cname
  put the selectedText of field "List" into cname
  if cname is not empty
  then play videoClip cname of stack the label of button "Stack Name"
end mouseUp
        Z Ä X         	  h    Delete ŕDp Âon mouseUp
  local cname
  put the selectedText of field "List" into cname
  if cname is not empty
  then delete videoClip cname of stack the label of button "Stack Name"
  refresh
end mouseUp
        Ä X         	  h   ­ 
Externals   a        V Ŕ    § Add... ŕDpźon mouseUp
  local f
  if the platform is "Win32"
  then put "*.dll" into f
  else put "*" into f
  answer file "Choose an external:" with "external" with filter f
  if it is not empty then
    set the itemDelimiter to "/"
    if field "List" is not empty
    then put return after field "List"
    put the last item of it after field "List"
    set the externals of stack the label of button "Stack Name" to field "List"
  end if
end mouseUp
        Z Ä X         	  h   ¤ Delete ŕDp ťon mouseUp
  delete line (word 2 of the selectedLine of field "List") of field "List"
  set the externals of stack the label of button "Stack Name" to field "List"
  refresh
end mouseUp
        Ä X         	  h   Ž 
Substacks   i        V Ŕ    ˘ 	Toplevel ŕDp Îon mouseUp
  local cname
  put the selectedText of field "List" into cname
  if cname is not empty then
    set the defaultStack to the label of button "Stack Name"
    toplevel cname
  end if
end mouseUp
        Z Ä X         	  h 	  Ś 	  u 	  é 	  g     Delete ŕDp0on mouseUp
  local cname
  put the selectedText of field "List" into cname
  if cname is not empty then
    answer "Delete stack" && cname &&"?" with "OK" or "Cancel"
    if it is "OK" then
      delete stack cname of stack the label of button "Stack Name"
      refresh
    end if
  end if
end mouseUp
        Ä X         	  h 	  Ś 	  u 	  é 	  g   Ź Cards   a        $ źd (   Go ŕDp on mouseUp
  get the hilitedLines of field "List"
  if it is not empty
  then go to card it of stack the label of button "Stack Name"
end mouseUp
        ( Ä X         	  h   ˛ first âCpion mouseUp
  local selcard
  get the hilitedLines of field "List"
  if it is empty
  then exit mouseUp
  set the number of card it of stack (the label of button "Stack Name") to 1
  put line it of field "List" into selcard
  delete line it of field "List"
  put selcard &cr before line 1 of field "List"
  set the hilitedLines of field "List" to 1
end mouseUp
        Ŕ $   Move to first               F             	       Ż up âCpon mouseUp
  local selcard
  get the hilitedLines of field "List"
  if it is empty or it is 1
  then exit mouseUp
  set the number of card it of stack (the label of button "Stack Name") to it - 1
  put line it of field "List" into selcard
  delete line it of field "List"
  put selcard & cr before line it - 1 of field "List"
  set the hilitedLines of field "List" to it - 1
end mouseUp
       ° Ŕ $   Move up               E             	       ą down âCpĄon mouseUp
  local selcard
  get the hilitedLines of field "List"
  if it is empty or it is the number of lines in field "List"
  then exit mouseUp
  set the number of card it of stack (the label of button "Stack Name") to it + 1
  put line it of field "List" into selcard
  delete line it of field "List"
  put cr & selcard after line it of field "List"
  set the hilitedLines of field "List" to it + 1
end mouseUp
       Ô Ŕ $   
Move down               D             	       ł last âCpŞon mouseUp
  local selcard
  get the hilitedLines of field "List"
  if it is empty
  then exit mouseUp
  set the number of card it of stack (the label of button "Stack Name")\
      to the number of lines in field "List"
  put line it of field "List" into selcard
  delete line it of field "List"
  put cr & selcard after field "List"
  set the hilitedLines of field "List" to the number of lines in field "List"
end mouseUp
       ř Ŕ $   Move to last               C             	        Delete ŕDpôon mouseUp
  local cname, cid
  put the selectedText of field "List" into cname
  if there is a card cname of stack the label of button "Stack Name"
  then delete card cname of stack the label of button "Stack Name"
  else if word 1 to 2 of cname is "card id" then
           put word 3 of cname into cid
           if there is a card id cid of stack the label of button "Stack Name"
           then delete card id cid of stack the label of button "Stack Name"
         end if
  refresh
end mouseUp
       , Ä X         	  h   í HyperCard Import Status        Éř˝ ý            ˙˙˙˙     U Courier   ę    	Pon preOpenCard
  put the HCImportStat into field 1
end preOpenCard

on resizeStack
  set the rect of field 1 to 8,8,the width of this stack - 8,the height of this stack - 48
  set the loc of button 1 to the width of this stack div 2, the height of this stack -24
end resizeStack
           ˝ ý  ë  í
  ë   	h           ­ Ĺ              ě    	`      Ą   Ĺ  í OK ŕEŤp Don mouseUp
  put empty into field 1
  close this stack
end mouseUp
        ° × \         	       ö MC Main Stack Menu          }> ä P           P˙˙ P      é    	pÇon preOpenStack
  local snames, nnames
  if the short name of the topStack is not in the mainStacks
  then put the short name of the topStack & return into snames
  put the mainStacks after snames
  put min(the number of lines in snames, 7) into nnames
  set the height of this stack to nnames * 24 + 8
  repeat with i = 1 to 7
    set the name of button i to line i of snames
    set the visible of button i to i <= nnames
  end repeat
end preOpenStack
            ä P  ó  ě  ď  ö  đ  ő  ô  ě MetaCard Menu Bar ŕTi@         Ü         	  é   ď Message Filter ŕTi@        4 Ü         	  é   đ  ŕTa@        d Ü         	  é   ó Home ŕTi@         Ü         	  é   ô  ŕTa@         Ü         	  é   ő  ŕTa@        | Ü         	  é   ö  ŕTa@        L Ü         	  é     Edit PostScript            black   ˙˙˙˙˙˙ white   ŐMÓ¨            ˙˙˙˙       e Editor Card   	P!local targetobject

on escapeKey
end escapeKey

on setprops
  set the postscript of targetobject to field "Editor Field"
end setprops

on resizeStack
  local cwidth, cheight, nb, twidth, ispace, tpos, halfwidth
  put the width of me into cwidth
  put the height of me into cheight
  set the width of field "Editor Field" to cwidth - 8
  set the left of field "Editor Field" to 4
  set the height of field "Editor Field" to cheight - 56
  set the top of field "Editor Field" to 8
  put the number of buttons into nb
  put 0 into twidth
  repeat with i = 1 to nb
     add the width of button i to twidth
  end repeat
  if (twidth < cwidth)
  then put (cwidth - twidth) div (nb + 1) into ispace
  else put 0 into ispace
  put 0,(cheight - 24) into tpos
  repeat with i = 1 to nb
    put (the width of button i) div 2 into halfwidth
    add ispace + halfwidth to item 1 of tpos
    set the loc of button i to tpos
    add halfwidth to item 1 of tpos
  end repeat
end resizeStack

on preOpenCard
  put empty into targetobject
  if the selobj is not empty and word 1 of the name of the selobj is "EPS" then
    put the long id of the selobj into targetobject
    put the postscript of the the selobj into field "Editor Field"
  end if
end preOpenCard 

on closeCard
  put empty into field "Editor Field"
end closeCard
           Ó¨               
    Editor Field  Á)p 8on tabKey
  put "  " into the selectedChunk
end tabKey
           °°°°°°      
Çl        e         	`      š 
 X       	a       bł     OK ŔDŤp 6on mouseUp
  setprops
  close this stack
end mouseUp
        ( A         	   e     Cancel ŔDŤp ,on mouseUp
   close this stack
end mouseUp
        ü A         	   e     Help ŔDŤp on mouseUp
  help
end mouseUp
       f A         	   e     
Import... ŔDŤpon mouseUp
  local fname
  answer file "PostScript file to import:"
  if it is not empty then
    put it into fname
    open file fname for read
    read from file fname until eof
    put it into field "Editor Field"
    close file fname
  end if
end mouseUp
         A         	   e   ň Audio            a              ę    	P on openCard
  set the thumbPos of scrollbar 1 to the playLoudness
  set the hilitedButtonName of group "dest" to the playDestination
end openCard
            a  ë  ě  í  đ  ë   Éq Zon mouseUp
  set the playLoudness to the thumbPos of me
  play "glissant.au"
end mouseUp
        H  ´ $Â+ň   0  100       
  ě             D            Volume: 
  í            < \            Destination:   đ dest   é fon mouseUp
  set the playDestination to the hilitedButtonName of me
  play "glissant.au"
end mouseUp
        \ 8 Ź   î 	internal @E       ` < P         	      ď 	external @E       ° < T         	       ň glissant.au   	`         Śggggg\Ř[3M÷Î[×ÖLÓ˙;[O>ÎŢSžďKĐ=:oERĎcĘź`vŢ<GH<ÓŰgźËUŢJ9U;>ŇXŘşęćŢ=BJ7WŃZžŔrĘW<M==ßzýşÚîÜ;>H5MÚbÂźlĐ^7H;;ĐáÔˇĘęŃ>6D5JÍużšţ×]3>;5ńÔÚ˛ÂßĘ?6@3DÎJÉłČ˝n99=1Gö[ˇľoŐ\=[52V˙ÄˇČÎĘSI>5N_gĂŔÉÉřBD8:{Uő˝ÎÎĚIEJ7FŮ[Éž×Éf<J>8mwk˝ČęÎE=I5@ŕ]ËťâĎÚ>IC6b|WžĹĺČR;N89ďQéşčŐÎ@FN4SÖNżŔnÇk<Z>9Ű[ZťĺqĎ@>R7KÓOĚžWĹŻ(.:5şźXśłodFZW':Â<Cľ¸ôWŘĂ>/žž0NËPH:Q˙9ĎŠĂđ´Ć9503.)ÇľH˛¤śÚOK:).ę;5˛š_ĹÂ˝{<żĆ2IĚ8.ANO?úŤ¸ę­¸:<5.)*űşk´Ąś÷ĹO5*+P7.ťş]ÂśČ[FÚá/?Á5/h[MúĂ´˛îˇś'.>+)1ŐťÜŤ˘Ă\ÔŰ%.L79ŠŁÔ˝ŞĹ64KC'4šC/˝˛üm˝ąÚ>żČ&.ß0(=žąČŽ¸>ČO -:5<ŤŁÎŻŁŘ3<F/!0ĹB5˛ŽZĎŻškEťĘ'-`,$I˝ÇËŹş<żb"2.-BŞŚĘŽâ-B9&%;žB:ŞŹ<Ů­Ö:EËU%6ż/)ťłďĚŞĽĚ=žT#F,,Í§§żŹ N(J8$D˙?U¤¤N˝ĽT.No6&8Č.'ľŻCťŁŤÎJĂA#G%'˝Š­ą¤Ď/Ë7"=63ôŁ¨j´ŁO.Îî+)9^+(łŻ>ľŻáĆşB&L ť­Ă­Ö/Ę7$b./ź¨­ŕŻH,šb",YN-2Žľ4ťĚMľż4 +H!ąŹďŤ¨čGÍ9$~()ą¨´ťŞŚG)ĂT.Č7-Głś=śÍC­Ć)&2:$$ľŻAŞŻŰĎŮ.%M%(Ť§ÄŻĽŹR2ĆM/Ä/*ĎľÉPšŁŕ7Źż%-E.$)˝łFŹľaľŽ)¸&@ŞŤşâ§¸,ľeÉ2&Ş$ŽXÇÁ­ĐA­0DH#ŻŽťÎ<ĽH"ĽO?V+SÓ@ÇŤZż@XO)ŁŮˇ<ę,!ŹĹnÄÄJ)3+°ŞŇ F+B~­ŻËC3ľ4łČÄÉ9PŹĽ˝Ş:*&¸Ć¨Ľ=D1Č.žĹÎ- :++źŻŚČ#F)˘ĚźĎ/žŻł4UËťŁŻŽ%0˝°FUľż 'DËBÁ¨ĄžR&.§ÓĆI5´¸Ä,ŐR#ĚąĽĚ."/ë¤Ę,8éŚŽ˛/şI´Ť­°>(&6ş´Ŕ$¨ÂĐ4Ş6Ąą˙­Đ/Ř'(O¤ŞŹ]˛*.ŹWÍ §Ť ÝÉš¨!ÂŞ?Ű¤ÚŻ"ˇŚĄ$Ť.Š&@8'Ż§Ą[4$#$¤#0'ĽŚ/şpŹŹB/+W­¸¨˘¨Š1)#-ć7ąÇF"?¤Ę0)$9"#§Ż-	žG(B¤ÄPł˝¨ŚŻ˝Ň.+ź]Ł¤.
ÂśĄ"ś˛źť9#*Ś4Ž#ŻŚŁ	Šş´ż)ËŹ_
&&vŽ
KŁĚ¤ŞŁ9*#/ž­-?žF É?c˛ĽJ˘UŘUŤ<QÉŤ*('0ş<"ř.ŁŞĽ,.6H?¨ŁŁŚ¨
$, ĄN§˘şś[ůĎdŻ+!ąśîÁĹŠ%Š/-0!ĘWŠ1š-0/ąÁ(=ˇ#ËĎŻé7łX)ŇĽ+$#ŔĄśŹK-IßUťE-Ż=ÝĄ§ź°!,=É­˘ˇk < dđ(˛,/4­´şŽŢźŻĹ d&´JŚłčú1Ś˘-ą5ÇE/ś>Ť-Ś´Ç>Ś ś*¨)I"CČHšżoÇÉüG˘Ęš˘­S@P2žĽŁ˛:Źç];51.Ä(Ş"ŽśĽá0)7B<źŔE_Äž$­§+ŻËY§ź .lĆZÄž058ăź˘Ł%RĄ¨¸Ą%'A?).ąŚitŁ, Ă,#Yíą¸Ë!"# őJ#,qĆ"ź:<ÄšÚ)0)Ţ$ĽśŤ8-Ł§'!EŽ ŮŻ'ă1U,ŚźŁP ˝,Ç# X7ĄŻ:dťŚ­dA*""Ş.VŚĽĂ/.§?˘K6Nk*8G*:žq0Ź¸M°­Łąe˝Á,­ť.ĹŤÂÂŠż,#žŹźŞ-ŠŚŞD4Ę%B<1$yGČ+FhźEĘ=&.7F°Ćś§G§.aTÍ&5ś-!^śŠ˛98..ť˘9?,č-Ł((#ŻŤ˛Ń)žŁ§1¨1EĺşÇĽĆ1 +÷ŁŁV<b)/6ť+ŠŞ0&EMŁś­˝Š*ŠBaŞ˝ŻtÍ.0Ŕ@J ´Ś'+dŹľÎ!ÍĘ¨ŚUšÂ8 á!<7¤H:|7%+<&'ZŤI%$ŹFĆŁ::ĽŻ.F,Ú-3')%,"-X>ÄÄĹ"ž*Ç6ś2ÁWŽŹ(ą´PË÷ÜĽźŇĚ97/ł¤0ś)ł)°ĆhJ-ű,XŚ3=˝¸ç
+*§ŹŻŮ­¤Ě¤Š+§ˇęĄ<>1/˝B.##1É¨Ź48$ĎŃŮŽ' š+
ŞŠ:a'.1*Ř2,/#6,ÔÚş0˘'AK)şť¤ź
rť9­ĐŚ47¸*´K<˘Ę5ŐŽB(Ż9ŔËß­Š
ŔŚÍäŠ˘ÁŹąD> ,ˇ¨=u	#ŚŻŐž#&Ě&­,
"	­Š$"GI*§&§ŚÁ&0"O(EĘ%ČŤI )¤íĄŢQ*:ŞZÔ	 Ž¸TŽşł0<|˛;ÄĄ6 # )!Łłž
Ä ş:&u#$łˇO§OĽH9
LÜ 0I¸Üˇ2ÄŤ	_Ź	 ý	ÜłŚ¤Łt8)ŐĽŔ¤§Ž0Ć+ŁD˘ .­%Š $ŽĽš-.ĺŠ˘ăŞ#*$6Ż7	jĄľ	§A($Ĺ>džKzľ-˛-'ž'Ź)N(& Ś2P*!˛*˘ŚĄÖ-¤ĂE5ˇ*3$IÍŁŹ#F;ź"ž$Ś+$.ĽČ

#łž/)Ą¨Ź)-H§ŠĎL%4R¸­
Ä´(%ą˘Ż$I*š˛--˛"
@ Ł
$ŞŠ50ÇÍşĆ-W
Š2&zŚČ 2=LŁ&73ŁŤ	*G4+F`§˝(V-);%"0ľ,")Ô:Q×źS˝ŔÁ9M-Đ"
	0)9ĐłŠŁć ˘*ŚHCŞ¨ŤÇ/-*/*+^!47Ť#żB?ÇąŹ@dťW##ŁÄç3Â´Ç.¨"',Ń!Ł'­˛Ş¸ÓP"%9ćşĹ!¤#):ąŽĺ Ľ!Žą+!'KĂŤż
J)/ÚŹ¨Ë-ä--çąŞ?ľ$3	B=¨ĄŐ?˝Î§Ż"Ĺ˘ Š/ŤB´48­ť˘ż$O(¨ÝĆ(.&!>Á˝­"¸Žš#ŻÍ+Ă+Şťr	"-´žB¨%0Ů˝  .¤2Ľ$ .O^-˝×-"śŹ")×+$6dQD§=ĽčSMť!+,ŽŠ3Ź4ĽŠŞď˝§!§$M?ĂŽĎ	KˇŁ´fđI§'¤§,Ě%0¨.ÄkĚ,7Ş'Ł.#@˛0Ĺ(
śÁ4Š!D*Ź!ť!Ź+Ť%G%?ˇťŇ'IR1).˝ŠO#ß×0Ž%ĄĄŠF¤
U¨Ž3  *Ą5<° 6ÓŞ(.Ď˛°,*jŚÎ)E9WŚ%Ë<Ź$cż¤Š!ş1ź§đťŹ7=98&˘śľ˘4ŕŻŞ=ĽŽYł-$3ą U1(Í¤Ż­/0-6.X,&-Ť­Ť*'Łľş6KŹŹ˛8+@-4ˇ&LçÇ¨­­+Ť ,/IeVťŤąĽŚ@˝!.$)[P8¤¸×++ŮÂ=##(5_ŁŤŁE+-=ŞŹÝD#ăĽÚ+!^NżŠż-"¨ 4"$´ŹW+(Š¨˝ D$HĘ+#°˘§Y¨8ţˇ.ż=$Ž+ÉůÔąŰŚ=Š*/r°ľ}.ÓN§¤8}"Ď'.Ŕ%Ř2Ř¤šŠ_S*!óG˛Ş´¨Żł>[üoK&š,ăĂ:Š9< ľŤŔ*#Ţź)ě×°0§=Š#¸˘-Ľ),1ŚÚŻźú8ź5>ľ+śŤŞËŞ,Ęˇ5¤,)Ż\ˇËŇ#R	˘łţ$)&7"Ł5˛OMöš Ř-G¤uŹ˛ˇ+ˇ1(!ŤŁ2!)ŻżÁ-Ś+šŹ/N[Ż.J0'Y­ÚŞ­˝/ <ÓşŤŞ˛×žŔľK¨CWW­IśOL*#Z¤ŁX&$.˘¤ą)ÚvÇ@ŐÖ)ŞľŻ u?!NŞť¨Ž>>ŞĄĹF(-žśś´7ł.4ˇ-?š9Ż×ßS).7DŻ¨Śą:1!1wÉ˘ŠÂˇÎ!Ô&*>-NĹeŚÓ˝´Ež<7E'(ŽŻÇ7(1ť¨˘Ť¸Ő-6 4;0§@P¸.ËŚžłĐ)'Łš¨Š;*&!.äŻżÁ'(.fŠŻŚ-L)OFĎŕ¨í#?#7DŹŞ ?Ţ""Ő˛ą%!(#ĎZŃĄDÁľ7ŽF˝Ç?Ž/.ŢCS÷¤7/#ľÁşĽÎ(,)I˝KĄť5¨,Ýť2˝++;bRş×Ę*Ę$#M-ÂŕąťĐŽ6>Á,ąĐČš,D*+ŰË­ľ¤'3LĆź˛Śß60'/+Ť°Ś˘Îi;.=B]ŽĘ4Ď=;šĆŽ¸l>&) (ćŇŤŠÉ&,/0ąľS0+,3łőˇ´5[?-ĎÇťŞ˝?8$"dÚĽ­L8/)šťČčÖ´'_A)ł=Ń¸7ž"<¸4ŠŞVş$)-$Í¸°Ť˝ť2?0 F'\˝Ď¤ł°Ë Z )ť6Ťˇ2¤-ÎŠ>§G-?>?H´¤GÔ-#-YD´ĽŞ¤kJ;H>uŽQÁ2,a(š­ĺ<HI1%$ľK¨Ą´Ż4.)??lŤÔťß?T7eaZĘPÜH6K-FŔÂ§Ť´]$($ťşŽ´0 &7ŕĆŚŞŞąSZ #0-Â¨Ż§Î;/,PíźŻ|H.+67š¸ťąÍgB<=$3=.¸´łŞčc.*:-ĐĐLĎ9AT>Żźç¸<4/030ĚÍĎ§ťłŮ9/&-@L­˝ťĂAĺ8Mˇ>×Ú6H6p8}ŻËťŤ@H)%+4ČŤŠĽÇW$()%ÇżĎ­ťeH?@(OF:ťÇŮş.P,3ŰËŽŽÍI&+%/ąąŤ¤ťM61&'^7ÂŻ˛ŚÄR@ /3ałą°S.9AłŃ˘ŞâE'(",_ýŹŤŞŽQE+++XźŤŠĎľ=&Ý->ĹUżX^Đ5ĚüIˇPžŐ1ż/0ÄMžłşzAR'2v?ŔťĎ˝C˙<2m2ÝWZą.xă"ó_OŽĚČ=)3Dž÷¤śÓű(8-/rxÍî¸Î@ťC4Č>mĚňÖ/J4.­ĘŞ˘ďż+8#C­ˇĽŽˇđ.L$(j8ź­˛´ü@++9?śşˇˇ,4/Y˙şŽş°6469E=§Ż°ł16%">HśąŽ´=Z4(IJZĂśĎ˙Ţ80d8ÎľČŽM:<&:GČŽšŹá5ő),ä0R˝ÚśŔŔđ>@.;EhÍúWl<KÂŔÄłé+/.$ŕÎŔ­ťŔ\;?.7@>ÖŇĘ´Mď[*hĺNťĂA<72:Î¸ťśĂ;;.3@MÓšÇČÁD7J.8ŃěČŻÉX>467ĚËÇł_UB+E8Eś˝şŹjH-*'-ÁźŹ˝ŕ9%%(;ćžą˛şÖ>N)8M3ĘÂţË<E/AĂßŽŽDX*#1.ź´ˇŠË˙D0B,LN=ş˝Ě´^Z39H?ş˝ýż2=>:ˇŇžąNR>7L7ÍvSˇtŐŔ9L2;_DźŔöĐ9=?BĆkĚŇ7A:=s[ľĐÚĆ6:9*AAÎ´żŽÉB?*-6<ŔŘśźMŐL;g@˙H?âAMěCĺçĹťŰš@25&8vĘŚłŻČ4@/.oEžŘÍąKÖj.S8_ťĎŽo?>"6Ez¨¸ŽÎ.<&.VAˇăźˇ6ČB,L+MöcŽëĚT)O0\žE˛G4á+ßÎq˛GÁK+Ů.=É?­Ć˝ŽA÷2'F-ÍťżŚÔÉĎ-Q4C\?źGß˝9ÎSN˝9ĘR2b*@ç?ŹěĹÇ,O3.Ń>ĚÝFÉ9Yy7ôGëÓ\żIM;.PCž°ĹŹN7?)DVńŽ_şĎ;Á=C|7×OlˇâĚg;@9xçÔŔPL79VO´ĆÖÇ+60+ęO˝ŻěŻ_>A%1.4´ÎŤŹßŇ4-05é˙˝ťmÂDK_>ÇWęź>Í;>č0ĹÂO­\jă0]7BĆ=˝óCż5Vh9ĚEěĹB˙4==5˝ŐżŻ<v0*=/ÁÁÎ­HŘX-}1>Í9śÄĺś@é6/Ď9ČˇKťCJďH˝ÜíŇ/N2?¸č°šZž7>?1^4áÂOŽĚmË,<40ĚFźżHÎ4@W6Ä]_Á=UB;O:Ęße´TňQ1J6LÎ˙şůje6~HVşSŔË<y6<FMˇÂş´EM/,??Ë´ž˛îV=1<5QŇV¸ĹŘÉK=24CBĚźÓžGFN5j÷QŃ>GDJlÝÁČ\ÍC8I7CLSÍÍźÁŮd7:4:ěËžśyz=3<HÍÎĚśLMK7OGVË˙ÍÄdÜDHD?çVŘĹMĎ^IpgöM]|<UKGÖJÉĘMË<;A.`OŐšőźQ3P.7]FżŐÄşF˙>3>2ßęÍ´ŐÔJ6G;ćÚŰś@WO0ŇhĘľWťM6y3QfOľdĹş?ß94_9ËĘĆšAQ8.JGĂĂĘš=D?/I8}ËJ´öüŃ/N80×CžżOź@=O9ŐQÜź@ŰT:lIŃĎýŔO[A;tEŃŔÜťMES0FI}ÂăšÜEß4>G=Í}ÔźWŢE=M;xĺfČDMU9YőŢŢč÷CDPC˙]˙×SňnJ[ISKiŐčÄÝ@L84X˙żşżÄK980@VĎżĹĂĎDI<7GOăĘĆÔkL>8KlÜÁżăi>8;?^ĚĚËČOAD;E`ŕĎÓÖXI?>>\˙ËÄÎŕL><7@fÓÉżĆčI>;6GëŃÂ˝Ţ˙D8>?\ÓĘÁë˙N>D?X˙hŃ~dkMPG[ŢN×rBR9HMYÁÔÄÚ?I5:TCĹÎ˙ÇIONDgKÍďPÉGOU=č[â˝éžmGU/OHS´á˝ż>c<@fFž÷ôÁ;_A;ŰHÉŔŢĹ>A5/T>ÇśîśT:?+>=VśŢśĚ=k,;M7šÉĘ¸Io85N;ÁËáśNhP8eFÝÇäťXWJ2e=_ľçśĘOj/=;=żiżťDĐ:;]:Ţ×cĹJ]?=V=ŰĘďźkXG3>7YŃ˙śŮ|ŕ6]D?ËLÜÜIÓGÝŮLÂaQÎ<UFCč˙ĘÉÚÓJJ<9dLĚžÖČWG@6OBóĂíÁćIW3BIGËěĐŘBL;>[JÉËäÖKA;:APÉÉĂĂ_M;5A>}ËĚżđpD8UDeżäÎďAE9>SjÂÂÁÉTD23:=ĺĆŔ˝Ër<;:4R˙ëÇîçOBNCXđ˙ĐmhW<KDEÖÜŇËďO?>>HůŰËĘň˙F?EGm˙ÜÔ˙˙LJS>a|]ŘtiUE\J]Ý˙ŢúIS=GZYŘŰâď{XCHJEëďűçkYLNj[ŰčéyAFA<˙nŐżĎÎvGA7>DPÉÉĂĆúT@=EEnŮĎÔkUDDYXŢÎŰäWI?>NFćÉÝÇ÷OI7>FLÍÉËÓSL:;IFŮĚŃĚaLB?EEôŰŰĚčzI=ECYŮŘĘÚ˙W<IBGÎßĐÇó˙J@H?kvöÎîëkLtI^égyoSNIiTěÍřŐúLO=GKOŐýŐÎV˙AET?měYŰWZVJ˙RěÝU˙MGY@nbzŮöçbMbAZZNËpđßLgBHőOÍŢ}ŐGQL?ďSćĘ˙ŃbJS<[RbÄëÔĺIL:CSSĘŰĎÓJ[=?VBŰÜđÓLZMC˙JćŇOŮRGN>Zb{ÄŕÓěGO;EXLÍÓŐĘ_~HCODőĺőĘmmMBsHdÖlĐhZh@fLNĎ_ÓÓYđEOOEű˙lÓVţLKgJsälçVVMJqMîâUŢRUYF˙TyÖZŰbQrB[dOÓďwÜO[MOqSí{géU^RY}Xó{e^JYJMŕUâÍkäTJL=WV_Ď˙ÝěO[GK^Näŕúđ]WHNi[ÚÜçôRZHK^UÜâěĎ\n^D~WcĎďÝtV[DYm\ĎáâÝUXHHZ[áçÜâWrJH[K|ĺěŘ\óVD[DZŢ\ÎĺYńDTQJňaââ]áMOdJůl[ía|XYmOéqjßTo`H˙RdßoÖjręGvhQĎiuëSnPZ˙[ŰzmçKmTKůT}ĺ_˙TcYLďWháTň[PfKeg]ÚaäkNmHVíVáăhőR[PQďZčÜké[RWMgkőÝççjYZGfY]ŐěáëW[MVg[ÚzzĺNdTNo[}Ű÷ç[VOG`VhŰţáń[WNVV]î˙Űő\mMUaSçňčâ`yTRlO~|cÜowkS~X`zgęnl{Smbbč˙˙{_gSc\[ěg}úWrT\˙Vďű_˙SdYP˙]dç\˙_U[Tabh˙˙˙e[mV]ie˙n~fYxWröaŰ{orSZWV~aôę˙˙YY[Onsič˙˙eWUNchuç˙˙jUVMY]^çű÷óS^QPoUîěţî_[WN^Xiçůçz\YOT[[˙˙č˙kdSZY]˙˙˙{g|SYfWq˙˙égu[SaSb˙˙ě|o˙[a\^v˙˙˙g^[^gi˙˙˙mg[[]_[˙˙˙˙jg_[b[˙˙˙˙n\b[ipg˙˙gg][[e˙˙˙˙kg_[c[h˙˙˙ngg^[_y˙˙˙˙lf[[[a~˙˙˙ogYX[^w˙ďűvg[[[]p˙˙ě˙˙j[[[^u˙đú˙˙\[[\gg÷ó˙   @   Main Stack           ?"T               é    	P Ľon preOpenCard
  put the short name of the topStack into field "Stack Name"
  set the label of button "Stack Name" to the mainStack of the topStack
end preOpenCard
           T   ú  ˙      ô    ő  ő Help ŔDŤp on mouseUp
  help
end mouseUp
        đ \ H         	  é 
  ú Find            ź            Set the mainStack of stack:   ˙ Stack Name ŕ4)e       4 8  MetaCard Menu Bar      MC Main Stack Menu        	  é 
   Find           8 $            To: 
   Stack Name           (            Message Filter    Cancel ŕDŤp +on mouseUp
  close this stack
end mouseUp
         \ L         	  é   ô OK ŕMŤpÓon mouseUp
  local oldstack, newstack
  if the mainStack of stack (field "Stack Name") is not the label of button "Stack Name" then
    set the cursor to watch
    put the mainStack of stack (field "Stack Name") into oldstack
    put the label of button "Stack Name" into newstack
    set the mainStack of stack (field "Stack Name") to newstack
    save stack oldstack
    if the fileName of stack newstack is empty then
      ask "What file do you want to save this stack in?" with MCfixpath(the label of button "Stack Name")
      if it is empty
      then exit to MetaCard
      set the fileName of stack the label of button "Stack Name" to it
    end if
    save stack newstack
  end if
  close this stack
end mouseUp
          \ H         	       ö MC Toplevel Menu         É ä 8           8˙˙ 8      é    	pÂon preOpenStack
  local snames, nnames
  get the openStacks
  put empty into snames
  repeat for each line l in it
    if the mode of stack l < 3 then put l & return after snames
  end repeat
  put min(the number of lines in snames, 7) into nnames
  set the height of this stack to nnames * 24 + 8
  repeat with i = 1 to 7
    set the name of button i to line i of snames
    set the visible of button i to i <= nnames
  end repeat
end preOpenStack
            ä 8  ó  ě  ď  ö  đ  ő  ô  ě Stack 938569097 ŕTi@         Ü         	  é   ď  ŕTa@        4 Ü         	  é   đ  ŕTa@        d Ü         	  é   ó Script Profiler ŕTi@         Ü         	  é   ô  ŕTa@         Ü         	  é   ő  ŕTa@        | Ü         	  é   ö  ŕTa@        L Ü         	  é   ú Custom Properties         	ľd        @ ´˙˙˙˙     U 
Helvetica   U 
helvetica   ę    	PŞlocal objectid, newvalues, curcps, origcps

on getvalue which
  if which is empty then exit getvalue
  if keys(newvalues) contains which
  then put newvalues[which] into field "Value"
  else
    set the customPropertySet of objectid to curcps
    put the which of objectid into field "Value"
    set the customPropertySet of objectid to origcps
  end if
end getvalue

on editprop
  get the hilitedLines of field "Properties"
  if it is not empty and the selectedField is not empty and the short name of the selectedField is "Value"
  then put field "Value" into newvalues[line it of field "Properties"]
end editprop

on deleteprop
  get the hilitedLines of field "Properties"
  if it is not empty
  then delete variable newvalues[line it of field "Properties"]
end deleteprop

on setprops
  set the customPropertySet of objectid to curcps
  set the customKeys of objectid to field "Properties"
  repeat for each line l in keys(newvalues)
    set the l of objectid to newvalues[l]
  end repeat
  set the customPropertySet of objectid to origcps
  put empty into newvalues
end setprops

on getprops
  put the label of button "CPS" into curcps
  set the customPropertySet of objectid to curcps
  put the customKeys of objectid into field "Properties"
  set the customPropertySet of objectid to origcps
  sort field "Properties"
  put empty into field "Value"
end getprops

on preOpenCard
  local tprops
  put empty into newvalues
  put empty into objectid
  if the selectedObject is empty then exit to MetaCard
  put the long name of the selobj into field "Object Name"
  put the long id of the selobj into objectid
  put cr & the customPropertySets of the selobj into tprops
  put tprops into button "CPS"
  put the customPropertySet of the selobj into origcps
  lock messages
  set the menuhistory of button "CPS" to lineOffset(origcps, tprops)
  unlock messages
  getprops
end preOpenCard

on resizeStack
  local cwidth, cheight, bnames, cspace, tpos
  put the width of me into cwidth
  put the height of me into cheight
  set the width of field "Object Name" to cwidth - 8
  set the width of field "Properties" to cwidth div 3
  set the height of field "Properties" to the height of me - 92
  set the height of field "Value" to cheight - 160
  set the width of field "Value" to cwidth - the right of field "Properties" - 16
  set the left of field "Value" to the right of field "Properties" + 8
  set the left of field "CPS Label" to the left of field "Value"
  set the width of button "CPS" to the right of field "Value" - the right of field "CPS Label"
  set the left of button "CPS" to the right of field "CPS Label"
  put "OK,Cancel,Help" into bnames
  put cwidth into cspace
  repeat for each item i in bnames
    subtract the width of button i from cspace
  end repeat
  put cspace div (the number of items in bnames + 1) into cspace
  put cspace into tpos
  repeat for each item i in bnames
    set the left of button i to tpos
    set the bottom of button i to cheight - 12
    add cspace + the width of button i to tpos
  end repeat
  
  put "New Property...,Delete" into bnames
  subtract the left of field "Value" from cwidth
  repeat for each item i in bnames
    subtract the width of button i from cwidth
  end repeat
  put cwidth div (the number of items in bnames + 1) into cspace
  put cspace + the left of field "Value" into tpos
  repeat for each item i in bnames
    set the left of button i to tpos
    add cspace + the width of button i to tpos
  end repeat
end resizeStack
           ľd  ë  í  ď  đ  ň  ő  ö  ÷  ů  ú
  ë Object Name           ­ (           @button "New Button" of card id 1002 of stack "Stack 1025219878" 
  í Properties ç)p Ţon getentry
  local cline
  put the hilitedLines of me into cline
  getvalue line cline of me, cline
end getentry

on mouseUp
  getentry
end mouseUp

on arrowKey
  getentry
end arrowKey

on focusIn
  getentry
end focusIn
         $         ę    î    	`        %  ó  ń    	a       	 |   ď OK ŕEŤp Aon mouseUp
  editprop
  setprops
  close this stack
end mouseUp
        ?< <         	       đ Help ŕEŤp on mouseUp
  help
end mouseUp
       5< @         	     
  ň Value )p )on closeField
  editprop
end closeField
        Ą h Ä        ę    ó    	`       i  Â  ő Cancel ŕEŤp non mouseUp
  put empty into field "Properties"
  put empty into field "Value"
  close this stack
end mouseUp
        ş< <         	       ö New Property... ŕEŤpon mouseUp
  ask "New property name:"
  if it is not empty then
    if char 1 of it is a number or it contains space or it contains tab then
      answer "A custom property name must start with a letter"
      exit to MetaCard
    end if
    if field "Properties" is not empty
    then put return before it
    put it after field "Properties"
    set the hilitedLines of field "Properties" to the number of lines in field "Properties"
    put empty into field "Value"
    select before char 1 of field "Value"
  end if
end mouseUp
        ż @ t         	       ÷ Delete ŕEŤpuon mouseUp
  local l
  put the hilitedLines of field "Properties" into l
  if l is not empty then
    deleteprop
    put empty into field "Value"
    delete line l of field "Properties"
    if field "Properties" is not empty then
      set the hilitedLines of field "Properties" to max(l - 1, 1)
      send "getentry" to field "Properties"
    end if
  end if
end mouseUp
       Q @ D         	     
  ů 
CPS Label 	        Ą              Custom Property Set:   ú CPS Čĺ	u Don menuPick newvalue
  editprop
  setprops
  getprops
end menuPick
       9  t      
        	        0 Script Editor    on openCard
  
end openCard
       U W4    debuggingScript   debuggingHandler  mouseUphistory  char 1 to 0 of field 5
tracemode            ˙˙˙˙      U 
helvetica    U Courier  
 U Courier   U symbol   U Symbol    e Editor Card   	PB4local doneOpen
local handlerlines, notdoingclose
local tokencolors

on startDebug t, h, l, p
  get the debuggingScript of stack "Script Editor"
  if it is not empty and it is not the long id of me
  then send "stopDebug" to it
  set the debuggingScript of stack "Script Editor" to the long id of me
  set the debuggingHandler of stack "Script Editor" to h
  set the listBehavior of field "Editor Field" to true
  set the autoHilite of field "Editor Field" to false
  set the hilitedLines of field "Editor Field" to l
  disable button "File"
  disable button "Edit"
  disable button "Go"
  disable button "Tools"
end startDebug

on stopDebug
  if the debuggingScript of stack "Script Editor" is not the long id of me
  then exit stopDebug
  get the hilitedLines of field "Editor Field"
  set the debuggingScript of stack "Script Editor" to empty
  set the autoHilite of field "Editor Field" to true
  set the listBehavior of field "Editor Field" to false
  set the lockText of field "Editor Field" to false
  if the mode of this stack is not 0
  then select after line it of field "Editor Field"
  enable button "File"
  enable button "Edit"
  enable button "Go"
  enable button "Tools"
end stopDebug

on colorizeline which
  local s, curword, nwords
  put line which of field "Editor Field" into s
  put 1 into curword
  repeat for each word w in s
    if char 1 of w is "#" or char 1 to 2 of w is "--" then
      put the number of words in s into nwords
      set the textColor of word curword to nwords of line which of field "Editor Field" to "DarkOrchid4"
      exit repeat
    end if
    set the textColor of word curword of line which of field "Editor Field" to tokencolors[w]
    add 1 to curword
  end repeat
end colorizeline

on formatline
  local oldline, oldchar, fw, startline, endline, maxline, newdata, firstline, newchars
  put word 2 of the selectedLine into oldline
  put oldline into startline
  get field "Editor Field"
  if word 1 of line oldline of it is empty
  then put -1 into oldchar
  else
    put word 2 of the selectedChunk into oldchar
    subtract the number of chars in line 1 to oldline - 1 of it from oldchar
  end if
  put "XXXXXXX" into fw
  repeat while startline > 1 and comma & fw & comma is not in ",on,function,getprop,setprop,"
    subtract 1 from startline
    put word 1 of line startline of it into fw
  end repeat
  put oldline into endline
  put the number of lines in it into maxline
  put "XXXXXXX" into fw
  repeat while endline < maxline and comma & fw & comma is not in ",on,function,getprop,setprop,"
    add 1 to endline
    put word 1 of line endline of it into fw
  end repeat
  if endline < maxline then subtract 1 from endline
  put reformatscript(startline, endline) into newdata
  get line startline to endline of it
  subtract 1 from startline
  subtract startline from endline
  repeat with i = 1 to endline
    if line i of it is not line i of newdata then
      put length(line i of newdata) - length(line i of it) into newchars
      put i into endline
      repeat until line endline of it is line endline of newdata
        add 1 to endline
      end repeat
      if line endline of it is empty then subtract 1 from endline
      put line i to endline of newdata into line i + startline to endline + startline of field "Editor Field"
      if the docolor of me then
        repeat until i > endline
          colorizeline startline + i
          add 1 to i
        end repeat
      end if
      exit repeat
    end if
  end repeat
  if oldchar is -1
  then select after line oldline of field "Editor Field"
  else select before char oldchar + newchars - 1 of line oldline of field "Editor Field"
end formatline

function reformatscript startline, endline
  local spaces, nspaces, fw, lw, continuation, gotthen, curline, newl, newdata
  put "                              " into spaces  put 0 into nspaces
  get line startline to endline of field "Editor Field"
  put it into newdata
  put false into continuation
  put true into gotthen
  put 1 into curline
  repeat for each line l in it
    put token 1 of l into fw
    if char 1 of fw is "#" or char 1 to 2 of fw is "--"
    then put l into line curline of newdata
    else
      put token -1 of l into lw
      if (fw is "end" or fw is "case" or fw is "default" or fw is "catch" or fw is "finally" or (fw is "else" and gotthen)) and nspaces > 0
      then subtract 2 from nspaces
      put char 1 to nspaces of spaces & word 1 to -1 of l into newl
      if newl is not l then put newl into line curline of newdata
      if the last char of l is "\" then
        if not continuation then
          put true into continuation
          add 4 to nspaces
          if word 1 of L is among the items of "on,function,getProp,setProp" then put 2 into nspaces
          else if word 1 of L is among the items of "repeat,case,switch,default,try,catch,finally" then add 2 to nspaces
        end if
      else
        put true into gotthen
        if continuation then
          put false into continuation
          subtract 4 from nspaces
        end if
        switch lw
        case "then"
        case "else"
          add 2 to nspaces
          break
        default
          switch fw
          case "if"
            if " else " is not in l
            then put false into gotthen
            break
          case "then"
            put false into gotthen
            break
          case "else"
            if token 2 of l is among the items of "if,repeat,switch,try"
            then put false into gotthen
            break
          case "repeat"
          case "case"
          case "switch"
          case "default"
          case "try"
          case "catch"
          case "finally"
            add 2 to nspaces
            break
          case "on"
          case "function"
          case "getprop"
          case "setprop"
            put 2 into nspaces
            break
          end switch
          break
        end switch
      end if
    end if
    add 1 to curline
  end repeat
  return newdata
end reformatscript

on runexternal whichline
  local ename, fname, dummy
  put the preferences["external editor"] of stack "Home" into ename
  put tempname() into fname
  open file fname for write
  write field "Editor Field" & cr to file fname
  close file fname
  put "See External Editor..." into field "Editor Field"
  set the cursor to watch
  if whichline is empty then put 1 into whichline
  put shell(ename && "+" & whichline && fname) into dummy
  open file fname for read
  read from file fname until eof
  if the last char of it is cr then delete last char of it
  put it into field "Editor Field"
  close file fname
  delete file fname
  select after line whichline of field "Editor Field"
  put setscript(true) into fname
end runexternal

on errorDialog which
  if line (item 1 of which) of field "Messages" of stack "Execution Error" contains "limit" then
    answer "Script length limit exceeded.  The MetaCard Starter Kit" \
        & cr & "only allows creating scripts with" && item 1 of the scriptLimits && "statements." \
        & cr & "Please see Licensing... in the Help menu for details."
  else
    set the executionerror of card 1 of stack "Execution Error" to which
    set the errorobject of card 1 of stack "Execution Error" to the long id of the target
    modeless "Execution Error"
    send "refresh" to card 1 of stack "Execution Error"
  end if
end errorDialog

function setscript doclose
  local ef, tline, tcol, savedscript, perror
  get the long id of me
  put "field" && quote & "Editor Field" & quote & "of " before it
  put it into ef
  get the scriptObject of me
  if it is empty \
      or (the number of lines in ef is 3 and line 2 of ef is "  "\
      and the script of it is empty) then
    if doclose then
      close this stack
      set the scriptObject of me to empty
      return true
    end if
  end if
  put the script of it into savedscript
  set the script of it to the text of ef
  put the result into perror
  if perror is not empty then
    set the script of it to savedscript
    set the scripterror of card 1 of stack "Script Error" to perror
    modal "Script Error"
    put field "Line" of stack "Script Error" into tline
    put field "Column" of stack "Script Error" into tcol
    if the preferences["use external editor"] of stack "Home"
    then runexternal tline
    else select before character tcol of line tline of ef
    return false
  else
    if doclose then
      close this stack
      if the openStacks contains "Execution Error"
      then close stack "Execution Error"
    end if
    if it is not empty
    then send "removeSelectedObject it" to field "Object Names" of stack "Script Errors"
    return true
  end if
end setscript

on resizeStack
  local cwidth, cheight
  put the width of me into cwidth
  put the height of me into cheight
  set the width of button "Menu Bar" to cwidth - 8
  set the right of button "Help" to cwidth - 8
  set the left of button "Menu Bar" to 4
  set the width of field "Editing Object" to cwidth
  set the width of field "Editor Field" to cwidth - 32
  set the height of field "Breakpoints Field" to cheight - 70
  set the height of field "Editor Field" to cheight - 70
end resizeStack

on openField force
  put true into notdoingclose
  if force is not empty and doneOpen
  then exit openField
  get the scriptObject of me
  if the history[it] of stack "Script Editor" is not empty
  then do "select after" && the history[it] of stack "Script Editor"
  put true into doneOpen
  send "setstart" && word 4 of the selectedChunk to stack "Script Find"
end openField

on mouseUp
  set history[the scriptObject of me] of stack "Script Editor" to empty
end mouseUp

on preOpenStack
  set the cursor to watch
  put false into doneOpen
  set the textFont of field "Editor Field" to the scriptTextFont
  set the textSize of field "Editor Field" to the scriptTextSize
  set the textSize of field "Breakpoints Field" to the scriptTextSize
  try
    switch
    case the errorObject of me is not empty and the scriptObject of me is empty
      get the errorObject of me
      set the scriptObject of me to it
      set the errorObject of me to empty
      put "Error Object:" && the long name of it into field "Editing Object"
      put the script of it into field "Editor Field"
      break
    case the scriptObject of me is not empty
      get the scriptObject of me
      put "Editing Object:" && the long name of it into field "Editing Object"
      put the script of it into field "Editor Field"
      break
    default
      exit preOpenStack
    end switch
  catch errornum
    answer error "Script is not available because stack is" & cr & "password protected or object can't be found."
    set the scriptObject of me to empty
    close this stack
    exit to MetaCard
  end try
  local otype, hnames
  get the scriptObject of me
  if word 2 of it is "id" or char 1 of word 2 of it is quote
  then put word 1 of it into otype
  else put word 2 of it into otype
  if field "Editor Field" is empty then
    local hname
    put "mouseUp" into hname
    if otype is "scrollbar" then put "scrollbarDrag" into hname
    if otype is "card" then put "openCard" into hname
    put "on" && hname & return & "  " & return & "end" && hname into field "Editor Field"
    set the history[it] of stack "Script Editor" to "line 2 of field 5"
    put 1 into handlerlines[hname]
  end if
  get the number of lines in field "Editor Field"
  setupbreakpoints it
  put reformatscript(1, it) into field "Editor Field"
  if the preferences["use external editor"] of stack "Home" then runexternal
  else if the docolor of me then colorizescript
  if the emacsKeyBindings then
    put "&Paste/Y" into line 4 of button "Edit"
    put "Select A&ll" into line 5 of button "Edit"
    put "&Find..." into line 1 of button "Tools"
  else
    put "&Paste/V" into line 4 of button "Edit"
    put "Select A&ll/A" into line 5 of button "Edit"
    put "&Find.../F" into line 1 of button "Tools"
  end if
end preOpenStack

on closeStack
  if the debuggingScript of stack "Script Editor" is the long id of me then
    stopDebug
    set the traceAbort to true
    set the traceReturn to true
  end if
  send "stopsearch" to field "Editor Field"
  put empty into field "Editing Object"
  put empty into field "Editor Field"
  close stack "Script Find"
end closeStack

on closeField
  savehistory
end closeField

on exitField
  if the selectedField is not empty then savehistory
end exitField

on enterInField
  set the history[the scriptObject of me] of stack "Script Editor" to the selectedChunk
  if the commandKey is down
  then setscript(false)
  else
    put false into notdoingclose
    get setscript(true)
  end if
end enterInField

on returnInField
  if the debuggingScript of stack "Script Editor" is the long id of me
  then send "menupick" && quote & "Step Over" & quote to button "Debug"
  else pass returnInField
end returnInField

on gethandlers
  local hnames
  put "Line..." & cr & "--" into hnames
  local hline
  put 1 into hline
  put empty into handlerlines
  repeat for each line l in field "Editor Field"
    if  word 1 of l is among the items of "on,function,getprop,setprop" then
      put cr & word 2 of l after hnames
      put hline into handlerlines[word 2 of l]
    end if
    add 1 to hline
  end repeat
  put cr & "--" after hnames
  get the customKeys of stack "Script Editor"
  sort it
  repeat for each line l in it
    delete char 1 to 8 of l
    delete last char of l
    if exists(l) then put cr & the name of l after hnames
  end repeat
  put hnames into button "Go"
end gethandlers

on gohandler which
  if the number of words in which > 1 then
    if setscript(false) then
      repeat for each line l in the customKeys of stack "Script Editor"
        delete char 1 to 8 of l
        delete last char of l
        if exists(l) and the name of l is which then
          if MCfindSE(l) then exit gohandler
          exitField
          set the scriptObject of me to l
          preOpenStack
          put false into doneOpen
          openField
          exit gohandler
        end if
      end repeat
    end if
  else select after line handlerlines[which] of field "Editor Field"
end gohandler

on setupbreakpoints nl
  put empty into field "Breakpoints Field"
  put empty into line nl + 3 of field "Breakpoints Field"
  repeat for each line l in the breakpoints
    if item 1 of l is the scriptObject of me
    then put numToChar(183) into line (item 2 of l) of field "Breakpoints Field"
  end repeat
end setupbreakpoints

on colorizescript
  if tokencolors["if"] is empty then setupcolors
  local s
  put field "Editor Field" into s
  put s into field "Editor Field"
  go to card 2
  local curword
  put 1 into curword
  repeat for each word w in s
    if tokencolors[w] is not empty
    then set the textColor of word curword of field "Editor Field" of card 1 to tokencolors[w]
    add 1 to curword
  end repeat
  local oldline, cline, curline, nwords
  put min(lineoffset("#", s), lineoffset("--", s)) into oldline
  put 0 into cline
  repeat while oldline is not 0
    add oldline to cline
    put line cline of s into curline
    put the number of words in curline into nwords
    repeat with curword = 1 to nwords
      if char 1 of word curword of curline is "#" or char 1 to 2 of word curword of curline is "--" then
        set the textColor of word curword to nwords of line cline of field "Editor Field" of card 1 to "DarkOrchid4"
        exit repeat
      end if
    end repeat
    put min(lineoffset("#", s, cline), lineoffset("--", s, cline)) into oldline
  end repeat
  go to card 1
  unlock screen
end colorizescript

on setupcolors
  repeat for each word w in the commandNames
    put "blue" into tokencolors[w]
  end repeat
  repeat for each word w in "if then else repeat for with while on end switch case getprop setprop"
    put "Brown" into tokencolors[w]
  end repeat
  repeat for each word w in the functionNames
    put "DarkOrange" into tokencolors[w]
  end repeat
  repeat for each word w in the propertyNames
    put "red" into tokencolors[w]
  end repeat
end setupcolors

on savehistory
  if notdoingclose and the short name of the selectedField is "Editor Field" then
    set the history[the scriptObject of me] of stack "Script Editor" to the selectedChunk
    put false into notdoingclose
  end if
end savehistory

function closeCheck
  get the scriptObject of me
  if it is empty or there is no it or the script of it is field "Editor Field" & cr \
      or the number of lines in field "Editor Field" is 3 \
      and line 2 of field "Editor Field" is "  " then return true
  answer "Save changes?" with "Yes" or "No" or "Cancel"
  switch it
  case "Yes"
    savehistory
    return setscript(true)
  case "No"
    return true
  default
    return false
  end switch
end closeCheck

on closeStackRequest
  if closeCheck() then pass closeStackRequest
end closeStackRequest
          4      history    1card id 1001 of stack "/home/raney/mc/mchome.mc"  char 508 to 511 of field 1      -   )   +   .      /      !   "   0      &    	@          XÂ
   ! Prompt                  ( P            Search for: 
   " Buffer                P (            setscri     	Menu Bar ŕA'        ,           	        - File  ĹUHlocal oldprompt

on restorePrompt
  put oldprompt into field "Editing Object"
end restorePrompt

on saveFile fname
  put field "Editing Object" into oldprompt
  put "Saving to file" && fname into field "Editing Object"
  send "restorePrompt" to me in 2 seconds
  put field "Editor Field" into url ("file:" & fname)
end saveFile

on menuPick which
  switch which
  case "Save Script"
    get the savedfilenames[the scriptObject of this card] of stack "Script Editor"
    if it is not empty then
      saveFile it
      exit menuPick
    end if
  case "Save Script As..."
    ask file "Save script as:"
    if it is empty then exit menuPick
    saveFile it
    break
  case "Print Script"
    start using stack "Print Field"
    printfield field "Editing Object" & tab & tab & "<%pagenumber%>",\
        field "Editor Field", "<%the time%> <%the date%>", the long id of field "Editor Field"
    stop using stack "Print Field"
    break
  case "Close Script"
    if closeCheck()
    then close this stack
    break
  case "Apply Script"
    get setscript(false)
    break
  end switch
end menuPick
          $    N&Save Script
Save Script &As...
&Print Script
&Close Script/W
App&ly Script/L      	        ) Edit  ĹUon menuPick which
  local startchar, endchar, nchars, doit, tscroll
  switch which
  case "Undo"
    undo
    break
  case "Cut"
    cut
    break
  case "Copy"
    copy
    break
  case "Paste"
    if the clipboard is "text" then paste
    break
  case "Select All"
    if the selectedField is not empty then
      if the lockText of the selectedField then exit to MetaCard
      select text of the selectedField
    end if
    break
  default
    if the selectedChunk is empty
    then exit menuPick
    put the scroll of field "Editor Field" into tscroll
    put word 2 of the selectedChunk into startchar
    put word 4 of the selectedChunk into endchar
    select before field "Editor Field"
    get field "Editor Field"
    repeat until char startchar of it is empty or char startchar of it is return
      subtract 1 from startchar
    end repeat
    add 1 to startchar
    get char startchar to endchar of field "Editor Field"
    put true into doit
    repeat with i = 1 to the number of characters in it
      if char i of it is return
      then put true into doit
      else
        if which is "Comment Selection" then
          if doit and char i of it is not space then
            put "# " before char i + startchar + nchars - 1 of field "Editor Field"
            put false into doit
            add 2 to nchars
          end if
        end if
      else
        if doit and char i of it is "#" then
          delete char i + startchar - nchars - 1 of field "Editor Field"
          if char i + startchar - nchars - 1 of field "Editor Field" is space then
            delete char i + startchar - nchars - 1 of field "Editor Field"
            add 2 to nchars
          else add 1 to nchars
          put false into doit
        end if
      end if
    end repeat
    select before char startchar of field "Editor Field"
    set the scroll of field "Editor Field" to tscroll
    break
  end switch
end menuPick
        0  $    c&Undo/Z
Cu&t/X
&Copy/C
&Paste/Y
Select A&ll
-
Comment &Selection
Unco&mment Selection
-
Set Marker      	        . Debug  ĹUŃon mouseDown
  local doenable, mi
  if the tracemode of stack "Script Editor" is "Trace"
  then put "Stop Trace/T" into line 5 of me
  else put "Trace/T" into line 5 of me
  put the debuggingScript of stack "Script Editor" is not empty into doenable
  repeat with i = 1 to 5
    set the enabled of line i of me to doenable
  end repeat
  set the enabled of line 13 of me to not doenable
  delete line 14 to -1 of me
  if not doenable then
    repeat for each line l in field "Editor Field"
      if word 1 of l is "on" then put cr & tab & word 2 of l after mi
    end repeat
    put mi after me
  end if
end mouseDown

on menuPick which
  set the itemDelimiter to "|"
  switch item 1 of which
  case "Abort"
    stopDebug
    set the traceStack to empty
    set the traceAbort to true
    set the traceReturn to true
    break
  case "Run"
    stopDebug
    set the traceStack to empty
    set the traceReturn to true
    break
  case "Step Into"
  case "Step Over"
  case "Trace"
    set the traceStack to MCtargetstack(the scriptObject of this card)
    set the tracemode of stack "Script Editor" to which
    set the traceReturn to true
    break
  case "Stop Trace"
    MCcancelTR
    break
  case "Clear all breakpoints"
    set the breakpoints to empty
    setupbreakpoints the number of lines of field "Editor Field"
    break
  case "Send Message"
    send item 2 of which to the scriptObject of this card
    break
  default
    palette which
    break
  end switch
end menuPick
        t  8    Abort/.
Run/R
Step Into/I
Step Over/M
Trace/T
-
Clear all breakpoints
-
Variable Watcher
Message Watcher
Execution Contexts
-
Send Message      	         Tools  ĹUIon mouseDown
  if the docolor of this card
  then hilite menuItem 9 of me
  else unhilite menuItem 9 of me
  if the explicitVars
  then hilite menuItem 10 of me
  else unhilite menuItem 10 of me
  if the platform is "MacOS" or the platform is "Win32"
  then disable menuItem 8 of me
  else enable menuItem 8 of me
end mouseDown

on menuPick which
  local t
  switch which
  case "Find..."
    send "doFind" && word 2 of the name of this stack to stack "Script Find"
    break
  case "Find Again"
    send "mouseUp" to button "Find Next" of stack "Script Find"
    break
  case "Replace..."
    send "doReplace" && word 2 of the name of this stack to stack "Script Find"
    break
  case "Replace Again"
    send "mouseUp" to button "Replace" of stack "Script Find"
    break
  case "Lookup Selection..."
    send "lookupterm the selectedText" to field "Editor Field"
    break
  case "Run External Editor..."
    if the selectedLine is empty
    then runexternal 0
    else runexternal word 2 of the selectedLine
    break
  case "Colorize Script"
    set the docolor of this card to not the docolor of this card
    if the docolor of this card
    then colorizescript
    else put field "Editor Field" into field "Editor Field"
    break
  case "Explicit Variables"
    set the explicitVars to not the explicitVars
    break
  end switch
end menuPick
       Ź  0    docolor  true   Find.../F
Find Again/G
-
Replace...
Replace Again/T
-
Lookup Selection...
Run External Editor...
!nColorize Script
!cExplicit Variables      	        + Go  ĹU îon mouseDown
  gethandlers
end mouseDown

on menuPick which
  if which is "Line..." then
    ask "Go to line:"
    if it is a number then
      select before line it of field "editor field"
    end if
  else gohandler which
end menuPick
        T       pLine...
--
init
errorDialog
returnInField
prevline
nextline
commandKeyDown
controlKeyDown
handleKey
arrowKey
--      	     
   0 Breakpoints Field 	x  Âon mouseUp
  local cl
  put word 2 of the clickLine into cl
  if line cl of field "Editor Field" is empty then exit mouseUp
  get the breakpoints
  if line cl of me is empty then
    put numToChar(183) & cr into the clickLine
    put cr & the scriptObject of this card, cl after it
  else
    put cr into the clickLine
    delete line lineOffset(the scriptObject of this card & comma & cl, it) of it
  end if
  set the breakpoints to it
end mouseUp
         ÜÜÜÜÜÜ      @ ş                                                                                                                                                                                               / Help  ĹU đon menuPick which
  switch which
  case "Editing..."
    go to card "Script Editor" of stack "Dialog Box Help"
    break
  case "Debugging..."
    go to card "Script Debugger" of stack "Dialog Box Help"
    break
  end switch
end menuPick
      ü  0    docolor  true   Editing...
Debugging...      	     
    Editor Field Ó)p|local tmarkchar
local searchmark, searching, lastsearch
local cx

on rawKeyUp
  if the docolor of this card
  then colorizeline word 2 of the selectedLine of me
  send "setstart" && word 4 of the selectedChunk to stack "Script Find"
end rawKeyUp

on doselect
  local foundpos
  put offset(field "Buffer", me, tmarkchar) into foundpos
  if foundpos is 0
  then beep 1
  else select before char foundpos + tmarkchar + length(field "Buffer") of me
end doselect

on stopsearch
  hide field "Prompt"
  put field "Buffer" into lastsearch
  hide field "Buffer"
  show field "Editing Object"
  put false into searching
end stopsearch

on optionKeyDown which
  if searching then
    put which after field "Buffer"
    doselect
  else pass optionKeyDown
end optionKeyDown

on keyDown which
  switch
  case searching
    put which after field "Buffer"
    doselect
    break
  case cx
    switch which
    case "["
      select before char 1 of me
      break
    case "]"
      select after last char of me
      break
    end switch
    put false into cx
    break
  default
    pass keyDown
    break
  end switch
end keyDown

on backSpaceKey
  if searching then
    delete last char of field "Buffer"
    doselect
  else pass backSpaceKey
end backSpaceKey

on deleteKey
  if searching then
    delete last char of field "Buffer"
    doselect
  else pass deleteKey
end deleteKey

on tabKey
  stopsearch
  formatline
end tabKey

on selectionChanged
  stopsearch
  send "setstart" && word 4 of the selectedChunk to stack "Script Find"
end selectionChanged

on escapeKey
  if the commandKey is "down"
  then close this stack
  else stopsearch
end escapeKey

on arrowKey
  stopsearch
  pass arrowKey
end arrowKey

on returnInField
  if searching then
    stopsearch
    put word 2 of the selectedChunk into tmarkchar
  else pass returnInField
end returnInField

on commandKeyDown which
  local wassearching
  put searching into wassearching
  if which is "65507" or which is "65509" then put empty into which
  if which is not empty and which is not "s" and which is not "f" then stopsearch
  switch which
  case "["
    select before char 1 of me
    break
  case "]"
    select after last char of me
    break
  case ""
    break
  case " "
    put word 2 of the selectedChunk into tmarkchar
    break
  case "g"
    if wassearching
    then select before char searchmark of me
    else pass commandKeyDown
    break
  case "s"
    if wassearching then
      if field "Buffer" is empty
      then put lastsearch into field "Buffer"
      else put word 2 of the selectedChunk into tmarkchar
      doselect
    else
      hide field "Editing Object"
      show field "Prompt"
      put empty into field "Buffer"
      show field "Buffer"
      put word 2 of the selectedChunk into tmarkchar
      put tmarkchar into searchmark
      put true into searching
    end if
    break
  case "w"
    if the emacsKeyBindings
    then cut char tmarkchar to (word 2 of the selectedChunk) of field "Editor Field"
    else pass commandKeyDown
    break
  case "x"
    if the emacsKeyBindings
    then put true into cx
    else pass commandKeyDown
  default
    put false into cx
    pass commandKeyDown
    break
  end switch
end commandKeyDown

on lookupterm which
  if which is among the items of "then,else,end" then put "if" into which
  if which is among the items of "with,while,for,until" then put "repeat" into which
  if which is among the items of "case,default,break" then put "switch" into which
  if which is among the items of "catch,finally" then put "try" into which
  if there is a card which of stack "MetaTalk Reference"
  then go to card which of stack "MetaTalk Reference"
  else beep 1
end lookupterm

on mouseUp
  if the commandKey is "down" and the optionKey is "down" then
    savehistory
    close this stack
  else lookupterm the clickText
end mouseUp

on scrollbarDrag which
  set the scroll of field "Breakpoints Field" to the scroll of me
end scrollbarDrag
           ÜÜÜÜÜÜ   @  @ş                   	`       A Ľ       	a       ĺ˙ 
    Editing Object                 (4                Script Profiler   on openCard
  
end openCard
       L5t        Â@˙˙˙˙     W 
Helvetica   U 
Helvetica   U 
helvetica   ę    	PQlocal currentobject
local oldscript
local lasttime, lastpoint
local profilelines, profiletimes

on trace handlername, l, p
  local newtime
  put the milliseconds into newtime
  add 1 to profilelines[lastpoint]
  add newtime - lasttime to profiletimes[lastpoint]
  put the long id of the target, l into lastpoint
  put the milliseconds into lasttime
  set traceReturn to true
end trace

on traceDone
  local newtime
  put the milliseconds into newtime
  add 1 to profilelines[lastpoint]
  add newtime - lasttime to profiletimes[lastpoint]
  put 0 into lastpoint
  set the defaultStack to "Script Profiler"
  getscript
  set traceReturn to true
end traceDone

on getscript
  local s, pt, nlines, dl, dt, bp
  put the script of currentobject into s
  put keys(profilelines) into pt
  if pt contains currentobject then
    set the cursor to watch
    lock screen
    set the leftmargin of field "Script" to 120
    put the number of lines in the script of currentobject into nlines
    set the endValue of scrollbar "psb" to nlines + 1
    set the thumbPos of scrollbar "psb" to 0
    set the thumbSize of scrollbar "psb" to the height of field "Lines"\
        div the effective textHeight of field "Lines"
    send "scrollbarDrag" to scrollbar "psb"
    put empty into line nlines + 1 of dl
    put empty into line nlines + 1 of dt
    repeat for each line l in pt
      if item 1 of l is currentobject then
        put profilelines[l] into line (item 2 of l) of dl
        put profiletimes[l] into line (item 2 of l) of dt
      end if
    end repeat
    local startline, cline, total
    put empty into startline
    put 1 into cline
    put 0 into total
    repeat for each line l in s
      if word 1 of l is "on" or word 1 of l is "function" then
        if startline is not empty
        then put total into line startline of dt
        put cline into startline
        put 0 into total
      end if
      add line cline of dt to total
      add 1 to cline
    end repeat
    if startline is not empty
    then put total into line startline of dt
    put dl into field "Lines"
    put dt into field "Times"
    show group "Profile"
    unlock screen
  else
    set the leftmargin of field "Script" to 8
    hide group "Profile"
    put empty into button "Message"
    repeat for each line l in s
      if word 1 of l is "on" or word 1 of l is "function"
      then put word 2 of l & return after button "Message"
    end repeat
    set the menuHistory of button "Message" to 1
  end if
  put s into field "Script"
end getscript

on suspendStack
  if currentobject is not empty
  then put the script of currentobject into oldscript
end suspendStack

on resumeStack
  if currentobject is not empty and the script of currentobject is not oldscript
  then getscript
end resumeStack

on mouseUp
  local tname, bp, targetname
  put the short name of the target into tname
  switch tname
  case "Edit Script..."
    if the label of button "Send Message" is not empty then
      answer format("Can't edit script while it is executing.\nPress \"Run\" to continue.")
      exit to MetaCard
    end if
    edit script of currentobject
    break
  case "Start Profile"
    if the label of the target is "Stop Profile" then
      set the label of button "Start Profile" to empty
      remove script of me from front
      set the traceStack to empty
    else
      set the label of button "Start Profile" to "Stop Profile"
      set the traceStack to the label of button "Stack Name"
      insert script of me into front
    end if
    break
  case "Send Message"
    if the label of the target is empty then
      put the label of button "Object Name" into targetname
      if word 1 of the label of button "Object Name" is not "stack"
      then put " of stack" && quote & the label button "Stack Name" & quote after targetname
      send the label of button "Message" to targetname
    end if
    break
  default
    pass mouseUp
  end switch
end mouseUp

on setobj oname
  put oname into currentobject
  getscript
end setobj

on clearprofile
  put empty into profilelines
  put empty into profiletimes
  set the label of button "Start Profile" to empty
end clearprofile

on preOpenStack
  if the long id of the target is not the long id of me then exit preOpenStack
  local oname
  choose browse tool
  send "newTool" to stack "MetaCard Menu Bar"
  if the short name of the topStack is "Script Profiler" then
    put empty into field "Script"
    exit to MetaCard
  end if
  if the openStacks contains "Execution Error" then
    put field "Object" of stack "Execution Error" into currentobject
    put word 1 to 2 of currentobject into oname
    put the long id of currentobject into currentobject
    setbp field "Line" of stack "Execution Error"
    setobj currentobject
    set the label of button "Stack Name" to the short name of the traceStack
    send "getsibs" to button "Object Name"
    set the label of button "Object Name" to oname
  else
    set the label of button "Stack Name" to the short name of the topStack
    send "refresh" to button "Object Name"
  end if
end preOpenStack

on closeStack
  if the label of button "Start Profile" is "Stop Profile" then
    set the label of button "Start Profile" to empty
    remove script of me from front
    set the traceStack to empty
  end if
  put empty into field "Script"
end closeStack

on resizeStack
  if the long id of the target is not the long id of me then exit resizeStack
  local tvscroll, tsscroll
  local cwidth, bwidth, bnames, cheight, inc, bpos, newheight
  put the scroll of field "Script" into tsscroll
  put the width of this stack into cwidth
  set the width of field "Script" to cwidth - 16
  set the right of scrollbar "psb" to the right of field "Script" - 2
  set the right of button "Start Profile" to cwidth - 8
  set the right of button "Help" to the left of button "Start Profile" - 16
  set the right of button "Clear Profile" to cwidth - 8
  set the width of button "Stack Name" to the left of button "Start Profile" - the left of button "Stack Name" - 16
  set the width of button "Object Name" to the left of button "Start Profile" - the left of button "Object Name" - 16
  set the width of button "Message" to the left of button "Start Profile" - the left of button "Message" - 16
  set the right of button "Edit Script..." to cwidth - 8
  put 0 into bwidth
  put "Help,Send Message,Edit Script...,Done" into bnames
  repeat for each item i in bnames
    add the width of button i to bwidth
  end repeat
  put the height of this stack into cheight
  put max(0, (cwidth - bwidth) div (the number of items in bnames + 1)) into inc
  put inc into bpos
  repeat for each item i in bnames
    set the left of button i to bpos
    add the width of button i + inc to bpos
    set the bottom of button i to cheight - 12
  end repeat
  put the top of button "Help" - the bottom of field "Script Label" - 16 into newheight
  set the height of field "Script" to newheight
  set the height of field "Lines" to newheight
  set the height of field "Times" to newheight
  set the height of scrollbar "psb" to newheight
  set the scroll of field "Script" to tsscroll
  set the scroll of field "Lines" to tsscroll
  set the scroll of field "Times" to tsscroll
end resizeStack
           5t  ˙    ď      đ    ň  í    ë  ý     
  ţ
  ˙             8            Stack:   
 Profile   !       ˙ü `3 ŕ
   Lines `         0 ź        ę 5    5  5  5      5  5   
   Times `       4  D ź        ę 17    1  2  1      2  10     	 psb Ip ôon scrollbarDrag v
  lock screen
  multiply v by the effective textHeight of field "Lines"
  set the scroll of field "Lines" to v
  set the scroll of field "Times" to v
  set the scroll of field "Script" to v
  unlock screen
end scrollbarDrag
          ź  ˙˙˙˙˙ 0  10       
             x d <            Script: 
     @         d <            	# calls: 
     @       < d <            Time:   ţ Stack Name č4)u Con menuPick
  send "refresh" to button "Object Name"
end menuPick
        <   Dialog Box Help      MC Toplevel Menu        	  ę 	  é    Start Profile ŕE`      Ń  \        	     
  ď            ( <            Object:    Object Name č´)uŢon getsibs
  local objs
  set the defaultStack to the label of button "Stack Name"
  put the name of this stack & return & the name of this card into objs
  repeat with i = 1 to the number of controls on this card
    if the number of lines in script of control i > 2
    then put return & the name of control i after objs
  end repeat
  set the defaultStack to "Script Profiler"
  put objs into me
end getsibs

on refresh
  getsibs
  set the label of me to line 2 of me
  setobj the long id of this card of stack the label of button "Stack Name"
end refresh

on menuPick which
  set the defaultStack to the label of button "Stack Name"
  get the long id of which
  set the defaultStack to "Script Profiler"
  setobj it
end menuPick
        @ ,  card "Script Debugger"        ?stack "Dialog Box Help"
card "Script Debugger"
group "Dialogs"        	  ę 	  é    Clear Profile ŕEp 3on mouseUp
  clearprofile
  getscript
end mouseUp
       Ń , \        	     
  đ            H P            	Message:    Message č4)u Łon menuPick which
  set the scroll of field "Script" to (lineOffset("on" && which, field "Script") - 1) * the effective textHeight of field "Script"
end menuPick
        T Lm               	  ę 	  é 
  ň Script Label           d <            Script: 
  í Script 	`        % ź        ę    ő    	`         ş   Help ŕEŤp Ron mouseUp
  go to card "Script Profiler" of stack "Dialog Box Help"
end mouseUp
        5L -         	       ë Send Message ŕEŤ`       L r        	         Done ŕEŤp +on mouseUp
  close this stack
end mouseUp
       ÍL 2        	       ý Edit Script... ŕE`      >L Z        	       ů Control Browser         Í úW        P ¨˙˙˙˙     U 
Helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   ę    	PClocal cardid

on preOpenCard
  set the label of button "Stack Name" to the short name of the topStack
  refresh
end preOpenCard

on closeCard
  put empty into field "Controls"
end closeCard

on enablecontrols
  repeat for each item i in "Edit Script...,Visible"
    enable button i
  end repeat
  if the visible of the selobj
  then set the label of button "Visible" to "Hide"
  else set the label of button "Visible" to "Show"
  if char 1 of line (the hilitedLine of field "Controls") of field "Controls" is not space then
    enable button "Raise"
    enable button "Lower"
  end if
end enablecontrols

on disablecontrols
  repeat for each item i in "Edit Script...,Raise,Lower,Visible"
    disable button i
  end repeat
end disablecontrols

on refresh
  local l, pad, cname, groupcontrols, isvis, nopw, nlines
  lock screen
  set the defaultStack to the label of button "Stack Name"
  put empty into l
  put empty into pad
  put 0 into groupcontrols
  put the passkey of this stack is empty into nopw
  repeat with i = 1 to the number of controls
    if the visible of control i then put empty into isvis else put "+" into isvis
    if nopw then put the number of lines in the script of control i into nlines
    if nlines is 0 then put empty into nlines
    put pad & line 1 of the name of control i into cname
    if the length of cname > 30
    then put "..." into char 28 to -1 of cname
    put cname & tab & nlines & tab & isvis & return after l
    if word 1 of the name of control i is "group" then
      if pad is empty
      then put the number of layers in control i into groupcontrols
      else
        subtract the number of layers in control i from the last item of groupcontrols
        put comma & the number of layers in control i after groupcontrols
      end if
      put "  " after pad
    end if
    if pad is not empty then
      repeat while pad is not empty and last item of groupcontrols <= 0
        delete last item of groupcontrols
        delete char 1 to 2 of pad
      end repeat
      if pad is not empty then subtract 1 from last item of groupcontrols
    end if
  end repeat
  delete last char of l
  put the id of this card into cardid
  set the defaultStack to the owner of me
  set the defaultStack to "Control Browser"
  put l into field "Controls"
  if the selObj is not empty
  then get the name of the selObj
  else get empty
  if it is empty or word 1 of it is "stack" \
      or (word 1 of it is "card" and (word 2 of it is "id" or char 1 of word 2 of it is quote)) then
    disablecontrols
    set the hilitedLine of field "Controls" to empty
  else
    set the hilitedLine of field "Controls" to the layer of the selobj
    enablecontrols
  else
  end if
  unlock screen
end refresh

on checkStack
  if the the label of button "Stack Name" is not among the lines of the openstacks then
    set the label of button "Stack Name" to the short name of the topStack
    put 0 into cardid
  end if
  set the defaultStack to the label of button "Stack Name"
  if the id of this card is not cardid then
    set the defaultStack to the owner of me
    refresh
  end if
  set the defaultStack to "Control Browser"
end checkStack

on mouseEnter
  checkStack
end mouseEnter

on resizeStack
  local cwidth, cheight, bnames, bwidth, inc, bpos
  put the width of this stack into cwidth
  put the height of this stack into cheight
  set the width of button "Stack Name" to cwidth - 64
  set the width of field "Controls" to cwidth - 16
  set the height of field "Controls" to cheight - 120
  set the right of field "Script" to cwidth div 4 * 3
  set the left of field "Hidden" to cwidth - 96
  set the tabstops of field "Controls" to the left of field "Script", the left of field "Hidden"
  put "Edit Script...,Raise,Lower,Visible,Help" into bnames
  repeat for each item i in bnames
    add the width of button i to bwidth
  end repeat
  put max(0, (cwidth - bwidth) div (the number of items in bnames + 1)) into inc
  put inc into bpos
  repeat for each item i in bnames
    set the left of button i to bpos
    add the width of button i + inc to bpos
    set the bottom of button i to cheight - 12
  end repeat
end resizeStack
           W  ě  í  î  ÷  ř  ë  ń  ň  ó  ô  ů
  ë 	Controls §)ron mouseUp
  refreshme
end mouseUp

on focusIn
  refreshme
end focusIn

on rawKeyUp
  refreshme
end rawKeyUp

on refreshme
  local cline
  get the scroll of me
  lock screen
  checkStack
  put hilitedLines of me into cline
  if cline is empty then exit refreshme
  if the number of items of cline > 1 then
    put item 2 of cline into cline
    set the hilitedLines of me to cline
  end if
  set the disabled of button "Raise" to char 1 of line cline of me is space
  set the disabled of button "Lower" to char 1 of line cline of me is space
  if the tool is not "pointer tool" then
    choose pointer tool
    send "newTool" to stack "MetaCard Menu Bar"
  end if
  set the defaultStack to the label of button "Stack Name"
  select control cline
  set the defaultStack to "Control Browser"
  enablecontrols
  set the scroll of me to it
  unlock screen
end refreshme

on mouseDoubleUp
  palette "Properties"
end mouseDoubleUp
         @ ß        Î6  ę    ő    	`      x A  Ý
  ě             4            Stack:   í Stack Name čt)u "on mouseUp
  refresh
end mouseUp
        < V  Variable Watcher  MC Stack Menu        	  ę 	  é 
  î            ( @            	Control:   ń Edit Script... ŕEp 4on mouseUp
  edit script of the selobj
end mouseUp
        / `         	       ň Raise ŕEp _on mouseUp
  set the layer of the selobj to the layer of the selobj + 1
  refresh
end mouseUp
        / 8         	       ó Lower ŕEp _on mouseUp
  set the layer of the selobj to the layer of the selobj - 1
  refresh
end mouseUp
        Č/ <         	       ô Visible ŕep Ěon mouseUp
  set the visible of the selobj to not the visible of the selobj
  if the visible of the selobj
  then set the label of me to "Hide"
  else set the label of me to "Show"
  refresh
end mouseUp
       / 0  Show         	     
  ÷ Script  @       Î ( a            Script Lines: 
  ř Hidden  @      6 ( @            Hidden:   ů Help ŕEp on mouseUp
  help
end mouseUp
       T/ 0         	       ˙ Properties  blocal onames

on refresh
 # exit refresh
  local ctype
  put the selectedObjects into onames
  switch
  case onames is empty
    go to last card
    break
  case the number of lines in onames > 1
    if the short name of this card is not "Layout"
    then go to card "Layout"
    break
  default
    put onames into ctype
    if word 1 of ctype is among the items of "card,bkgnd"\
        and word 2 of ctype is among the items of "field,button,image,player,scrollbar,graphic"
    then delete word 1 of ctype
    lock messages
    lock screen
    go to card (word 1 of ctype && "properties")
    if the lookAndFeel is "Macintosh" or the lookAndFeel is "Appearance Manager"
    then set the textsize of button 1 to 10
    else set the textsize of button 1 to empty
    send "getprops" to this card
    set the title of me to the short name of this card
    unlock screen
    unlock messages
  end switch
end refresh

function additem oitem, nitem
  if oitem is empty
  then return nitem
  else return oitem & comma & nitem
end additem

function unformat string
  local soffset
  put offset(return, string) into soffset
  repeat while soffset is not 0
    put "\n" into char soffset of string
    put offset(return, string) into soffset
  end repeat
  return string
end unformat

on preOpenStack
  refresh
end preOpenStack

on openCard
  if there is a field 1 then select text of field 1
end openCard

on closeCard
  local nfields
  put the number of fields of this card into nfields
  repeat with i = 1 to nfields
    if not the lockText of field i
    then put empty into field i
  end repeat
end closeCard

on doublechars @string, dchar
  local toffset, newoffset
  put 0 into toffset
  repeat forever
    put offset(dchar, string, toffset) into newoffset
    if newoffset is 0
    then exit repeat
    add newoffset to toffset
    put dchar after char toffset of string
    add 1 to toffset
  end repeat
end doublechars

on setproperty p, v
  local newvalue, setstring
  if onames is not empty then
    if p is "label" then
      doublechars v, "%"
      put format(v) into newvalue
    else put v into newvalue
    repeat for each line l in onames
      put format("set the %s of %s to newvalue\n", p, l) after setstring
    end repeat
    do setstring
    put the selectedObjects into onames
  end if
end setproperty

on closeField
  setproperty the short name of the target, the text of the target
end closeField

on mouseUp
  if word 1 of the name of the target is "button"
  then setproperty the short name of the target, the hilite of the target
end mouseUp

on menuPick v
  setproperty the short name of the target, v
end menuPick

on setbutton which, v
  set the hilite of button which to v
  setproperty which, v
end setbutton

on settextalign which
  setproperty "textAlign", which
  send "refresh" to stack "Font Chooser"
end settextalign

on scrollbarDrag newpos
  if word 1 of the name of the target is "scrollbar"
  then setproperty the short name of the target, newpos
end scrollbarDrag

on help
  local cname
  put word 1 of the short name of this card && the selectedText of button 1 into cname
  go to card cname of stack "Dialog Box Help"
end help
        )ş Đ         Stack Properties      U    W 
Helvetica   U false   U 	terminal   W 	terminal   W 	terminal   W 	terminal   W 	terminal  U 
Helvetica  U 
Helvetica   U 
Helvetica   U 
Helvetica  
 U 
Helvetica   U 
Helvetica   U 
helvetica   U 
helvetica  
 U    U   
 U 
helvetica   U symbol   ę Button Properties   	PZon getprops
  if word 1 of the selObj is not "button" and word 2 of the selObj is not "button"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "Name"
  else put empty into field "name"
  put the layer of the selectedObject into field "layer"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  put the mnemonic of the selectedObject into field "mnemonic"
  put unformat(the label of the selectedObject) into field "label"
  set the hilite of button "showName" to the showName of the selectedObject
  set the hilite of button "showBorder" to the showBorder of the selectedObject
  set the hilite of button "threeD" to the threeD of the selectedObject
  set the hilite of button "opaque" to the opaque of the selectedObject
  set the hilite of button "default" to the default of the selectedObject
  set the hilite of button "disabled" to the disabled of the selectedObject
  if the icon of the selectedObject is 0
  then put empty into field "icon"
  else put the icon of the selectedObject into field "icon"
  if the hiliteIcon of the selectedObject is 0
  then put empty into field "hiliteIcon"
  else put the hiliteIcon of the selectedObject into field "hiliteIcon"
  if the style of the selectedObject is "menu"
  then set the hilitedButtonName of group "Style" to the menuMode of the selectedObject
  else set the hilitedButtonName of group "Style" to the style of the selectedObject
  set the hilite of button "traversalOn" to the traversalOn of the selectedObject
  set the hilite of button "lockLocation" to the lockLocation of the selectedObject
  set the hilite of button "sharedHilite" to the sharedHilite of the selectedObject
  set the hilite of button "autoHilite" to the autoHilite of the selectedObject
  set the hilite of button "hiliteBorder" to the hiliteBorder of the selectedObject
  set the hilite of button "hiliteFill" to the hiliteFill of the selectedObject
  set the hilite of button "autoArm" to the autoArm of the selectedObject
  set the hilite of button "armBorder" to the armBorder of the selectedObject
  set the hilite of button "armFill" to the armFill of the selectedObject
  put the menuMouseButton of the selectedObject into field "menuMouseButton"
  put the toolTip of the selectedObject into field "toolTip"
  put the accelKey of the selectedObject into field "accelKey"
  put the accelText of the selectedObject into field "accelText"
  local mods
  put the accelMods of the selectedObject into mods
  set the hilite of button "Control" to mods contains "control"
  set the hilite of button "Alt" to mods contains "alt"
  set the hilite of button "Shift" to mods contains "shift"
  put the rightMargin of the selectedObject into field "rightMargin"
  put the menuName of the selectedObject into field "menuName"
  set the thumbpos of sb "borderWidth" to the borderWidth of the selectedObject
  set the thumbpos of sb "shadowOffset" to the shadowOffset of the selectedObject
  put the text of the selectedObject into field "text"
end getprops
           ş Đ  ë  ?  T  =         Field Properties   	P
on getprops
  if word 1 of the selObj is not "field" and word 2 of the selObj is not "field"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  put the layer of the selectedObject into field "layer"
  put the text of the selectedObject into field "text"
  set the hilite of button "showBorder" to the showBorder of the selectedObject
  set the hilite of button "threeD" to the threeD of the selectedObject
  set the hilite of button "opaque" to the opaque of the selectedObject
  set the hilite of button "dontWrap" to the dontWrap of the selectedObject
  set the hilite of button "showLines" to the showLines of the selectedObject
  set the hilite of button "fixedLineHeight" to the fixedLineHeight of the selectedObject
  set the hilite of button "hScrollbar" to the hScrollbar of the selectedObject
  set the hilitedButtonName of group "Style" to the style of the selectedObject
  put the margins of the selobj into field "margins"
  put the firstIndent of the selobj into field "firstIndent"
  put the tabStops of the selobj into field "tabStops"
  set the hilite of button "hGrid" to the hGrid of the selectedObject
  set the hilite of button "vGrid" to the vGrid of the selectedObject
  set the hilite of button "traversalOn" to the traversalOn of the selectedObject
  set the hilite of button "lockText" to the lockText of the selectedObject
  set the hilite of button "autoHilite" to the autoHilite of the selectedObject
  set the hilite of button "autoTab" to the autoTab of the selectedObject
  set the hilite of button "listBehavior" to the listBehavior of the selectedObject
  set the hilite of button "multipleHilites" to the multipleHilites of the selectedObject
  set the hilite of button "noncontiguousHilites" to the noncontiguousHilites of the selectedObject
  set the hilite of button "toggleHilites" to the toggleHilites of the selectedObject
  set the hilite of button "threeDHilite" to the threeDHilite of the selectedObject
  set the hilite of button "lockLocation" to the lockLocation of the selectedObject
  set the hilite of button "dontSearch" to the dontSearch of the selectedObject
  set the hilite of button "sharedText" to the sharedText of the selectedObject
  put the toolTip of the selectedObject into field "toolTip"
  set the thumbpos of sb "borderWidth" to the borderWidth of the selectedObject
  set the thumbpos of sb "shadowOffset" to the shadowOffset of the selectedObject
end getprops
           ş Đ    ţ  <        ? Image Properties   	Pşon getprops
  if word 1 of the selObj is not "image" and word 2 of the selObj is not "image"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  put the size of the selectedObject into field "size"
  put the layer of the selectedObject into field "layer"
  put the fileName of the selectedObject into field "fileName"
  set the hilite of button "showBorder" to the showBorder of the selectedObject
  set the hilite of button "threeD" to the threeD of the selectedObject
  set the hilite of button "lockLocation" to the lockLocation of the selectedObject
  set the hilite of button "traversalOn" to the traversalOn of the selectedObject
  set the hilite of button "alwaysBuffer" to the alwaysBuffer of the selectedObject
  put the width of the selobj into field "width"
  put the height of the selobj into field "height"
  put the hotSpot of the selobj into field "hotSpot"
  put the tooltip of the selobj into field "tooltip"
end getprops
           ş Đ  >  k      Ő  u Scrollbar Properties   	P on getprops
  if word 1 of the selObj is not "scrollbar" and word 2 of the selObj is not "scrollbar"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  put the layer of the selectedObject into field "layer"
  put the thumbSize of the selectedObject into field "thumbSize"
  put the thumbPosition of the selectedObject into field "thumbPosition"
  put the startValue of the selectedObject into field "startValue"
  put the endValue of the selectedObject into field "endValue"
  put the lineIncrement of the selectedObject into field "lineIncrement"
  put the pageIncrement of the selectedObject into field "pageIncrement"
  set the hilite of button "showValue" to the showValue of the selectedObject
  set the hilite of button "lockLocation" to the lockLocation of the selectedObject
  set the hilitedButtonName of group "style" to the style of the selectedObject
  put the numberFormat of the selectedObject into field "numberFormat"
  put the tooltip of the selectedObject into field "tooltip"
end getprops
           ş Đ  t          Ą Graphic Properties   )P	uon resetextras
  local gnames, gstyle
  put "polygon,oval,roundRect,regular" into gnames
  put the hilitedButtonName of group "Style" into gstyle
  repeat for each item i in gnames
    if i is gstyle
    then show group (i && "Extras")
    else hide group (i && "Extras")
  end repeat
end resetextras

on getprops
  if word 1 of the selObj is not "graphic" and word 2 of the selObj is not "graphic"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put unformat(the label of the selectedObject) into field "label"
  put the layer of the selectedObject into field "layer"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  set the hilite of button "traversalOn" to the traversalOn of the selectedObject
  set the hilite of button "lockLocation" to the lockLocation of the selectedObject
  set the hilite of button "showName" to the showName of the selectedObject
  set the hilite of button "showBorder" to the showBorder of the selectedObject
  set the hilite of button "threeD" to the threeD of the selectedObject
  set the hilite of button "filled" to the filled of the selectedObject
  set the hilite of button "startArrow" to the startArrow of the selectedObject
  set the hilite of button "endArrow" to the endArrow of the selectedObject
  set the hilite of button "roundEnds" to the roundEnds of the selectedObject
  set the thumbPos of sb "lineSize" to the lineSize of the selectedObject
  set the hilitedButtonName of group "style" to the style of the selectedObject
  if the hilite of button "relativePoints"
  then put the relativePoints of the selectedObject into field "points"
  else put the points of the selectedObject into field "points"
  set the hilite of button "dontResize" to the dontResize of the selectedObject
  set the thumbPos of sb "startAngle" to the startAngle of the selectedObject
  set the thumbPos of sb "arcAngle" to the arcAngle of the selectedObject
  set the thumbPos of sb "roundRadius" to the roundRadius of the selectedObject
  set the thumbPos of sb "polySides" to the polySides of the selectedObject
  set the thumbPos of sb "angle" to the angle of the selectedObject
  put the tooltip of the selectedObject into field "tooltip"
  resetextras
end getprops
           ş Đ     ˘  ą      ď Player Properties   )PRon getprops
  if word 1 of the selObj is not "player" and word 2 of the selObj is not "player"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put the layer of the selectedObject into field "layer"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  put the filename of the selectedObject into field "fileName"
  put the tooltip of the selectedObject into field "toolTip"
  set the hilite of button "traversalOn" to the traversalOn of the selectedObject
  set the hilite of button "showBorder" to the showBorder of the selectedObject
  set the hilite of button "lockLocation" to the lockLocation of the selectedObject
  set the hilite of button "alwaysBuffer" to the alwaysBuffer of the selectedObject
  set the hilite of button "showController" to the showController of the selectedObject
  set the hilite of button "showBadge" to the showBadge of the selectedObject
end getprops
           ş Đ  î    Ż  °  ľ  ˝  á  é Group Properties   	PLon getprops
  if word 1 of the selObj is not "group"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put the layer of the selectedObject into field "layer"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  put the label of the selectedObject into field "label"
  set the hilite of button "showName" to the showName of the selectedObject
  set the hilite of button "showBorder" to the showBorder of the selectedObject
  set the hilite of button "threeD" to the threeD of the selectedObject
  set the hilite of button "opaque" to the opaque of the selectedObject
  set the hilite of button "traversalOn" to the traversalOn of the selectedObject
  set the hilite of button "lockLocation" to the lockLocation of the selectedObject
  set the hilite of button "tabGroupBehavior" to the tabGroupBehavior of the selectedObject
  set the hilite of button "dontSearch" to the dontSearch of the selectedObject
  set the hilite of button "cantDelete" to the cantDelete of the selectedObject
  set the hilite of button "disabled" to the disabled of the selectedObject
  set the hilite of button "hScrollbar" to the hscrollbar of the selectedObject
  set the hilite of button "vScrollbar" to the vscrollbar of the selectedObject
  set the hilite of button "backgroundBehavior" to the backgroundBehavior of the selectedObject
  put the margins of the selectedObject into field "margins"
end getprops
           ş Đ  č  ;      , Card Properties   	Pşon getprops
  if word 1 of the selObj is not "card"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put the number of the selectedObject into field "number"
  put the short id of the selectedObject into field "id"
  set the hilite of button "showBorder" to the showBorder of the selectedObject
  set the hilite of button "threeD" to the threeD of the selectedObject
  set the hilite of button "dontSearch" to the dontSearch of the selectedObject
  set the hilite of button "cantDelete" to the cantDelete of the selectedObject
end getprops
           ş Đ  +  -      P Stack Properties   	Ppon setpass
  if the passkey of the selectedObject is the password of the selectedObject
  then set the label of button "Password" to "Password..."
  else set the label of button "Password" to "Passkey..."
end setpass

on getprops
  if word 1 of the selObj is not "stack"
  then exit to MetaCard
  if the name of the selectedObject is not the abbrev id of the selectedObject
  then put the short name of the selectedObject into field "name"
  else put empty into field "name"
  put the title of the selectedObject into field "title"
  put the menubar of the selectedObject into field "menubar"
  if the platform is "MacOS" then
    set the hilite of button "editMenus" to the editMenus of the selectedObject
    show button "editMenus"
  else hide button "editMenus"
  put the width of the selectedObject into field "width"
  put the height of the selectedObject into field "height"
  put the maxWidth of the selectedObject into field "maxWidth"
  put the maxHeight of the selectedObject into field "maxHeight"
  put the minWidth of the selectedObject into field "minWidth"
  put the minHeight of the selectedObject into field "minHeight"
  set the hilite of button "cantModify" to the cantModify of the selectedObject
  set the hilite of button "resizable" to the resizable of the selectedObject
  set the hilite of button "alwaysBuffer" to the alwaysBuffer of the selectedObject
  set the hilite of button "wmPlace" to the wmPlace of the selectedObject
  set the hilite of button "destroyStack" to the destroyStack of the selectedObject
  set the hilite of button "destroyWindow" to the destroyWindow of the selectedObject
  setpass
end getprops
           ş Đ  O  f  g    ~ Layout   	Póon mouseUp
end mouseUp
on menuPick
end menuPick

on preOpenCard
  disable button "Undo"
  pass preOpenCard
end preOpenCard

local nsaved,savednames,savedrects,savedlayers

on savelayout
  put the selectedObjects into savednames
  put the number of lines in savednames into nsaved
  if nsaved < 2 then exit to MetaCard
  enable button "Undo"
  get line 1 of savednames
  repeat with i = 1 to nsaved
    get line i of savednames
    put the rect of it into savedrects[i]
    put the layer of it into savedlayers[i]
  end repeat
end savelayout

on undolayout
  repeat with i = nsaved down to 1
    get line i of savednames
    set the rect of it to savedrects[i]
    set the layer of it to savedlayers[i]
  end repeat
  disable button "Undo"
end undolayout
           ş Đ     !  "  %        $    '  (  )  *                   No Control Selected   	@          ş Đ  ë Button Properties  Á}   yon menuPick newtab, oldtab
  hide group ("B" & oldtab)
  show group ("B" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   -Name
Appearance
Behavior
Accelerators
Extras        	        Field Properties  Á} 
  yon menuPick newtab, oldtab
  hide group ("F" & oldtab)
  show group ("F" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č    Name
Appearance
Behavior
Extras        	       > Image Properties  Á} 
  yon menuPick newtab, oldtab
  hide group ("I" & oldtab)
  show group ("I" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   Name
Extras        	       t Scrollbar Properties  Áu yon menuPick newtab, oldtab
  hide group ("S" & oldtab)
  show group ("S" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   Name
Appearance
Extras        	         Graphic Properties  Áu yon menuPick newtab, oldtab
  hide group ("G" & oldtab)
  show group ("G" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   Name
Appearance
Extras        	       č Group Properties  Á}   on menuPick newtab, oldtab
  hide group ("Group" & oldtab)
  show group ("Group" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   Name
Properties        	        Relayer ŕDp# This script relayers objects in the order they
# were selected.  The first object is used as the
# base, so you may want to set its layer first.
on mouseUp
  local onames, nnames, startcontrol, skiplayers
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  put line 1 of onames into startcontrol
  put -1 into skiplayers
  repeat with i = 2 to nnames
    get line i of onames
    set the layer of it to the layer of startcontrol + i + skiplayers
    if word 1 of it is "group"
    then add the number of layers of it - 1 to skiplayers
  end repeat
end mouseUp
         ¨ P        	  ~    
Align Top ŕDpĂ# This script aligns the tops of a set of selected
# objects to the top of the first object selected.
on mouseUp
  local onames, nnames, ycoord
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  put the top of it into ycoord
  repeat with i = 1 to nnames
    get line i of onames
    set the top of it to ycoord
  end repeat
end mouseUp
         < X        	  ~    Align Middle ŕDpĘ# This script aligns the middles of a set of selected
# objects to the middles of the first object selected
# If button 2 was pressed, center on the card.
on mouseUp which
  local onames, nnames, ycoord, cname
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  if which is 1
  then put the top of it + the height of it div 2 into ycoord
  else 
    put word 5 to (the number of words in it) of it into cname
    put the height of cname div 2 into ycoord
  end if
  repeat with i = 1 to nnames
    get line i of onames
    set the top of it to ycoord - the height of it div 2
  end repeat
end mouseUp
        l < d        	  ~    Align Bottom ŕDpĎ# This script aligns the bottoms of a set of selected
# objects to the center of the first object selected.
on mouseUp
  local onames, nnames, ycoord
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  put the bottom of it into ycoord
  repeat with i = 1 to nnames
    get line i of onames
    set the bottom of it to ycoord
  end repeat
end mouseUp
        Ř < d        	  ~     Align Left ŕDpÇ# This script aligns the lefts of a set of selected
# objects to the left of the first object selected.
on mouseUp
  local onames, nnames, xcoord
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  put the left of it into xcoord
  repeat with i = 1 to nnames
    get line i of onames
    set the left of it to xcoord
  end repeat
end mouseUp
          X        	  ~   ! Align Center ŕDpÉ# This script aligns the centers of a set of selected
# objects to the center of the first object selected.
# If button 2 was pressed, center on the card.
on mouseUp which
  local onames, nnames, cname, xcoord
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  if which is 1
  then put the left of it + the width of it div 2 into xcoord
  else 
    put word 5 to (the number of words in it) of it into cname
    put the width of cname div 2 into xcoord
  end if
  repeat with i = 1 to nnames
    get line i of onames
    set the left of it to xcoord - the width of it div 2
  end repeat
end mouseUp
        l  d        	  ~   " Align Right ŕDpË# This script aligns the rights of a set of selected
# objects to the right of the first object selected.
on mouseUp
  local onames, nnames, xcoord
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  put the right of it into xcoord
  repeat with i = 1 to nnames
    get line i of onames
    set the right of it to xcoord
  end repeat
end mouseUp
        Ř  d        	  ~   $ Same Height ŕDpĎ# This script sets the height of a set of selected
# objects to the height of the first object selected.
on mouseUp
  local onames, nnames, fheight
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  put the height of it into fheight
  repeat with i = 1 to nnames
    get line i of onames
    set the height of it to fheight
  end repeat
end mouseUp
       D < h        	  ~   % Same Width ŕDpČ# This script sets the width of a set of selected
# objects to the width of the first object selected.
on mouseUp
  local onames, nnames, fwidth
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  if nnames < 2
  then exit to MetaCard
  get line 1 of onames
  put the width of it into fwidth
  repeat with i = 1 to nnames
    get line i of onames
    set the width of it to fwidth
  end repeat
end mouseUp
       C  h        	  ~   ' Vertically ŕDpĺ# This script distributes the space between
# a set of selected objects in equal intervals
# between the first and last objects selected.
# Note that the first and last objects selected
# must be the top and bottom objects.
# If mouse button two is pressed, the objects
# will be distributed across the height of the card.
on mouseUp
  local onames, nnames, theight, starty, endy
  local perspace, toffset, cname, cheight
  local bottomobj, topobj
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  put 0 into theight
  switch the menuHistory of button "Distribution Method"
  case 1
    if nnames < 3
    then exit to MetaCard
    repeat with i = 2 to nnames -1
      get line i of onames
      add the height of it to theight
    end repeat
    get line 1 of onames
    put the bottom of it into starty
    get line nnames of onames
    put the top of it into endy
    put (endy - starty - theight) / (nnames -1) into perspace
    put starty + perspace into toffset
    repeat with i = 2 to nnames -1
      get line i of onames
      set the top of it to round(toffset)
      add the height of it + perspace to toffset
    end repeat
     break
  case 2
    if nnames < 1
    then exit to MetaCard
    repeat with i = 1 to nnames
      get line i of onames
      add the height of it to theight
    end repeat
    get line 1 of onames
    put word 5 to (the number of words in it) of it into cname
    put the height of cname into cheight
    put (cheight - theight) / (nnames + 1) into perspace
    put perspace into toffset
    repeat with i = 1 to nnames
      get line i of onames
      set the top of it to round(toffset)
      add the height of it + perspace to toffset
    end repeat
    break
  case 3
    if nnames < 2
    then exit to MetaCard
    repeat with i = 2 to nnames
      put line i of onames into bottomobj
      put line (i - 1) of onames into topobj
      set the top of bottomobj to the bottom of topobj
    end repeat
  end switch
end mouseUp
        ä | T        	  ~   ( Horizontally ŕDpá# This script distributes the space between
# a set of selected objects in equal intervals
# between the first and last objects selected.
# Note that the first and last objects selected
# must be the left and right objects.
# If mouse button two is pressed, the objects
# will be distributed across the width of the card.
on mouseUp
  local onames, nnames, twidth, startx, endx
  local perspace, toffset, cname, cwidth
  local leftobj, rightobj
  savelayout
  put the selectedObjects into onames
  put the number of lines in onames into nnames
  put 0 into twidth
  switch the menuHistory of button "Distribution Method"
  case 1
    if nnames < 3
    then exit to MetaCard
    repeat with i = 2 to nnames -1
      get line i of onames
      add the width of it to twidth
    end repeat
    get line 1 of onames
    put the right of it into startx
    get line nnames of onames
    put the left of it into endx
    put (endx - startx - twidth) / (nnames -1) into perspace
    put startx + perspace into toffset
    repeat with i = 2 to nnames -1
      get line i of onames
      set the left of it to round(toffset)
      add the width of it + perspace to toffset
    end repeat
    break
  case 2
    if nnames < 1
    then exit to MetaCard
    repeat with i = 1 to nnames
      get line i of onames
      add the width of it to twidth
    end repeat
    get line 1 of onames
    put word 5 to (the number of words in it) of it into cname
    put the width of cname into cwidth
    put (cwidth - twidth) / (nnames + 1) into perspace
    put perspace into toffset
    repeat with i = 1 to nnames
      get line i of onames
      set the left of it to round(toffset)
      add the width of it + perspace to toffset
    end repeat
    break
  case 3
    if nnames < 2
    then exit to MetaCard
    repeat with i = 2 to nnames
      put line i of onames into leftobj
      put line (i - 1) of onames into rightobj
      set the left of leftobj to the right of rightobj
    end repeat
    break
  end switch
end mouseUp
       D | `        	  ~   ) Font... ŕDp 1on mouseUp
  palette "Font Chooser"
end mouseUp
        l ¨ @        	  ~   * 
Colors... ŕDp 2on mouseUp
  palette "Color Chooser"
end mouseUp
        ź ¨ L        	  ~   + Card Properties  Áu on menuPick newtab, oldtab
  hide group ("Card" & oldtab)
  show group ("Card" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   Name
Properties        	       O Stack Properties  Á}   on menuPick newtab, oldtab
  hide group ("Stack" & oldtab)
  show group ("Stack" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   Name
Properties        	        CardProperties   a        @   ü   M    é        D $ x p  > showBorder  eŠ       H ( p  Show Border         	       ? threeD  eŠ       H D p  3D         	      E cantDelete  eŠ       H ` p  Can't Delete         	       D dontSearch  eŠ       H | p  Don't Search         	       I 
Script... ŔEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
        đ 0 H         	       J Font... ŔEŤp 1on mouseUp
  palette "Font Chooser"
end mouseUp
        đ P H         	       K 
Colors... ŔEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
        đ p H         	       N Custom Props... ŔEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
         ˘          	        GAppearance   !           ´  ç    Š          t Ź  Ç 	showName  eŠ          l  
Show Name         	       ł showBorder  eŠ        8 l  Show Border         	       ´ threeD  eŠ        P l  3D         	      ľ Filled  EŠ        h l         	       ¸ startArrow  eŠ         l  Start Arrow         	       Č 	endArrow  eŠ         l  
End Arrow         	       × 
roundEnds  eŠ        ° l  Round Ends         	    
  Ň             D            
lineSize:   Ń 	lineSize  é`       ¨ 4 , ,   0  63         Á Font... ŔEŤp 1on mouseUp
  palette "Font Chooser"
end mouseUp
        ŕ H T         	       Â 
Colors... ŔEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
        ŕ h T         	       ° Markers... ŕEŤp 2on mouseUp
  modal "Graphic Markers"
end mouseUp
        ŕ  T         	       É Style  é0 Zon mouseUp
  resetextras
  setproperty "style", the short name of the target
end mouseUp
       <  p ¤  Ę Polygon  EŠ      B 2 d         	       Ë Curve  EŠ      B J d         	       Ě 
Rectangle  EŠ      B b d         	       Í Oval  EŠ      B z d         	       Î 
roundRect  eŠ      B  d  Round Rect         	       Ď Regular  EŠ      B Ş d         	        
BBehavior   !          ¤      Š           V   traversalOn  eŠ        $ t  Traversal On         	       lockLocation  eŠ        B t  Lock Location         	        sharedHilite  eŠ        ^ t  Shared Hilite         	       autoHilite  eŠ       Ź & t  Auto Hilite         	      . hiliteBorder  dŠ       Ź B t  Hilite Border         	  ę  / hiliteFill  dŠ       Ź ^ t  Hilite Fill         	  ę  + autoArm  dŠ      0 & t  	Auto Arm         	  ę   - 
armBorder  dŠ      0 B t  Arm Border         	  ę  , armFill  dŠ      0 ^ t  	Arm Fill         	  ę   ř 
Script... ŔEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
         | T         	     
  # menuMouseButton  i`      | x $         ę  
  î toolTip  i`       \  D         ę  
             x d            Menu Button: 
  í              D            
Tool Tip:   T BAccelerators   !         "¨ 
  1            0 |            Accelerator Key: 
  2 	accelKey  i`        0 0         ę    8 Accelerator Modifiers  Š0Won mouseUp
  local styles
  put empty into styles
  if the hilite of button "Control"
  then put additem(styles, "control") into styles
  if the hilite of button "Alt"
  then put additem(styles, "alt") into styles
  if the hilite of button "Shift"
  then put additem(styles, "shift") into styles
  setproperty "accelMods", styles
end mouseUp
        Ô & Ô .  9 Control  DŠ       Ú : L         	  ę   : Alt  DŠ      . : 0         	  ę   ; Shift  DŠ      f : <         	  ę 
  5            ` |            Accelerator Text: 
  6 
accelText  i`        `          ę  
  3           ` d            Right Margin: 
  4 rightMargin  i`       ` (         ę  
  (             `            Menu Name: 
  ) 	menuName  i`       h  ä         ę    < Toplevel... ŔEŤp don mouseUp
  if there is a stack (field "menuName")
  then toplevel (field "menuName")
end mouseUp
       T  T         	     
              d             Distribution Method:    Distribution Method  ĺe        | Ź  Across Card    (First to Last Selected
Across Card
Abut        	     
             ŕ d P            Distribute:     ŕA`        `°         	         ŕA`        °         	       < FExtras   !         , ü 
  4            < l            Border Width:   5 borderWidth  éa       | 0  $˙O˙˙˙ 0  32       
  7            l l            Shadow Offset:   6 shadowOffset  éa       | `  $˙'˙˙˙ 0  64         8 Custom Properties... ŔEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
        D           	           D  ˙˙˙˙˙˙  eeeeee              °     ? < B             8          2 < ~ ç Ă Ă           1      Ŕ           X n =P < m ~ P ˙ P˙ žăžçĂ Ďm  8 > Z <  <  8 ( < đ < ö < đ ö   ­      Help ŕDp Ion mouseUp
  go to card "Layout" of stack "Dialog Box Help"
end mouseUp
       $ ¨ <        	  ~    Undo ŕDp %on mouseUp
  undolayout
end mouseUp
       l ¨ @        	  ~    New Button ŕA`    @     ,         	        help  )       ¨              help âC on mouseUp
  help
end mouseUp
       ¨                              	       ° regular Extras   !on setgprops
  set the startAngle of the selectedObject to the thumbPos of scrollbar "Start Angle"
  set the arcAngle of the selectedObject to the thumbPos of scrollbar "Arc Angle"
  pass setgprops
end setgprops

on resetGroups
  if the hilite of button "Oval"
  then show me
  else hide me
  if word 1 of gettarget() is "graphic" then
    set the thumbPos of scrollbar "Start Angle" to the startAngle of gettarget()
    set the thumbPos of scrollbar "Arc Angle" to the arcAngle of gettarget()
  end if
  pass resetGroups
end resetGroups
         $ \  ą 
polySides  éa       t ($ $Ó˙˙  #O 3  32         ˛ angle  éa       t X( $ę*  
 0  360       
  ł            4 l            Polygon Sides: 
  ´           < d 8            Angle:   ľ roundRect Extras   !{on setgprops
  set the roundRadius of the selectedObject to the thumbPos of scrollbar "Round Radius"
  pass setgprops
end setgprops

on resetGroups
  if the hilite of button "Round Rect"
  then show me
  else hide me
  if word 1 of gettarget() is "graphic"
  then set the thumbPos of scrollbar "Round Radius" to the roundRadius of gettarget()
  pass resetGroups
end resetGroups
         <  ,  ś roundRadius  éa       p @0 $;˙+˙  '˙ 0  64       
  ˇ            L h            Round Radius:   ˝ oval Extras   !on setgprops
  set the startAngle of the selectedObject to the thumbPos of scrollbar "Start Angle"
  set the arcAngle of the selectedObject to the thumbPos of scrollbar "Arc Angle"
  pass setgprops
end setgprops

on resetGroups
  if the hilite of button "Oval"
  then show me
  else hide me
  if word 1 of gettarget() is "graphic" then
    set the thumbPos of scrollbar "Start Angle" to the startAngle of gettarget()
    set the thumbPos of scrollbar "Arc Angle" to the arcAngle of gettarget()
  end if
  pass resetGroups
end resetGroups
         $ X  ž startAngle  éa       ` (@ $ě*  =Ź 0  360         ż 	arcAngle  éa       ` T@ $˙ţ*  =Ź 0  360       
  Ŕ            4 T            startAngle: 
  Á            ` L            
arcAngle:    
FBehavior   !         $Ź    1    Š         (¤ p  ' traversalOn  eŠ aon mouseUp
  if the hilite of me
  then setbutton "autoHilite", true
  pass mouseUp
end mouseUp
         , p  Traversal On         	       ( 	lockText  eŠ Won mouseUp
  setbutton "traversalOn", not the hilite of me
  pass mouseUp
end mouseUp
         H p  
Lock Text         	      % autoHilite  eŠ ˘on mouseUp
  setbutton "lockText", true
  setbutton "sharedText", true
  if not the hilite of me then setbutton "listBehavior", false
  pass mouseUp
end mouseUp
         d p  Auto Hilite         	      Ö autoTab  eŠ         p  	Auto Tab         	       } listBehavior  eŠ Ëon mouseUp
  if the hilite of me then
    setbutton "dontWrap", true
    setbutton "lockText", true
    setbutton "sharedText", true
    setbutton "autoHilite", true
  end if
  pass mouseUp
end mouseUp
         , ¨  List Behavior         	       - multipleHilites  dŠ        H ¨  Multiple Hilites         	     0 noncontiguousHilites  dŠ        d ¨  Noncontiguous Hilites         	     + toggleHilites  dŠ         ¨  Toggle Hilites         	     ) threeDHilite  dŠ      8 , t  
3D Hilite         	      lockLocation  eŠ      8 H t  Lock Location         	      , dontSearch  dŠ      8 d t  Don't Search         	     & sharedText  eŠ Don mouseUp
  setbutton "lockText", true
  pass mouseUp
end mouseUp
       8  t  Shared Text         	      " 
Script... ŔEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
         ¤ @         	     
  .           X ¤ D            
Tool Tip: 
  / toolTip  i`        ¤             k IExtras   !        
       S showBorder  eŠ        $ x  Show Border         	       T threeD  eŠ        < x  3D         	      V lockLocation  eŠ        T x  Lock Location         	       n traversalOn  eŠ        l x  Traversal On         	     
  h Width  i`       č ( 4         ?  
  j Height  i`       č P 4         ?  
  m hotSpot  i`       Ú x L         ?  
  Ú tooltip  i`       R   Ô         ?    r 
Script... ŔEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
       F ( L         	       b 
Colors... ŔEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
       F P L         	       s Custom Props... ŕEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
       2 x t         	       | Paint Tools... ŕEŤp 0on mouseUp
  palette "Paint Tools"
end mouseUp
       2   t         	     
  g           ° ( :            Width: 
  i           ° P :            Height: 
  l            x L            
Hot Spot: 
  Ů              D            
Tool tip:   í alwaysBuffer  eŠ         x  Always Buffer         	       SExtras   !        $ $s 
             l ( t            Number Format: 
  Ű           8 \ D            
Tool tip: 
   numberFormat  é`       ŕ ( p             
  Ü tooltip  i`       | \ Ô         u     
Colors... ŕEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
        (  L         	        
Script... ŕEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
          X         	        Custom Props... ŕEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
                  	       ą GExtras   !           @  â regular Extras   !           \  ă 
polySides  éa       x $$ $Ó˙˙  #O 3  32         ä angle  éa       x T( $  *  
 0  360       
  ĺ            0 l            Polygon Sides: 
  ć           @ ` 8            Angle:   ß roundRect Extras   !         8  ,  ŕ roundRadius  éa       t <0 $;˙+˙  '˙ 0  64       
  á            H h            Round Radius:   Ő polygon Extras  $           ¤ Points 
  Ö Points  )p on closeField
  if the hilite of button "relativePoints"
  then setproperty "relativePoints", me
  else setproperty "points", me
end closeField
        Ś 0 l         Ą    ×    	`       ý 1    Ř dontResize @eŠ       V   Don't Resize         	       Ů relativePoints @eŠ éon mouseUp
  if word 1 of the selobj is not "graphic"
  then exit to MetaCard
  if the hilite of me
  then put the relativePoints of the selobj into field "points"
  else put the points of the selobj into field "points"
end mouseUp
        :   Relative to topLeft         	      Ú oval Extras   !           X  Ű startAngle  éa       d $@ $  *  =Ź 0  360         Ü 	arcAngle  éa       d P@ $˙ţ*  =Ź 0  360       
  Ý            0 T            startAngle: 
  Ţ            \ L            
arcAngle:   Ž 
Script... ŕEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
          L         	       Ż Custom Props... ŕEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
         Ź          	       Ż PlayerExtras   !          |   Ë traversalOn  eŠ 
          $   Traversal On         	      § showBorder  eŠ        <   Show Border         	      ¨ lockLocation  eŠ        T   Lock Location         	       đ alwaysBuffer  eŠ        l   Always Buffer         	       ń showController  eŠ           Show Controller         	       Ă Custom Props... ŕEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
        ( x         	       Â 
Script... ŕEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
        ¸ ( P         	       ţ 
showBadge  eŠ           Show Badge         	       ? BExtras   !         ° Ź
  W            Ź            Button (Menu) Contents:    borderWidth  éa       p $  $˙O˙˙˙ 0  32          shadowOffset  éa       p T  $˙'˙˙˙ 0  64       
   icon  i`       X  @         ę    ű 
Choose... ŔEŤp hon mouseUp
  palette "Icon Chooser"
  set the targetprop of stack "icon chooser" to "icon"
end mouseUp
           P         	     
   hiliteIcon  i`       X ¨ @         ę     
Choose... ŔEŤp non mouseUp
  palette "Icon Chooser"
  set the targetprop of stack "icon chooser" to "hiliteIcon"
end mouseUp
          ¨ P         	     
  U text )p on openField
end openField

#on closeField
  if the selectedObject is empty
  then exit to MetaCard
  set the text of the selectedObject to me
end closeField
        4 ¤ d          ę    V    	`       5  b   Custom Properties... ŔEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
        ¤          	     
              0 h            Border Width: 
              ` h            Shadow Offset: 
               P            Icon: 
              ¨ P            Hilite Icon:    GroupProperties   a          °      Š           ¨  ř 	showName  eŠ        $ v  
Show Name         	       ů showBorder  eŠ        < v  Show Border         	       ú threeD  eŠ        T v  3D         	      ű Opaque  EŠC        l v         	       ó traversalOn  eŠ         v  Traversal On         	       ô lockLocation  eŠ         v  Lock Location         	       tabGroupBehavior  eŠ       ´ $ t  
Tab Group         	       ü dontSearch  eŠ       ´ < t  Don't Search         	       ý cantDelete  eŠ       ´ T t  Can't Delete         	        	Disabled  EŠ       ´ l t         	        hScrollbar  eŠ       ´  t  Horizontal SB         	        vScrollbar  eŠ       ´  t  Vertical SB         	       ˙ backgroundBehavior  eŠ      T ° ¨      Background Behavior         	       
Script... ŔEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
       4 $ t         	         Font... ŔEŤp 1on mouseUp
  palette "Font Chooser"
end mouseUp
       4 D t         	       	 
Colors... ŔEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
       4 d t         	       â Custom Props... ŔEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
       4  t         	       
 Edit ŕEŤp Qon mouseUp
  start editing the selectedObject
  choose pointer tool
end mouseUp
       4 ¤ t         	        SAppearance   !         Ź Ź
              , x            Thumb Size: 
              P x            Thumb Position: 
  |           $ t \            Start Value: 
  ~           $  \            End Value: 
             ô D x            Line Increment: 
             ô   x            Page Increment: 
   
thumbSize  é`        , 8             
   thumbPosition  é`        P 8             
  } startValue  é`        t 8             
   	endValue  é`         8             
   pageIncrement  é`      l   8             
   lineIncrement  é`      l D 8               y Style  é0 on mouseUp
  setproperty "style", the short name of the target
  setbutton "traversalOn", the short name of the target is not "progress"
end mouseUp
        Č d d ^  { 
Scrollbar @EŠ       Î x X         	      z Scale @EŠ       Î  X         	        	Progress @EŠ       Î ¨ X         	        
showValue @eŠ      8 h t  Show Value         	        lockLocation @eŠ      8  t  Lock Location         	      Ř Opaque @EŠ      8  t         	      ă traversalOn @eŠ      8 ° t  Traversal On         	        FAppearance   !         ¤ ´      Š            Ź   showBorder  eŠ          l  Show Border         	       threeD  eŠ        8 l  3D         	       Opaque  eŠ        P l  Opaque         	       	dontWrap  eŠ        h l  Don't Wrap         	       
showLines  eŠ         l  Show Lines         	        fixedLineHeight  eŠ           Fixed Line Height         	       hScrollbar  eŠ        °   Horizontal Scrollbar         	    
                D            	Margins: 
   Margins  i`       Ě   L           
               \            First Indent: 
   firstIndent  i`      x   4           
              D L            
Tabstops: 
    	tabStops  i`       Ô D Ř             ĺ hGrid  EŠ       ¨ h @         	       ć vGrid  EŠ       ô h @         	       ~ Show as Label ŔEŤpon mouseUp
  set the style of the selectedObject to "rectangle"
  set the hilitedButtonName of group "Style" to "Rectangle"
  setbutton "lockText", true
  setbutton "sharedText", true
  setbutton "dontWrap", true
  setbutton "showBorder", false
  setbutton "opaque", false
  setbutton "traversalOn", false
  setbutton "listBehavior", false
  setbutton "autoHilite", false
end mouseUp
        ź  |         	        Font... ŔEŤp 1on mouseUp
  palette "Font Chooser"
end mouseUp
        ´ ¨ <         	        
Colors... ŔEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
        ô ¨ H         	        Style  ëp Von mouseUp
  setproperty "style", the short name of the target
  refresh
end mouseUp
       D d h ^   
Rectangle  EŠ      J x \         	        Shadow  EŠ      J  \         	        
Scrolling  EŠ      J ¨ \         	      g StackProperties   a           Ź  j cantModify  eŠ          l  Can't Modify         	      h 
resizable  eŠ        < \  
Resizable         	      i 
cantAbort  eŠ        X h  Can't Abort         	       k wmPlace  eŠ        t   Manual Placement         	       y destroyStack  eŠ         ´  Destroy Stack On Close         	       z destroyWindow  eŠ        Ź Ä  Destroy Window On Close         	        alwaysBuffer  eŠ          t  Always Buffer         	      l 
Script... ŔEŤp ?on mouseUp
  editScript the long id of the selobj
end mouseUp
        ŕ H H         	       m Font... ŔEŤp 1on mouseUp
  palette "Font Chooser"
end mouseUp
        ŕ h H         	       n 
Colors... ŔEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
        ŕ  H         	       q Icon... ŕEŤp 1on mouseUp
  palette "Icon Chooser"
end mouseUp
        ŕ ¨ H         	       s Components... ŕEŤp 5on mouseUp
  palette "Stack Components"
end mouseUp
       4 * t         	       r 	Password ŕeŤp on mouseUp
  if the passkey of the selObj is the password of the selObj
  then modal "Stack Password"
  else modal "Stack Passkey"
  setpass
end mouseUp

       4 H t  Password...         	       ç Stack Files... ŕEŤp .on mouseUp
  modal "Stack Files"
end mouseUp
       4 h t         	       o Custom Props... ŔEŤp 4on mouseUp
  modal "Custom Properties"
end mouseUp
       4  t         	       p Main Stack... ŕEŤp -on mouseUp
  modal "Main Stack"
end mouseUp
       4 ¨ t         	        BAppearance   !         Ź ´      Š          t Ź  ţ 	showName  eŠ          l  
Show Name         	      ˙ showBorder  eŠ        8 l  Show Border         	       showHilite  eŠ        P l  Show Hilite         	         threeD  eŠ        h l  3D         	       Opaque  EŠ         l         	       Default  eŠ         l  Default         	        	Disabled  eŠ        ° l  	Disabled         	       ú 
Colors... ŔEŤp 2on mouseUp
  palette "Color Chooser"
end mouseUp
         ( D         	       ě Font... ŔEŤp 1on mouseUp
  palette "Font Chooser"
end mouseUp
         H D         	        Make
Divider ŔEŤpon mouseUp
  if the width of the selobj > the height of the selobj
  then set the height of the selobj to 2
  else set the width of the selobj to 2
  set the hilitedButtonName of group "Style" to the "Rectangle"
  setproperty "style","rectangle"
end mouseUp
         h D (        	       ä Make
Menu Item ŔEŤpon mouseUp
  setproperty "style", "standard"
  setbutton "showBorder", false
  setbutton "opaque", true
  setbutton "traversalOn", true
  setbutton "autoArm", true
  setbutton "autoHilite", false
  setbutton "armBorder", true
  settextalign "left"
end mouseUp
        |  T (        	       	 Style  épon mouseUp
  local tname
  put the short name of the target into tname
  switch tname
  case "CheckBox"
  case "RadioButton"
    setproperty "style", tname
    setbutton "showBorder", false
    setbutton "opaque", false
    setbutton "hiliteBorder", false
    setbutton "armBorder", false
    setbutton "autoHilite", true
    settextalign "left"
    set the menumode of the selobj to empty
    break
  case "Pulldown"
  case "Popup"
  case "Option"
  case "ComboBox"
  case "Tabbed"
    setproperty "style", "menu"
    set the menumode of the selobj to tname
    setbutton "armBorder", false
    setbutton "autoArm", false
    setbutton "autoHilite", false
    settextalign "left"
    setbutton "traversalOn", false
    setbutton "opaque", true
    switch tname
    case "Tabbed"
      setbutton "showName", false
      setbutton "showBorder", true
      break
    case "ComboBox"
      setbutton "traversalOn", true
      setbutton "showBorder", true
      break
    case "Option"
      setbutton "showBorder", true
      break
    default
      setbutton "showBorder", false
    end switch
    break
  case "Cascade"
    setproperty "style", "menu"
    set the menumode of the selobj to tname
    setbutton "showBorder", false
    setbutton "opaque", true
    setbutton "traversalOn", true
    setbutton "autoArm", true
    setbutton "autoHilite", false
    setbutton "armBorder", true
    settextalign "left"
    break
  default
    setproperty "style", tname
    setbutton "showBorder", true
    setbutton "opaque", true
    setbutton "hiliteBorder", true
    settextalign "center"
    set the menumode of the selobj to empty
  end switch
  refresh
end mouseUp
        Ř " Ô ˘       RadioButton  EŠ       Ü 4 h         	        	CheckBox  EŠ       Ü L h         	        Shadow  EŠ       Ü d h         	        
RoundRect  EŠ       Ü | h         	       
 
Rectangle  EŠ       Ü  h         	        	Standard  EŠ       Ü Ź h         	       	Pulldown  DŠ      H 4 `         	  ę   ! Popup  DŠ      H L `         	  ę   " Cascade  DŠ      H d `         	  ę     Option  DŠ      H | `         	  ę   = 	ComboBox  DŠ     H  `    	combobox  falsef  false        	  ę   > Tabbed  DŠ      H Ź `         	  ę   f 
StackName   )          ¤ ¨
  X            D \            Stack Title: 
  R            $ \            Stack Name: 
  S name  ip3local notwarned
on openField
  put true into notwarned
  pass openField
end openField

on closeField
  if there is a stack field "Name" and notwarned then
    modal "Duplicate Stack Name"
    select the text of me
    put false into notwarned
    exit to MetaCard
  end if
  pass closeField
end closeField
        h $@         P  
  Y Title  i`       h D@         P  
  é menubar  i`       h d Đ         P    ę 
editMenus @eĄ      D h d  Edit Menus          	     
  c width  i`       D  6         P  
  d height  i`       D ¨ 4         P  
  [ 	MaxWidth  i`       ŕ  4         P  
  \ 
MaxHeight  i`       ŕ ¨ 4         P  
  ` 	MinWidth  i`      t  4         P  
  a 
MinHeight  i`      t ¨ 4         P  
  Z             X            Max Width: 
  ]            ¨ X            Max Height: 
  ^             T            Min Width: 
  _            ¨ T            Min Height: 
  b             8            Width: 
  e            ¨ 8            Height: 
  č            d \            
Menu Bar:   = BName   )         $¤ 
  í            ( d            Button Name: 
  ě Name  i`       p (8         ę  
  ď            ` 8            Layer: 
  đ Layer  i`       D ` $         ę  
  ń           t ` D            Number: 
  ň Number  	        ° ` 0         ę 1 
  ó           Ř `              Id: 
  ô Id  	        đ ` H         ę 1003 
  $          0 ` T            
Mnemonic: 
  % 	Mnemonic  i`       ` $         ę  
  ö             4            Label: 
  ÷ Label  i`       @ h         ę    ţ FName   )        
 $¨ ¤
  ô            ( Z            Field Name: 
  ó Name  i`       h (D           
  ő            L 8            Layer: 
  ö Layer  i`       F L $           
  ÷           ş L D            Number: 
  ř Number  	        ř L (          3 
  ů          H L              Id: 
  ú Id  	       ` L D          1003 
  ű            l L            
Contents: 
  ü text )p on openField
end openField

on closeField
  if the selectedObject is empty
  then exit to MetaCard
  set the text of the selectedObject to me
end closeField
        ^ pP T        8      ý    	`       q  R  2 
Import... ŕEŤpżon mouseUp
  answer file "Choose a file to import..."
  if it is not empty then
    set the cursor to watch
    local fname
    put it into fname
    open file fname for read
    if the result is not empty then
      answer "Can't open file" && fname
      exit to MetaCard
    end if
    read from file fname until eof
    put it into field "text"
    close file fname
    set the text of the selectedObject to field "text"
  end if
end mouseUp
          F         	       Ő IName   i         $¨ 
              ( h            Image Name: 
   name  i`       t (4         ?  
              ` 8            Layer: 
   layer  i`       D ` ,         ?  
             x ` B            Number: 
             ŕ `              Id: 
   id  É        ř ` D            27 
               T            File Name: 
   	fileName  i`       `  ü         ?     
Select... ŕEŤp §on mouseUp
  answer file "Select image file to display:"
  if it is not empty then
    put it into field "fileName"
    setproperty "fileName", it
end if
end mouseUp
       d  H         	     
   number  	        ¸ ` 2         ? 1 
  ë          < ` ,            Size: 
  ě size  É       d ` D            62    SName   )         $¤ \
  A            ( t            Scrollbar Name: 
  B Name  i`        ((         u  
  C            ` 4            Layer: 
  D Layer  i`       @ ` ,         u  
  E            ` B            Number: 
  F Number  	        Ě ` 6         u 1 
  M          4 `              Id: 
  w id  	       P ` L         u 1033   ˘ GName   )         $¨ ¤
  Ý              @            
Tool tip: 
  Ł            ( p            Graphic Name: 
  ¤ Name  i`       | (,         Ą  
   Label  i`       D Pd         Ą  
  Ś Layer  i`       D x 0         Ą  
  Ţ tooltip  i`       L   ŕ         Ą    ś lockLocation  eŠ      4  x  Lock Location         	     
  Ľ            x 8            Layer:   ˇ traversalOn  eŠ      4 Ź x  Traversal On         	     
  §           ¨ x B            Number: 
  ¨ Number  	        ä x 6         Ą 1 
  Š          < x              Id: 
  Ş id  	       T x X         Ą 1013 
              P 8            Label:   á PlayerName   i         $¤ 
  Ł            ( d            Player Name: 
  ¤ Name  i`       p (8         ď  
  Ś Layer  i`       D P 0         ď  
  Š            P 8            Layer: 
  Ş           ¨ P B            Number: 
  Ť Number  	        ä P 6         ď 1 
  Ź          < P              Id: 
  ­ id  	       X P P         ď 1013 
  ř            x P            File Name: 
  ů              D            
Tool tip: 
  ú tooltip  i`       L  \         ď  
  ű 	fileName  i`       \ x ü         ď    ý 
Select... ŕEŤp §on mouseUp
  answer file "Select image file to display:"
  if it is not empty then
    put it into field "fileName"
    setproperty "fileName", it
end if
end mouseUp
       ` x H         	       ; 
GroupName   i         $¤ 
            < ` H            	Margins: 
  /            ( d            Group Name: 
  0 Name  i`       p (8         é  
  1            ` 4            Layer: 
  2 Layer  i`       @ ` $         é  
  3           r ` F            Number: 
   margins  i`       ` $         é  
  4 Number  	        ° ` "         é 1 
  5           Ř `              Id: 
  6 Id  	        đ ` H         é 1003 
  9             4            Label: 
  : Label  i`       @ h         é    - 	CardName   i         ,¤ \
  ë            0 \            Card Name: 
  ě name  i`       h 0@         ,  
  ď            h D            Number: 
  đ Number  	        H h 6         , 1 
  ń          @ h              Id: 
  ň id  	       X h P         , 1001   î EPS Properties  Áu on menuPick newtab, oldtab
  hide group ("Player" & oldtab)
  show group ("Player" & newtab)
end menuPick

on mouseUp
end mouseUp
         ° Č   Name
Extras        	        Font Chooser   local curobj, initted

on refresh
  --  exit refresh
  if the mode of me is 0
  then exit refresh
  if the selobj is empty then
    if the number of this card is not 2 then go to card 2
    exit refresh
  end if
  if the long id of the selobj is curobj then exit refresh
  put the long id of the selobj into curobj
  if the number of this card is not 1 then go to card 1
  local tfont, tsize, tstyle, fsizes
  set the hilitedButtonName of group "Alignment" to the textAlign of the selobj
  put the textFont of the selobj into tfont
  put the textSize of the selobj into tsize
  put the textStyle of the selobj into tstyle
  if tfont is empty then put "none" into tfont
  set the label of button "textFont" to tfont
  put fontSizes(tfont) into fsizes
  sort fsizes numeric
  if word 1 of fsizes is 0
  then put format("8\n10\n12\n14\n18\n20\n24\n34") into button "textSize"
  else put fsizes into button "textSize"
  set the label of button "textSize" to the textSize of the selobj
  put the textHeight of the selobj into field "textHeight"
  put the textStyle of the selectedObject into tstyle
  set the hilite of button "Bold" to tstyle contains "bold"
  set the hilite of button "Italic" to tstyle contains "italic"
  set the enabled of button "Bold" to fontStyles(tfont, tsize) contains "bold"
  set the enabled of button "Italic" to fontStyles(tfont, tsize) contains "italic"
end refresh

on setproperty p, v
  local setstring
  if the selectedObject is not empty then
    if v is "none" then put empty into v
    repeat for each line l in the selectedObjects
      put format("set the %s of %s to \"%s\"\n", p, l, v) after setstring
      if p is "textSize"
      then put format("set the textheight of %s to %s\n", l, v * 4 / 3) after setstring
    end repeat
    do setstring
    refresh
  end if
end setproperty

on closeField
  if the selobj is empty
  then exit to MetaCard
  setproperty the short name of the target, the text of the target
end closeField

on mouseUp
  if the selobj is empty
  then exit to MetaCard
  switch the short name of the owner of the target
  case "Alignment"
    set the textAlign of the selobj to the short name of the target
    break
  case "Style"
    switch the hilite of button "Bold" && the hilite of button "Italic"
    case "true true"
      set the textStyle of the selobj to "bold,italic"
      break
    case "true false"
      set the textStyle of the selobj to "bold"
      break
    case "false true"
      set the textStyle of the selobj to "italic"
      break
    default
      set the textStyle of the selobj to empty
      break
    end switch
  end switch
end mouseUp

on menuPick which
  if the selobj is empty
  then exit to MetaCard
  setproperty the short name of the target, which
  put empty into curobj
  refresh
end menuPick

on preOpenStack
  go to card 1
  if initted is empty then
    local fnames
    put the fontnames & return & "none" into fnames
    sort fnames
    put fnames into button "textFont"
    refresh
    put true into initted
  end if
  refresh
end preOpenStack

on closeCard
  put empty into curobj
end closeCard
       §\ r             U 
Helvetica   ę FC Card   	@          \ r  đ  ń  ň  ö  ô  ó  ě  ř  ˙    	@          \ r
  đ           \  <         ę Name: 
  ń           \ , <         ę Size: 
  ň           \ P <         ę Height: 
  ó textHeight  i`        P 0         ę 13   ô 	textSize  ĺ+e        , D  10    8
10
12
14
18
24 
      	       ö 	textFont  ĺ+e         Ŕ  
helvetica    Ëcharter
clean
courier
fangsong ti
fixed
gothic
helvetica
lucida
lucidabright
lucidatypewriter
mincho
new century schoolbook
nil
none
open look cursor
open look glyph
song ti
symbol
terminal
times
utopia 
      	       ě 
Alignment  é0 on mouseUp
  if the short name of the target is in "Left Center Right"
  then setproperty "textAlign", the short name of the target
end mouseUp
          T ^  í Left  EŠ         H         	       î Center  EŠ        4 H         	      ď Right  EŠ        L H         	       ř 
textStyle  $é0:on mouseUp
  if the id of the owner of the target is not the id of me then pass mouseUp
  local styles
  if the hilite of button "Bold"
  then put additem(styles, "bold") into styles
  if the hilite of button "Italic"
  then put additem(styles, "italic") into styles
  setproperty "textStyle", styles
end mouseUp
        ü & F F Style   ů Bold  DŠ       : :         	  ę   ú Italic  DŠ       R :         	  ę   # Preferences                          U 
Helvetica   U 
helvetica   U 
helvetica   ę    	Pśon closeStack
  save stack "Home"
end closeStack

on preOpenCard
  local notunix
  put the platform is "Win32" or the platform is "MacOS" into notunix
  set the hilitedButtonName of group "lnf" to the lookAndFeel
  set the hilite of button "grid" to the grid
  set the thumbPos of scrollbar "Grid Size" to the gridSize
  set the hilite of button "selectGroupedControls" to the selectGroupedControls
  set the hilite of button "centered" to the centered
  if the selectionMode is "intersect"
  then set the menuHistory of button "selectionMode" to 1
  else set the menuHistory of button "selectionMode" to 2
  set the label of button "selectionHandleColor" to the selectionHandleColor
  set the hilite of button "systemFileSelector" to the systemFileSelector
  set the visible of button "systemFileSelector" to notunix
  set the hilite of button "pointerFocus" to the pointerFocus
  set the visible of button "pointerFocus" to not notunix
  set the hilite of button "raisePalettes" to the raisePalettes
  set the hilite of button "raiseMenus" to the raiseMenus
  set the hilite of button "emacsKeyBindings" to the emacsKeyBindings
  set the itemDelimiter to colon
  put item 1 of the httpProxy into field "httpproxyhost"
  if item 2 of the httpProxy is empty
  then put 80 into field "httpproxyport"
  else put item 2 of the httpProxy into field "httpproxyport"
  if notunix then
    get button "Preferences"
    if last line of it is "External Editor" then
      delete last line of it
      put it into button "Preferences"
    end if
  else
    if the preferences["external editor"] of stack "Home" is not empty then
      put the preferences["external editor"] of stack "Home" into field "external editor"
      set the hilite of button "use external editor" to true
    else
      put "/usr/bin/X11/xterm -geom 80x30 -e vi" into field "external editor"
      set the hilite of button "use external editor" to false
    end if
  end if
end preOpenCard

on menuPick which
  setproperty the short name of the target, which
end menuPick

on setproperty p, v
  local c
  put format("set the %s to \"%s\"\n", p, v) into c
  put format("set the preferences[\"%s\"] of stack \"Home\" to \"%s\"", p, v) after c
  do c
end setproperty
               ň  ř  î  ü    ň Preferences  Á+u Eon menuPick new, old
  hide group old
  show group new
end menuPick
         |    .Layout
Look and Feel
Proxies
External Editor
        	       î External Editor   !          $ b
  ë           $ ( "           'Command to run external script editor: 
  ě external editor  ép ]on closeField
  set the preferences["external editor"] of stack "Home" to me
end closeField
        $ J             %/usr/bin/X11/xterm -geom 80x30 -e vi   í use external editor @eŠ Řon mouseUp
  set the preferences["use external editor"] of stack "Home" to the hilite of me
  if the hilite of me
  then set the preferences["external editor"] of stack "Home" to field "external editor"
end mouseUp
        & r Ô  Go directly to external editor         	       ü Look and Feel   a          d p  ű systemFileSelector @e Mon mouseUp
  setproperty "systemFileSelector", the hilite of me
end mouseUp
         , Ü  Use system file selector          	       pointerFocus @e Gon mouseUp
  setproperty "pointerFocus", the hilite of me
end mouseUp
         ( Ü  Accept pointer focus          	       raisePalettes @e Hon mouseUp
  setproperty "raisePalettes", the hilite of me
end mouseUp
         @ Ü  Raise palettes above windows          	        raiseMenus @e Eon mouseUp
  setproperty "raiseMenus", the hilite of me
end mouseUp
         X Ü  Raise menu windows          	        emacsKeyBindings @e on mouseUp
  setproperty "emacsKeyBindings", the hilite of me
  send "doinit" to group "MetaCard Menu Bar" of stack "MetaCard Menu Bar"
end mouseUp
         p Ü  Use Emacs Key Bindings          	      ˙ lnf   éŚon mouseUp
  local smodes
  get the openStacks
  lock messages
  repeat for each line l in it
    put the mode of stack l into smodes[l]
    close stack l
  end repeat
  setproperty "lookAndFeel", the hilitedButtonName of me
  wait 100 milliseconds
  repeat with l = the number of lines in it down to 1
    do "go to stack" && quote & line l of it  & quote && "as" && smodes[line l of it]
  end repeat
  unlock messages
  set the backColor of stack "Home" to empty
  if the lookAndFeel is "Macintosh"  or the lookAndFeel is "Appearance Manager"
  then set the bottomColor of stack "Home" to "172,172,172"
  else set the bottomColor of stack "Home" to "128,128,128"
end mouseUp
         $ x h  ý Motif `D        ( p          	  ę	       ţ Windows 95 `D        @ p          	  ę 	        
Macintosh `D        X p          	  ę 	       # Appearance Manager `d        p p  
OS Native          	  ę 	        Proxies   a         4 D
     	@        8             HTTP proxy host: 
    	@        \             HTTP proxy port: 
   httpproxyhost  ip Ăon closeField
  if me is empty then
    put empty into field "httpproxyport"
    setproperty "httpProxy", empty
  else setproperty "httpProxy", me & colon & field "httpproxyport"
end closeField
          8          ę  
   httpproxyport  ip öon closeField
  if me is empty
  then setproperty "httpproxy", empty
  else
    if me is not an integer
    then answer "Proxy port must be an integer"
    else setproperty "httpproxy", field "httpproxyhost" & colon & me
  end if
end closeField
          \ 4         ę 80   ř Layout   i        
 p z  ó grid  DŠ ?on mouseUp
  setproperty "grid", the hilite of me
end mouseUp
         & 8         	  ę
  ô           N $ T            Grid Size:   ő 
Grid Size  éq Qon scrollbarDrag
  setproperty "gridSize", the thumbPos of me
end scrollbarDrag
            Đ $933  s 2  64         ! Selections  i         @h R
             ° T h            Mode:    selectGroupedControls  dŠ Pon mouseUp
  setproperty "selectGroupedControls", the hilite of me
end mouseUp
         T   Grouped Controls         	  ę    selectionMode Ŕĺ	e       T X  
Intersect    Intersect
Surround        	     
             ° t h            Handle Color:    selectionHandleColor Ŕĺ	e       t X  0,0,0    #Black
White
Red
Green
Blue
Yellow
        	       " 	centered  dŠ Pon mouseUp
  setproperty "selectGroupedControls", the hilite of me
end mouseUp
         t   Resize From Center         	  ę   ˙ MC SelectedObject Menu   Bon preOpenStack
end preOpenStack

on resizeStack
end resizeStack
       vU v            ˙˙      U 
Helvetica   é    	p son help
  go to card "Tools Menu" of stack "Dialog Box Help" as modeless
end help

on preOpenCard
end preOpenCard
            v   đ  ń  ó  ď  ű  ü  ú  ď Cut ŕTiP 1on mouseUp
  cut the selectedObject
end mouseUp
         8 r        	  é   đ Edit Script... ŕTiP <on mouseUp
  edit script of the selectedObject
end mouseUp
          r        	  é   ń Properties.... ŕTiP /on mouseUp
  palette "Properties"
end mouseUp
          r        	  é   ó File Separator 1 ŕ@g        4 r          	  é   ú Send mouseUp ŕTiP Aon mouseUp
  send "mouseUp 2" to the selectedObject
end mouseUp
         n r        	  é   ű Copy ŕTiP 2on mouseUp
  copy the selectedObject
end mouseUp
         P r        	  é   ü File Separator 1 ŕ@g        j r          	  é   đ Script Errors         Ł ~Ń         , d˙˙˙˙     U 
Helvetica   U 
helvetica   U 
helvetica   ę    	Pćon resizeStack
  set the width of field 1 to the width of me - 8
  set the height of field 1 to the height of me - 56
  set the bottom of button 1 to the height of me - 12
  set the bottom of button 2 to the height of me - 12
  set the right of button 2 to the width of me - 32
end resizeStack

on refresh which
  repeat for each line l in which
    if item 1 of l is 1 and item 4 of l is not in field "Object Names"
    then put return & item 4 of l after field "Object Names"
  end repeat
  if line 1 of field "Object Names" is empty
  then delete line 1 of field "Object Names"
end refresh

on openStack
  set the hilitedLines of field "Object Names" to 1
end openStack

on closeStack
  put empty into field "Object Names"
end closeStack
           Ń   ë  í  î
  ë Object Names ˇ)pon mouseDoubleUp
  send "mouseUp" to button "Script..."
end mouseDoubleUp

on removeSelectedObject which
  repeat with i = 1 to the number of lines in me
    if line i of me is which then
      put the hilitedLines of me into which
      delete line i of me
      if me is empty then close this stack
      set the hilitedLines of me to which - 1
      exit repeat
    end if
  end repeat
end removeSelectedObject
         É e              ě    	`      ¸   c  í 
Script... ŕDp Ton mouseUp
  editScript the selectedText of field "Object Names", true
end mouseUp
        $ u h          	  ę 	       î Help ŕDp on mouseUp
  help
end mouseUp
      I u h    rigth  344         	  ę 	       ý Printer Chooser          nl6               ę    	Pon preOpenCard
  set the hilite of button "Portrait" to not the printRotated
  set the hilite of button "Landscape" to the printRotated
  switch the printPaperSize
  case "612,1008"
    set hilitedButtonName of group "Paper Size" to "Legal"
    break
  case "595,842"
    set hilitedButtonName of group "Paper Size" to "A4"
    break
    default:
    set hilitedButtonName of group "Paper Size" to "Letter"
  end switch
  put the printCommand into field "Command"
end preOpenCard

on returnInField
  setprops
end returnInField

on returnKey
  setprops
end returnKey

on setprops
  set the printRotated to the hilite of button "Landscape"
  if the hilite of button "Letter" then set the printPaperSize to "612,792"
  if the hilite of button "Legal" then set the printPaperSize to "612,1008"
  if the hilite of button "A4" then set the printPaperSize to "595,842"
  if the printCommand is not field "Command" then
    set the printCommand to field "Command"
    if line 1 of the mainStacks is "Home" then
      set the preferences["printCommand"] of stack "Home" to field "Command"
      save stack "Home"
    end if
  end if
  close this stack
end setprops
           6   ë  ő  î  ď  ű  ü  ý  đ  ô
  î            ( `            Paper Size: 
  ď Command  i`       X H Ô         ę mv %s $HOME/mc/mc.ps 
  đ            H T            	Command: 
  ô             `            Orientation:   ë Orientation   é        d  ¸   ě 	Portrait  EŠ       h  L         	      í 
Landscape  EŠ       ´  d         	       ő Paper Size   é        d ( Ŕ   ö Letter  EŠ       h , @         	      ÷ Legal  EŠ       Ź , @         	       ř A4  EŠ       đ , 0         	       ű OK ŔMŤp #on mouseUp
  setprops
end mouseUp
         t L         	       ü Cancel ŔEŤp +on mouseUp
  close this stack
end mouseUp
        x t L         	       ý Help ŔEŤp on mouseUp
  help
end mouseUp
        Ů t L         	        Standalone Builder          ÎĽT ű             U 
Helvetica   U 
helvetica   U 
helvetica   ę    	Pon preOpenCard
  switch the platform
  case "MacOS"
    show group "Creator"
    set the itemDelimiter to "."
    if item 1 of the systemversion >= 10
    then put "MetaCard.app" into field "Engine"
    else put "MetaCardPPC" into field "Engine"
    break
  case "Win32"
    hide group "Creator"
    put "mc.exe" into field "Engine"
    break
  default
    hide group "Creator"
    put "mc" into field "Engine"
    break
  end switch
end preOpenCard

on openCard
  set the customKeys of me to empty
end openCard
          T ű      ě  đ  ď  ň     ˙  ń  ţ  ô  ő  ř      
  ě  	           `            Stack name:   ď 
Select... ŕEŤpon mouseUp
  if the platform is "MacOS"
  then answer file "Select stack to build standalone from:" with filter "MSTKRSTK"
  else answer file "Select stack to build standalone from:" with filter "*.mc"
  if it is not empty then put it into field "Source"
end mouseUp
         @          	     
  đ Source  i`         ü         ę  
  ń  	          <             MetaCard engine: 
  ň Engine  i`        T ü         ę mc   ô Build ŕEŤpLon mouseUp
  local SourceFile, EngineFile, AppIconFile, DocIconFile, DestFile, tExtension
  local AppIconData, DocIconData, eOffset, EngineSize
  local foffset, toffset, newvalue, saveftype, not68K
  put true into not68K
  set the cursor to watch
  put field "Source" into SourceFile
  put field "Engine" into EngineFile
  put field "AppIcon" of stack "Version Info" into AppIconFile
  put field "DocIcon" of stack "Version Info" into DocIconFile
  put field "Destination" into DestFile
  if char -4 of Enginefile is "." then
    put char -4 to -1 of Enginefile into tExtension
    if char -4 to -1 of DestFile is not tExtension then
      answer error "Standalone must have a" && tExtension && "extension."
      exit to MetaCard
    end if
    if tExtension is ".app" then
      get shell("cp -R" && quote & EngineFile & quote && quote & DestFile & quote)
      if it is not empty then
        answer error "Error copying engine file."
        exit to MetaCard
      end if
      put "/Contents/MacOS/MetaCard" after EngineFile
      put "/Contents/MacOS/MetaCard" after DestFile
    end if
  end if
  set the caseSensitive to true
  if AppIconFile is not empty then
    open file AppIconFile for binary read
    if the result is not empty then
      answer "Can't open application icon file."
      exit to MetaCard
    end if
    read from file AppIconFile at 23 until eof
    put it into AppIconData
    close file AppIconFile
    if the length of AppIconData is not the length of the mcappicon of me then
      answer "Icon is the wrong size (must be" && the length of the mcappicon of me + 22 && "bytes)"
      exit to MetaCard
    end if
  end if
  if DocIconFile is not empty then
    open file DocIconFile for binary read
    if the result is not empty then
      answer "Can't open document icon file."
      exit to MetaCard
    end if
    read from file DocIconFile at 23 until eof
    put it into DocIconData
    close file DocIconFile
    if the length of DocIconData is not the length of the mcappicon of me then
      answer "Icon is the wrong size (must be" && the length of the mcdocicon of me + 22 && "bytes)"
      exit to MetaCard
    end if
  end if
  open file EngineFile for binary read
  if the result is not empty then
    answer "Can't open engine."
    exit to MetaCard
  end if
  read from file EngineFile until eof
  close file EngineFile
  put the length of it into EngineSize
  put numToChar(0) after EngineSize
  put the fileType into saveftype
  set the fileType to field "Creator" & "APPL"
  open file DestFile for binary write
  if the result is not empty then
    answer "Can't open destination file" && DestFile
    set the fileType to saveftype
    exit to MetaCard
  end if
  if the platform is "MacOS" then
    put empty into url ("resfile:" & DestFile)
    get getresources(EngineFile)
    repeat for each line l in it
      if item 1 of l is "BNDL" and item 2 of l is 129
      then put copyresource(EngineFile, DestFile, "BNDL", 129, 128) into newvalue
      else put copyresource(EngineFile, DestFile, item 1 of l, item 2 of l, item 2 of l) into newvalue
    end repeat
    get getresources(SourceFile)
    repeat for each line l in it
      put copyresource(SourceFile, DestFile, item 1 of l, item 2 of l, item 2 of l) into newvalue
    end repeat
    get url ("resfile:" & DestFile)
    put offset("ZYZYZYZY", it) into eOffset -- finds the tag in engine
    if eOffset is not 0 then
      add 8 to eOffset
      if char eOffset of it is not "X" then
        answer "File" && EngineFile && "is already a standalone" with "Exit"
        set the fileType to saveftype
        exit to MetaCard
      end if
      put EngineSize into char eOffset to (eOffset + the length of EngineSize - 1) of it
      put false into not68K
      put it into url ("resfile:" & DestFile)
    end if
    get url ("binfile:" & EngineFile)
  end if
  set the fileType to saveftype
  put offset("ZYZYZYZY", it) into eOffset -- finds the tag in engine
  if eOffset is not 0 then
    add 8 to eOffset
    if char eOffset of it is not "X" then
      answer "File" && EngineFile && "is already a standalone" with "Exit"
      exit to MetaCard
    end if
    put EngineSize into char eOffset to (eOffset + the length of EngineSize - 1) of it
    if AppIconData is not empty then
      put offset(the mcappicon of me, it) into eOffset -- finds the old icon in engine
      if eOffset is 0 then
        answer "File" && EngineFile && "is not a MetaCard Win32 engine."
        exit to MetaCard
      end if
      put AppIconData into char eOffset to (eOffset + the length of AppIconData - 1) of it
    end if
    if DocIconData is not empty then
      put offset(the mcdocicon of me, it) into eOffset -- finds the old icon in engine
      if eOffset is 0 then
        answer "File" && EngineFile && "is not a MetaCard Win32 engine."
        exit to MetaCard
      end if
      put DocIconData into char eOffset to (eOffset + the length of DocIconData - 1) of it
    end if
    if the customKeys["resource_values"] of this card is not empty then
      put offset(uniEncode("040904b0"), it) into foffset
      if foffset is not 0 then
        repeat for each item i in the resource_names of card 1 of stack "Version Info"
          put offset(uniEncode(i), it, foffset) into toffset
          if toffset is 0 then
            answer "Can't find resource string" && i with "abort"
            exit to MetaCard
          end if
          add (length(i) + 1) * 2 + foffset to toffset
          if length(i) mod 2 is 1 then add 2 to toffset
          put uniEncode(the resource_values[i] of this card) into newvalue
          put newvalue into char toffset to toffset + length(newvalue) - 1 of it
        end repeat
      end if
    end if
  else
    if not68K then
      answer "File" && EngineFile && "is not a MetaCard engine."
      exit to MetaCard
    else get empty
  end if
  open file DestFile for binary write
  if the result is not empty then
    answer "Can't open destination file" && DestFile
    exit to MetaCard
  end if
  write it to file DestFile -- write engine with offset to standalone file
  if the result is not empty then
    answer "Error writing to file" && DestFile
    close file DestFile
    delete file DestFile
    exit to MetaCard
  end if
  open file SourceFile for binary read
  if the result is not empty then
    answer "Can't open stack file" && SourceFile
    close file DestFile
    delete file DestFile
    exit to MetaCard
  end if
  read from file SourceFile until eof
  write it to file DestFile
  close file SourceFile
  close file DestFile
  if the platform is not "Win32" and the platform is not "MacOS"
  then get shell("chmod a+x" && DestFile)
  close this stack
end mouseUp
        Ô H    
mcappicon č(       @                                               ŔŔŔ   ˙  ˙   ˙˙ ˙   ˙ ˙ ˙˙  ˙˙˙                                      wwww           wťťťťw          {ťťťťˇ        ťťťťťťp   p    ťťťťťťp       ťťťťťťp      wťťťť°     ×ť ť 	ůůů    }×ť°°    w}×ť°đůůůůůů   ~}×ť°    î}×ť°ť ůůůů   î}×ť°ů°    î}×ťťť ůů    î}×ťť°ů°     î}×ťťťť      î}×ťťť°ů°     î}×ťťťť  ť     î}Ý{ťťťť °    î}Ýwťťťťp ť    î}ÝÝwwww  	   î}ÝÝÝÝÝp      îçÝÝÝÝ×        îç}ÝÝÝw        îîçwww         îîîîîç          ~îîîîp          wîîîçp           wwww                          ˙˙˙˙˙˙˙˙˙Ŕ?˙˙ ˙˙ ďţ Çţ ţ ř  ř  đ  Ŕ  Ŕ      ?    ˙ ˙  ˙      < ~ ˙ ˙˙˙˙˙˙Ŕ˙˙Ŕ˙˙đ˙˙˙˙˙˙
mcdocicon č(       @                                               ŔŔŔ   ˙  ˙   ˙˙ ˙   ˙ ˙ ˙˙  ˙˙˙                   ˙˙˙˙˙˙˙˙˙˙˙đ    ˙˙˙˙˙˙˙˙˙˙˙đ    ˙˙˙˙˙˙˙˙˙˙˙đ    ˙˙˙˙˙˙˙˙˙˙˙đ    ˙˙˙˙˙˙˙˙˙˙˙đ    ˙˙˙˙˙˙˙˙˙˙˙đ    ˙˙˙˙˙÷ww˙˙˙đ    ˙˙˙˙˙{ťť˙˙đ    ˙˙˙˙÷ťťťˇ˙˙đ    ˙˙˙˙wťťťˇ˙˙đ    ˙˙˙÷×ťťťˇ˙˙đ    ˙˙˙w×ťťťˇ˙˙đ    ˙˙÷ç×ťťťˇ˙˙đ    ˙˙÷ç×ťťťˇ˙˙đ    ˙˙÷ç×ťťťˇ˙˙đ    ˙˙÷ç×ťťťˇ˙˙đ    ˙˙÷ç×ťťťˇ˙˙đ    ˙˙÷çÝ{ťť˙˙đ    ˙˙÷çÝ×ww˙˙˙đ    ˙˙÷î}ÝÝ˙˙˙đ    ˙˙÷îçww˙˙˙˙đ    ˙˙˙~îî˙˙˙˙đ    ˙˙˙÷ww˙˙˙˙˙đ    ˙˙˙˙˙˙˙˙˙˙˙đ       ˙˙˙˙˙˙˙˙đ    ˙đ˙˙˙˙˙˙˙˙đ     ˙đ˙˙˙˙˙˙˙˙đ     đ˙˙˙˙˙˙˙˙đ      đ˙˙˙˙˙˙˙˙đ       ˙˙˙˙˙˙˙˙đ                  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  ŕ  đ  ř  ü  ţ  ˙  ˙          	       ő Cancel ŕEŤp +on mouseUp
  close this stack
end mouseUp
         Ô H          	       ř Help ŕEŤp on mouseUp
  help
end mouseUp
        č Ô I          	     
  ţ  	          t             Standalone file name: 
  ˙ Destination  i`         ü         ę      
Select... ŕEŤpCon mouseUp
  if the platform is "MacOS"
  then answer file "Select engine to build standalone from:" with filter "APPL"
  else answer file "Select engine to build standalone from:" with filter "*"
  if the last char of it is "/" then delete last char of it
  if it is not empty then put it into field "Engine"
end mouseUp
        T @          	        Set Windows Version Info... ŕEŤp /on mouseUp
  modal "Version Info"
end mouseUp
         ° Ä          	        
Select... ŕEŤp son mouseUp
  ask file "Name of standalone:"
  if it is not empty then put it into field "Destination"
end mouseUp
         @          	        Creator   a       ˙ü Ź   
  	 Creator  i`       D ° <         ę MSTD 
  
 clabel 	          ° D            	Creator:    Menu Builder           ŔôO|             U 
Helvetica   U 
helvetica   ę    	Pon preOpenCard
  set the label of button "Stack Name" to the short name of the topstack
end preOpenCard

on closeCard
  put empty into field "menuItems"
  disable button "menuedit"
  disable button "menudelete"
  disable button "itemedit"
  disable button "itemdelete"
end closeCard
           O|  ë  ě  í  î  ˙  đ  ű  ü  ń  ó    ô  ý  ţ  ő  ö  ÷  ř  ů
  ë  	@         `            Stack Name:   ě Stack Name ŕeŠe       d  ŕ  Stack 1037674896  MC stack menu        	     
  í 
menuNames  ˇ)pon mouseUp
  put the mItems[the selectedText of me] of me into field "menuItems"
  disable button "itemedit"
  disable button "itemdelete"
  if the hilitedLines of me is not empty then
    enable button "menuedit"
    enable button "menudelete"
  end if
end mouseUp
        D ě p   mItems  Cu&t/X
&Copy/C
&Paste/V
undo       mItems    &Edit  Cu&t/X
&Copy/C
&Paste/V&File  &Open.../O
-
&Quit/Q&Help  &Help...
-
&About...     &File  &Edit  &Help   ď    	`       ă E  n  î Add... ŕEp5on mouseUp
  ask "Enter new menu:"
  if it is not empty then
    if line 1 of field "menuNames" is not empty
    then put return & it after field "menuNames"
    else put it into field "menuNames"
    set the hilitedLines of field "menuNames" to the number of lines in field "menuNames"
  end if
end mouseUp
        D @          	       đ menudelete ŕepAon mouseUp
  local l
  put (item 1 of the hilitedLines of field "menuNames") into l
  delete line l of field "menuNames"
  -- set the hilited line to the line after the deleted line
  if l is 1
  then set the hilitedLInes of field "menuNames" to l
  else set the hilitedLInes of field "menuNames" to (l - 1)
end mouseUp
        | @  Delete          	     
  ń 
menuItems  ˇ)p on mouseUp
  if the hilitedLines of me is not empty then
    enable button "itemedit"
    enable button "itemdelete"
  end if
end mouseUp
         Đ ě x              ň    	`       ă Ń  v  ó Add... ŕEpĐon mouseUp
  ask "New menu item:"
  if it is not empty then
    if line 1 of field "menuItems" is empty
    then put it into field "menuItems"
    else put return & it after field "menuItems"
    set the hilitedLines of field "menuItems" to the number of lines in field "menuItems"
    enable button "itemedit"
    enable button "itemdelete"
    set the mItems[the selectedText of field "menuNames"] of field "menuNames" to field "menuItems"
  end if
end mouseUp
        Ô @          	       ô itemdelete ŕep¤on mouseUp
  local l
  put (item 1 of the hilitedLines of field "menuItems") into l
  delete line l of field "menuItems"
  -- set hilited line to the line after the line been deleted
  if l is 1
  then set the hilitedLines of field "menuItems" to l
  else set the hilitedLines of field "menuItems" to (l - 1)
  set the mItems[the selectedText of field "menuNames"] of field "menuNames" to field "menuItems"
end mouseUp
        @  Delete          	     
  ő  	@        , D            Menus: 
  ö  	         ¸ d            Menu Items:   ÷ Build ŕEŤpŢon mouseUp
  local sourceStack, l, bName, menuScript
  local userMenus, whichMnemonic, nextX
  
  -- create a menu group
  put field "menuNames" into userMenus
  put the label of button "Stack Name" into sourceStack
  set the defaultStack to sourceStack
  create group "menuGroup"
  set the traversalOn of group "menuGroup" to false
  set the backgroundBehavior of group "menuGroup" to true
  -- create a button to be the background of menus
  create button "menuButton" in group "menuGroup"
  set the lockLoc of button "menuButton" of group "menuGroup" to true
  set the opaque of button "menuButton" of group "menuGroup" to false
  set the showBorder of button "menuButton" of group "menuGroup" to true
  set the showName of button "menuButton" of group "menuGroup" to false
  set the traversalOn of button "menuButton" of group "menuGroup" to false
  set the autoHilite of button "menuButton" of group "menuGroup" to false
  set the height of button "menuButton" of group "menuGroup" to the formattedHeight of button "menuButton" of group "menuGroup" + 8
  set the width of button "menuButton" of group "menuGroup" to the width of this card - 8
  set the topLeft of button "menuButton" of group "menuGroup" to 4, 4
  put 8 into nextX
  repeat for each line l in userMenus  -- for each menu specified
    put offset("&", l) into whichMnemonic
    if whichMnemonic > 0 then
      delete char whichMnemonic of l
      -- create each menu
      create button l in group "menuGroup"
      set the mnemonic of button l of group "menuGroup" to whichMnemonic
    else create button l in group "menuGroup"
    set the lockLoc of button l of group "menuGroup" to true
    set the showBorder of button l of group "menuGroup" to false
    set the width of button l of group "menuGroup" to the formattedWidth of button l of group "menuGroup" + 8
    set the height of button l of group "menuGroup" to the formattedHeight of button l of group "menuGroup"
    set the topLeft of button l of group "menuGroup" to (nextX, 8)
    add (the formattedWidth of button l of group "menuGroup"  + 10) to nextX
    -- set some properties to make the button behave as a menu
    set the style of button l of group "menuGroup" to "menu"
    set the menuMode of button l of group "menuGroup" to "pulldown"
    set the opaque of button l of group "menuGroup" to true
    set the autoHilite of button l of group "menuGroup" to true
    set the hiliteBorder of button l of group "menuGroup" to true
    set the armBorder of button l of group "menuGroup" to true
    set the traversalOn of button l of group "menuGroup" to false
    set the showBorder of button l of group "menuGroup" to false
    
    -- create menu items
    put l into bName  -- save a copy of the menu name
    if whichMnemonic > 0 then  put "&" after char (whichMnemonic -1) of l  -- restore the menu name with the "&"
    put the mItems[l] of field "menuNames" of stack "Menu Builder" into button bName of group "menuGroup"
    
    -- create script for menu
    put "on menuPick which" & return into menuScript    -- menu script template
    put "  switch which" & return after menuScript
    repeat for each line s in the mItems[l] of field "menuNames" of stack "Menu Builder"
      if char 1 of s is not "-" then
        local toff
        put offset("&", s) into toff
        if toff is not 0 then delete char toff of s
        put offset("/", s) into toff
        if toff is not 0 then delete char toff to toff + 1 of s
        if char 1 of s is "(" then delete char 1 of s
        if char 1 of s is "!" then delete char 1 to 2 of s
        put "  case" && quote & s & quote & return after menuScript
        put "  break" & return after menuScript
      end if
    end repeat
    put "  end switch" & return after menuScript
    put "end menuPick" & return after menuScript
    set the script of button bName of group "menuGroup" to menuScript
    put empty into menuScript -- reset it to empty
  end repeat   -- for each menu specified
  
  --  Move the last button to far right edge if it is a "Help" button
  if bName is "Help"
  then set the Right of button bName of group "menuGroup" to the width of this card -  8
  
  -- Attatch a geometry management script to group "menuGroup"
  put "on resizeStack " & return into menuScript
  put "set the lockLocation of me to true" & return after menuScript
  put "set the width of me to the width of this card" & return after menuScript
  put "set the width of button" && quote & "menuButton" & quote && "of me to the width of me - 6" & return after menuScript
  put "set the left of button" && quote & "menuButton" & quote && "of me to 4"  & return after menuScript
  if bName is "Help" then
    put "set the right of button" && quote & bName & quote && "of me to the width of me - 6" & return after menuScript
  end if
  put "pass resizeStack" & return & "end resizeStack" after menuScript
  try
    set the script of group "menuGroup" to menuScript
  catch err
    answer "Can't set script of group (Starter Kit limits exceeded)"
  end try
  set the lockLoc of group "menuGroup" to true
  -- Remind user to save stack with new menu created
  set the menubar of this stack to "menuGroup"
  close stack "Menu Builder"
  answer "A menu was created in stack" && sourceStack & "." & return & "Please save the stack before closing it."
end mouseUp
        T L          	       ř Cancel ŕEŤp +on mouseUp
  close this stack
end mouseUp
        T L          	       ů Help ŕEŤp on mouseUp
  help
end mouseUp
        čT L          	       ű mup âCp`on mouseUp
  local l, tmpLine
  put word 2 of the selectedLine of field "menuNames" into l
  if l > 1 then
    put line (l - 1) of field "menuNames" into tmpLine
    delete line (l  - 1) of field "menuNames"
    put return & tmpLine after line (l - 1) of field "menuNames"
    set the hilitedLines of field "menuNames" to (l - 1)
  end if
end mouseUp
                         E             	       ü mdown âCpon mouseUp
  local l, tmpLine
  put word 2 of the selectedLine of field "menuNames" into l
  if l is not empty and l < the number of lines in field "menuNames"  then
    put line l of field "menuNames" into tmpLine
    delete line l of field "menuNames"
    put return & tmpLine after line l of field "menuNames"
    set the hilitedLines of field "menuNames" to (l + 1)
  end if
end mouseUp
       $                  D             	       ý iup âCpÄon mouseUp
  local l, tmpLine
  put word 2 of the selectedLine of field "menuItems" into l
  if l > 1 then
    put line (l - 1) of field "menuItems" into tmpLine
    delete line (l  - 1) of field "menuItems"
    put return & tmpLine after line (l - 1) of field "menuItems"
    set the hilitedLines of field "menuItems" to (l - 1)
    set the mItems[the selectedText of field "menuNames"] of field "menuNames" to field "menuItems"
  end if
end mouseUp
       (                 E             	       ţ idown âCpěon mouseUp
  local l, tmpLine
  put word 2 of the selectedLine of field "menuItems" into l
  if l is not empty and l < the number of lines in field "menuItems"  then
    put line l of field "menuItems" into tmpLine
    delete line l of field "menuItems"
    put return & tmpLine after line l of field "menuItems"
    set the hilitedLines of field "menuItems" to (l + 1)
    set the mItems[the selectedText of field "menuNames"] of field "menuNames" to field "menuItems"
  end if
end mouseUp
       $(                 D             	       ˙ 	menuedit ŕeplon mouseUp
  local oldname, l
  put the selectedText of field "menuNames" into oldname
  ask "Edit menu:" with oldname
  if it is not empty then
    set the mItems[it] of field "menuNames" to the mItems[oldname] of field "menuNames"
    put (item 1 of the hilitedLines of field "menuNames") into l
    put it into line l of field "menuNames"
  end if
end mouseUp
        ` @  Edit...          	        	itemedit ŕepXon mouseUp
  ask "Edit menu item" with the selectedText of field "menuItems"
  if it is not empty then
    local l
    put (item 1 of the hilitedLines of field "menuItems") into l
    put it into line l of field "menuItems"
  end if
  set the mItems[the selectedText of field "menuNames"] of field "menuNames" to field "menuItems"
end mouseUp
        đ @  Edit...          	       ő Script Find 
\local startchar, didfind, targeteditor
on doFind which
  put which into targeteditor
  set the height of me to 100
  hide group "replace group"
  set the title of me to "Find"
  palette me
end doFind

on doReplace which
  put which into targeteditor
  set the height of me to 142
  show group "replace group"
  set the title of me to "Replace"
  palette me
end doReplace

function findNext doselect
  modeless stack targetEditor
  local tterminators, ocs, toffset, notfound, ochar
  put false into didfind
  put quote & ",. <>:;$&[]\|()*^%#@!" & cr into tterminators
  set the caseSensitive to the hilite of button "Match case"
  put true into notfound
  repeat while notfound
    put offset(field "Find Text", field "Editor Field" of stack targeteditor, startchar) into toffset
    if toffset is 0 and startchar is not 0 then
      put offset(field "Find Text", field "Editor Field" of stack targeteditor) into toffset
      if toffset >= startchar then put 0 into toffset
      put 0 into startchar
    end if
    add toffset to startchar
    if toffset is 0 or startchar is ochar then return false
    if ochar is empty then put startchar into ochar
    if the hilite of button "Match whole words only" then
      if char (startchar - 1) of field "Editor Field" of stack targeteditor is in tterminators \
          and char (startchar + the length of field "Find Text") of field "Editor Field" of stack targeteditor \
          is in tterminators then
        put false into notfound
      end if
    else put false into notfound
  end repeat
  if doselect then
    lock messages
    select char startchar to (startchar + the length of field "Find Text" - 1)\
        of field "Editor Field" of stack targeteditor
    set the history[the scriptObject of card 1 of stack targeteditor] of stack "Script Editor" to the selectedChunk
    palette me
    unlock messages
  end if
  put true into didfind
  return true
end findNext

on replaceit
  local endchar
  if didfind then
    put startchar + the length of field "Find Text" - 1 into endchar
    put field "Replace Text" into char startchar to endchar of field "Editor Field" of stack targeteditor
    add the length of field "Replace Text" - 1 to startchar
  end if
end replaceit

on replaceall
  local firstone
  set the cursor to watch
  lock screen
  put 0 into startchar
  repeat while findNext(false)
    if firstone is empty
    then put startchar + the length of field "Replace Text" into firstone
    else if startchar < firstone then exit repeat
    replaceit
  end repeat
  unlock screen
end replaceall

on setstart which
  put false into didfind
  put which into startchar
end setstart
        i`U          Replace      U 
Helvetica   U 
helvetica   ę script find card   	P Kon returnInField
  send "mouseUp" to button "Find Next"
end returnInField
           U   ë  ě  ó  ň  ď  ô  ő
  ë  	@          X            Find String: 
  ě 
Find Text  )`       h           ę    ď 
Find Next ŕEŤp >on mouseUp
  if not findNext(true)
  then beep 1
end mouseUp
        ř  X          	       ň Match whole words only @E        D ¸          	       ó Match case @E        , l          	       ô Done ŕEŤp +on mouseUp
  close this stack
end mouseUp
        ř 4 X          	       ő replace group   i       ˙ü TX <
  í  	@         h h            Replace With: 
  î Replace Text  )`       h h          ę    đ Replace ŕEŤp Jon mouseUp
  replaceit
  if not findNext(true)
  then beep 1
end mouseUp
        ř X X          	       ń Replace All ŕEŤp %on mouseUp
  replaceall
end mouseUp
        ř t X          	       đ MetaCard Version          j´ Ę             U New Century Schoolbook   U New Century Schoolbook   U New Century Schoolbook   U New Century Schoolbook   U 
helvetica   é    	P ˇon openCard
  put the version into last word of line 1 of field 1
end openCard

on mouseUp
  modeless "Licensing MetaCard"
end mouseUp

on returnKey
  close this stack
end returnKey
           ´ Ę  ę  ë  í  î  ę Question Icon âB         $ $ $              I            	  é   ë OK ŕLŤp +on mouseUp
  close this stack
end mouseUp
        @  D         	  é 
  í             (             MetaCardŽ 2.5B2  &Copyright Š 2003 MetaCard Corporation  All Rights Reserved    UNIX video played through         XAnim 2.70.6.4          Copyright Š 1997  Mark Podlipec          î Licensing Information... ŕDŤp Kon mouseUp
  close this stack
  modeless "Licensing MetaCard"
end mouseUp
        Ę  ¤         	  é   î Download Stack   îlocal stime, cancelled

on mouseUp
  if the short name of the target is "Cancel"
  then put true into cancelled
end mouseUp

on updateme href
  local stat, nk
  if cancelled then
    unload url href
    close me
    exit to MetaCard
  end if
  put urlStatus(href) into stat
  if stat contains "error" or stat contains "not found" then
    close me
    answer "Error downloading URL" && href  & cr \
        & "Check network connection and proxy setup in Preferences."
    unload url href
    exit to MetaCard
  end if
  if stat contains "cached" then
    put "Done" into field "progress"
    set the thumbpos of sb 1 to the endValue of sb 1
    wait 500 milliseconds
    close me
    if word 1 of url href is "#!/bin/sh"
    then go url href
    else answer "URL" && href  && "is not a stack."
    unload url href
    exit to MetaCard
  end if
  if item 1 of stat is "loading" then
    put item 2 of stat div 1024 into nk
    put nk & "K/" & item 3 of stat div 1024 & "K  "\
        & nk * 10 div (the long seconds - stime) / 10 & "K/sec" into field "progress"
    set the endValue of sb 1 to item 3 of stat
    set the thumbpos of sb 1 to item 2 of stat
  end if
  send "updateme" && quote & href & quote to me in 500 milliseconds
end updateme

on preOpenStack
  local fwidth
  put the formattedWidth of field "url" into fwidth
  set the width of field "url" to fwidth
  set the width of sb 1 to fwidth - 16
  set the width of me to the right of field "url" + 8
end preOpenStack

on downloadNgo href
  put false into cancelled
  load href
  put "Loading url" && href  into field "url"
  put empty into field "progress"
  set the thumbPos of sb 1 to 0
  send "updateme" && quote & href & quote to me in 1 second
  put the long seconds into stime
  modal me
end downloadNgo
       Šq u              ę    	@          q u  ë  ě  í  î  ë  Ia        ,Q ˙ý         2655       
  ě url 	@        a            4Loading url http://www.metacard.com/stacks/tools.mc 
  í 	progress 	@       X L Ř            Done   î Cancel ŕEŤ`        P D          	        Version Info          *pL:             U 
helvetica   ę    	P on keyDown
  if the number of characters in the selectedField < the length_limit of the selectedField
  then pass keyDown
  else beep 1
end keyDown
          L:   resource_names  ˘Comments,CompanyName,FileDescription,FileVersion,InternalName,LegalCopyright,LegalTrademarks,OriginalFilename,PrivateBuild,ProductName,ProductVersion,SpecialBuildEdit  Card Properties...  ě  í  î  ď  đ  ń  ň  ó  ô  ő  ú  ű  ö  ÷  ř  ů  ţ  ˙       ü  ý          	  
          
  ě  	@         t            
Comments: 
  í 	Comments  i`      x       length_limit  40        ę       
  î  	@                     CompanyName: 
  ď CompanyName  i`     ¤       length_limit  40        ę       
  đ  	@        ( t            FileDescription: 
  ń FileDescription  i`      x (      length_limit  40        ę       
  ň  	@        (             FileVersion: 
  ó FileVersion  i`     ¤ (      length_limit  10        ę       
  ô  	@        H t            InternalName: 
  ő InternalName  i`      x H      length_limit  10        ę       
  ö  	@        h t            LegalCopyright: 
  ÷ LegalCopyright  i`      x h      length_limit  60        ę       
  ř  	@        h             LegalTrademarks: 
  ů LegalTrademarks  i`     ¤ h      length_limit  60        ę       
  ú  	@        H             OriginalFilename: 
  ű OriginalFilename  i`     ¤ H      length_limit  12        ę       
  ü  	@        ¨ t            PrivateBuild: 
  ý PrivateBuild  i`      x ¨      length_limit  20        ę       
  ţ  	@         t            ProductName: 
  ˙ ProductName  i`      x       length_limit  20        ę       
     	@                     ProductVersion: 
   ProductVersion  i`     ¤       length_limit  10        ę       
    	@        ¨             SpecialBuild: 
   SpecialBuild  i`     ¤ ¨      length_limit  20        ę          OK ŕEŤp0on mouseUp
  repeat for each item i in the resource_names of this card
    if field i is not empty then
      get format("%*s", -(the length_limit of field i), field i)
      set the resource_values[i] of card 1 of stack "Standalone Builder" to it
    end if
  end repeat
  close this stack
end mouseUp
        b P          	        Cancel ŕEŤp +on mouseUp
  close this stack
end mouseUp
       	 P          	        Help ŕEŤp on mouseUp
  help
end mouseUp
       ° P          	     
    	@        Ě             Application icon file: 
   AppIcon  i`       Ěd    length_limit  256        ę    	 
Select... ŕEŤp on mouseUp
  answer file "Select application icon:" with filter "*.ico"
  if it is not empty then put it into field "AppIcon"
end mouseUp
        Ě @          	     
  
  	@        đ             Document icon file: 
   DocIcon  i`       đd    length_limit  256        ę     
Select... ŕEŤp on mouseUp
  answer file "Select document icon:" with filter "*.ico"
  if it is not empty then put it into field "DocIcon"
end mouseUp
        đ @          	       ú Tools  Ron preOpenCard
  changeTool
end preOpenCard

on changeTool
  get word 1 of the tool
  if it is "graphic"
  then get the style of the templateGraphic
  set the hilitedButton of group "icons" to \
      itemOffset(it, "browse,pointer,button,field,scrollbar,image,player,line,polygon,curve,rectangle,oval,roundrect,regular")
end changeTool
       0 H    resizeable  false                U 
Helvetica   ę    	P żon openStack
  insert script of button "MenuButton" of stack "MetaCard Menu Bar" into front
  insert script of button "newobj" of stack "MetaCard Menu Bar" into back
  newTool
end openStack
            H   ë  ë Icons   É˝on mouseUp
  local ostacks, nstacks
  put the openStacks into ostacks
  if "My Icons" is not in ostacks and "My Patterns" is not in ostacks then
    put the number of lines in ostacks into nstacks
    repeat with i = 1 to nstacks
      if the mode of stack (line i of ostacks) is 5 then
        beep 1
        newtool
        exit to MetaCard
      end if
    end repeat
  end if
  if word 1 of the name of the target is "button" then
    if the short name of the target is in "pointer browse button field scrollbar image player"
    then choose (the short name of the target) tool
    else
      set the style of the templateGraphic to the short name of the target
      set the points of the templateGraphic to empty
      set the markerPoints of the templateGraphic to empty
      choose graphic tool
    end if
    send "changeTool" to stack "Paint Tools"
    send "changeTool" to stack "MetaCard Menu Bar"
  end if
end mouseUp

on newTool
end newTool
       ˙ü   P  í browse ÂBt~on mouseUp which
  if which is 3 then
    set the customKeys of stack "Home" to empty
    set the mcvendor of stack "Home" to the "MetaCard Corporation"
    set the mcversion of stack "MetaCard Menu Bar" to the version
    set the mcversion of stack "Help Directory" to the version
    put empty into field "File Name" of card 2 of stack "Importer"
    put empty into field "Find" of stack "Find"
    put empty into field "Find Text" of stack "Script Find"
    put empty into field "Replace Text" of stack "Script Find"
    put empty into field "Name" of stack "Order Forms"
    put empty into field "Organization" of stack "Order Forms"
    put empty into field "Licenses" of card 1 of stack "Order Forms"
    put empty into field "Key" of card 1 of stack "Order Forms"
    toplevel "Script Editor"
    set the width of stack "Script Editor" to 600
    set the height of stack "Script Editor" to 450
    close stack "Script Editor"
    choose browse tool
    go "Properties"
    repeat with i = 1 to the number of cards in this stack
      go to card i
      click at 7,7
    end repeat
    close stack "Properties"
  else pass mouseUp
end mouseUp
          $ $ Browse tool               .            	  ę  ě pointer ÂBd      $  $ $ Select controls               -            	  ę   î button ÂBd        ( $ $ Button tool               /            	  ę   ď field ÂBd      $ ( $ $ Field tool               0            	  ę   đ 
scrollbar ÂBd        L $ $ Scrollbar tool               1            	  ę   ń image ÂBd      $ L $ $ Image tool               _            	  ę   ř player ÂBd        p $ $ Player tool                           	  ę   ů line ÂBd      $ p $ $ Graphic tool (line)               N            	  ę   ň polygon ÂBd         $ $ Graphic tool (polygon)               =            	  ę   ó curve ÂBd      $  $ $ Graphic tool (curve)               :            	  ę   ô 
rectangle ÂBd        ¸ $ $ Graphic tool (rectangle)               <            	  ę   ő oval ÂBd      $ ¸ $ $ Graphic tool (oval)               9            	  ę   ö 
roundrect ÂBd        Ü $ $ Graphic tool (round rect)               >            	  ę   ÷ regular ÂBd      $ Ü $ $ Graphic tool (regular polygon)               ;            	  ę    Resource Mover           ő˛            ˙˙˙˙     W 
Helvetica   U 
Helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   U 
helvetica   ę    	Pťon openCard
  put the mainstacks into button "stackname"
  set the label of button "stackname" to the short name of the topstack
end openCard


function getSourceStack
local sourceStack
put the label of button "stackname" into sourceStack
if the mainstack of stack sourceStack is not sourceStack then
  answer "Stack" && quote & sourceStack & quote && "is not a main stack."
  return empty
else
  return sourceStack
end if
end getSourceStack
           ˛  î  ď    ó    ô  ő
  î  	@                     Main stack name:   ď 
stackname ŕĺŠe          Resource Mover    Home
MetaCard Menu Bar        	       ó Start Move ŕEŤplocal iconList

on checkStack
  local cCount, bCount
  put the number of cards into cCount
  repeat with c = 1 to cCount
    put the number of buttons of card c into bCount
    repeat with b = 1 to bCount
      if the icon of button b of card c is not 0
      then put the icon of button b of card c & return after iconList
      if the hiliteIcon of button b of card c is not 0
      then put the hiliteIcon of button b of card c & return after iconList
    end repeat
  end repeat
end checkStack

on copyStack bname, deststack
  if the hilite of button bname then
    if there is a stack bname of stack deststack then exit copyStack   # exit, if resource already exists
    set the visible of stack bname of stack "MetaCard Menu Bar" to false
    clone stack bname of stack "MetaCard Menu Bar"
    close stack ("copy of" && bname)
    set the visible of stack bname of stack "MetaCard Menu Bar" to true
    set the visible of stack ("copy of" && bname) to true
    set the mainstack of stack ("copy of"  && bname) to deststack
    set the name of stack ("copy of" && bname) to bname
  end if
end copyStack

on mouseUp
  local sourceStack, sCount, posoffset, newstuff
  send "mouseUp" to button "Delete Resources"
  put the motifIcons of stack "Answer Dialog" & cr \
      & the macintoshIcons of stack "Answer Dialog" & cr \
      & the windows95Icons of stack "Answer Dialog" & cr into iconList
  replace comma with return in iconList
  put empty into sourceStack
  set the cursor to watch
  lock screen
  lock messages
  
  put getSourceStack() into sourceStack
  if sourceStack is empty then exit to MetaCard
  
  # find icons used in script only
  if the hilite of button "Icons Set In Scripts:" then
    get field "iconlist"
    replace comma with space in it
    repeat for each word w in it
      put w & return after iconList
    end repeat
  end if
  
  # go through main and sub stacks to search for MetaCard icons
  if the hilite of button "MetaCard Icons" then
    set the defaultStack to sourceStack
    checkStack
    repeat for each line l in the substacks of stack sourceStack
      set the defaultStack to sourceStack
      set the defaultStack to l
      checkStack
    end repeat
  end if
  
  # Initialize variables
  local noDupIconList, mcIconList, myIconList, count
  repeat for each line l in iconList
    if l is not among the lines of noDupIconList
    then put l & return after noDupIconList
  end repeat
  
  # build a list of icon IDs in the MetaCard "Icons" stack
  put the number of cards in stack "Icons" into count
  repeat with i = 1 to count
    put the id of image 1 of card i  of stack "Icons" & return after mcIconList # one card per image
  end repeat
  
  # build a list of icon IDs in the  "My Icons" stack
  put the number of cards in stack "My Icons" into count
  repeat with i = 1 to count
    put the id of image 1 of card i  of stack "My Icons" & return after myIconList
  end repeat
  
  if noDupIconList is not empty then
    set the width of the templateStack to 128
    set the height of the templateStack to 128
    create stack "Moved Icons" in stack sourceStack
    set the defaultStack to "Moved Icons"
    local cardCount, which
    put the number of lines in noDupIconList into count
    put 1 into cardCount
    repeat with i = 1 to count
      put lineOffset(line i of noDupIconList, mcIconList) into which
      if which > 0 then
        copy image 1 of card which of stack "Icons"
        create card  -- create a new card in "Moved Icons" stack
        add 1 to cardCount
        paste
        set the id of image 1 of card cardCount of stack "Moved Icons" to line i of noDupIconList
      else
        put lineOffset(line i of noDupIconList, myIconList) into which
        if which > 0 then
          copy image 1 of card which of stack "My Icons"
          create card
          add 1 to cardCount
          paste
          set the id of image 1 of card cardCount to line i of noDupIconList
        end if
      end if
    end repeat
    delete card 1   #delete the first card of the stack which is empty
    close stack "Moved Icons" of stack sourceStack
  end if
  # now let's go back to the Resource Mover stack, and see if other resources need to be moved
  set the defaultStack to "Resource Mover"
  repeat for each item i in "Ask Dialog,Answer Dialog,Message Box,Execution Error,Cursors,File Selector,Page Setup,Printer Chooser,Navigator,Find,Brushes,libURL"
    copyStack i, sourceStack
  end repeat
  unlock screen
  unlock messages
  if the hilite of button "Execution Error" or the hilite of button "libURL" then
    answer "The" && quote & "Execution Error" & quote && "and libURL stacks must be" \
        & cr & "added to the message passing hierarchy to function" \
        & cr & "correctly.  Who should add the" && quote & "start using" & quote \
        & cr & "commands to the script of card 1 of this stack?" with "Do it for me" or "I'll do it myself"
    if it is "Do it for me" then
      if the hilite of button "Execution Error"
      then put "  start using" && quote & "Execution Error" & quote & cr into newstuff
      if the hilite of button "libURL"
      then put "  start using" && quote & "libURL" & quote &cr after newstuff
      get the script of card 1 of stack sourceStack
      put lineOffset("on preOpenStack", it) into posoffset
      if posoffset is 0 then
        put "on preOpenStack" & cr before newstuff
        put "end preOpenStack" & cr & cr after newstuff
      end if
      add 1 to posoffset
      put newstuff before line posoffset of it
      set the script of card 1 of stack sourceStack to it
    end if
  end if
  close this stack
  answer "All resources have been moved." & cr & "Please be sure to save stack"  && sourceStack
end mouseUp
         ô d          	       ô Cancel ŕEŤp +on mouseUp
  close this stack
end mouseUp
        ô G          	       ő Help ŕEŤp on mouseUp
  help
end mouseUp
       ` ô G          	        Resources to move  é         ,¨ ż  ě Ask Dialog @EŠ        @           	      í Answer Dialog @EŠ        \           	      	 Message Box @EŠ        x           	      ń Execution Error @EŠ                   	      ř Cursors @EŠ        @           	      ň File Selector @EŠ        \           	        Page Setup @EŠ        x           	        Printer Chooser @EŠ                   	        
Navigator @EŠ      $ @           	       ű Find @EŠ      $ \           	       ö MetaCard Icons @EŠ      $ x           	      
 Brushes @eŠ      $    Paint Brushes          	        libURL @eŠ        ° Đ  URL access library (libURL)          	      ţ Icons Set In Scripts: @EŠ don mouseUp
  if the hilite of me then show field "iconlist" else hide field "iconlist"
end mouseUp
         Ě            	     
  ý 	iconlist  !`       ° Ě ë         ę     Delete Resources ŕEŤpÉon mouseUp which
  set the cursor to watch
  local stkList, sourceStack
  
  #verify the stack who's resources are to be deleted
  put empty into sourceStack
  put getSourceStack() into sourceStack
  if sourceStack is empty then exit to MetaCard
  
  repeat for each item i in "Moved Icons,Ask Dialog,Answer Dialog,Message Box,Execution Error,Cursors, File Selector,Page Setup,Printer Chooser,Navigator,Find,Brushes,libURL"
    if there is a stack i of stack sourceStack
    then delete stack i of stack sourceStack
  end repeat
  if which is 1 then
    answer "All resources have been deleted." & cr & "Please be sure to save stack"  && the label of button "stackname"
    close this stack
  end if
end mouseUp
        } ô           	       đ Reload Stack       É    reloadname  gtestreloadfile  /home/raney/mc/gtestx.mc            ˙˙˙˙     U 
Helvetica   ę    	PUon preOpenCard
  put "A stack with the name" && quote & the reloadname of this stack & quote\
      && "has already been loaded.  Prior to loading" && the reloadfile of this stack\
      & ", do you want to save the current stack or purge it?" into field "prompt"
end preOpenCard

on closeCard
  put empty into field "prompt"
end closeCard
              ë  ě  í  î  ď  đ  ë  ÂB on mouseUp
  help
end mouseUp
          $ $              J            	  ę 
  ě prompt  	        0 L R        ę    í Save ŔDŤp7on mouseUp
  close this stack
  get the reloadname of this stack
  if the filename of stack it is empty then
    send "menuPick" && quote & "Save as..." & quote\
        to button "File" of stack "MetaCard Menu Bar"
  else save stack it
  delete stack it
  go to stack the reloadfile of this stack
end mouseUp
        ! _ <         	  ę   î Purge ŔDŤp on mouseUp
  close this stack
  get the reloadname of this stack
  delete stack it
  go to stack the reloadfile of this stack
end mouseUp
        | _ <         	  ę   ď Cancel ŔLŤp +on mouseUp
  close this stack
end mouseUp
        Ö _ <         	  ę   đ Help ŔDŤp on mouseUp
  help
end mouseUp
       1 _ <         	  ę   f Character Chooser    w        Black ÜÜÜÜÜÜ  ffffff  ˙ ˙ ˙  white   Š Š Š  	darkgray    ú    pcmap í
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
palegreen
yellow2
yellow2
yellow2
yellow2
yellow2
































































































yellow2
yellow2
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
salmon
palegreen
palegreen
yellow2
yellow2
yellow2
yellow2
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
salmon
palegreen
palegreen
yellow2
yellow2
palegreen
lightblue3
 lightblue3


 lightblue3
lightblue3
palevioletred1
lightblue3
 lightblue3

lightblue3
 lightblue3
 lightblue3
palevioletred1
lightblue3
lightblue3
lightblue3

palevioletred1
palevioletred1
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
lightblue3
 lightblue3
palevioletred1
palevioletred1
palevioletred1
 lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
 lightblue3
lightblue3
 lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
 lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
palevioletred1
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
lightblue3
 lightblue3
 lightblue3
palevioletred1
 lightblue3
 lightblue3
lightblue3
 lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
palevioletred1
palevioletred1
lightblue3
unimap 
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
salmon
yellow2
yellow2
yellow2
yellow2
yellow2
































































































yellow2
yellow2
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
yellow2
yellow2
yellow2
yellow2
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
salmon
yellow2
yellow2
salmon
lightblue3
 lightblue3


 lightblue3
lightblue3
palevioletred1
lightblue3
 lightblue3

lightblue3
 lightblue3
 lightblue3
palevioletred1
lightblue3
lightblue3
lightblue3

palevioletred1
palevioletred1
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
lightblue3
 lightblue3
palevioletred1
palevioletred1
palevioletred1
 lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
 lightblue3
lightblue3
 lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
 lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
palevioletred1
palevioletred1
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
lightblue3
 lightblue3
 lightblue3
palevioletred1
 lightblue3
 lightblue3
lightblue3
 lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
lightblue3
lightblue3
lightblue3
 lightblue3
palevioletred1
palevioletred1
lightblue3
macmap 
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
palegreen
palegreen
palegreen
yellow2
yellow2
palegreen
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
yellow2
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
































































































lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
lightblue3
 lightblue3
lightblue3
palegreen
 lightblue3


 lightblue3
palegreen
 lightblue3
lightblue3
 lightblue3

palegreen
 lightblue3
 lightblue3
salmon
lightblue3
lightblue3
salmon

salmon
salmon
lightblue3
lightblue3
salmon
salmon
salmon
salmon
salmon
 lightblue3
 lightblue3
salmon
 lightblue3
 lightblue3
lightblue3
lightblue3
lightblue3
salmon
palegreen
salmon
salmon
 lightblue3
 lightblue3
palegreen
 lightblue3
lightblue3
lightblue3
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
palegreen
lightblue3
salmon
 lightblue3
palegreen
salmon
lightblue3
palegreen
palegreen
salmon
salmon
palegreen
lightblue3
palegreen
palegreen
palegreen
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
 lightblue3
lightblue3
 lightblue3
 lightblue3
salmon
 lightblue3
 lightblue3
lightblue3
 lightblue3
salmon
palegreen
palegreen
 lightblue3
salmon
salmon
salmon
 lightblue3
salmon
salmon
salmon            ˙˙˙˙     U 
Helvetica   U Arial   U Charter   U 
Helvetica   U Clean   U Courier   U Monaco   U Arial Black   U Chicago   U none   U Athens   U new century schoolbook   U mincho   U fixed   U symbol  
 U 
Helvetica   Ç    	Pîlocal initted
on preOpenCard
  if initted then exit preOpenCard
  put true into initted
  switch the platform
  case "Win32"
    get the pcmap of this stack
    set label of btn "showmap" to "show mac characters"
    put "Mac only" into fld "hiddencharacterkey"
    break
  case "MacOS"
    get the macmap of this stack
    set label of btn "showmap" to "show windows characters"
    put "Windows only" into fld "hiddencharacterkey"
    break
  default
    get the unimap of this stack
    set label of btn "showmap" to "show mac characters"
    put "Mac only" into fld "hiddencharacterkey"
    break
  end switch
  local fnames
  put the fontnames & return & "none" into fnames
  sort fnames
  put fnames into button "fonts"
  set the label of button "fonts" to "none"
  set the textFont of group "tcharacters" to empty
  set the textFont of field "number" to empty
  repeat with a  = 128 to 255
    set backgroundcolor of btn (a - 127) of grp "tcharacters" to line (a + 1) of it
    set the name of button (a - 127) of grp "tcharacters" to numtochar(a)
  end repeat
  repeat with a = 1 to 128
    set backgroundcolor of btn a of grp "uppertcharacters" to line a of it
    set name of button a of grp "uppertcharacters" to numtochar(a - 1)
  end repeat
end preOpenCard

on mouseEnter
  if  word 1 of the target is "button"
  then put charToNum(the short name of the target) into field "number"
  else put empty into field "number"
end mouseEnter

on mouseUp
  local oldnum, newfont, c, f
  if word 1 of the target is "button" then
    if the label of button "fonts" is not "none"
    then put the label of button "fonts" into newfont
    if the selectedChunk is not empty then
      put word 2 of the selectedChunk into c
      put the long id of the selectedField into f
      put the short name of the target into the selectedChunk
      set the textFont of char c of f to newfont
    else
      put charToNum(the short name of the target) into oldnum
      put the short name of the target into field "number"
      set the textFont of line 1 of field "number" to newfont
      select the text of field "number"
      copy
      select empty
      put oldnum into field "number"
    end if
  end if
  set hscroll of fld "copytext" to (formattedwidth of fld "copytext")
end mouseUp
              Edit  Card Properties...  R  ¸  Ń  \  š  Ë  Ě  Í  ž  ż  Ŕ  Á  Â  Ă  Ä  Ĺ  Ć  ˝  _  b  c  ť  ş  ź  e  f
  š number  	`      Ě  -         Ç    ş fonts Ŕĺ	U šon menuPick which
  if which is "none" then put empty into which
  set the textfont of group "tcharacters" to which
set the textfont of group "uppertcharacters" to which 
end menuPick
        ž  ¨  symbol   Šalexandria
arial
arioso
avantgarde
bitstream charter
bookman
bookman l
century schoolbook
century schoolbook l
chancery l
charter
chevara
chevaraoutline
clean
clearlyu
clearlyu alternate glyphs
clearlyu arabic extra
clearlyu ligature
clearlyu pua
conga
console
courier
courier new
cursor
dingbats
dublin
fangsong ti
fixed
gatsby
gazelle
good city modern
goth
gothic
gothic l
helmet
helmetcondensed
helvetic
helvetica
kochi gothic
kochi mincho
ledfixed
lucida
lucidabright
lucidatypewriter
lucidux mono
lucidux sans
lucidux serif
meath
micro extend
mincho
moulin rouge
new century schoolbook
newspaper
nil
nimbus mono
nimbus mono l
nimbus roman
nimbus roman no9 l
nimbus sans
nimbus sans condensed
nimbus sans l
none
open look cursor
open look glyph
palatino
palladio
palladio l
prelude
song ti
standard symbols
standard symbols l
starbats
starmath
symbol
terminal
times
times new roman
timmons
utopia
verdana
zapf chancery
zapf dingbats  J      	     
  ť  	       h  e            Char number: 
  ź  	 yon mouseUp
  repeat with i = 1 to the number of buttons
   set the textfont of button i to empty
end repeat
end mouseUp
          0            Font:   ˝ help ŕEp on mouseUp
  help
end mouseUp
       ­h P          	       ž  ŕe`       Jř            	       ż this  ŕA
g  á  k  salmon    
P           	     
  Ŕ  	         !O j            Platform Specific   Á is  ŕA
g   š Ç  lightblue3    P           	     
  Â  	         ˘O             Moved in other platforms   Ă the  ŕA
g  ÷ x Ą  palevioletred1   <P           	     
  Ä  	        SO C            	Win/Unix   Ĺ secret  ŕA
g  y Ř g  
palegreen   P           	     
  Ć  	        ­O C            Mac/Win   ¸ tcharacters i           "            S  ŕDg  îîéé yellow2     "       transversalon  falseEdit  Object Properties...tranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       T  ŕDg  îîéé yellow2     "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       U  ŕDg  áákk salmon   @ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       V  ŕDg  áákk salmon   ` "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       W  ŕDg  áákk salmon    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       X  ŕDg  áákk salmon     "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Y  ŕDg         black áákk salmon   Ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Z  ŕDg  áákk salmon   ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       [  ŕDg  áákk salmon    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       \  ŕDg  áákk salmon    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ]  ŕDg  áákk salmon  @ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ^  ŕDg  áákk salmon  ` "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       _  ŕDg  áákk salmon   "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       `  ŕDg  îîéé yellow2    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       a  ŕDg  îîéé yellow2  Ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       b  ŕDg  îîéé yellow2  ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       c  ŕDg  îîéé yellow2     B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       d  ŕDg  áákk salmon     B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       e  ŕDg  áákk salmon   @ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       f  ŕDg  áákk salmon   ` B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       g  ŕDg  áákk salmon    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       h  ŕDg  áákk salmon     B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       i  ŕDg  áákk salmon   Ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       j  ŕDg  áákk salmon   ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       k  ŕDg  áákk salmon    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       l  ŕDg  áákk salmon    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       m  ŕDg  áákk salmon  @ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       n  ŕDg  áákk salmon  ` B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       o  ŕDg  áákk salmon   B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       p  ŕDg  îîéé yellow2    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       q  ŕDg  îîéé yellow2  Ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       r  ŕDg  áákk salmon  ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       s   ŕDg  ššÇÇ lightblue3     b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       t Ą ŕDg  ššÇÇ  lightblue3     b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       u ˘ ŕDg      @ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       v Ł ŕDg      ` b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       w ¤ ŕDg  ššÇÇ  lightblue3    b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       x Ľ ŕDg  ššÇÇ lightblue3     b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       y Ś ŕDg  ÷÷xxĄĄ palevioletred1   Ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       z § ŕDg  ššÇÇ lightblue3   ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       { ¨ ŕDg  ššÇÇ  lightblue3    b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       | Š ŕDg       b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       } Ş ŕDg  ššÇÇ lightblue3  @ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ~ Ť ŕDg  ššÇÇ  lightblue3  ` b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ź ŕDg  ššÇÇ  lightblue3   b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ­ ŕDg  ÷÷xxĄĄ palevioletred1    b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ž ŕDg  ššÇÇ lightblue3  Ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ż ŕDg  ššÇÇ lightblue3  ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ° ŕDg  ššÇÇ lightblue3            transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ą ŕDg               transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ˛ ŕDg  ÷÷xxĄĄ palevioletred1   @        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ł ŕDg  ÷÷xxĄĄ palevioletred1   `        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ´ ŕDg  ššÇÇ lightblue3           transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ľ ŕDg  ššÇÇ lightblue3            transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ś ŕDg  ššÇÇ lightblue3   Ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ˇ ŕDg  ššÇÇ lightblue3   ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ¸ ŕDg  ššÇÇ lightblue3           transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        š ŕDg  ÷÷xxĄĄ palevioletred1           transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ş ŕDg  ššÇÇ lightblue3  @        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ť ŕDg  ššÇÇ  lightblue3  `        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ź ŕDg  ÷÷xxĄĄ palevioletred1          transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ˝ ŕDg  ÷÷xxĄĄ palevioletred1           transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ž ŕDg  ÷÷xxĄĄ palevioletred1  Ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        ż ŕDg  ššÇÇ  lightblue3  ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ŕ ŕDg  ššÇÇ lightblue3     ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Á ŕDg  ššÇÇ lightblue3     ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Â ŕDg  ššÇÇ lightblue3   @ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ă ŕDg  ššÇÇ lightblue3   ` ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ä ŕDg  ššÇÇ lightblue3    ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ĺ ŕDg  ššÇÇ lightblue3     ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ć ŕDg  ššÇÇ lightblue3   Ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ç ŕDg  ššÇÇ  lightblue3   ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Č ŕDg  ššÇÇ  lightblue3    ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        É ŕDg  ššÇÇ lightblue3    ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ę ŕDg  ššÇÇ  lightblue3  @ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ë ŕDg  ššÇÇ lightblue3  ` ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	        Ě ŕDg  ššÇÇ lightblue3   ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	         Í ŕDg  ššÇÇ lightblue3    ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ą Î ŕDg  ššÇÇ lightblue3  Ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ˘ Ď ŕDg  ššÇÇ lightblue3  ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ł Đ ŕDg  ÷÷xxĄĄ palevioletred1     Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ¤ Ń ŕDg  ššÇÇ lightblue3     Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ľ Ň ŕDg  ššÇÇ lightblue3   @ Â      transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ś Ó ŕDg  ššÇÇ lightblue3   ` Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       § Ô ŕDg  ššÇÇ lightblue3    Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ¨ Ő ŕDg  ššÇÇ lightblue3     Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Š Ö ŕDg  ššÇÇ lightblue3   Ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ş × ŕDg  ÷÷xxĄĄ palevioletred1   ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ť Ř ŕDg  ššÇÇ  lightblue3    Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ź Ů ŕDg  ššÇÇ lightblue3    Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ­ Ú ŕDg  ššÇÇ lightblue3  @ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ž Ű ŕDg  ššÇÇ lightblue3  ` Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ż Ü ŕDg  ššÇÇ lightblue3   Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ° Ý ŕDg  ÷÷xxĄĄ palevioletred1    Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ą Ţ ŕDg  ÷÷xxĄĄ palevioletred1  Ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ˛ ß ŕDg  ššÇÇ lightblue3  ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ł ŕ ŕDg  ššÇÇ lightblue3     â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ´ á ŕDg  ššÇÇ lightblue3     â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ľ â ŕDg  ššÇÇ lightblue3   @ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ś ă ŕDg  ššÇÇ lightblue3   ` â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ˇ ä ŕDg  ššÇÇ lightblue3    â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ¸ ĺ ŕDg  ššÇÇ  lightblue3     â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       š ć ŕDg  ššÇÇ  lightblue3   Ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ş ç ŕDg  ššÇÇ  lightblue3   ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ť č ŕDg  ššÇÇ  lightblue3    â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ź é ŕDg  ššÇÇ  lightblue3    â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ˝ ę ŕDg  ššÇÇ  lightblue3  @ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ž ë ŕDg  ššÇÇ  lightblue3  ` â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       ż ě ŕDg  ššÇÇ  lightblue3   â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ŕ í ŕDg  ššÇÇ lightblue3    â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Á î ŕDg  ššÇÇ  lightblue3  Ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Â ď ŕDg  ššÇÇ  lightblue3  ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ă đ ŕDg  ÷÷xxĄĄ palevioletred1           transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ä ń ŕDg  ššÇÇ  lightblue3           transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ĺ ň ŕDg  ššÇÇ  lightblue3   @       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ć ó ŕDg  ššÇÇ lightblue3   `       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ç ô ŕDg  ššÇÇ  lightblue3          transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Č ő ŕDg  ššÇÇ lightblue3           transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       É ö ŕDg  ššÇÇ lightblue3   Ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ę ÷ ŕDg  ššÇÇ lightblue3   ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ë ř ŕDg  ššÇÇ  lightblue3          transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ě ů ŕDg  ššÇÇ lightblue3          transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Í ú ŕDg  ššÇÇ lightblue3  @       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Î ű ŕDg  ššÇÇ lightblue3  `       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ď ü ŕDg  ššÇÇ  lightblue3         transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Đ ý ŕDg  ÷÷xxĄĄ palevioletred1          transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ń ţ ŕDg  ÷÷xxĄĄ palevioletred1  Ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	       Ň ˙ ŕDg  ššÇÇ lightblue3  ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç 	     
  Ë 	Copytext  )`       '         Ç               Ě copy ŕEp Hon mouseup
select text of fld "copytext"
copy
select empty
end mouseup
       Ş' L          	     
  Í  	         '             Characters to copy:   Ń uppertcharacters a            "            Ó  ŕDg        "       transversalon  falseEdit  Object Properties...tranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ô  ŕDg  áákk salmon     "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ő  ŕDg  áákk salmon   @ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ö  ŕDg  áákk salmon   ` "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ×  ŕDg  áákk salmon    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ř  ŕDg  áákk salmon     "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ů  ŕDg         black áákk salmon   Ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ú  ŕDg  áákk salmon   ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ű  ŕDg  áákk salmon    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ü 	 ŕDg  áákk salmon    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ý 
 ŕDg  áákk salmon  @ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Ţ  ŕDg  áákk salmon  ` "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ß  ŕDg  áákk salmon   "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ŕ  ŕDg  áákk salmon    "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   á  ŕDg  îîéé yellow2  Ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   â  ŕDg  îîéé yellow2  ŕ "       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ă  ŕDg  îîéé yellow2     B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ä  ŕDg  îîéé yellow2     B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ĺ  ŕDg  îîéé yellow2   @ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ć  ŕDg  îîéé yellow2   ` B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ç  ŕDg  îîéé yellow2    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   č  ŕDg  îîéé yellow2     B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   é  ŕDg  îîéé yellow2   Ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ę  ŕDg  îîéé yellow2   ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ë  ŕDg  îîéé yellow2    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ě  ŕDg  îîéé yellow2    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   í  ŕDg  áákk salmon  @ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   î  ŕDg  îîéé yellow2  ` B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ď  ŕDg  îîéé yellow2   B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   đ  ŕDg  îîéé yellow2    B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ń  ŕDg  îîéé yellow2  Ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ň  ŕDg  îîéé yellow2  ŕ B       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ó   ŕDg        b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ô ! ŕDg        b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ő " ŕDg      @ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ö # ŕDg      ` b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ÷ $ ŕDg       b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ř % ŕDg        b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ů & ŕDg      Ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ú ' ŕDg      ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ű ( ŕDg       b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ü ) ŕDg       b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ý * ŕDg     @ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ţ + ŕDg     ` b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ˙ , ŕDg      b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç     - ŕDg       b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    . ŕDg     Ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    / ŕDg     ŕ b       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    0 ŕDg               transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    1 ŕDg               transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    2 ŕDg      @        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    3 ŕDg      `        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    4 ŕDg              transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    5 ŕDg               transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   	 6 ŕDg      Ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   
 7 ŕDg      ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    8 ŕDg              transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    9 ŕDg              transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    : ŕDg     @        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    ; ŕDg     `        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    < ŕDg             transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    = ŕDg              transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    > ŕDg     Ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    ? ŕDg     ŕ        transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    @ ŕDg        ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    A ŕDg        ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    B ŕDg      @ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    C ŕDg      ` ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    D ŕDg       ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    E ŕDg        ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    F ŕDg      Ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    G ŕDg      ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    H ŕDg       ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    I ŕDg       ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    J ŕDg     @ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    K ŕDg     ` ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç    L ŕDg      ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç     M ŕDg       ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ! N ŕDg     Ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   " O ŕDg     ŕ ˘       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   # P ŕDg        Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   $ Q ŕDg        Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   % R ŕDg      @ Â      transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   & S ŕDg      ` Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ' T ŕDg       Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ( U ŕDg        Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ) V ŕDg      Ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   * W ŕDg      ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   + X ŕDg       Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   , Y ŕDg       Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   - Z ŕDg     @ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   . [ ŕDg     ` Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   / \ ŕDg      Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   0 ] ŕDg       Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   1 ^ ŕDg     Ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   2 _ ŕDg     ŕ Â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   3 ` ŕDg        â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   4 a ŕDg        â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   5 b ŕDg      @ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   6 c ŕDg      ` â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   7 d ŕDg       â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   8 e ŕDg        â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   9 f ŕDg      Ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   : g ŕDg      ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ; h ŕDg       â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   < i ŕDg       â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   = j ŕDg     @ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   > k ŕDg     ` â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   ? l ŕDg      â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   @ m ŕDg       â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   A n ŕDg     Ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   B o ŕDg     ŕ â       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   C p ŕDg              transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   D q ŕDg              transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   E r ŕDg      @       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   F s ŕDg      `       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   G t ŕDg             transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   H u ŕDg              transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   I v ŕDg      Ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   J w ŕDg      ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   K x ŕDg             transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   L y ŕDg             transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   M z ŕDg     @       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   N { ŕDg     `       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   O | ŕDg            transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   P } ŕDg             transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   Q ~ ŕDg     Ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   R  ŕDg     ŕ       transversalon  falsetranversalon  falsetransveralon  falsefont  Clean         	  Ç   \ 
thewinmap  @        $˙ @  'GIF89a˙@ đ  ˙˙˙   !ů    ,    ˙@  ˙ŠËíŁ´ÚłŢźűâHćŚęĘśîÇňL×öçúÎ÷ţ
Ä˘ńL*ĚŚó	J§ÔŞőŐŰŹ÷3]ąůNŤ×ěś{IşeOÝ'E÷÷ĺŢ÷XÇŐˇ×¨ÇD7wŘčĄx@Ha	9yŔŮ9$c*čHYj×şřĘÁ¸ařQK;ášjűé*I+šű0KŤ	:,ürŰü[QfěĐËgÍ˝Í=-.UËžRžěŤ>V˙ę}zYżIJkî+/ 	zúöůËQN;|Y1[&0˘ŞMŃR=Dďľţ§š+ČO˘HÁ4Ôń1d%#Ăľ|	3ć2kÚź3§Î<{úü	4¨ĐĄD=4ŠŇĽL:}
5ŞÔŠTŤZ˝5ŤÖ­\ťzý
6ŹŘądË=6­ÚľlŰş}7ŽÜ˛4çÚ˝7/GlŠ[¤ŢÁ%AuŘŕ?Âîö11´Ć[ŐŁyłĆž%SÎYQbŃSmśůâgŠë.X´ëŘŤĄ&-ítŚŇŔfŤŽÍÔňbDIÎö=x\ä&íY9UćĐž-={ëÚťOáî=üĂŃĹ?>˝úőěŰť?žüůôëŰż?żţš  ;        _ Showmap ŕepńon mousedown
  get the platform
  if visible of grp "uppertcharacters" is true then
    if it is "macos" and visible of grp "uppertcharacters" is true then show image "thewinmap"
    else show image "themacmap"
  else if it is not "macos" then show image "macmap2"
end mousedown

on mouserelease
  get the platform
  if visible of group "uppertcharacters" is true then
    if it is "macos" then hide image "thewinmap"
    else hide image "themacmap"
  else if it is not "macos" then hide image "macmap2"
end mouserelease
on mouseUP
  get the platform
  if visible of group "uppertcharacters" is true then
    if it is "macos" then hide image "thewinmap"
    else hide image "themacmap"
  else if it is not "macos" then hide image "macmap2"
end mouseUP
        h ¸  show mac characters          	       b message ŕA
g  î é   Yellow2    
i           	     
  c hiddencharacterkey 	         !h s            	Mac only   e macmap2  @         "  B  źGIF89a B ń  ˙˙˙˙˙˙îé   !ů    ,     B  ˙ŠËíŁ´ÚłŢźűâHćŚęĘśîÇňL×öçúÎ÷ţ
)ńL&%ĘćJ§*§Őšj-2ëU2Ă\ŞůNCČß5{é`ßewXĎëŁôzźőwg÷66¸¨HÓ7×(čĺ('ŠľhyiňŘčˇ0ÉIgYjzZą	)şZIŘ40Đ4şj{k ÚĐéŠ Ú$;Ky{l	k4,öÔl
ýôĚÜw-ěýć¤íTL6ÍÜ}Ë>Č]ý>O/´ËĐŤ~OŮîż­O@<_ő
´qďS§äůcçą+ĆHřka°t˙­şł&1˘Ĺ$O`LocCu?T¨d`É4CDšk-ŁŃÚ7ąŚĐĄŠX1$ĽóP° 7Ę$
5ŞJcÜÂDętËc
VęÍ9ńí<Jľę×°lŐĽ1)VšŔŚl7o"@?Óęýßr+><d°Úť;ĆĄmÓÇ+ëŠk9łć)7{ţ:´čŃ¤K>:ľęŐŹ[ť~;ślÓFgŰv]űśîÔšwű&ÝűˇđĎÁˇ\ü¸r*q]$_HóĎŁ[˙1YüŽ{QÖě2tW¸öťúáŻzČEőőôť˛?žÉBőű[hßŐ|%č_pE&#(h` ˘ vü5HĄ{ŇŐYVČ! âĄyvHád¨a$úç|öćÜ+¸E~/Ś7ciĄUy2¨c"ňř]	ä&(cNJ"@>IĽKzřVZ~pe[~Ů`IfffjŽÉŚ  ;        f 
themacmap  @         "  @  mGIF89a @ ń  ˙˙˙   îé   !ů    ,     @  ˙ŠËíŁ´ÚłŢźűâHćŚęĘśîÇňL×öçúÎ÷ţ
Ä˘ńL*ĚŚó	J§ÔŞőÍjˇÜnH Çd	ů|öŞ×l5ú-6ĂßíşýţĂĺú2ţčÓĆG&¨¸řrčáÇ8IYé)	)`Ůéůů°	fPz:şĘęI:zJŤÚ+gÚkë@;|Ťk|źÖÜ Vű\<MmĹëűq-Đ­].î¤ˇĚĚ :Žž~$Ęš˝É.??IŻ_ăNz¸0 ~÷"	<pAMř:|1˘Ä+Zź1ŁĆ˙;zü2¤Č$K<2ĽĘ,[ş|	3ŚĚ4kÚź3§i:{NspĄwç63z´Ą,{čâ%eş ęSĽ+őßŤWôčťHĂbEpv¨PľTŮŚ5đíÚ\Ö5ŤÂ]źüiĺťˇŹ[1ŘzĽę­đˇą]÷ŕE1aĂ$;ăi×q9ćŔY.šńŹG_'{#ýůWgż}3Ďp­łg˛hĚÉ0j×`çŽĚ´đÝr9ÜE9ŕ/~ůeŮłv>Şô_äöý;`ŰĎĄˇĽÍmĎôčŇá/˙řőć÷đaż&ŢúőöăŻ˙f8jőš§XŮĄY~ćą§ŕű§]aĄGÝžuv[sá1Ś!PUA!nşQŕh¸ßKř (>Sátú×`|,BXâiśLČÝŐ9Řb"¨ŰÚm§@"¤=âčâQŞ"1'^8ă:rÓeöĽ'dFů%XŽw&2¸ĺQRéćŚšd61~XuŢçç<˛Ś%iˇ&b1Ľ0]Rč§rÉhŁäĹIäŮŚ¤âhŁ~řHć˘~hÍé§ćI'ŹŻfůčŚŇŘ§Şŕ	9äĄ-&z!ŻÚšcyŠę
i¨´˙ň:PŽŽ§sÖdĄ˝6âÄÎ˛'LşmŰN+î¸:îuŹňwlš	vť+źŃ2cł*ŠĄźś­ľÔşęď°J¸)ŔŘx-úú]ă+0ŔŰŽą`ŇëpĚ
Ú
÷)}őUqŚą
0k}Ć+[§XĆPR9KvźoÁŕâě˛zŇ:bo\ňqZnĎ:ýäýrÂM3íóŽQł|4Éě
5ŠC t\;kűőŃ/ýbËRóöÔH}śŘi'Íp­Jł5żé˘M×ÓÓÝöľ}Ű­ÓdŻ­÷Ű:UśÚť8âTžő||'Ž¸ŕv>]šĺEc>8çxcMxćww^ˇĹçˇá{MŢóôV§ţŻOśß{îşďÎ{ďž˙|đÂO|ńş  ;        R    i |on mouseup
  if hilitedbutton of me is 1
  then show grp "uppertcharacters"
  else hide grp "uppertcharacters"
end mouseup
        ˙ü  &  S ASCII @D         F          	  Ç 	       T ISO @D       K  7          	  Ç	       Đ  ŕAg    @               	        Print Field  Âconstant po = 36
local pagenumber #holds pagenumber between handlers
on PrintField HeaderText,BodyText,FooterText,SourceFieldID
  local TActualPageWidth #width of page subtracting right and left print margins
  local TPrintMargins #margins stored in array for script simplification
  local TPageWidth,TPageHeight #height and width of the page
  local TScrolling,TPageLine,TScrollList #scroll values for text height calculations
  lock messages
  
  --General Initialization
  if the optionKey is down
  then open printing with dialog
  else open printing
  put item 1 of the printmargins into TPrintMargins["left"]
  put item 2 of the printmargins into TPrintMargins["top"]
  put item 3 of the printmargins into TPrintMargins["right"]
  put item 4 of the printmargins into TPrintMargins["bottom"]
  put item 1 of the printpapersize into TPageWidth
  put item 2 of the printpapersize into TPageHeight
  put 0 into TScrolling
  put 0 into TPageLine
  put 1 into pagenumber
  put TPageWidth -TPrintMargins["right"]-TPrintMargins["left"] into TActualPageWidth
  # prepare template for invisible stacks the width of the page.
  set the backgroundcolor of the templatestack to "white"
  set the visible of the templatestack to false
  set the width of  the templatestack to TActualPageWidth
  set the formatForPrinting of the templatestack to true
  # prepare template for fields in these stacks
  set the width of the templatefield to TActualPageWidth
  # the following three properties are set so that text height calculations are correct.
  set the borderwidth of the templatefield to 0
  set the margins of the templatefield to 6
  set the showborder of the templatefield to true
  set the opaque of the templatefield to false
  set the fixedlineheight of the templatefield to false
  set the lockloc of the templatefield to true
  set the tabstops of the templatefield to the tabstops of SourceFieldID
  # Header and Footer initialization
  if headertext is not empty then
    create stack "PFHEADER"
    set the defaultstack to "PFHEADER"
    PFSetFont SourceFieldID
    get PFCreateHeaderandFooter(headertext)
    # if size of header or footer is greater then current margins will allow, then
    # increase top or bottom margins.
    if it > TPrintMargins["top"] then put it into TPrintMargins["top"]
  end if
  if footertext is not empty then
    create stack "PFFOOTER"
    set the defaultstack to "PFFOOTER"
    PFSetFont SourceFieldID
    get PFCreateHeaderandFooter(footertext)
    if it>TPrintMargins["bottom"] then put it into TPrintMargins["bottom"]
  end if
  
  --Body initialization
  set height of the templatestack to TPageHeight - TPrintMargins["bottom"] - TPrintMargins["top"]
  create stack "PFBODY"
  set the defaultstack to "PFBODY"
  PFSetFont SourceFieldID
  create field
  set the rect of field 1 to rect of this card
  PFSetText bodytext
  put the pageheights of field 1 into TScrollList
  
  --Printing Cycle
  # headers and footers are split up into three fields by tab items
  set the itemdelimiter to tab
  repeat forever
    If headertext is not empty then
      set the defaultstack to "PFHEADER"
      PFSetText headertext
      put item 3 of field 1 into field 3
      put item 2 of field 1 into field 2
      put item 1 of field 1 into field 1
      print this card into TPrintMargins["left"],po,TPageWidth-TPrintMargins["right"],po+the height of stack "PFHEADER"
    end if
    If footertext is not empty then
      set the defaultstack to "PFFOOTER"
      PFSetText footertext
      put item 3 of field 1 into field 3
      put item 2 of field 1 into field 2
      put item 1 of field 1 into field 1
      print this card into TPrintMargins["left"],TPageHeight-po-height of stack "PFFOOTER",TPageWidth-TPrintMargins["right"],TpageHeight-po
    end if
    add 1 to TPageLine
    add 1 to pagenumber
    set the defaultstack to "PFBODY"
    set the height of fld 1 to line tpageline of TScrollList
    set the scroll of fld 1 to TScrolling
    add line TPageLine of TScrollList to TScrolling
    print this card into TPrintMargins["left"],TPrintMargins["top"],TPageWidth-TPrintMargins["right"],TPageHeight - TPrintMargins["bottom"]
    if TPageLine is the number of lines of TScrollList then exit repeat
    print break
  end repeat
  -----------------------------------------------Clean up
  close printing
  if headertext is not empty then delete stack "PFHEADER"
  if footertext is not empty then delete stack "PFFOOTER"
  delete stack "PFBODY"
  reset the templatestack
  reset the templatefield
end PrintField

on PFSetText thetext
  local ExpressionStart, ExpressionEnd
  if "<p>" is in thetext or matchChunk(thetext, "<(.+>.+</.+)>") is true then set the htmltext of field 1 to thetext
  else put thetext into field 1
  repeat until matchChunk(field 1, "<%(.[^<]*)%>", ExpressionStart, ExpressionEnd) is false
    put value(char ExpressionStart to ExpressionEnd of field 1) into char ExpressionStart-2 to ExpressionEnd+2 of field 1
  end repeat
end PFSetText

# Need to set the font after the stack is created to prevent inheritance of
# non-formatForPrinting fonts from Home stack
on PFSetFont SourceFieldID
  if SourceFieldID is not empty \
      and (the effective textFont of SourceFieldID is not "Helvetica" or the effective textSize of SourceFieldID is not 14) then
    set the textFont of this stack to the effective textFont of SourceFieldID
    set the textSize of this stack to the effective textSize of SourceFieldID
    set the textStyle of this stack to the effective textStyle of SourceFieldID
  else set the textSize of this stack to 12
end PFSetFont

function PFCreateHeaderandFooter thetext
  create field
  PFSetText thetext
  set the height of this stack to the formattedheight of field 1
  create field
  create field
  get rect of this card
  set the rect of field 1 to it
  set the rect of field 2 to it
  set the rect of field 3 to it
  set the textalign of field 1 to left
  set the textalign of field 2 to "center"
  set the textalign of field 3 to right
  return height of this stack+po
end PFCreateHeaderandFooter
  u        Black ffffff  ˙˙˙˙˙˙ white   ŠŠŠŠŠŠ 	darkgray    ˇĹÔi             U 
Helvetica   W 
Helvetica   W 
Helvetica  @W 
Helvetica   U 
Helvetica   W 
Helvetica   U 
Helvetica  W 
Helvetica  W 
Helvetica   W 
Helvetica   W 
Helvetica   U 
Helvetica   U Marlett  U 
Helvetica   U 
Helvetica   U 
Helvetica  
 U 
Helvetica   W Times New Roman  U 
Helvetica   U Future   U 
Helvetica   U Courier   U 
helvetica   ę    	PŐon preopenstack
  set the label of button "Stack Name" to the short name of the topStack
  put returnfields(selectedText of btn "the fields") into field "field names"
end preopenstack

function returnfields fieldtype
  local thefields, olddefault
  put the short name of the defaultStack into olddefault
  set defaultStack to label of btn "Stack Name"
  if fieldtype is "card" then
    repeat with i = 1 to the number of card fields
      put short name of cd fld i into line i of thefields
    end repeat
  else
    repeat with i =1 to the number of background fields
      put short name of bg fld i into line i of thefields
    end repeat
  end if
  set the defaultstack to olddefault
  return thefields
end returnfields
           Ôi          ˙  ü  ö  ý  ô  ů  ú  ű  
  ô Footer 9h          LP 7          ę                 ő    `        5
  ö Header 9h          L ĂP 7          ę         ÷    `       Ä  5  ů New Button âCpon mouseUp
  get last word of the selectedfield
  if it is 2 or it is 3 then put "<%the time%>" after the selectedchunk
  else
    put "<%the time%>" after field "header"
    enable field "header"
    hilite btn "header"
    focus field "header"
  end if
end mouseUp
        Ä 0 ( Insert time               ń             	       ú New Button âCpon mouseUp
  get last word of the selectedfield
  if it is 2 or it is 3 then put "<%the date%>" after the selectedchunk
  else
    put "<%the date%>" after field "header"
    enable field "header"
    hilite btn "header"
    focus field "header"
  end if
end mouseUp
        ě 0 ) Insert date               ű             	       ű New Button âCpon mouseUp
  get last word of the selectedfield
  if it is 2 or it is 3 then put "<%pagenumber%>" after the selectedchunk
  else
    put "<%pagenumber%>" after field "header"
    enable field "header"
    hilite btn "header"
    focus field "header"
  end if
end mouseUp
        0 ( Insert page number               W             	       ü Header @EŠ on mouseUp
  if the hilite of me is "true" then
    enable field "header"
    focus on field 2
  else disable field "header"
end mouseUp
         Ę D          	       ý Footer @EŠ on mouseUp
  if the hilite of me is "true" then 
enable field "footer"
focus on field 3
  else disable field "footer"
end mouseUp
         D          	     
  ˙ field names  ˇ)`        D¸ p           field names  Header  Footer        	`      ł E  n   the fields ŔÁ	u hon menupick
  put returnfields(selectedtext of btn "the fields") into field "field names"
end menupick
         (Č    Card
Background
        	        stack name Ŕe)u fon mouseUp
  put returnfields(selectedtext of btn "the fields") into field "field names"
end mouseUp
        X t  Print Field  MC Stack Menu        	        Print ŕEŤpon mouseUp
  local htext,btext,ftext
  if selectedtext of fld "field names" is empty then
    answer "Please choose a field to print"
    exit mouseup
  end if
  get the hilitedLines of field "field names"
  if the selectedText of btn "the fields" is "Card"
  then get the long id of card field it of stack (the label of btn "stack name")
  else get the long id of background field it of stack (the label of btn "stack name")
  put the htmltext of it into btext
  if enabled of field "header" is true then put field "header" into htext
  if enabled of field "footer" is true then put field "footer" into ftext
  printField htext,btext,ftext,it
end mouseUp
        XH h          	        Help ŕEŤp on mouseUp
  help
end mouseUp
       H h          	     
    	          X            Print Stack:   c libURL    w        Black ĐĐĐĐĐĐ          ˙˙˙˙˙˙ white ŹŹŹŹŹŹ  ĐĐĐĐĐĐ    R5%Q   	cVersion  1.0.10cDefaultHeader  'METHOD --- HTTP/1.1
Host: 
User-Agent: customHTTPHeaders    ˘##libUrl v1.0.10
---------------------------------------------------------------------
##shared locals
local lvCount,lvBlockingUrl,lvBlockBypass, lvLogField, lvTickle
local lvJumpOut ##used by libUrlResetAll to make sure "wait for messages" loops exit cleanly

local laLoadReq,laLoadedUrls,laStatus,laUrl,laLength,laData
local laAction,laUrlLoadStatus,laUrlErrorStatus,laLoadQ, laLoadingUrls
local laUser,laPasswd,laAuth,laBytes,laLongFileName,laHost
local laMessg,laPostData,laTemp
local laCancelled,lvStatusCallback
local laFile,laReadBytes,laWriteBytes
local laConnectHost, laConnectID, laSocketUser

local lvSocketToken, lvSocketOpenStart, lvSocketOpenMessageID ##for socket opening

---------------------------------------------------------------------
##http locals
local laConn,laCode,laChunk,laRhHeader, laHaveHeader, laNeedChunk
local laStatusCode, laStatusMessage
local laLineNum,laTmpData
local laHttpDataDone
local laCurrentHttpHeaders
-----------------------------------------------------------------------
##ftp locals
local lvFtpMode, lvFtpStopTime, lvDataPortCount, lvFtpListCommand
local laFtpDataDone
local laControlXDataMap ##control sockets keyed by data sockets
local laHome,lvNeedDir
local laControlXLocalMap,laTransPasvIP,laTransActvIP,laMode
local laStopUnit, laStopSec
local laFTPCommandStatus
local lvFtpCommandSocket ##socket used by libUrlFtpCommand
local laUrlByFile ##used by libUrlUploadFile to track which files go to which url

#######Engine Calls#############################################
#######  load url  #############################################
------------------------------------------------
on loadUrl x,y
  put false into lvJumpOut
  put ulStripUrl(x) into newUrl
  if lvCount is empty then
    put "6923" into lvCount
  end if
  switch
  case newUrl is among the lines of  the keys of laLoadingUrls
    ##don't allow loads if the same url is waiting to load
    return "error  URL is currently loading" ##with empty
    break
  case newUrl is not among the lines of  the keys of laLoadedUrls OR laUrlLoadStatus[newUrl] is not "cached"
    put the long id of the target &","& item 2 of the params into laMessg[newUrl]
    put true into laLoadReq[newUrl]
    put 1 into laLoadingUrls[newUrl] #for tracking
    put "getData" into laAction[newUrl]
    put empty into laUrlErrorStatus[newUrl]
    put empty into laUrlLoadStatus[newUrl]
    put empty into laLoadedUrls[newUrl]
    
    ulGetFormat newUrl,lvCount
    if laUrlLoadStatus[newUrl] is "error" and not laCancelled[newurl] then
      ulSendMessage newUrl ##send message now only if error occurred befoe block point
      return "error"
      ----------------------
    else if laCancelled[newUrl] then
      ##user cancelled after starting but before blocking point
      delete local laLoadedUrls[newUrl]
      delete local laUrlLoadStatus[newUrl]
      delete local laUrlErrorStatus[newUrl]
      delete local laStatus[newUrl]
      delete local laCancelled[newUrl]
      delete local laCurrentHttpHeaders[newUrl]
    else
      return empty
    end if
    -----------------------
    break
  case newUrl is among the lines of  the keys of laLoadedUrls and laUrlLoadStatus[newUrl] is "cached" #url is in cache
    
    put the long id of the target &","& item 2 of the params into laMessg[newUrl]
    ulSendMessage newUrl ##send message
    return empty
  end switch
end loadUrl

#############unload url############

on unloadUrl pUrl
  put ulStripUrl(pUrl) into pUrl
  ##need to check if it is loading or in loadQ
  if pUrl is among the lines of keys(laLoadingUrls) then
    delete local laLoadingUrls[pUrl]
    ulCancelRequest pUrl ##stop any current downloads
    delete local laData[pUrl] ##in case download hasn't started
    return empty
  else if pUrl is among the lines of keys(laUrlLoadStatus) then
    delete local laLoadedUrls[pUrl]
    delete local laUrlLoadStatus[pUrl]
    delete local laUrlErrorStatus[pUrl]
    delete local laStatus[pUrl]
    return empty
  else ##not loaded
    return "can't find url"
  end if
end unloadUrl

############# get url ############

on getUrl x
  put false into lvJumpOut
  put ulStripUrl(x) into newUrl
  if newUrl is among the lines of the keys of laLoadedUrls and laUrlLoadStatus[newUrl] is "cached" then
    if "2.4.1" is in the version then
      return  empty  with  laLoadedUrls[newUrl]
    else
      return  empty  with cachedUrl laLoadedUrls[newUrl]
    end if
  end if
  if newUrl is among the lines of keys(laLoadingUrls) then
    return "error  URL is currently loading" with empty
  end if
  if lvBlockingUrl is empty or lvBlockBypass is true then
    put newUrl into lvBlockingUrl
    if lvCount is empty then
      put "6923" into lvCount
    end if
    
    put empty into laUrlErrorStatus[newUrl]
    put "getData" into laAction[newUrl]
    put empty into laData[newUrl]
    ulGetFormat newUrl,lvCount # convert url to components
    
    ##final clean up here
    delete local laStatus[newUrl]
    put laUrlErrorStatus[newUrl] into tRetResult
    delete local  laUrlErrorStatus[newUrl]
    if "2.4.1" is in the version then
      ##for mc 2.4.1 engine only
      put laData[newUrl] into tRetData ##swap data before deleting laData
      delete local laData[newUrl]
      put empty into lvBlockingUrl ##clear
      return tRetResult  with tRetData
    else
      put empty into lvBlockingUrl ##clear
      return tRetResult with url laData[newUrl]
    end if
  else ##blocked by previous request
    return "error Previous request not completed" with empty
  end if
end getUrl

############### post Url ###################

on postUrl y,x
  put false into lvJumpOut
  put ulStripUrl(x) into newUrl
  if newUrl is among the lines of keys(laLoadingUrls) then
    return "error  URL is currently loading" with empty
  end if
  if lvBlockingUrl is empty  or lvBlockBypass is true then
    put newUrl into lvBlockingUrl
    if lvCount is empty then
      put "6923" into lvCount
    end if
    put y into laPostData[newUrl]
    put "postData" into laAction[newUrl]
    put empty into laUrlErrorStatus[newUrl]
    put empty into laData[newUrl]
    ulGetFormat newUrl,lvCount # convert url to components
    
    ----------------------------------
    ##final clean up here
    delete local laStatus[newUrl]
    put laUrlErrorStatus[newUrl] into tRetResult
    delete local  laUrlErrorStatus[newUrl]
    if "2.4.1" is in the version then
      ##for mc 2.4.1 engine only
      put laData[newUrl] into tRetData
      delete local laData[newUrl]
      put empty into lvBlockingUrl ##clear
      return tRetResult  with tRetData
    else
      put empty into lvBlockingUrl ##clear
      return tRetResult with url laData[newUrl]
    end if
    -----------------------------------
  else ##blocked by previous request
    put "error Previous request not completed" into tRetResult
    return tRetResult with empty
  end if
end postUrl

############### put x into url ################

on putUrl y,x
  put false into lvJumpOut
  put ulStripUrl(x) into newUrl
  if newUrl is among the lines of keys(laLoadingUrls) then
    return "error  URL is currently loading" with empty
  end if
  if lvBlockingUrl is empty  or lvBlockBypass is true then
    put newUrl into lvBlockingUrl
    if lvCount is empty then
      put "6923" into lvCount
    end if
    put y into laPostData[newUrl]
    put "putData" into laAction[newUrl]
    put empty into laUrlErrorStatus[newUrl]
    put empty into laData[newUrl]
    ulGetFormat newUrl,lvCount # convert url to components
    ----------------------------------
    ##final clean up here
    delete local laStatus[newUrl]
    put laUrlErrorStatus[newUrl] into tRetResult
    delete local  laUrlErrorStatus[newUrl]
    if "2.4.1" is in the version then
      ##for mc 2.4.1 engine only
      put laData[newUrl] into tRetData
      delete local laData[newUrl]
      put empty into lvBlockingUrl ##clear
      return tRetResult  with tRetData
    else
      put empty into lvBlockingUrl ##clear
      return tRetResult with url laData[newUrl]
    end if
    -----------------------------------
    
  else ##blocked by previous request
    put "error Previous request not completed" into tRetResult
    return tRetResult with empty
  end if
end putUrl

###############delete url########################

on deleteUrl x
  put false into lvJumpOut
  put ulStripUrl(x) into newUrl
  if newUrl is among the lines of keys(laLoadingUrls) then
    return "error  URL is currently loading" with empty
  end if
  if lvBlockingUrl is empty  or lvBlockBypass is true then
    put newUrl into lvBlockingUrl
    if lvCount is empty then
      put "6923" into lvCount
    end if
    
    put "deleteData" into laAction[newUrl]
    put empty into laUrlErrorStatus[newUrl]
    ulGetFormat newUrl,lvCount # convert url to components
    
    ----------------------------------
    ##final clean up here
    delete local laStatus[newUrl]
    put laUrlErrorStatus[newUrl] into tRetResult
    delete local  laUrlErrorStatus[newUrl]
    if "2.4.1" is in the version then
      ##for mc 2.4.1 engine only
      put laData[newUrl] into tRetData
      delete local laData[newUrl]
      put empty into lvBlockingUrl ##clear
      return tRetResult  with tRetData
    else
      put empty into lvBlockingUrl ##clear
      return tRetResult with url laData[newUrl]
    end if
    -----------------------------------
    
  else ##blocked by previous request
    put "error Previous request not completed" into tRetResult
    return tRetResult with empty
  end if
end deleteUrl

######## cachedUrls ################################################
on getCachedUrls
  #ensure url has "cached" status
  #there may be urls with data but with "error" status
  #for example, with a 404 error, the "courtesy page" may appear in the data
  put keys(laUrlLoadStatus) into tLoadedKeys
  repeat for each line tKey in tLoadedKeys
    if laUrlLoadStatus[tKey] is "cached" then
      put tKey & cr after tRes
    end if
  end repeat
  if char -1 of tRes is cr then delete char -1 of tRes
  return tRes
end getCachedUrls

######## UrlStatus ###################################################
on getUrlStatus x #x is url
  put ulStripUrl(x) into x
  return laUrlLoadStatus[x]
end getUrlStatus

####################breaks down the url into components####################
on ulGetFormat pUrl,pCount
  local tPre,tUser,tPass,tHost,tPort,tFileName
  
  switch
    ##http with authorization name and password ( port specified)
  case  matchText (pUrl, "^(http)://(.+):(.+)@(.[^/]+)(:.[^/]+)(/.*)",tPre,tUser,tPass,tHost,tPort,tFileName)  is true ##with auth and special port
    break
    
    ##http with authorization name and password (no port specified)
  case  matchText (pUrl, "^(http)://(.+):(.+)@(.[^/]+)(/.*)",tPre,tUser,tPass,tHost,tFileName)  is true
    break
    
    ##http ( port specified)
  case  matchText (pUrl, "^(http)://(.[^/]+)(:.[^/]+)(/.*)",tPre,tHost,tPort,tFileName) is true
    break
    
    ##http ( port specified) no filename
  case  matchText (pUrl, "^(http)://(.[^/]+)(:.[^/]+)()",tPre,tHost,tPort,tFileName) is true
    break
    
    ##http ( no port specified)
  case  matchText (pUrl, "^(http)://(.[^/]+)(/.*)",tPre,tHost,tFileName) is true
    break
    
    ##http ( no port specified) no file
  case  matchText (pUrl, "^(http)://(.[^/]+)()",tPre,tHost,tFileName) is true #+#
    break
    
    ##ftp  with authorization name and password (port specified)
  case  matchText (pUrl, "^(ftp)://(.+):(.+)@(.[^/]+)(:.[^/]+)(/.*)",tPre,tUser,tPass,tHost,tPort,tFileName)  is true
    break
    
    ##ftp  with authorization name and password (no port specified)
  case  matchText (pUrl, "^(ftp)://(.+):(.+)@(.[^/]+)(/.*)",tPre,tUser,tPass,tHost,tFileName)  is true
    break
    
    ##ftp without name and password (port specified)
  case matchText (pUrl,"^(ftp)://(.[^/]+)(:.[^/]+)(/.*)",tPre, tHost,tPort,tFileName) is true
    break
    
    ##ftp without name and password (no port specified)
  case matchText (pUrl,"^(ftp)://(.[^/]+)(/.*)",tPre, tHost,tFileName) is true
    break
    
  default
    put "invalid URL: " & quote & pUrl & quote into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "error" into laUrlLoadStatus[pUrl]
    exit "ulGetFormat"
  end switch
  
  ##set connection IP
  switch tPre
  case "http"
    if the httpProxy <> empty then
      put the httpproxy into tIPAddress
      replace "http://" with "" in tIPAddress ##not sure if this is possible but just in case
      if tPort <> empty then
        put tPort into tUrlPort ##save this for setting laFilename below
      else
        put ":80" into tUrlPort
      end if
      #get the proxy port
      put the itemdel into tSavedDel
      set the itemdel to ":"
      if the number of items of tIPAddress > 1 and item -1 of tIPAddress is a number then
        put ":" &  item -1 of tIPAddress into tPort
        delete item -1 of tIPAddress #remove port for now
      else
        put ":80" into tPort
      end if
      set the itemDel to tSavedDel
    else if tPort <> empty then
      put tHost  into tIPAddress
    else
      put tHost  into tIPAddress
      put ":80" into tPort
    end if
    
    put tIPAddress into tTempIPAddress
    replace "." with empty in tTempIPAddress
    replace ":" with empty in tTempIPAddress
    
    if tTempIPAddress  is not a number then
      get hostNameToAddress(tIPAddress)
      if the result is empty then
        put line 1 of it & tPort into tConnectHost
      else
        put true into tBadAddress
      end if
    else
      put tIPAddress & tPort into tConnectHost
    end if
    break
    
  case "ftp"
    
    put tHost into tTempHost
    if tPort is empty then put ":21" into tPort
    replace "." with empty in tTempHost
    replace ":" with empty in tTempHost
    if tTempHost  is not a number then
      get hostnameToAddress(tHost)
      if the result is empty then
        put line 1 of it & tPort into tConnectHost
      else
        put true into tBadAddress
      end if
    else
      put tHost & tPort into tConnectHost
    end if
    if tUser is empty then
      put "anonymous" into tUser
      put "guest" into tPass
    end if
    
    break
  default
    put "invalid URL: " & quote & pUrl & quote into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "error" into laUrlLoadStatus[pUrl]
    exit "ulGetFormat"
    break
  end switch
  
  if tBadAddress then
    put "invalid host address" into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then
      put "error" into laUrlLoadStatus[pUrl]
      delete local laLoadingUrls[pUrl]
    end if
    ##need better clean up here
    exit "ulGetFormat"
  end if
  
  ##dc 080702
  ##need to keep separate reference for ftp IPs by user
  ## in case we need to connect to two accounts simultaneously
  ##so just keep user + host ref for all  urls
  ##so laConnectHost has format host:port|user
  put tConnectHost &  "|" & tUser into laConnectHost[pUrl]
  
  if tUser is not empty then put urlDecode(tUser) into laUser[pUrl]
  if tPass is not empty  then
    put urlDecode(tPass) into laPasswd[pUrl]
    put "true" into laAuth[pUrl]
  end if
  put tHost into laHost[pUrl]
  if tFileName is empty then put "/" into tFileName
  if tPre = "http" and the httpProxy <> empty then
    ----changed for 1.0.10 Remove username:password from url when sending request through a proxy
    put "http://" & tHost & tUrlPort & tFilename into laLongFileName[pUrl]
    ## put pUrl into laLongFileName[pUrl] ##must request full url when using http proxy
  else
    put tFileName into laLongFileName[pUrl]
  end if
  put "booked" into laUrlErrorStatus[pUrl]
  if tPre is "http" then
    ##store current state of httpHeaders ad use when request is actually processed
    put the httpHeaders into laCurrentHttpHeaders[pUrl]
    ulHttpRequest pUrl
  else
    ulFtpRequest pUrl
  end if
end ulGetFormat

#################choose http method####################

#on ulHttpRequest x
on ulHttpRequest pUrl
  switch
  case laAction[pUrl] is "getData"
    if(laLoadReq[pUrl]) is true then
      ulHttpLoad pUrl
    else
      ulGetHttp pUrl
    end if
    break
  case laAction[pUrl] is "sendData"
    ulPutHttp pUrl
    break
  case laAction[pUrl] is "deleteData"
    ulDeleteHttp pUrl
    break
  case laAction[pUrl] is "putData"
    ulPutHttp pUrl
    break
  case laAction[pUrl] is "postData"
    ulPostHttp pUrl
  end switch
end ulHttpRequest
--------------------------------------------------
##set up queue for http load requests
on ulHttpLoad pUrl
  put laConnectHost[pUrl] into tIP
  put keys(laLoadQ) into tLoadingKeys
  if tIP is among the lines of tLoadingKeys then
    put true into tHaveConnection
  else
    put false into tHaveConnection
  end if
  put pUrl & cr after  laLoadQ[tIP]
  put "queued" into laUrlLoadStatus[pUrl]
  
  if not tHaveConnection then
    ulNextHttpLoadRequest tIP
  end if
end ulHttpLoad
------------------------------------------------
##dispatch next load request
on ulNextHttpLoadRequest pIP
  put line 1 of laLoadQ[pIP] into tUrl
  if tUrl <> empty then
    if tUrl = lvBlockingUrl then ##the same URL is being requested in a blocking call
      repeat until lvBlockingUrl <> tUrl
        if lvJumpOut then exit to top
        wait for messages
      end repeat
    end if
    ##in case url was "unloaded" during any wait, check that it's still in the queue
    if tUrl is among the lines of keys(laLoadingUrls) then
      delete line 1 of laLoadQ[pIP] ##added in 1.0.8r4
      ulGetHttp tUrl
    else
      ##modified dc 00202 Delete current rquest if not in laLoadingUrls
      -----------------------------------
      ## CLEAN UP POINT if user cancelled while in queue
      delete line 1 of laLoadQ[pIP] ##delete this item
      ulCleanUpHttpLocals tUrl
      delete local laLoadReq[tUrl] ##added dc 210702
      delete local laLoadedUrls[tUrl]##added dc 210702
      delete local laMessg[tUrl]##added dc 210702
      
      delete local laUrlErrorStatus[tUrl]
      delete local laUrlLoadStatus[tUrl]
      delete local laCancelled[tUrl]
      if the number of lines of laLoadQ[pIP] = 0 then
        delete local laLoadQ[pIP]
        delete local laConnectID[pIP]
      else
        ##use send to ensure this thread  finishes before next request
        send "ulNextHttpLoadRequest" && quote & pIP & quote to me in 1 milliseconds
      end if
      ------------------------------
    end if
  end if
end ulNextHttpLoadRequest

##############method GET#########################

on ulGetHttp pUrl
  try
    put empty into laStatus[pUrl] ##set wait flag here
    put "started" into laUrlErrorStatus[pUrl]
    put ulWhichSocket(pUrl) into tSocket
    
    put pUrl into laUrl[tSocket] #ref the url to the used socket##KEY REFERENCE
    if tSocket is not among the lines of the openSockets then
      ulStartTickle ##safeguard routine
      get ulOpenSocket(tSocket)
      if not it then throw it ##error opening socket
    end if
    
    put "contacted" into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "contacted" into laUrlLoadStatus[pUrl]
    ulSendCallback pUrl,"contacted"  ##CALLBACK FEATURE
    
    put ulBuildHttpRequest(pUrl) into tRequest
    ulLogit  tRequest & cr ##LOG
    write tRequest & crlf  to socket tSocket  with message "ulStartRead"
    ---------------------
    if the result is not empty then
      throw the result  #early exit
    end if
    --------------------------
    ##blocking point "get url"
    #If we got here by "load url" then we don't block, otherwise we do
    
    if laLoadReq[pUrl] is empty then
      repeat while laStatus[pUrl] is empty
        if lvJumpOut then exit to top
        wait for messages
      end repeat
    end if
  catch pErr ##clean up point
    ulHttpEarlyCleanUp tSocket,pUrl,pErr
    exit ulGetHttp
  end try
end ulGetHttp
----------------------------------
on ulHttpEarlyCleanUp x, pUrl, pErr
  put "error" && pErr into laUrlErrorStatus[pUrl]
  if laLoadReq[pUrl] then put "error" into laUrlLoadStatus[pUrl]
  put false into laStatus[pUrl] ##to unblock waits
  put laLoadReq[pUrl] into tLoadReq ##holder
  put laConnectHost[pUrl] into tConnectHost
  ulCleanUpHttp x
  if tLoadReq then
    ulSendMessage pUrl ##added 091002
    ##use send to ensure this thread finishes before next request starts
    send "ulNextHttpLoadRequest" && quote & tConnectHost & quote to me in 1 milliseconds
  end if
end ulHttpEarlyCleanUp
----------------------------------------------------------
on ulStartRead x,y
  if laUrl[x] <> empty then ##carry on
    -----------------------------------
    ##set the httpHeaders to empty ##commented out in 1.0.8r4
    put "requested" into laUrlErrorStatus[laUrl[x]]
    if laLoadReq[laUrl[x]] then put "requested" into laUrlLoadStatus[laUrl[x]]
    ulSendCallback laUrl[x],"requested"  ##CALLBACK FEATURE
    if laLoadReq[laUrl[x]] then
      put empty into laLoadedUrls[laUrl[x]]
    else
      put empty into  laData[laUrl[x]]
    end if
    put empty into laTmpData[laUrl[x]]
    put empty into laTemp[laUrl[x]]
    
    read from socket x  with message "ulReadmore"
    --------------------------------
    if the result <> empty then
      put "error" && the result into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
      put false into laStatus[laUrl[x]] ##to unblock wait
    end if
    ----------------------------------
    ##The wait in the getHttp handler allows "load" requests to pass
    ## we wait here for ALL requests so we can clean up
    ---------------------------------------
    repeat while laStatus[laUrl[x]] is empty
      if lvJumpOut then exit to top
      wait for messages
    end repeat
    ----------------------------------------
    ## CLEAN UP POINT
    if laStatus[laUrl[x]] is false then
      close socket x ##if user unloaded
    else if laConn[laUrl[x]] is "close" then
      close socket x ##if user unloaded
    end if
    ulHttpLateCleanUp x
  end if
  
end ulStartRead
---------------------------------------
on ulHttpLateCleanUp x
  if laFile[laUrl[x]] <> empty then
    close file laFile[laUrl[x]] ##close here??
  end if
  
  put laLoadReq[laUrl[x]] into tLoadReq ##holder
  put laUrl[x] into tUrlHolder #so we can delete in cleanUp
  put laConnectHost[laUrl[x]] into tConnectHost #holder so we can delete in clean up
  ulCleanUpHttp x
  if tLoadReq and laCancelled[tUrlHolder] then
    delete local laLoadedUrls[tUrlHolder]
    delete local laUrlLoadStatus[tUrlHolder]
    delete local laUrlErrorStatus[tUrlHolder]
    delete local laStatus[tUrlHolder]
  end if
  if not laCancelled[tUrlHolder] then
    ulSendMessage tUrlHolder
  else
    delete local laMessg[tUrlHolder]
  end if
  delete local laFile[tUrlHolder]
  delete local laCancelled[tUrlHolder]
  if tLoadReq then
    ##use send to ensure current request finishes completely
    send "ulNextHttpLoadRequest" && quote & tConnectHost & quote to me in 1 milliseconds
  end if
  
end ulHttpLateCleanUp
------------------------------------------------------------------
on ulReadmore x,y
  #separate the header from body
  
  put false into laHaveHeader[laUrl[x]]
  put y after laTmpData[laUrl[x]]
  put y after laTemp[laUrl[x]]
  
  put lineOffset(crlf & crlf, laTmpData[laUrl[x]]) into tHeaderOffSet ##proper header structure
  
  ##added to catch irregularly formed headers 1.0.7b1
  if tHeaderOffset is 0 then ##for irregularly formed headers
    put lineOffset(cr & crlf, laTmpData[laUrl[x]]) into tHeaderOffSet
    if tHeaderOffset is 0 then
      put lineOffset(cr & cr, laTmpData[laUrl[x]]) into tHeaderOffSet
    end if
  end if
  
  if tHeaderOffSet is not 0 then#1
    put tHeaderOffSet into laLineNum[laUrl[x]]
    put line 1 to laLineNum[laUrl[x]] of laTmpData[laUrl[x]] into laRhHeader[laUrl[x]]
    repeat
      ##be sure we have a header
      if char 1 to 4 of laRhHeader[laUrl[x]] = "HTTP" then exit repeat
      delete line 1 of laRhHeader[laUrl[x]]
      if laRhHeader[laUrl[x]] is empty then ##we don't have a header
        put "error" && "No header received" into laUrlErrorStatus[laUrl[x]]
        if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
        put false into laStatus[laUrl[x]] ##to unblock wait
        exit "ulReadmore"
      end if
    end repeat
    put length (laRhHeader[laUrl[x]]) into hLen
    switch
    case word 2 of line 1 of laRhHeader[laUrl[x]] is  "100"
      ##Is this handled right??
      delete line 1 to laLineNum[laUrl[x]]+1 of laTmpData[laUrl[x]]
      delete line 1 to laLineNum[laUrl[x]]+1 of laTemp[laUrl[x]]
      
      get lineOffset(crlf & crlf, laTmpData[laUrl[x]])
      if it is not "0" then
        put it into laLineNum[laUrl[x]]
        put line 1 to laLineNum[laUrl[x]] of laTmpData[laUrl[x]] into laRhHeader[laUrl[x]]
        ulDoProcess x,y
      else
        read from socket x  with message "ulReadmore"
      end if
      break
    case word 2 of line 1 of laRhHeader[laUrl[x]] is  not "100"
      ulDoProcess x,y
    end switch
  else#1
    if laStatus[laUrl[x]] is empty then
      read from socket x  with message "ulReadmore"
      ##how often should we do this reading for a header??
      ------------------------------------
      if the result <> empty then
        put "error" && the result into laUrlErrorStatus[laUrl[x]]
        if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
        put false into laStatus[laUrl[x]] ##to unblock wait below
      end if
      ------------------------------------
    end if
  end if#1
end ulReadmore
-------------------------------------------
on ulDoProcess x,y
  
  #handles reading data depending on whether transfer method is streamed, chunked or "until socket closes"
  
  if not laHaveHeader[laUrl[x]] then ##pick up header first time only
    ulLogIt laRhHeader[laUrl[x]] & cr & cr --LOG
    set the lastRhHeaders of me to laRhHeader[laUrl[x]] ##set property
    put lineOffset("Location:",laRhHeader[laUrl[x]]) into tLocLine
    put lineOffset("Content-Length:",laRhHeader[laUrl[x]]) into tLenLine
    put lineOffset("Content-Type:",laRhHeader[laUrl[x]]) into tContentLine
    put lineOffset("Transfer-Encoding:",laRhHeader[laUrl[x]]) into tCodeLine
    put lineOffset("Connection:",laRhHeader[laUrl[x]]) into tConnectionLine
    put lineOffset("Proxy-Connection:",laRhHeader[laUrl[x]]) into ptConnLine
    
    #get status code
    put word 2 of line 1 of laRhHeader[laUrl[x]] into laStatusCode[laUrl[x]]
    #get status message for error results
    put word 2 to -1 of line 1 of laRhHeader[laUrl[x]] into laStatusMessage[laUrl[x]]
    
    if laStatusCode[laUrl[x]] is not a number then ##no point hanging around
      put "error" && "Unable to resolve server response." into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
      put false into laStatus[laUrl[x]] ##to unblock wait
      exit "ulDoProcess"
    end if
    
    if tConnectionLine is not "0" then
      put last word of line tConnectionLine of laRhHeader[laUrl[x]] into laConn[laUrl[x]]
    end if
    if ptConnLine is not "0" then
      put last word of line tConnectionLine of laRhHeader[laUrl[x]] into laConn[laUrl[x]]
    end if
    if tLenLine is not "0" and last word of (line tLenLine of laRhHeader[laUrl[x]]) is a number then
      put last word of (line tLenLine of laRhHeader[laUrl[x]]) into laLength[laUrl[x]]
    else
      put empty into laLength[laUrl[x]]
      put empty into laHttpDataDone[laUrl[x]] ##flag for detecting end of download
    end if
    if tCodeLine <> "0" then
      put last word of line tCodeLine of laRhHeader[laUrl[x]] into laCode[laUrl[x]]
    end if
    delete line 1 to laLineNum[laUrl[x]]+1 in laTmpData[laUrl[x]]
    put true into laHaveHeader[laUrl[x]]
    
  else
    put y after laTmpData[laUrl[x]]
  end if
  -------------------------------------
  switch
  case laStatusCode[laUrl[x]] is among the items of "301,302"
    #we are redirected to a different url
    
    if tLocLine is not empty then
      put last word of (line tLocLine of laRhHeader[laUrl[x]]) into tNewLoc
      --------------------------------
      put true into lvBlockBypass ##to allow another blocking call
      get url tNewLoc
      if the result is empty then
        ulStoreData laUrl[x],it
        
        put empty into laUrlErrorStatus[laUrl[x]]
        if laFile[laUrl[x]] is empty then
          put "cached" into tStatus
        else
          put "downloaded" into tStatus
        end if
        if laLoadReq[laUrl[x]] is "true" then put tStatus into laUrlLoadStatus[laUrl[x]]
        ulSendCallback laUrl[x],"downloaded"  ##CALLBACK FEATURE
      else
        put "error" && "Redirect failed" && tNewLoc into laUrlErrorStatus[laUrl[x]]
        if laLoadReq[laUrl[x]] is "true" then
          put "error" into laUrlLoadStatus[laUrl[x]]
          put empty into laLoadedUrls[laUrl[x]]
        else
          put empty into laData[laUrl[x]]
        end if
      end if
      put false into lvBlockBypass##to disallow another blocking call
      -----------------------
      put true into laStatus[laUrl[x]]
    end if
    break
    
    ##normal case
  case laLength[laUrl[x]] is not empty
    
    put  laTmpData[laUrl[x]] into tData
    ulStoreData laUrl[x],tData
    put length(tData) into laReadBytes[laUrl[x]]
    if laStatus[laUrl[x]]  is empty then ulDoProcessLength x
    
    break
    #### chunked ######################################
  case laCode[laUrl[x]] is "chunked"
    put true into laNeedChunk[laUrl[x]]
    put empty into laReadBytes[laUrl[x]]
    ulDoProcessChunked x
    break
    ##########No length header  ##typically from CGI request
    #Handle both cases together
  case laLength[laUrl[x]] is empty and laConn[laUrl[x]] is "close"
  case laLength[laUrl[x]] is empty and laConn[laUrl[x]] is empty
    put laTmpData[laUrl[x]] into tData
    ulStoreData laUrl[x],tData
    put length(tData) into laReadBytes[laUrl[x]]
    put empty into laTmpData[laUrl[x]] ##clear buffer
    ulDoProcessNoLength x
    break
  end switch
end ulDoProcess
------------------------------------------------------------------
on ulDoProcessLength x,y
  ##normal http case
  if y <> empty then
    ulStoreData laUrl[x],y
    add length(y) to laReadBytes[laUrl[x]]
  end if
  
  if laReadBytes[laUrl[x]] >= laLength[laUrl[x]] then
    put "true" into laStatus[laUrl[x]]
    
    if char 1 of laStatusCode[laUrl[x]] = 2 then ##in 200 range--OK
      if laFile[laUrl[x]] is empty then
        put "cached" into tStatus
      else
        put "downloaded" into tStatus
      end if
      put empty into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] is "true" then put tStatus into laUrlLoadStatus[laUrl[x]]
      ulSendCallback laUrl[x],"downloaded"  ##CALLBACK FEATURE
    else
      put "error" && laStatusMessage[laUrl[x]] into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] is "true" then
        put "error" into laUrlLoadStatus[laUrl[x]]
      end if
    end if
    
    delete local laHaveHeader[laUrl[x]]
    --------------------------
  else ##need more data
    put "loading," & laReadBytes[laUrl[x]] & "," & laLength[laUrl[x]] into tStatus
    put tStatus  into laUrlErrorStatus[laUrl[x]]
    if laLoadReq[laUrl[x]] then put tStatus  into laUrlLoadStatus[laUrl[x]]
    ulSendCallback laUrl[x],tStatus  ##CALLBACK FEATURE
    if laStatus[laUrl[x]] is empty then
      read from socket x  with message "ulDoProcessLength"
      ---------------------
      if the result <> empty then
        put "error" && the result into laUrlErrorStatus[laUrl[x]]
        put false into laStatus[laUrl[x]] ##to unblock waits above
        if laLoadReq[laUrl[x]] then
          put "error" into laUrlLoadStatus[laUrl[x]]
          put empty into laLoadedUrls[laUrl[x]] ##empty any data here
        else
          put empty into laData[laUrl[x]] ##empty any data here
        end if
      end if
      exit "ulDoProcessLength"
      ------------------------------
    end if
  end if
  
end ulDoProcessLength
------------------------------------------------------------
on ulDoProcessChunked x,y
  if y <> empty then
    put y after laTmpData[laUrl[x]]
  end if
  
  repeat while  laStatus[laUrl[x]] is empty
    if laNeedChunk[laUrl[x]] then
      get the number of chars of line 1 of laTmpData[laUrl[x]]
      if not ((char it of laTmpData[laUrl[x]] is numtochar(13)) and\
          (char it+1 of laTmpData[laUrl[x]] is numtochar(10))) then
        read from socket x with message "ulDoProcessChunked"
        ---------------------
        if the result <> empty then
          put "error" && the result into laUrlErrorStatus[laUrl[x]]
          put false into laStatus[laUrl[x]] ##to unblock wait above
          if laLoadReq[laUrl[x]] then
            put "error" into laUrlLoadStatus[laUrl[x]]
            put empty into laLoadedUrls[laUrl[x]] ##empty any data here
          else
            put empty into laData[laUrl[x]] ##empty any data here
          end if
        end if
        exit "ulDoProcessChunked"
      end if
      
      put offset(numtochar(13), laTmpData[laUrl[x]]) into wOffset[laUrl[x]]
      ----get chunk size value (store in laChunk)
      put char 1 to wOffset[laUrl[x]]-1 of laTmpData[laUrl[x]] into tRead[laUrl[x]]
      set the itemDel to ";"
      put item 1 of tRead[laUrl[x]] into tRead[laUrl[x]] ##remove any chunk extension
      set the itemdel to comma
      replace space with empty in tRead[laUrl[x]]
      
      put baseConvert(tRead[laUrl[x]],16,10) into laChunk[laUrl[x]]
      ---------
      delete char 1 to wOffset[laUrl[x]]+1 of laTmpData[laUrl[x]]
      if tRead[laUrl[x]] is "0" then ##completed
        delete local laNeedChunk[laUrl[x]]
        delete local laHaveHeader[laUrl[x]]
        put "true" into laStatus[laUrl[x]] ##to break out of wait
        if char 1 of laStatusCode[laUrl[x]] = 2 then ##in 200 range --OK
          if laFile[laUrl[x]] is empty then
            put "cached" into tStatus
          else
            put "downloaded" into tStatus
          end if
          put empty into laUrlErrorStatus[laUrl[x]]
          if laLoadReq[laUrl[x]] is "true" then put tStatus into laUrlLoadStatus[laUrl[x]]
          ulSendCallback laUrl[x],"downloaded"  ##CALLBACK FEATURE
        else
          put "error" && laStatusMessage[laUrl[x]] into laUrlErrorStatus[laUrl[x]]
          if laLoadReq[laUrl[x]] is "true" then
            put "error" into laUrlLoadStatus[laUrl[x]]
          end if
        end if
        exit "ulDoProcessChunked"
      end if
    end if
    
    switch
    case length(laTmpData[laUrl[x]])=laChunk[laUrl[x]] + 2
      put char 1 to laChunk[laUrl[x]] of laTmpData[laUrl[x]] into tData
      ulStoreData laUrl[x],tData
      add length(tData) to laReadBytes[laUrl[x]]
      put "loading," & laReadBytes[laUrl[x]] & "," into tStatus
      put tStatus  into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then put tStatus  into laUrlLoadStatus[laUrl[x]]
      ulSendCallback laUrl[x],tStatus  ##CALLBACK FEATURE
      delete char 1 to laChunk[laUrl[x]] + 2 of laTmpData[laUrl[x]]
      put true into laNeedChunk[laUrl[x]]
      if laStatus[laUrl[x]] is empty then
        read from socket x with message "ulDoProcessChunked"
        ---------------------
        if the result <> empty then
          put "error" && the result into laUrlErrorStatus[laUrl[x]]
          put false into laStatus[laUrl[x]] ##to unblock wait above
          if laLoadReq[laUrl[x]] then
            put "error" into laUrlLoadStatus[laUrl[x]]
            put empty into laLoadedUrls[laUrl[x]] ##empty any data here
          else
            put empty into laData[laUrl[x]] ##empty any data here
          end if
        end if
        exit "ulDoProcessChunked"
        -----------------------
      end if
      break
    case length(laTmpData[laUrl[x]])>laChunk[laUrl[x]] + 2
      put char 1 to laChunk[laUrl[x]] of laTmpData[laUrl[x]] into tData
      ulStoreData laUrl[x],tData
      add length(tData) to laReadBytes[laUrl[x]]
      put "loading," & laReadBytes[laUrl[x]] & "," into tStatus
      put tStatus  into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then put tStatus  into laUrlLoadStatus[laUrl[x]]
      ulSendCallback laUrl[x],tStatus  ##CALLBACK FEATURE
      delete char 1 to laChunk[laUrl[x]] + 2 of laTmpData[laUrl[x]]
      put true into laNeedChunk[laUrl[x]]
      next repeat
      break
    case length(laTmpData[laUrl[x]]) < laChunk[laUrl[x]] + 2
      put false into laNeedChunk[laUrl[x]]
      if laStatus[laUrl[x]] is empty then
        read from socket x  with message "ulDoProcessChunked"
        ---------------------------
        if the result <> empty then
          put "error" && the result into laUrlErrorStatus[laUrl[x]]
          put false into laStatus[laUrl[x]] ##to unblock wait above
          if laLoadReq[laUrl[x]] then
            put "error" into laUrlLoadStatus[laUrl[x]]
            put empty into laLoadedUrls[laUrl[x]] ##empty any data here
          else
            put empty into laData[laUrl[x]] ##empty any data here
          end if
        end if
        ----------------------------
      end if
      exit "ulDoProcessChunked"
    end switch
  end repeat
end ulDoProcessChunked
---------------------------------------
on ulDoProcessNoLength x,y
  if y <> empty then
    ulStoreData laUrl[x],y
    add length(y) to laReadBytes[laUrl[x]]
  end if
  
  if x is among the lines of the openSockets then ##test for closure here
    
    if laStatus[laUrl[x]] is empty and laHttpDataDone[laUrl[x]] is empty then
      read from socket x  with message "ulDoProcessNoLength"
      ----------------------------------------
      if the result <> empty then
        put the result into tResult
        if tResult is not "socket is not open" then
          put "error" && the result into laUrlErrorStatus[laUrl[x]]
          put false into laStatus[laUrl[x]] ##to unblock wait
          if laLoadReq[laUrl[x]] then
            put "error" into laUrlLoadStatus[laUrl[x]]##not likely
            put empty into laLoadedUrls[laUrl[x]] ##empty any data here
          else
            put empty into laData[laUrl[x]] ##empty any data here
          end if
        else ##assume that we've got all the data ##treat as "completed" as below
          put "true" into laStatus[laUrl[x]]
          if char 1 of laStatusCode[laUrl[x]] = 2 then
            if laFile[laUrl[x]] is empty then
              put "cached" into tStatus
            else
              put "downloaded" into tStatus
            end if
            put empty into laUrlErrorStatus[laUrl[x]]
            if  laLoadReq[laUrl[x]] is "true" then put tStatus into laUrlLoadStatus[laUrl[x]]
            ulSendCallback laUrl[x],"downloaded"  ##CALLBACK FEATURE
          else
            put "error" && laStatusMessage[laUrl[x]] into laUrlErrorStatus[laUrl[x]]
            if  laLoadReq[laUrl[x]] is "true" then put "error" into laUrlLoadStatus[laUrl[x]]
          end if
          delete local laHaveHeader[laUrl[x]]
        end if
      end if
      ---------------------------------------------
    end if
  else ##completed
    put "true" into laStatus[laUrl[x]]
    if char 1 of laStatusCode[laUrl[x]] = 2 then
      if laFile[laUrl[x]] is empty then
        put "cached" into tStatus
      else
        put "downloaded" into tStatus
      end if
      put empty into laUrlErrorStatus[laUrl[x]]
      if  laLoadReq[laUrl[x]] is "true" then put tStatus into laUrlLoadStatus[laUrl[x]]
      ulSendCallback laUrl[x],"downloaded"  ##CALLBACK FEATURE
    else
      put "error" && laStatusMessage[laUrl[x]] into laUrlErrorStatus[laUrl[x]]
      if  laLoadReq[laUrl[x]] is "true" then put "error" into laUrlLoadStatus[laUrl[x]]
    end if
    delete local laHaveHeader[laUrl[x]]
  end if
end ulDoProcessNoLength
##################HTTP DELETE###############################

on ulDeleteHttp pUrl
  try
    put empty into laStatus[pUrl]
    put ulWhichSocket(pUrl) into tSocket
    put pUrl into laUrl[tSocket] #ref the url to the used socket
    if tSocket is not among the lines of the openSockets then
      ulStartTickle ##safeguard routine
      get ulOpenSocket(tSocket)
      if not it then throw it ##error opening socket
    end if
    put "contacted" into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "contacted" into laUrlLoadStatus[pUrl]
    ulSendCallback pUrl,"contacted"  ##CALLBACK FEATURE
    put ulBuildHttpRequest(pUrl) into tRequest
    ulLogit  tRequest & cr ##LOG
    write tRequest & crlf  to socket tSocket
    if  the result is not empty then
      throw the result
    end if
    put "requested" into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "requested" into laUrlLoadStatus[pUrl]
    ulSendCallback pUrl,"requested"  ##CALLBACK FEATURE
    read from socket tSocket   until crlf & crlf  with message "ulReadMore"
    if  the result is not empty then throw the result
    
    repeat while laStatus[pUrl] is empty
      if lvJumpOut then exit to top
      wait for messages
    end repeat
    -------------------------------------
    ulHttpLateCleanUp tSocket
    ---------------------------
  catch pErr
    ulHttpEarlyCleanUp tSocket,pUrl,pErr
    exit ulDeleteHttp
  end try
end ulDeleteHttp

########################HTTP POST#########################

on ulPostHttp pUrl
  try
    put empty into laStatus[pUrl] ##set wait flag here
    put ulWhichSocket(pUrl) into tSocket
    put pUrl into laUrl[tSocket] #ref the url to the used socket
    
    if tSocket is not among the lines of the openSockets then
      ulStartTickle ##safeguard routine
      get ulOpenSocket(tSocket)
      if not it then throw it ##error opening socket
    end if
    put "contacted" into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "contacted" into laUrlLoadStatus[pUrl]
    ulSendCallback pUrl,"contacted"  ##CALLBACK FEATURE
    put ulBuildHttpRequest(pUrl) into tRequest
    put empty into  laData[pUrl]
    put empty into laTmpData[pUrl]
    ulLogit tRequest  & cr #LOG
    write tRequest  & crlf   to socket tSocket with message "ulWriteSome"
    --------------------------
    if the result is not empty then
      throw the result
    end if
    --------------------------
    
    ## blocking point
    repeat while laStatus[pUrl] is empty
      if lvJumpOut then exit to top
      wait for messages
    end repeat
    ##added for 1.0.8.b4 , was previously in ulWriteSome which wasn't good
    ulHttpLateCleanUp tSocket
  catch pErr
    ulHttpEarlyCleanUp tSocket,pUrl,pErr
    exit ulPostHttp
  end try
end ulPostHttp
-----------------------------------------------------
on ulWriteSome x
  if laUrl[x] <> empty then ##in case an error was encountered when writing
    
    if the length of laPostData[laUrl[x]] <= 4096 then ##don't forget to get tBytes
      write laPostData[laUrl[x]] & crlf  to socket x
      put "requested" into laUrlErrorStatus[laUrl[x]]
      read from socket x  with message "ulReadmore"
      ----------------------------------
      if the result <> empty then
        put "error" && the result into laUrlErrorStatus[laUrl[x]]
        if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
        put false into laStatus[laUrl[x]] ##to unblock wait above
      end if
      ----------------------------------
      repeat while laStatus[laUrl[x]] is empty
        if lvJumpOut then exit to top
        wait for messages
      end repeat
    else
      put char 1 to 4096 of laPostData[laUrl[x]] into tChunk ##laChunk[laUrl[x]]
      delete char 1 to 4096 in laPostData[laUrl[x]]
      write tChunk to socket x with message "ulWriteSome"
    end if
    
  end if
end ulWriteSome


###################HTTP PUT##########################

on ulPutHttp pUrl
  try
    put empty into laStatus[pUrl]##flag
    put ulWhichSocket(pUrl) into tSocket
    put pUrl into laUrl[tSocket] #ref the url to the used socket
    if tSocket is not among the lines of the openSockets then
      ulStartTickle ##safeguard routine
      get ulOpenSocket(tSocket)
      if not it then throw it ##error opening socket
    end if
    put "contacted" into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "contacted" into laUrlLoadStatus[pUrl]
    ulSendCallback pUrl,"contacted"  ##CALLBACK FEATURE
    put ulBuildHttpRequest(pUrl) into tRequest
    ulLogit  tRequest & cr ##LOG
    
    ##just the same as ulPostHttp from this point
    write tRequest  & crlf   to socket tSocket with message "ulWriteSome"
    ---------------------------
    if the result is not empty then
      throw the result
    end if
    --------------------------
    
    ##top blocking point
    repeat while laStatus[pUrl] is empty
      if lvJumpOut then exit to top
      wait for messages
    end repeat
    ##added for 1.0.8.b4 , was previously in ulWriteSome which wasn't good
    ulHttpLateCleanUp tSocket
  catch pErr
    ulHttpEarlyCleanUp tSocket,pUrl,pErr
    exit ulPutHttp
  end try
end ulPutHttp
--------------------------------------------
function ulWhichSocket pUrl
  ##build socket ref including Connection ID number
  ## re-use sockets for blocking requests if open
  ##load request sequences will always use same socket
  ##new sequence gets new socket
  put laConnectHost[pUrl] into tConnectHost
  set the itemDel to "|"
  if loadReq[pUrl] then
    if laConnectID[tConnectHost] <> empty then
      put  laConnectID[tConnectHost] into tConnID
    else
      add 1 to lvCount
      put  lvCount into tConnID
      put lvCount into laConnectID[tConnectHost]
    end if
  else ##blocking request
    
    put empty into tConnID
    put char 1 to 4 of pUrl is "ftp:" into tIsFtp
    repeat for each line i in the openSockets
      if tIsFtp then
        ##makes sure we have the same username before re-using an  FTP socket
        if laSocketUser[i] <> laUser[pUrl] then
          next repeat
        end if
      end if
      if item 1 of tConnectHost is item 1 of i and i is not among the lines of keys(laUrl) then #OK to use
        put last item of i into tConnID
        exit repeat
      end if
    end repeat
    if tConnID is empty then ##need new socket ref
      add 1 to lvCount
      put lvCount into tConnID
    end if
  end if
  ##swap out user name for connection ID
  put item 1 of tConnectHost & "|" & tConnID into tSocket
  if laUser[pUrl] <> empty then
    ##for ftp sockets, we need to keep reference to user name
    put laUser[pUrl] into laSocketUser[tSocket] ## here or when connection is made??
  end if
  set the itemDel to comma
  return tSocket
end ulWhichSocket

---------------------------------------------
function ulBuildHttpRequest pUrl
  ##build the httpRequest including
  ##request line and basic headers
  
  if the customHTTPHeaders of me <> empty then#a
    
    put the customHTTPHeaders of me into tRequest
    set the customHTTPHeaders of me to empty
  else
    ##get template
    put the cDefaultHeader of me into tRequest
    ##get method
    put laAction[pUrl] into tAction
    switch tAction
    case "getData"
      put "GET" into tMethod
      break
    case  "deleteData"
      put "DELETE" into tMethod
      break
    case "putData"
      put "PUT" into tMethod
      break
    case "postData"
      put "POST" into tMethod
      break
    end switch
    
    replace "METHOD" with tMethod in tRequest
    ----------------------------
    ##fill in url resource
    put  laLongFileName[pUrl] into word 2 of line 1 of tRequest
    ## fill in host
    put  laHost[pUrl]  after line 2 of tRequest
    ## fill in User-Agent
    if "rev" is in the short name of me then
      put "Revolution" into tAgent
    else
      put "Metacard" into tAgent
    end if
    put tAgent && "(" & the platform & ")" after line 3 of tRequest
    if tMethod is among the items of "PUT,POST" then
      put cr & "Content-Length:" && length(laPostdata[pUrl]) after tRequest
      put cr & "Content-Type:  application/x-www-form-urlencoded" after tRequest
    end if
    if laAuth[pUrl] is not empty then
      put base64Encode(laUser[pUrl] & ":" & laPasswd[pUrl]) into tLogin
      put cr & "Authorization: Basic" && tLogin after tRequest
    end if
    
    ##customize according to httpHeaders
    ## if the httpHeaders  is not empty then
    if laCurrentHttpHeaders[pUrl] is not empty then
      ##repeat for each line tHeader in the httpHeaders
      repeat for each line tHeader in laCurrentHttpHeaders[pUrl]
        put lineOffset((word 1 of tHeader),tRequest) into tHeaderLine
        if tHeaderLine is not 0 then
          ##replace header value
          put tHeader into line tHeaderLine of tRequest
        else
          ##add new field
          put cr & tHeader after tRequest
        end if
      end repeat
    end if
    
  end if
  ##set the lastHTTPHeaders##
  set the lastHTTPHeaders of me to tRequest
  ##separate lines with crlf in header
  repeat for each line i in tRequest
    put  i & crlf after tRequest2
  end repeat
  return tRequest2
  
end ulBuildHttpRequest
###################################################
################ FTP LOGIN####################
########################################
on ulFtpRequest pUrl
  if laLoadReq[pUrl] then
    ulFtpLoad pUrl
  else if laAction[pUrl] = "postdata" then ##don't handle this
    put "error Post command not handled for FTP" into laUrlErrorStatus[pUrl]
    ulCleanUpFtpLocals pUrl
    
    exit "ulFtpRequest"
  else
    ulFtpSocket pUrl
  end if
end ulFtpRequest
-----------------------------
##set up queue for http load requests
on ulFtpLoad pUrl
  
  put laConnectHost[pUrl] into tIP
  put keys(laLoadQ) into tLoadingKeys
  if tIP is among the lines of tLoadingKeys then
    put true into tHaveConnection
  else
    put false into tHaveConnection
  end if
  put pUrl & cr after  laLoadQ[tIP]
  put "queued" into laUrlLoadStatus[pUrl]
  
  if not tHaveConnection then
    ulNextFtpLoadRequest tIP
  end if
  
end ulFtpLoad
------------------------------------------------
##dispatch next request
on ulNextFtpLoadRequest pIP
  put line 1 of laLoadQ[pIP] into tUrl
  if tUrl <> empty then
    if tUrl = lvBlockingUrl then ##the same URL is being requested in a blocking call
      repeat until lvBlockingUrl <> tUrl
        if lvJumpOut then exit to top
        wait for messages
      end repeat
    end if
    
    ##in case url was "unloaded" during any wait, check that it's still in the queue
    if tUrl is among the lines of keys(laLoadingUrls) then
      delete line 1 of laLoadQ[pIP] ##delete this item ##added for 1.0.8r4
      ulFtpSocket tUrl
    else
      ##Delete current rquest if not in laLoadingUrls
      -----------------------------------
      ## CLEAN UP POINT if user cancelled while in queue
      delete line 1 of laLoadQ[pIP] ##delete this item
      ulCleanUpFtpLocals tUrl
      delete local laLoadReq[tUrl] ##added dc 210702
      delete local laLoadedUrls[tUrl]##added dc 210702
      delete local laMessg[tUrl]##added dc 210702
      delete local laUrlErrorStatus[tUrl]
      delete local laUrlLoadStatus[tUrl]
      delete local laCancelled[tUrl]
      if the number of lines of laLoadQ[pIP] = 0 then
        delete local laLoadQ[pIP]
        delete local laConnectID[pIP]
      else
        ##use send .. in
        send "ulNextFtpLoadRequest" && quote & pIP & quote to me in 1 milliseconds
      end if
      ----------------------------------
    end if
  end if
end ulNextFtpLoadRequest

-------ulFtpSocket------------------------------------------------------
-------Establishes connection for all ftp calls-------------------
on ulFtpSocket pUrl
  put empty into laStatus[pUrl] ##set main wait flag here
  put ulWhichSocket(pUrl) into tSocket
  put pUrl into laUrl[tSocket] ##reference the url to the used socket
  put "0" into laStopUnit[tSocket]
  put "0" into laStopSec[tSocket]
  
  if tSocket is not among the lines of the openSockets then
    ulStartTickle ##safeguard routine
    get ulOpenSocket(tSocket)
    if not it then
      ulFtpEarlyExit tSocket,pUrl,it
      exit ulFtpSocket
    end if
    ------------------------get server response (220)
    put ulFtpWaitResponse(tSocket) into tReply
    if not ulFtpGoodReply(tReply, "connect") then
      ulFtpEarlyExit tSocket,pUrl,tReply
      exit "ulFtpSocket"
    end if
    ---------------
    put "connecting" into laUrlErrorStatus[pUrl]
    if laLoadReq[pUrl] then put "connecting" into laUrlLoadStatus[pUrl]
    ulSendCallback pUrl,"connecting"  ##CALLBACK FEATURE
    ---------------
    put "USER " & laUser[pUrl] into tCmd
    put ulFtpCommand(tCmd,tSocket) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      ulFtpEarlyExit tSocket,pUrl,tReply
      exit  "ulFtpSocket"
    end if
    ----------------------
    put  "PASS " & laPasswd[pUrl] into tCmd
    put ulFtpCommand(tCmd,tSocket) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      ulFtpEarlyExit tSocket,pUrl,tReply
      exit  "ulFtpSocket"
    end if
    
  end if
  ----------------------------
  write "PWD"  & crlf to socket tSocket with message "ulFtpStartPoint" ##BRANCH TO ALLOW NON BLOCKING load
  if the result <> empty then
    put the result into tErr
    ulFtpEarlyExit tSocket,pUrl,tErr
    exit ulFtpSocket
  end if
  ----------------------------------------
  ##let non-blocking requests exit
  put pUrl into tUrlHolder ##so we can delete laUrl and  in ulFtpStartPoint on return
  if laLoadReq[tUrlHolder] is empty then
    repeat until laStatus[tUrlHolder] is not empty
      if lvJumpOut then exit to top
      wait for messages
    end repeat
  end if
end ulFtpSocket
--------------------------------------------
on ulFtpEarlyExit pSocket,pUrl,pErr
  ####
  ##clean up when exiting before first blocking point
  ####
  put laConnectHost[pUrl] into tConnectHost
  replace "ftpErr," with empty in pErr
  put "error" &&  pErr into laUrlErrorStatus[pUrl]
  if laLoadReq[pUrl] then put "error" into laUrlLoadStatus[pUrl]
  put false into laStatus[pUrl]
  close socket pSocket
  delete local laSocketUser[pSocket]
  delete local laStopUnit[pSocket]
  delete local laStopSec[pSocket]
  
  put laLoadReq[pUrl] into tLoadReq ##holder
  ulCleanUpFtp pSocket
  if tLoadReq then
    ulSendMessage pUrl ##added 091002
    send "ulNextFtpLoadRequest" && quote & tConnectHost & quote to me in 1 milliseconds
  end if
end ulFtpEarlyExit
--------------------------
on ulFtpSetError x, pErr
  replace "ftpErr," with empty in pErr
  put "error " && pErr into laUrlErrorStatus[laUrl[x]]
  if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
  put false into laStatus[laUrl[x]] ##set flag to get past waits
end ulFtpSetError

-------ulFtpStartPoint------------------------------------------------------
-------Continues after load calls have passed on-------------------
on ulFtpStartPoint x
  set the itemdel to "|"
  put item -1 of x into tNum
  set the itemdel to comma
  put ulFtpWaitResponse(x) into tReply
  replace "ftpErr," with empty in tReply
  if not ulFtpGoodReply(tReply, "PWD") then ##command sent in ftpSocket
    ulFtpSetError x,tReply
    close socket x
    delete local laSocketUser[x]
  else
    ##051202 next 5 lines repair bug introduced in 1.0.8a1
    ## and ensure home directory is only set once per session
    ##otherwise CWD calls put us out of kilter
    if laHome[laUrl[x]] is empty then
      set the itemDel to quote
      put item 2 of tReply into laHome[laUrl[x]]
      set the itemDel to comma
    end if
    
    put "connected" into laUrlErrorStatus[laUrl[x]]
    if laLoadReq[laUrl[x]] then put "connected" into laUrlLoadStatus[laUrl[x]]
    ulSendCallback laUrl[x],"connected"  ##CALLBACK FEATURE
    switch
    case laAction[laUrl[x]] is "getData"
      ulFtpGet x,tNum
      break
    case laAction[laUrl[x]] is "putData"
      ulFtpSend x,tNum
      break
    case laAction[laUrl[x]] is "deleteData"
      ulFtpDelete x
      break
    default
      put false into laStatus[laUrl[x]]
      put "error Command not handled" into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
    end switch
  end if
  ##block ALL requests here until everything finished
  ##load requests already got past in ulFtpSocket
  repeat while laStatus[laUrl[x]] is empty
    if lvJumpOut then exit to top
    wait for messages
  end repeat
  
  ## CLEAN UP POINT
  -------------------------------------
  ##Pass message here on return
  put laUrlLoadStatus[laUrl[x]] into tLoadStatus
  
  -------------------------------------
  #start timer routine for closing ftp connection
  if laStopUnit[x] = 0 then
    put "1" into laStopUnit[x]
    send "ulFtpStopWatch " & x to me in 50 milliseconds
  end if
  ##do cleanup here
  ##first close file if necessary
  if laFile[laUrl[x]] <> empty then
    if laUrlByFile[laFile[laUrl[x]]] = laUrl[x] then ##hasn't been opened by new request
      close file laFile[laUrl[x]] ##close here??
      delete local laUrlByFile[laFile[laUrl[x]]]
    else
      seek to 0 in file laFile[laUrl[x]] ##reset position for subsequent reads
    end if
  end if
  delete local laFile[laUrl[x]]
  put laLoadReq[laUrl[x]] into tLoadReq ##holder
  put laUrl[x] into tUrlHolder #so we can delete in cleanUp
  put laConnectHost[laUrl[x]] into tConnectHost #holder so we can delete in clean up
  ulCleanUpFtp x
  
  if tLoadReq and laCancelled[tUrlHolder] then
    delete local laLoadedUrls[tUrlHolder]
    delete local laUrlLoadStatus[tUrlHolder]
    delete local laUrlErrorStatus[tUrlHolder]
    delete local laStatus[tUrlHolder]
  end if
  if not laCancelled[tUrlHolder] then
    ulSendMessage tUrlHolder
  else
    delete local laMessg[tUrlHolder]
  end if
  
  delete local laCancelled[tUrlHolder]
  #change dc 210702
  if tLoadReq then
    send "ulNextFtpLoadRequest" && quote & tConnectHost & quote to me in 1 milliseconds
  end if
  
end ulFtpStartPoint


#####################FTP GET##################


on ulFtpGet x,z
  if lvFtpMode is "active" then
    put "active" into laMode[laUrl[x]]
  else
    put "passive" into laMode[laUrl[x]]
  end if
  
  put "contacted" into laUrlErrorStatus[laUrl[x]]
  if laLoadReq[laUrl[x]] then put "contacted" into laUrlLoadStatus[laUrl[x]]
  ulSendCallback laUrl[x],"contacted"  ##CALLBACK FEATURE
  -----TYPE--------------------
  put "TYPE I" into tCmd
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    ulFtpSetError x,tReply
    close socket x
    delete local laSocketUser[x]
    exit "ulFtpGet"
  end if
  ----------------------
  ##sort out file path
  if laHome[laUrl[x]] is not "/" then ##otherwise laFileName should already be OK
    if laHome[laUrl[x]] is not char 1 to length(laHome[laUrl[x]]) of laLongFileName[laUrl[x]] then
      put laHome[laUrl[x]] before laLongFileName[laUrl[x]]
    end if
  end if
  
  ##SIZE get file size or CWD if a directory
  put empty into laLength[laUrl[x]] ##set up
  if last char of laLongFileName[laUrl[x]] is not "/" then ##file not directory
    put "SIZE " & laLongFileName[laUrl[x]]  into tCmd
    put false into tNeedCWDReset
    put ulFtpCommand(tCmd,x) into tReply
    ## 191002 changed following; can't use 550 response from SIZE command to assume file can't be transferred
    ##  if item 1 of tReply is "ftpErr" or word 1 of tReply is 550 then
    if item 1 of tReply is "ftpErr"  then
      ulFtpSetError x,tReply
      close socket x
      delete local laSocketUser[x]
      exit "ulFtpGet"
    end if
    if word 1 of tReply = 213 then ##good reply
      get word 2 of tReply
      if it is an integer then
        put  it  into laLength[laUrl[x]]
      end if
    end if
    
  else ##need directory listing so we must CWD before getting listing
    
    put laLongFileName[laUrl[x]] into tTempPath
    if the length of tTempPath >1 then
      ##remove final forward slash
      delete last char of tTempPath
    end if
    put "CWD " & tTempPath into tCmd
    put true into tNeedCWDReset
    
    put ulFtpCommand(tCmd,x) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      ulFtpSetError x,tReply
      close socket x
      delete local laSocketUser[x]
      exit "ulFtpGet"
    end if
  end if
  --------------------------------------
  if laMode[laUrl[x]] is "active" then
    ulTransferActive x
  else
    ulTransferPassive x
  end if
  
  if laStatus[laUrl[x]] <> empty then ##failed to set up data connection
    close socket x
    delete local laSocketUser[x]
    exit ulFtpGet
  end if
  ----------------------------------------------------
  ##prepare for reading data
  put empty into laFtpDataDone[laUrl[x]] ##flag for checking transfer is over
  put empty into laReadBytes[laUrl[x]]
  if laLoadReq[laUrl[x]] then
    put empty into laLoadedurls[laUrl[x]]
  else
    put empty into laData[laUrl[x]]
  end if
  -----RETR or LIST-------------------
  if last char of laLongFileName[laUrl[x]] is not "/" then
    put "RETR " & laLongFileName[laUrl[x]] into tCmd
  else ##need directory listing
    if lvFtpListCommand = "NLST" then
      put "NLST" into tCmd
    else
      put "LIST" into tCmd
    end if
  end if
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    ulFtpSetError x,tReply
    exit "ulFtpGet"
  else
    put "requested" into laUrlErrorStatus[laUrl[x]]
    if laLoadReq[laUrl[x]] then put "requested" into laUrlLoadStatus[laUrl[x]]
    ulSendCallback laUrl[x],"requested"  ##CALLBACK FEATURE
  end if
  -------------------------------------
  
  ##blocking point ACTIVE??
  if laMode[laUrl[x]] is "active" then
    repeat while  laFtpDataDone[laUrl[x]] is empty and laStatus[laUrl[x]] is empty
      if lvJumpOut then exit to top
      wait for messages
    end repeat
  end if
  
  ##blocking point PASSIVE??
  if laMode[laUrl[x]] is not "active" then
    read from socket laTransPasvIP[laUrl[x]]  with message "ulGetData"
    repeat while  laFtpDataDone[laUrl[x]] is empty and laStatus[laUrl[x]] is empty
      if lvJumpOut then exit to top
      wait for messages
    end repeat
  end if
  
  if laStatus[laUrl[x]] is not empty then ##error occurred
    if  laUrlErrorStatus[laUrl[x]] is empty then
      put "error" into laUrlErrorStatus[laUrl[x]]
    end if
    if laLoadReq[laUrl[x]] then
      put "error" into laUrlLoadStatus[laUrl[x]]
      delete local laLoadedUrls[laUrl[x]] ##clear data
    else
      delete local laData[laUrl[x]] ##clear data
    end if
    close socket x
    delete local laSocketUser[x]
  else
    #now check for 226 completion
    put ulFtpWaitResponse(x) into tReply
    if word 1 of tReply <> 226 then
      replace "ftperr," with empty in tReply
      put "error" && tReply into laUrlErrorStatus[laUrl[x]]
      put empty into laData[laUrl[x]] ##clear data
      if laLoadReq[laUrl[x]] then
        put "error" into laUrlLoadStatus[laUrl[x]]
        delete local laLoadedurls[laUrl[x]] ##don't need anymore
      end if
      close socket x
      delete local laSocketUser[x]
    else ##download successful
      if tNeedCWDReset then
        ##051202 reset current directory to original
        put "CWD " & laHome[laUrl[x]] into tCmd
        put ulFtpCommand(tCmd,x) into tReply
        if not ulFtpGoodReply(tReply, tCmd) then
          ulFtpSetError x,tReply
          close socket x
          delete local laSocketUser[x]
          exit "ulFtpGet"
        end if
      end if
      
      put empty into laUrlErrorStatus[laUrl[x]]
      if laFile[laUrl[x]] is empty then
        put "cached" into tStatus
      else
        put "downloaded" into tStatus
      end if
      if laLoadReq[laUrl[x]] then put tStatus into laUrlLoadStatus[laUrl[x]]
      ulSendCallback laUrl[x],"downloaded"  ##CALLBACK FEATURE
      
      
    end if
    put true into laStatus[laUrl[x]] ##break wait
  end if
end ulFtpGet
############get data port from ftp server-answer to PASV##############

on ulTransferPassive x
  set the itemDel to "|"
  put last item of x into y
  set the itemDel to comma
  
  put "PASV"  into tCmd
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    ulFtpSetError x,tReply
    exit "ulTransferPassive"
  end if
  
  if last char of tReply is "." then delete last char of tReply
  replace ")" with empty in tReply
  set the itemDel to "("
  put item 2 of tReply  into n1
  set itemDel to ","
  put item 1 to 4 of n1 into  transPasvIP
  replace "," with "." in transPasvIP
  put (item -2 of n1)*256  into a1
  put item  -1 of n1 into a2
  put a1+a2  into tPort
  
  put transPasvIP  & ":" & tPort & "|" & y into laTransPasvIP[laUrl[x]]
  get ulOpenSocket(laTransPasvIP[laUrl[x]])
  if not it then
    put "error Couldn't open passive transfer connection" into tErr
    ulFtpSetError x,tErr
    exit "ulTransferPassive"
  end if
  put x into laControlXDataMap[laTransPasvIP[laUrl[x]]] ##
end ulTransferPassive
------------------------------------------
####################Send port to server for Active transfer and listen for data###############
on ulTransferActive x
  if lvDataPortCount is empty or lvDataPortCount >= 65535  then
    ##put 49152 into lvDataPortCount
    put 6923 into lvDataPortCount
  else
    add 1 to lvDataPortCount
  end if
  set the itemDel to "|"
  put last item of x into y
  set the itemDel to comma
  
  put x into laControlXLocalMap[lvDataPortCount]
  put hostAddress(x) into thisIP
  replace "." with "," in thisIP
  
  put lvDataPortCount into laTransActvIP[x]
  if laAction[laUrl[x]] is "putData"  then
    accept connections on port  laTransActvIP[x]  with message "ulPortMessageSend"
  else
    accept connections on port  laTransActvIP[x]  with message "ulPortMessageGet"
  end if
  if the result <> empty then
    put "error Couldn't open transfer port" into tErr
    ulFtpSetError x,tErr
    exit "ulTransferActive"
  end if
  
  put  laTransActvIP[x] div 256 into i1
  put  laTransActvIP[x]  mod 256 into i2
  
  put "PORT " & thisIP & "," & i1&","& i2  into tCmd
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    ulFtpSetError x,tReply
    exit "ulTransferActive"
  end if
end ulTransferActive
------------------------------------------
on ulPortMessageGet x,y
  ##active transfer message received
  put laControlXLocalMap[y] into tControlSock
  put tControlSock into laControlXDataMap[x]
  if x is among the lines of the openSockets then
    read from socket x with message "ulGetData"
    if the result <> empty then
      put the result into tReply
      ulFtpSetError tControlSock,tReply
    end if
  end if
end ulPortMessageGet

#################the ftp download routine##################
on ulGetData x,y
  put laControlXDataMap[x] into mSock
  ulStoreData laUrl[mSock],y
  add length(y) to laReadBytes[laUrl[mSock]]
  put "loading," & laReadBytes[laUrl[mSock]] & "," & laLength[laUrl[mSock]]  into tStatusString
  put tStatusString into laUrlErrorStatus[laUrl[mSock]]
  if laLoadReq[laUrl[mSock]] then put tStatusString into laUrlLoadStatus[laUrl[mSock]]
  ulSendCallback laUrl[mSock],tStatusString  ##CALLBACK FEATURE
  if x is among the lines of the openSockets then
    read from socket x with message "ulGetData"
    if the result <> empty then
      put false into laStatus[laUrl[mSock]]
    end if
  end if
end ulGetData

##############FTP PUT #########################

on ulFtpSend x,z
  if lvFtpMode is "active" then
    put "active" into laMode[laUrl[x]]
  else
    put "passive" into laMode[laUrl[x]]
  end if
  
  set the itemDel to "|";put last item of z into y
  set the itemDel to comma
  put "contacted" into laUrlErrorStatus[laUrl[x]]
  if laLoadReq[laUrl[x]] then put "contacted" into laUrlLoadStatus[laUrl[x]]
  ulSendCallback laUrl[x],"contacted"  ##CALLBACK FEATURE
  ----------------------------------------------------------------------
  ##sort out file path
  if laHome[laUrl[x]] is not "/" then ##otherwise laFileName should already be OK
    if laHome[laUrl[x]] is not char 1 to length(laHome[laUrl[x]]) of laLongFileName[laUrl[x]] then
      put laHome[laUrl[x]] before laLongFileName[laUrl[x]]
    end if
  end if
  
  ## check for valid filename
  if last char of laLongFileName[laUrl[x]] is  "/" or laLongFileName[laUrl[x]] is empty then
    put "File not specified" into tErr
    ulFtpSetError x,tErr
    exit "ulFtpSend"
  end if
  
  ### CWD to directory if it exists
  put false into tNeedCWDReset
  set the itemDel to "/"
  put laLongFileName[laUrl[x]] into tTempPath
  put empty into item -1 of tTempPath
  if tTempPath <> laHome[laUrl[x]] then
    delete char -1 of tTempPath
    put "CWD " & tTempPath into tCmd
    put true into tNeedCWDReset
    
    put ulFtpCommand(tCmd,x) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      ulMakeDirectory x,tTempPath,1 ##1 = first try
      if the result <> empty then
        ulFtpSetError x,the result
        exit "ulFtpSend"
      end if
    end if
  end if
  
  if tNeedCWDReset then ##RESET working directory
    
    put "CWD " & laHome[laUrl[x]] into tCmd
    put ulFtpCommand(tCmd,x) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      ulFtpSetError x,tReply
      close socket x
      delete local laSocketUser[x]
      exit "ulFtpSend"
    end if
  end if
  
  ----------------------------------------------------------------------
  put "TYPE I" into tCmd
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    ulFtpSetError x,tReply
    exit "ulFtpSend"
  end if
  
  if laFile[laUrl[x]] is empty then
    put length(laPostData[laUrl[x]]) into laLength[laUrl[x]]
  else
    put ulFileLength(laFile[laUrl[x]]) into laLength[laUrl[x]]
  end if
  put empty into laWriteBytes[laUrl[x]]
  put empty into laFtpDataDone[laUrl[x]] ##used below to control exit from ulFtpSend
  if laMode[laUrl[x]] is "active" then
    ulTransferActive x
  else
    ulTransferPassive x
  end if
  if laStatus[laUrl[x]] is not empty then ##couldn't make data connection
    exit "ulFtpSend"
  end if
  
  put "STOR "  & laLongFileName[laUrl[x]] into tCmd
  
  
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    ulFtpSetError x,tReply
    exit "ulFtpSend"
  end if
  put "requested" into laUrlErrorStatus[laUrl[x]]
  if laLoadReq[laUrl[x]] then put "requested" into laUrlLoadStatus[laUrl[x]]
  ulSendCallback laUrl[x],"requested"  ##CALLBACK FEATURE
  
  ##Block here while sending data
  if laMode[laUrl[x]] is not "active" then ulSendDataP x
  repeat while laFtpDataDone[laUrl[x]] is empty and laStatus[laUrl[x]] is empty##waiting for write to complete
    if lvJumpOut then exit to top
    wait for messages
  end repeat
  if laStatus[laUrl[x]] <> empty then ##error occurred
    if  laUrlErrorStatus[laUrl[x]] is empty then
      put "error" into laUrlErrorStatus[laUrl[x]]
    end if
    put empty into laData[laUrl[x]] ##clear data
    if laLoadReq[laUrl[x]] then
      put "error" into laUrlLoadStatus[laUrl[x]]
      delete local laData[laUrl[x]] ##clear data
    end if
    close socket x
    delete local laSocketUser[x]
  else
    ##look for 226 response
    put ulFtpWaitResponse(x) into tReply
    if word 1 of tReply <> 226 then
      replace "ftperr," with empty in tReply
      put "error" && tReply into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then
        put "error" into laUrlLoadStatus[laUrl[x]]
        delete local laData[laUrl[x]] ##clear data
      end if
      close socket x
      delete local laSocketUser[x]
    else
      put empty into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then
        put "uploaded" into laUrlLoadStatus[laUrl[x]]
        delete local laData[laUrl[x]] ##clear data
      end if
      ulSendCallback laUrl[x],"uploaded"  ##CALLBACK FEATURE
    end if
    put true into laStatus[laUrl[x]]
  end if
  
end ulFtpSend
--------------------------------------------
on ulMakeDirectory x, pDir
  
  -- first we CWD to the parent directory
  set the itemDel to "/"
  put pDir into tTempPath
  delete item -1 of tTempPath ##parent directory
  if tTempPath is empty then put "/" into tTempPath  ## root directory
  put empty into lvNeedDir
  
  put "CWD " & tTempPath into tCmd
  
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    if tTempPath = laHome[laUrl[x]] then
      return "error Unable to create directory path"
    else
      ulMakeDirectory x,tTempPath
      if the result <> empty then
        return the result
      end if
    end if
  end if
  
  put "MKD " & pDir into tCmd
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    return "error Unable to create directory path"
  else  ##now CWD to the created directory
    put "CWD " & pDir into tCmd
    put ulFtpCommand(tCmd,x) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      return tReply
    else
      return empty
    end if
  end if
  
end ulMakeDirectory

############ACTIVE UPLOAD############
on ulPortMessageSend x,y
  ##active transfer message received
  put laControlXLocalMap[y] into tControlSock
  put tControlSock into laControlXDataMap[x]
  put ulNextData(laUrl[tControlSock]) into nData
  
  if nData <> empty then
    add length(nData) to laWriteBytes[laUrl[tControlSock]]
    put "uploading, " & laWriteBytes[laUrl[tControlSock]] & "," & laLength[laUrl[tControlSock]] into tStatusString
    put tStatusString into laUrlErrorStatus[laUrl[tControlSock]]
    
    write nData to  socket x  with  message "ulWriteMoreA"
    if the result <> empty then
      put "error" && the result into laUrlErrorStatus[laUrl[tControlSock]]
      if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[tControlSock]]
      put false into laStatus[laUrl[tControlSock]]
    end if
  else
    put false into laStatus[laUrl[tControlSock]]
  end if
  
end ulPortMessageSend
-------------------------------------------

on ulWriteMoreA x
  put laControlXDataMap[x] into tId
  
  put ulNextData(laUrl[tId]) into nData
  if nData <> empty then
    add length(nData) to laWriteBytes[laUrl[tId]]
    put "uploading," & laWriteBytes[laUrl[tId]] & "," & laLength[laUrl[tId]] into tStatusString
    put tStatusString into laUrlErrorStatus[laUrl[tId]]
    if laLoadReq[laUrl[tId]] then put tStatusString into laUrlLoadStatus[laUrl[tId]]
    ulSendCallback laUrl[tId],tStatusString  ##CALLBACK FEATURE
    write nData to  socket x  with message "ulWriteMoreA"
    if the result <> empty then
      put false into laStatus[laUrl[tId]]
    end if
  else
    put true into laFtpDataDone[laUrl[tId]]
    
    put empty into laUrlErrorStatus[laUrl[tId]]
    close socket x
    close socket laTransActvIP[tID]  ##local port
    delete local laControlXDataMap[x]
  end if
  
end ulWriteMoreA

##########PASSIVE UPLOAD############

on ulSendDataP x
  put ulNextData(laUrl[x]) into nData
  if nData <> empty then
    add length(nData) to laWriteBytes[laUrl[x]]
    put "uploading," &  laWriteBytes[laUrl[x]] & "," & laLength[laUrl[x]] into tStatusString
    put tStatusString into laUrlErrorStatus[laUrl[x]]
    write nData to  socket laTransPasvIP[laUrl[x]]  with  message "ulWriteMoreP"
    if the result <> empty then
      put false into laStatus[laUrl[x]]
    end if
  else
    put false into laStatus[laUrl[x]]
  end if
end ulSendDataP
---------------------------------------------------------------------
on ulWriteMoreP x
  put laControlXDataMap[x] into mSock
  put ulNextData(laUrl[mSock]) into nData
  if nData <> empty then
    add length(nData) to laWriteBytes[laUrl[mSock]]
    put "uploading, " & laWriteBytes[laUrl[mSock]] & "," & laLength[laUrl[mSock]]  into tStatusString
    put tStatusString into laUrlErrorStatus[laUrl[mSock]]
    if laLoadReq[laUrl[mSock]] then put tStatusString into laUrlLoadStatus[laUrl[mSock]]
    ulSendCallback laUrl[mSock],tStatusString  ##CALLBACK FEATURE
    if laStatus[laUrl[mSock]] is empty then
      write nData to  socket x  with message "ulWriteMoreP"
    end if
    if the result <> empty then
      put false into laStatus[laUrl[mSock]]
    end if
  else
    close socket x ##close data socket here
    delete local laControlXDataMap[x]
    put empty into laUrlErrorStatus[laUrl[mSock]]
    put true into laFtpDataDone[laUrl[mSock]] #set flag before closing socket
    
  end if
end ulWriteMoreP

####################FTP DELETE################

on ulFtpDelete x
  ###########make sure we use the full path
  ##sort out file path
  if laHome[laUrl[x]] is not "/" then ##otherwise laFileName should already be OK
    if laHome[laUrl[x]] is not char 1 to length(laHome[laUrl[x]]) of laLongFileName[laUrl[x]] then
      put laHome[laUrl[x]] before laLongFileName[laUrl[x]]
    end if
  end if
  
  if last char of laLongFileName[laUrl[x]] is "/" then
    #delete directory
    put "RMD "  &  laLongFileName[laUrl[x]] into tCmd
    put "directory" into mType
  else
    #delete file
    put "DELE "  &  laLongFileName[laUrl[x]] into tCmd
    put "file" into mType
  end if
  
  put ulFtpCommand(tCmd,x) into tReply
  if not ulFtpGoodReply(tReply, tCmd) then
    replace "ftpErr," with empty in tReply
    put "error" && tReply into laUrlErrorStatus[laUrl[x]]
  else
    put empty into laUrlErrorStatus[laUrl[x]]
  end if
  put true into laStatus[laUrl[x]]
end ulFtpDelete

#########################################################
on socketClosed x
  ulLogIt "CLOSED" && x & cr##LOG
  delete local laSocketUser[x] ##reference for allocating sockets for FTP logons
  ##need to check whether ftp data port or not
  if x is among the lines of keys(lvSocketToken) then ##trying to open a socket
    put "socket closed" into lvSocketToken[x]
    
  else  if x is lvFtpCommandSocket then ##handling libUrlFtpCommand
    if x is among the lines of keys(laFTPCommandStatus) then ##may be waiting for a server reply
      put "socket closed" into laFTPCommandStatus[x] ##unblock waits
    end if
  else if x is among the lines of keys(laUrl) then ##http or ftp control socket
    ## check for two situations here
    ## first is a premature close on a socket when we know the data length
    ## second is for cases when we don't know the data length
    ## a normal close when we  know the data length isn't handled here
    if laLength[laUrl[x]] > laReadBytes[laUrl[x]] then ##fixed dc 250103
      put "Socket closed before end of file" into laUrlErrorStatus[laUrl[x]]
      if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
      put "false" into laStatus[laUrl[x]] ##unblock waits
      if x is among the lines of keys(laFTPCommandStatus) then ##may be waiting for a server reply
        put "socket closed" into laFTPCommandStatus[x] ##unblock waits
      end if
    else if laLength[laUrl[x]] is empty and char 1 to 4 of laUrl[x] is "http" then ##when we don't have a length
      if  laStatus[laUrl[x]] is empty then ##assume download completed
        put empty into laUrlErrorStatus[laUrl[x]]
      end if
      put true into  laStatus[laUrl[x]] ##unblock waits
      put "true" into  laHttpDataDone[laUrl[x]] ##unblock waits
    end if
    
  else if x is among the lines of keys(laControlXDataMap)then##must be ftp remote data socket
    put laControlXDataMap[x] into tControlSocket
    put true into laFtpDataDone[laUrl[tControlSocket]]
    if laTransActvIP[tControlSocket] is among the lines of the openSockets then
      close socket laTransActvIP[tControlSocket] ##local data port during active transfers
    end if
    delete local laControlXDataMap[x]
    
  end if
end socketClosed
-------------------------------------------
##SocketTimeout defaults to 10000 milliseconds.
##To change that one can set the "socketTimeoutInterval" to a different value.

on socketTimeout x
  ulLogit "socket timeout" && x & cr ##LOG
  ##need to check whether data port or not
  if x is among the lines of keys(lvSocketToken) then ##trying to open a socket
    put "socket timeout" into lvSocketToken[x]
    delete local laSocketUser[x]
  else if x is lvFtpCommandSocket then ##handling libUrlFtpCommand
    if x is among the lines of keys(laFTPCommandStatus) then ##may be waiting for a server reply
      put "socket timeout" into laFTPCommandStatus[x] ##unblock waits
    end if
  else if x is among the lines of keys(laUrl) then ##http or ftp control socket
    if laLoadReq[laUrl[x]] then put "timeout" into laUrlLoadStatus[laUrl[x]]
    put "socket timeout" && x into laUrlErrorStatus[laUrl[x]]
    put "false" into laStatus[laUrl[x]] ##unblock waits
    if x is among the lines of keys(laFTPCommandStatus) then ##may be waiting for a server reply
      put "socket timeout" into laFTPCommandStatus[x] ##unblock waits
    end if
    close socket x
    delete local laSocketUser[x]
  else if x is among the lines of keys(laControlXDataMap)then##must be ftp remote data socket
    put laControlXDataMap[x] into tControlSocket
    put false into laStatus[laUrl[tControlSocket]] ##unblock waits
    put "socket timeout" into laFTPCommandStatus[tControlSocket]
    if laLoadReq[laUrl[x]] then put "timeout" into laUrlLoadStatus[laUrl[tControlSocket]]
    put "socket timeout" && x into laUrlErrorStatus[laUrl[tControlSocket]]
  else if x is a number then##local port for active ftp transfer
    put laControlXLocalMap[x] into tControlSocket
    if tControlSocket <> empty then
      put false into laStatus[laUrl[tControlSocket]] ##unblock waits
      put "socket timeout" into laFTPCommandStatus[tControlSocket]
      if laLoadReq[laUrl[tControlSocket]] then put "timeout" into laUrlLoadStatus[laUrl[tControlSocket]]
      put "socket timeout" && x into laUrlErrorStatus[laUrl[tControlSocket]]
    end if
  end if
  
end socketTimeout
--------------------------------------------
on socketError x, pErr
  ulLogit "socket error" && x & cr & pErr & cr ##LOG
  ##need to check whether data port or not
  if pErr is empty then put "unknown error" into pErr
  if x is among the lines of keys(lvSocketToken) then ##trying to open a socket
    put pErr into lvSocketToken[x]
    
  else  if x is lvFtpCommandSocket then ##handling libUrlFtpCommand
    if x is among the lines of keys(laFTPCommandStatus) then ##may be waiting for a server reply
      put "socket error" into laFTPCommandStatus[x] ##unblock waits
    end if
  else if x is among the lines of keys(laUrl) then ##http or ftp control socket
    if laLoadReq[laUrl[x]] then put "error" into laUrlLoadStatus[laUrl[x]]
    put "error" && pErr into laUrlErrorStatus[laUrl[x]]
    put "false" into laStatus[laUrl[x]] ##unblock waits
    if x is among the lines of keys(laFTPCommandStatus) then ##may be waiting for a server reply
      put pErr into laFTPCommandStatus[x] ##unblock waits
    end if
  else if x is among the lines of keys(laControlXDataMap)then##must be ftp passive data socket
    put laControlXDataMap[x] into tControlSocket
    put false into laStatus[laUrl[tControlSocket]] ##unblock waits
    put pErr into laFTPCommandStatus[tControlSocket]
    if laLoadReq[laUrl[tControlSocket]] then put "error" into laUrlLoadStatus[laUrl[tControlSocket]]
    put "error" && pErr into laUrlErrorStatus[laUrl[tControlSocket]]
    
  else if x is a number then##local port for active ftp transfer
    put laControlXLocalMap[x] into tControlSocket
    if tControlSocket <> empty then
      put false into laStatus[laUrl[tControlSocket]] ##unblock waits
      put pErr into laFTPCommandStatus[tControlSocket]
      if laLoadReq[laUrl[tControlSocket]] then put "error" into laUrlLoadStatus[laUrl[tControlSocket]]
      put "error" && pErr into laUrlErrorStatus[laUrl[tControlSocket]]
    end if
    
  end if
end socketError
----------------------------------------------
on libUrlResetAll
  if there is a stack "libUrl" then put empty into fld "log1" of stack "libURL"
  repeat for each line i in the openSockets
    close socket i
  end repeat
  ulDeleteLocals
  put true into lvJumpOut
  send "ulDeleteLocals" to me in 5 milliseconds
end libUrlResetAll
--------------------------------------------
on ulDeleteLocals
  repeat for each item e in line 3 of the localNames
    get "delete" && "local" && e
    do it
  end repeat
end ulDeleteLocals
----------------------------------------------
on resetAll
  ## included for compatibility with previous versions
  ##ibUrlResetAll should be used instead
  libUrlResetAll
end resetAll
-----------------------------------------------
on ulFtpStopWatch x
  if x is among the lines of the OpenSockets then
    if lvFtpStopTime is empty or lvFtpStopTime is not a number then
      put 15 into lvFtpStopTime
    end if
    switch
    case laStopSec[x] >= lvFtpStopTime
      delete local laStopSec[x]
      delete local laStopUnit[x]
      put  "QUIT" into tCmd
      get ulFtpCommand(tCmd,x)
      delete local laFtpCommandStatus[x]
      # write "QUIT" & CRLF to socket x ##tidy finish
      close socket x
      delete local laSocketUser[x]
      break
    case  laStopUnit[x]=1
      add laStopUnit[x] to laStopSec[x]
      send "ulFtpStopWatch " & x to me in 1 sec
      break
    case laStopUnit[x] = 0
      break
    end switch
  else
    delete local laStopSec[x]
    delete local laStopUnit[x]
  end if
end ulFtpStopWatch
----------------------------------------------
on libUrlFtpUpload pData,pUrl,pMessage
  put false into lvJumpOut
  put ulStripUrl(pUrl) into newUrl
  if char 1 to 3 of newUrl <> "ftp" then
    return "invalid url"
  end if
  if lvCount is empty then
    put "6923" into lvCount
  else
    #add 1 to lvCount
  end if
  switch
  case newUrl is among the lines of  the keys of laLoadingUrls
    ##don't allow loads if the same url is waiting to load
    return "error  URL is currently loading" with empty
    break
  default
    put pData into laPostData[newUrl]
    if pMessage <> empty then
      put the long id of the target &","& pMessage into laMessg[newUrl]
    end if
    put true into laLoadReq[newUrl]
    put 1 into laLoadingUrls[newUrl] #for tracking
    put "putData" into laAction[newUrl]
    put empty into laUrlErrorStatus[newUrl]
    put empty into laUrlLoadStatus[newUrl]
    put empty into laData[newUrl]
    ulGetFormat newUrl,lvCount
    if laUrlLoadStatus[newUrl] is "error" and not laCancelled[newUrl] then
      ulSendMessage newUrl ##send message now only if error occurred
      return "error"
    else if laCancelled[newUrl] then
      ##user cancelled after starting but before blocking point
      delete local laLoadedUrls[newUrl]
      delete local laUrlLoadStatus[newUrl]
      delete local laUrlErrorStatus[newUrl]
      delete local laStatus[newUrl]
      delete local laCancelled[newUrl]
      
    else
      return empty
    end if
    break
  end switch
end libUrlFtpUpload
----------------------------------------------
on libUrlFtpUploadFile pFile,pUrl,pMessage
  put false into lvJumpOut
  put ulStripUrl(pUrl) into newUrl
  if char 1 to 3 of newUrl <> "ftp" then
    return "invalid url"
  end if
  open file pFile for binary read
  if the result is not empty then
    return the result
  end if
  put newUrl into laUrlByFile[pFile]
  
  if lvCount is empty then
    put "6923" into lvCount
  else
    #add 1 to lvCount
  end if
  switch
  case newUrl is among the lines of  the keys of laLoadingUrls
    ##don't allow loads if the same url is waiting to load
    return "error  URL is currently loading" with empty
    break
    #case newUrl is not among the lines of  the keys of laLoadedUrls OR laUrlLoadStatus[newUrl] is not "cached"
  default
    
    if pMessage <> empty then
      put the long id of the target &","& pMessage into laMessg[newUrl]
    end if
    put true into laLoadReq[newUrl]
    put pFile into laFile[newUrl]
    put 1 into laLoadingUrls[newUrl] #for tracking
    put "putData" into laAction[newUrl]
    put empty into laUrlErrorStatus[newUrl]
    put empty into laUrlLoadStatus[newUrl]
    #put empty into laData[newUrl]
    ulGetFormat newUrl,lvCount
    if laUrlLoadStatus[newUrl] is "error" and not laCancelled[newUrl] then
      ulSendMessage newUrl ##send message now only if error occurred
      return "error"
    else if laCancelled[newUrl] then
      ##user cancelled after starting but before blocking point
      delete local laLoadedUrls[newUrl]
      delete local laUrlLoadStatus[newUrl]
      delete local laUrlErrorStatus[newUrl]
      delete local laStatus[newUrl]
      delete local laCancelled[newUrl]
      
    else
      return empty
    end if
    break
  end switch
end libUrlFtpUploadFile

-----------------------------------------------
on libUrlDownloadToFile pUrl,pFile,pMessage
  put false into lvJumpOut
  put ulStripUrl(pUrl) into newUrl
  open file pFile for binary write
  if the result is not empty then
    return the result
  end if
  if lvCount is empty then
    put "6923" into lvCount
  else
    #add 1 to lvCount
  end if
  switch
  case newUrl is among the lines of  the keys of laLoadingUrls
    ##don't allow loads if the same url is waiting to load
    return "error  URL is currently loading" with empty
    break
    #case newUrl is not among the lines of  the keys of laLoadedUrls OR laUrlLoadStatus[newUrl] is not "cached"
  default
    if pMessage <> empty then
      put the long id of the target &","& pMessage into laMessg[newUrl]
    end if
    put true into laLoadReq[newUrl]
    put pFile into laFile[newUrl]
    put 1 into laLoadingUrls[newUrl] #for tracking
    put "getData" into laAction[newUrl]
    put empty into laUrlErrorStatus[newUrl]
    put empty into laUrlLoadStatus[newUrl]
    
    ulGetFormat newUrl,lvCount
    
    if laUrlLoadStatus[newUrl] is "error" and not laCancelled[newUrl] then
      ulSendMessage newUrl ##send message now only if error occurred
      return "error"
    else if laCancelled[newUrl] then
      ##user cancelled after starting but before blocking point
      delete local laLoadedUrls[newUrl]
      delete local laUrlLoadStatus[newUrl]
      delete local laUrlErrorStatus[newUrl]
      delete local laStatus[newUrl]
      delete local laCancelled[newUrl]
      
    else
      return empty
    end if
    break
  end switch
end libUrlDownloadToFile

-----------------------------------------------
function libUrlErrorData pUrl
  return laUrlErrorStatus[pUrl]
end libUrlErrorData
-----------------------------------------------
on libUrlSetFtpMode pMode
  ##default to passive
  if pMode is "active" or pMode is "a" then
    put "active" into lvFtpMode
  else
    put "passive" into lvFtpMode
  end if
end libUrlSetFtpMode

----------------------------
on libUrlSetFtpListCommand pCommand
  if pCommand is "NLST" then
    put "NLST" into lvFtpListCommand
  else
    put "LIST" into lvFtpListCommand
  end if
end libUrlSetFtpListCommand
-----------------------------
function libUrlVersion
  return the cVersion of me
end libUrlVersion
------------------------------
on libUrlSetLogField pField
  if word 1 of pField is "field" then
    put pField into tField
  else
    if pField is a number then
      put "field" && pField into tField
    else
      if word 1 of pField is "id" then
        put "field" && pField into tField
      else
        put "field" && quote & pField & quote into tField
      end if
    end if
  end if
  if exists(tField) then
    put the long ID of tField into tField##standardise
    put tField into lvLogField
  else
    put empty into lvLogField
  end if
end libUrlSetLogField
---------------------------
on libUrlSetStatusCallback pMessage,pObject
  ##pObject must be a long ID
  if pMessage <> empty and exists(pObject)  then
    put pMessage & comma & pObject into lvStatusCallback
  else
    put empty into lvStatusCallback
  end if
end libUrlSetStatusCallback
---------------------------
function libUrlLastHttpHeaders
  return the lastHttpHeaders of me
end libUrlLastHttpHeaders
--------------------------
on libUrlSetCustomHttpHeaders pHeaders
  set the customHTTPHeaders of me to pHeaders
end libUrlSetCustomHttpHeaders
---------------------------
function libUrlLastRhHeaders
  return the lastRhHeaders of me
end libUrlLastRhHeaders
----------------------------
on libUrlSetFtpStopTime pSecs
  if pSecs is empty or pSecs < 1 or pSecs is not a number then
    put 15 into lvFtpStopTime
  else
    put pSecs into lvFtpStopTime
  end if
end libUrlSetFtpStopTime
---------------------------
on ulSendMessage pUrl
  ##send any requested message on completion
  if laMessg[pUrl] is not empty then
    if item 2 of laMessg[pUrl] is not quote & "" & quote  then
      put item 1 of laMessg[pUrl] into xmessg
      put item 2 of laMessg[pUrl] into omessg
      replace quote with empty in omessg
      send omessg && quote & pUrl & quote & "," & laUrlLoadStatus[pUrl]  to xmessg in 0 milliseconds
    end if
  end if
  delete local laMessg[pUrl]
end ulSendMessage
----------------------------
on ulSendCallback pUrl, pStatus
  if lvStatusCallback is empty then exit ulSendCallback
  put item 1 of lvStatusCallback into tMessage
  put item 2 of lvStatusCallback into tObject
  if exists(tObject) then
    #put laUrlErrorStatus[pUrl] into tStatus
    send tMessage &&  quote & pUrl & quote & comma & quote & pStatus & quote to tObject in 0 milliseconds
  end if
end ulSendCallback
-----------------------------
function ulFileLength pFile
  if there is a file pFile then
    put the directory into tSavedDir
    put pFile into tDir
    set the itemDel to "/"
    put item -1 of pFile into tFileName
    delete item -1 of tDir
    set the directory to tDir
    put the detailed files into tFileData
    set the directory to tSavedDir
    set the itemDel to comma
    split tFileData by cr and ","
    return item 1 of tFileData[urlEncode(tFileName)]
  else
    return "no file"
  end if
end ulFileLength
------------------------------
on ulLogIt pMessage
  if exists(lvLogField) then
    put "put pMessage after fld" && word 2 to -1 of lvLogField into tExp
    do tExp
  end if
end ulLogIt
-------------------------------
on ulStartTickle
  ## safeguard against possible hangs in "wait for messages" loops
  if lvTickle is empty then
    put true into lvTickle
    send "ulTickleMe" to me in 1 seconds
  end if
end ulStartTickle
--------------------------
on ulTickleMe
  ## safeguard against possible hangs in "wait for messages" loops
  if the openSockets <> empty then
    send "ulTickleMe" to me in 1 seconds
  else
    put empty into lvTickle
  end if
end ulTickleMe
---------------------------
function isIPNumber pHost
  replace "." with empty in pHost
  replace ":" with empty in pHost
  replace "|" with empty in pHost
  return pHost is a number
end isIPNumber
----------------------------
on ulCleanUpHttp x #x is socket
  put laLoadReq[laUrl[x]] into tlLoadReq ##holder
  put laConnectHost[laUrl[x]] into tConnectHost
  ulCleanUpHttpLocals laUrl[x] ## remove url referenced locals
  delete local laLoadReq[laUrl[x]] ##OK here??
  ##delete socket referenced locals
  
  put laUrl[x] into tempUrl
  delete local laUrl[x]
  
  --prepare for next request
  if tlLoadReq then
    delete local laLoadingUrls[tempUrl]
    ## delete line 1 of laLoadQ[tConnectHost] ##commented out for 1.0.8r4 -- now done in ulNextHttpLoadRequest
    if the number of lines of laLoadQ[tConnectHost] = 0 then
      delete local laLoadQ[tConnectHost] ##important
      delete local laConnectID[tConnectHost]
    end if
  end if
end ulCleanUpHttp
-------------------------
on ulCleanUpHttpLocals pUrl
  ##crude clean up
  delete local laLength[pUrl]
  delete local laConnectHost[pUrl]
  delete local laAuth[pUrl]
  delete local laUser[pUrl]
  delete local laPasswd[pUrl]
  delete local laHost[pUrl]
  delete local laLongFileName[pUrl]
  delete local laLineNum[pUrl]
  delete local laTmpData[pUrl]
  delete local laTemp[pUrl]
  delete local laAction[pUrl]
  delete local laConn[pUrl]
  delete local laRhHeader[pUrl]
  delete local laNeedChunk[pUrl]
  delete local laStatusCode[pUrl]
  delete local laStatusMessage[pUrl]
  delete local laCode[pUrl]
  delete local laChunk[pUrl]
  delete local laHaveHeader[pUrl]
  delete local laHttpDataDone[pUrl]
  delete local laPostData[pUrl]
  delete local laReadBytes[pUrl]
  delete local laCurrentHttpHeaders[pUrl]
end ulCleanUpHttpLocals
------------------------------
on ulCleanUpFtp x
  put laLoadReq[laUrl[x]] into tlLoadReq ##holder
  put laConnectHost[laUrl[x]] into tConnectHost #holder
  ulCleanUpFtpLocals laUrl[x] ## remove url referenced locals
  delete local laLoadReq[laUrl[x]] ##OK here??
  
  ##close any data ports ##should be closed already, but if error occurred
  if laTransPasvIP[laUrl[x]] is among the lines of the openSockets then
    close socket laTransPasvIP[laUrl[x]]
  end if
  if laTransActvIP[x] is among the lines of the openSockets then ##local port
    close socket laTransActvIP[x]
  end if
  
  delete local  laControlXLocalMap[laTransActvIP[x]]
  delete local  laControlXDataMap[laTransPasvIP[laUrl[x]]]
  delete local laTransPasvIP[laUrl[x]]
  delete local  laTransActvIP[x]
  
  ##delete socket referenced locals
  
  put laUrl[x] into tempUrl
  delete local laUrl[x]
  delete local laFtpCommandStatus[x]
  
  --prepare for next request
  if tlLoadReq then
    delete local laLoadingUrls[tempUrl]
    -- delete line 1 of laLoadQ[tConnectHost] ##commented out for 1.0.8r4 -- now done in ulNextFtpLoadRequest
    if the number of lines of laLoadQ[tConnectHost] = 0 then
      delete local laLoadQ[tConnectHost] ##important
      delete local laConnectID[tConnectHost]
      
    end if
  end if
end ulCleanUpFtp
------------------------------
on ulCleanUpFtpLocals pUrl
  ##clean up locals
  delete local laConnectHost[pUrl]
  delete local laLength[pUrl]
  delete local laAuth[pUrl]
  delete local laUser[pUrl]
  delete local laPasswd[pUrl]
  delete local laHost[pUrl]
  delete local laLongFileName[pUrl]
  delete local laAction[pUrl]
  delete local laHome[pUrl]
  delete local laFtpDataDone[pUrl]
  delete local laMode[pUrl]
  delete local laPostData[pUrl]
  delete local laReadBytes[pUrl]
  delete local laWriteBytes[pUrl]
end ulCleanUpFtpLocals
------------------------------
on ulCancelRequest pUrl
  put true into laCancelled[pUrl]
  put "error cancelled" into tError
  ulStopRequest pUrl,tError
  
end ulCancelRequest
-----------------------------
on ulStopRequest pUrl, pErrMessage
  put keys(laUrl) into tSocketKeys##test
  repeat for each line tKey in tSocketKeys
    if laUrl[tKey] = pUrl then
      put tKey into tItsSocket
      exit repeat
    end if
  end repeat
  if tItsSocket is among the lines of the openSockets then
    put false into laStatus[pUrl] ##should cause everything to wind up cleanly
    put pErrMessage into laUrlErrorStatus[pUrl]
    put empty into laData[pUrl]
  end if
  if laLoadReq[pUrl] then
    put "error" into laUrlLoadStatus[pUrl]
    delete local laData[pUrl]
  end if
  
end ulStopRequest

-----------------------------
on ulStoreData pUrl,@pData
  if laFile[pUrl] <> empty then
    write pData to file laFile[pUrl]
    if the result is not empty then
      put "error" && the result into tErr
      ulStopRequest pUrl,tErr
    end if
  else if laLoadReq[pUrl] <> empty then
    put pData after laLoadedUrls[pUrl]
  else
    put pData after laData[pUrl]
  end if
end ulStoredata
-----------------------------
function ulNextData pUrl
  if laFile[pUrl] is empty then
    put char 1 to 4096 of laPostdata[pUrl] into tData
    delete char 1 to 4096 of laPostData[pUrl]
  else
    read from file laFile[pUrl] for 4096
    if the result <> empty and the result <> "eof" then
      put "error" && the result into tErr
      ulStopRequest pUrl,tErr
    else
      put it into tData
    end if
  end if
  return tData
end ulNextData
------------------------------
function ulStripUrl pUrl
  ## clean out any whitespace before and after url
  put space & tab & cr into tString
  repeat while char 1 of pUrl is in tString
    delete char 1 of pUrl
  end repeat
  repeat while char -1 of pUrl is in tString
    delete char -1 of pUrl
  end repeat
  return pUrl
end ulStripUrl
--------------------------------
function ul_TraceLocals ##DEBUG ROUTINE, used in development
  repeat for each item e in line 3 of the localNames
    put e & cr after tRetVal
    put "put keys(" & e & ") & cr after tRetVal" into tDoString
    do tDoString
  end repeat
  return tRetVal
end ul_TraceLocals
--------------------------------
function ulFtpCommand pCommandString, pSocket
  ##executes ftp commands
  ##returns the response from the server (or ftpErr if error occurs)
  if pSocket is not among the lines of the openSockets then
    return "ftpErr, socket not open"
  end if
  if pCommandString is empty then
    return "ftpErr, no command to send"
  end if
  put empty into laFTPCommandStatus[pSocket]
  write pCommandString & CRLF to socket pSocket
  if the result <> empty then return "ftpErr," & the result
  read from socket pSocket  for 1 line with message "ulGetFtpReply"
  if the result <> empty then return "ftpErr," & the result
  repeat while laFTPCommandStatus[pSocket] is empty
    if lvJumpOut then exit to top
    wait for messages
  end repeat
  return laFTPCommandStatus[pSocket]
end ulFTPCommand
------------------------------------
function ulFtpWaitResponse pSocket
  ##used for collecting server responses
  ##that are not in response to a direct command
  ##for example when opening a connection to the server, and when transfers complete
  put empty into laFTPCommandStatus[pSocket]
  read from socket pSocket  for 1 line with message "ulGetFtpReply"
  repeat while laFTPCommandStatus[pSocket] is empty
    if lvJumpOut then exit to top
    wait for messages
  end repeat
  return laFTPCommandStatus[pSocket]
end ulFtpWaitResponse
------------------------------------
on ulGetFtpReply pSocket,pReply
  ##reads data from the command port
  ##generally called by ulFTPCommand, but also by ulFtpWaitResponse
  ulLogIt pReply##LOG
  put line -1 of pReply into tReply ##should only be one line
  get char 1 to 3 of tReply
  if it is an integer and it >= 100 then
    put it into tReplyNum
    if char 4 of tReply <> "-" then
      put tReply into laFTPCommandStatus[pSocket]
      
    else
      read from socket pSocket for 1 line with message "ulGetFtpReply"
      if the result <> empty then
        put "ftpErr," & the result into laFTPCommandStatus[pSocket]
        
      end if
    end if
  else
    read from socket pSocket for 1 line with message "ulGetFtpReply"
    if the result <> empty then
      put "ftpErr," & the result into laFTPCommandStatus[pSocket]
      
    end if
  end if
end ulGetFtpReply
---------------------------------
function ulFtpGoodReply pReply, pCommand
  ##compares a reply code against a predetermined list
  ##of "good" reply codes for a particular command
  if item 1 of pReply is "ftpErr" then return false
  put the cFtpGoodCodes[word 1 of pCommand] of me into tGoodCodes
  if word 1 of pReply is among the items of tGoodCodes then
    return true
  else
    return false
  end if
end ulFtpGoodReply
-------------------------------------
function libUrlFtpCommand pCommand, pHost, pUser, pPass
  local tHost,tPort
  put false into lvJumpOut
  if lvCount is empty then
    put "6923" into lvCount
  end if
  
  ##separate host and port
  put "([^:]*)(.*)" into tRegEx
  if not matchText(pHost,tRegEx,tHost,tPort) then return "error Invalid host address"
  
  put tHost into tTempHost
  if tPort is empty then put ":21" into tPort
  
  ##get IP address
  replace "." with empty in tTempHost
  replace ":" with empty in tTempHost
  if tTempHost  is not a number then
    get hostnameToAddress(tHost)
    if the result is empty then
      
      put line 1 of it & tPort into tConnectHost
    else
      return "error" && the result
    end if
  else
    put tHost & tPort into tConnectHost
  end if
  
  ##set anonymous user if needed
  if pUser is empty then
    put "anonymous" into pUser
    put "guest" into pPass
  end if
  ##make dummy url to use other parts of libUrl
  put "ftp:" & pCommand into tDummyUrl
  ## make laUser and laPasswd entries
  put pUser into laUser[tDummyUrl]
  put pPass into laPasswd[tDummyUrl]
  ##make laConnectHost entry so we can use ulWhichSocket
  ##laConnectHost has format host:port|user
  put tConnectHost & "|" & pUser into laConnectHost[tDummyUrl]
  ##do we have an open socket for this user/host combination?
  put ulWhichSocket(tDummyUrl) into tSocket
  put tSocket into lvFtpCommandSocket
  ##don't need any more
  delete local laUser[tDummyUrl]
  delete local laPasswd[tDummyUrl]
  delete local laConnectHost[tDummyUrl]
  
  put ulFtpLogon(tSocket, pUser,pPass) into tLogonReply
  if tLogonReply is empty then
    put ulFtpCommand(pCommand, tSocket) into tFtpReply
    if laStopUnit[tSocket] = 0 then
      put "1" into laStopUnit[tSocket]
      send "ulFtpStopWatch " & tSocket to me in 50 milliseconds
    end if
    delete local lvFtpCommandSocket
    return tFtpReply
  else
    delete local lvFtpCommandSocket
    return tLogonReply
  end if
end libUrlFtpCommand
---------------------------

function ulFtpLogon pSocket, pUser, pPass
  put "0" into laStopUnit[pSocket]
  put "0" into laStopSec[pSocket]
  ulStartTickle ##safeguard routine
  if pSocket is not among the lines of the openSockets then
    get ulOpenSocket(pSocket)
    if not it then return it ##error opening socket
    ------------------------get server response (220)
    put ulFtpWaitResponse(pSocket) into tReply
    if not ulFtpGoodReply(tReply, "connect") then
      return tReply
    end if
    ---------------
    put "USER " & pUser into tCmd
    put ulFtpCommand(tCmd,pSocket) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      return tReply
    end if
    ----------------------
    put  "PASS " & pPass into tCmd
    put ulFtpCommand(tCmd,pSocket) into tReply
    if not ulFtpGoodReply(tReply, tCmd) then
      return tReply
    end if
  end if
  return empty
end ulFtpLogon
------------------------------
###########################################
######socket opening routines##################
###########################################
---------------------------------------------------------------
function ulOpenSocket x
  put empty into lvSocketToken[x]
  put the milliseconds into lvSocketOpenStart[x]
  open socket to x with message "ulGotSocket"
  if the result is not empty then
    return the result
  end if
  send "ulSocketTimeout" && x to me in 500 milliseconds
  put the result into lvSocketOpenMessageID[x]
  
  repeat until lvSocketToken[x] is not empty
    if lvJumpOut then exit to top
    wait for messages
  end repeat
  cancel lvSocketOpenMessageID[x]
  delete local lvSocketOpenStart[x]
  delete local lvSocketOpenMessageID[x]
  put lvSocketToken[x] into tSocketToken ##swap out so we can delete persistent local
  delete local lvSocketToken[x]
  if not tSocketToken then
    if x is among the lines of the openSockets then
      close socket x
    end if
  end if
  return tSocketToken
end ulOpenSocket
-------------------------------------------------
on ulGotSocket x
  put true into lvSocketToken[x]
end ulGotSocket
------------------------------------------------
on ulSocketTimeout x
  if the milliseconds - lvSocketOpenStart[x] > the socketTimeoutInterval then
    put "timeout" into lvSocketToken[x]
  else
    send "ulSocketTimeout" && x to me in 500 milliseconds
    put the result into lvSocketOpenMessageID[x]
  end if
end ulSocketTimeout
          á Ó˙˙˙˙   '  U   @U 
Helvetica   U 
Helvetica  @U    W   @W    U Arial   W Arial   U    U    W   @U   @U   @W    W   @U    U    U Arial   W Arial   U 
Helvetica  
 U   
 W   U   AU    U arial  
 U arial   U arial  
@U    U Geneva   U Geneva  @U Geneva  @W Geneva   U 
helvetica   U 
helvetica   W 
helvetica   U 
helvetica   W 
helvetica   W 
helvetica  U 
helvetica  cFtpGoodCodes    PASV  227SIZE  213PWD  257LIST  125,150MKD  257PORT  200CWD  250transferComplete  226STOR  125,150NLST  125,150Connect  220DELE  250RMD  250MODE  200USER  230,331TYPE  200QUIT  221ABOR  225,226RETR  125,150PASS  230,202  ę    	P ÷on resizeStack
  get the rect of this card
  add 8 to item 1 of it
  add 48 to item 2 of it
  subtract 8 from item 3 of it
  subtract 8 from item 4 of it
  set the rect of field 1 to it
  set the right of button 2 to item 3 of it
end resizeStack
           %Q  ď    `  a    	P řon preOpenCard
  resizeStack
end preOpenCard

on resizeStack
  get the rect of this card
  add 8 to item 1 of it
  add 8 to item 2 of it
  subtract 8 from item 3 of it
  subtract 8 from item 4 of it
  set the rect of field 1 to it
end resizeStack
           %Q  b  ď Reset ŕEŤp #on mouseUp
  resetAll
end mouseUp
   řř          řř       @          	     
   log1  Ŕ)j           0        ę    \    	`       1   [    	a       	4    ` Help ŕEŤp "on mouseUp
  go next
end mouseUp
        Ý  @          	     
  b   	p "on mouseUp
  go next
end mouseUp
         A       a 	 	 		    			LibUrl 		    "      		  LibUrl is the script library used by Revolution and Metacard to implement the Transcript/Metatalk commands and functions that use HTTP and FTP urls.        o    o 
     y  nIt is used when the following Transcript/Metatalk commands and functions are called with HTTP or FTP urls: 		  -     load url <url> [with message <message>]       unload url <url>       get url <url>       put <data> into url <url>       post <data> to url <url>       delete url <url>       the cachedUrls       urlStatus(<url>) 		  ?It also recognizes and implements the following properties: 		       the httpheaders       the httpProxy  		  qIn addition, the library contains a few handlers and functions that can be called directly from your scripts: 		  1     libUrlFtpUpload <data>, <url> [, <message>]       libUrlErrorData(<url>)       libUrlSetFtpMode <mode>       libUrlResetAll  %     libUrlSetFtpStopTime  <seconds>       libUrlSetLogField <field>       libUrlVersion()    		    			Notes:     "   
   +load url <url> [with message <message>] 		    $   *   		  ěload downloads the url and places it into a cache. The cached data will then be used in subsequent references to that url instead of it being downloaded again. Be sure to unload the url (using unload url) when you no longer need it. 		    %         ˝   % Á 
     Ë   ˙The optional message parameter will cause that message to be called when the download completes (or when an error occurs). Two parameters are passed to the message: the url and its urlStatus. The message should be in the same script as the load command.        on mouseUp  ;       put "http://www.xx.com/images/mykids.jpg" into tUrl  -       load url tUrl with message "loadDone"       end mouseUp         on loadDone pUrl, pStatus  #       if pStatus is "cached" then  -         put url pUrl into image 1 of card 1         else  "         answer "Download failed"         end if       end loadDone     		  wload is a "non-blocking" command. This means the url will load in the background while the script continues to run. 		    %         r HThis allows you to monitor downloads, for example with a progress bar.         2    2      9        on mouseUp  A        put "http://www.xxxxxx.com/images/mykids2.jpg" into tUrl          load url tUrl          showStatus        end mouseUp          on showStatus  A        put "http://www.xxxxxx.com/images/mykids2.jpg" into tUrl  )        put urlStatus(tUrl) into tStatus  *        put tStatus ##show in message box  I        if tStatus is not among the items of "cached,error,timeout" then  5          send "showStatus" to me in 50 milliseconds          end if        end showStatus       		  3See below for more information about urlStatus. 		 Note that because the load url command is now executed in a script, you must be careful not to include any "wait" commands in your script before the load has completed. "wait" will stop all scripts running, including libUrl. The following script will not work:           %      %                     Š     % ş K      on mouseUp     %                 A        put "http://www.xxxxxx.com/images/mykids2.jpg" into tUrl          load url tUrl  5        wait until urlStatus(tUrl) is "cached" ##BAD          @ ˙˙      ,       end mouseUp  		    unload url <url> 		    $      		  unload removes a previously loaded url from the cache and thus frees up memory. You should unload urls when you no longer need them. 		    %            get url <url>     $    		 /get url downloads the url or, if the url is cached from a previous load command, retrieves it from the cache. If it completes successfully, the downloaded data will be in the variable it , and the result function will return empty. If an error occurs, the result function will return an error message.     %          °   % ¸      ş     % Á 
      Ë 1    % ü #   %     %% 	      on mouseUp               
 @        put "http://www.xxxxxx.com/images/mykids.jpg" into tUrl          get url tUrl  $        if the result is empty then            put it into image 1          else            answer the result          end if         end mouseUp    		 
Typically the error message will consist of the word "error" followed by a string containing more information about the error. Where appropriate, the error string will be the string returned by the http or ftp server including the server response code. For example:  			  error 404 File not found 		   Note that the variable  it  will not always be empty when an error occurs. Http servers typically return an "error page" for certain errors (401, 404, etc.) libUrl will try to download such data as well, and return it in the it variable. Because of this, you should always check the result function after a  get url  command. You can't assume that because it is not empty no error occurred. 		          %        Ć   % á      ă 4   % 
    !    %3 	    < (   %d     f # 			 čget url is a "blocking" command. This means that the script lines following the get command will not continue until get url completes. However, because of the nature of libUrl, it doesn't block other scripts or user actions. If the get url command is in a button, the user could feasibly click the button again before the first mouseUp has completed. Or he or she may click another button that gets another url. In cases when a url is currently downloading from a get url command, subsequent get url commands will return the error "error Previous request has not completed." Because of this, you may want to disable interface elements while a get url command is completing, or take some other action that is appropriate to your application. 		    %         m   % t      { m   % č      ď á   %Đ     Ř    %ě     ó    %      ] ((similar script in a series of buttons)                  global gUrlBlocking      on mouseUp  ?      put "http://www.xxxxxx.com/images/mykids1.jpg" into tUrl  #      if gUrlBlocking is true then          beep        else  #        put true into gUrlBlocking          get url tUrl  $        put false into gUrlBlocking  $        if the result is empty then            put it into image 1          else            answer the result          end if        end if      end mouseUp  		  The same is true for the other "blocking" commands (post, put, delete). Basically only one url can be handled at a time with any of these commands. 		       W   % W      Z <   put <data> into url <url> 		    $      		 The put command will save the data to the specified url on an ftp server. If it completes successfully, the result function will return empty. If an error occurs, the result function will return an error message. In the same way as for get url the error message will consist of the word "error" followed by a string containing more information about the error. Where appropriate, the error string will be the string returned by the ftp server including the server response code. For example: 		    error 530 Login incorrect.          %        ĺ   % ě  Example       on mouseUp  M         put "ftp://dave:evad345@ftp.xxxxxx.com/images/mykids.txt" into tUrl            put field 1 into tData  !         put tData into url tUrl  %         if the result is empty then  &           answer "Upload successful"           else  4           answer "Upload failed" & cr & the result           end if        end mouseUp  		  I*See below about including user names and passwords for authorization 		  NSee get url for information about the "blocking" behavior of this command. 		          %        A   post <data> to url <url> 		    $    		 The post command is used to post data to an http server process such as cgi. If it completes successfully, the result function will return empty and the response from the server will be in the variable it. If an error occurs, the result function will return an error message. 		          %        c   % k 
     u U   % Ę      Ě    % â 
     ě * NSee get url for information about the "blocking" behavior of this command. 		          %        A    on mouseUp  @       put "http://www.xxxxxx.co.uk/cgi-bin/sendform" into tUrl  ,       put "subject=Post text" into tString  2       put "&to=dave@xxxxxxx.co.uk" after tString  H       put "&message=This is a test message from libUrl." after tString  F       put "&page=http://www.xxxx.co.uk/submitted.html" after tString         put crlf after tString          post tString to url tUrl  #       if the result is empty then           put it into field 1         else           answer the result         end if      end mouseUp       		    delete url <url> 		    $    		  Ădelete url will delete the file from an ftp server. If it completes successfully, the result function will return empty. If an error occurs,  the result function will return an error message. 		    %   
     
 H   % R 
     \ 1   %        *   the cachedUrls 		    $     <the cachedUrls function returns a list of currently cached urls, one per line. Note that it only includes those urls whose urlStatus is "cached". Urls whose urlStatus is "error", but for which there is cached data (e.g. as a result of a "file not found" error on an http server) will not be included in the list. 		    %        -   urlStatus(<url>) 		    $    		  The urlStatus function returns the status of urls that have previously been referenced with a load url command. It will return one of the following:           %  	       O     \     % ^ 	     g .     queued     %              contacted      requested  A    loading,x,y (where x = downloaded bytes and y = total bytes)      timeout  
    error      cached  		  ĄThe function can be used to monitor files as they download (see load url above for an example), or to check the status of a url after the load has completed. 		       @   % @      H X ¤Note that if you upload data with libUrlFtpUpload (see below), instead of "loading" and "cached", urlStatus will return "uploading" and "uploaded" respectively. 		       "   % "      1 r Č			Also note that "queued" is a new possible value. This is returned when a load url request has been made, and the url is placed on a queue while previous requests to the same host are completed. 		       L   % L      T s   		Library interface 		    "      		 The following library routines can be accessed directly from your scripts. More routines may be added from time to time. It's also possible that some of these routines may be incorporated into the Transcript/Metatalk language at some stage, although with different syntax. 		    /libUrlFtpUpload <data>, <url> [, <message>] 		    $   .   		 This handler is basically the upload equivalent of the load url command and can be used to upload data to an ftp server. It is a "non-blocking" routine, so your script will continue to execute as the upload takes place in the background which allows the urlStatus to be monitored as the file is uploading. The optional message parameter lets you denote a message that will be called when the upload completes. 		       7   % 7      ?]aNote that urlStatus will return "uploading,x, y" and "uploaded" in replace of "loading,x,y" and "cached" when libUrlFtpLoad is used. Also note that urlStatus will continue to return "uploaded" for this url until you unload it with the unload url command. For this reason, you are advided to unload the url when you no longer need to know its status. 		       
   % 
 	         %  	      N   % ë 
     ő k   on mouseUp  B      put "ftp://ftp.xxxxxx.com/literature/sadlife.txt" into tUrl        put field 1 into tData  "      libUrlFtpUpload tData, tUrl        showStatus      end mouseUp        on showStatus  B      put "ftp://ftp.xxxxxx.com/literature/sadlife.txt" into tUrl  '      put urlStatus(tUrl) into tStatus  (      put tStatus ##show in message box  I      if tStatus is not among the items of "uploaded,error,timeout" then  2       send "showStatus" to me in 50 milliseconds        end if      end showStatus      		    libUrlErrorData(<url>) 		    $      		 This function allows you to get further error data about a url whose urlStatus is "error". It will return the same string as the result of a get url command. Typically, this will be the response string returned by an http or ftp server. For example: "404 File not found" 		          %        | @    put "ftp://ftp.xxxxxx.com/literature/sadlife.txt" into tUrl        ;    ;  '    if urlStatus(tUrl) is "error" then         get libUrlErrorData(tUrl)  ;      put "An error occurred" & cr & it into field "error"      end if       		    libUrlSetFtpMode <mode> 		    $      		 6This command allows you to switch between passive and active FTP data transfers. <mode> can be either "active" or "passive". Actually, as passive is now the default, anything except "active" will cause the transfer to use passive mode. Any change will persist for the remainder of the session (i.e. until you application exits) or until you issue the command again. When your application starts, passive transfers will be used by default. So if you know you are going to be using active transfers, you should include this command before initiating any transfers. 		 If you don't know the difference between passive and active transfers, don't worry. Nine times out of ten, either will work fine. However, if you find that you are having trouble with ftp transfers, you might want to try switching to see if it makes a difference. 		      libUrlSetFtpMode "active"      		    libUrlResetAll 		    $     Warning: Don't use this command lightly. In fact, you should never have to use it at all. It closes all open sockets and clears all variables used by libUrl, including any cached data. It's basically the "panic buton" when things go wrong, so it may be useful in development. 		       d   % d      g Ż   "libUrlSetFtpStopTime <seconds> 		    $   !   		 ŞThis command lets you set the number of seconds that a socket used for an ftp control connection remains open after a transaction completes. <seconds> must be an integer greater than 0. The default value is 15 seconds. If a new request to the same host is made while the socket is open, the connection is re-used. Note that libUrl makes no attempt to keep the connection open, so the server may close the connection first. 		    libUrlSetLogField <field> 		    $      		  This command lets you set a field that will collect log data. The field parameter should be the long id of the field you wish to use. 		    libUrlVersion() 		    $      šThis returns the current version of the libUrl library. There is no special significnce to the numbers, but will be useful for reference when reporting any problems or difficulties. 		    Authorization 		    $      		  ¸If an http or ftp url requires authorization with a user name and password, these can be included in the url in the following way: 		   <protocol>://<username>:<password>@<host><path>    Examples  B		       http://dave:evad123@www.xxxxxx.com/secrets/thetruth.html  =       ftp://daphne:enhp456@ftp.xxxxxx.com/gossip/really.jpg  
       		  For anonymous ftp, no name or password is required. The library will add the "anonymous" user name and a dummy password automatically. 		  ÓIf the user name or password contains non-alphanumeric characters (specifically the ":", "@", "/" , "." or "|" characters if these are allowed), then these should be urlEncoded before being put into the url. 		      put "jim" into tName  $    put "jsmith@abc.com" into tPass  W    put "ftp://" & tName & ":" & urlEncode(tPass) & "@ftp.xxx.com/title.txt" into tUrl      get url tUrl       		    	Acknowledgements 		    $    		  gDevelopment of libUrl for use with both Revolution and Metacard is sponsored by Runtime Revolution. 		  äThe major credit must go to Andu Novac who put together the first versions from scratch. This project would be going nowhere without his efforts, especially in implementing the contents of the various rfc's for ftp and http. 		  ;Thanks also to contributors Reed Martin and John Kuehne 		  PThe library is currently maintained by Dave Cragg (dcragg@lacscentre.co.uk). 		  			February 24, 2002 		          &         
			  		     c    	`       	 ?   Variable Watcher !   ` ŹŹŹŹŹŹ  ŹŹŹŹŹŹ    x !ż á   vcolors  red,darkorange,brown,blue
curscroll  0curline  1         ´ á˙˙˙˙     U 
Helvetica  	 U 
Helvetica   U 
helvetica  	 U 
helvetica  
 U 
Helvetica  
 U Arial Black   U Arial Black   U Arial   U 
Helvetica   U Times New Roman   U Trebuchet MS   U Verdana   U Times   U Times  
 W 
Helvetica   U Lucida Grande   W 
helvetica   U symbol   U Symbol   ę    	P"on preOpenStack
  set the textSize of field 1 to the scriptTextSize
  repeat with i = 2 to the number of fields
    set the textFont of field i to the scriptTextFont
    set the textSize of field i to the scriptTextSize
  end repeat
  refresh
end preOpenStack

on closeStack
  put "" into field "Names"
  put "" into field "Values"
  put "" into field "Contents"
end closeStack

on refresh
  if the mode of this stack is 0 then exit refresh
  lock screen
  put empty into field "Watched"
  put empty into field "Contents"
  if the number of lines in field 1 of stack "Execution Contexts" is 0 then
    get the globals
    replace comma with cr in it
    put it into field "Names"
    set the textColor of char 1 to -1 of field "Names" to item 4 of the vcolors of this stack
    put empty into field "Values"
    repeat for each line l in it
      do "global" && l & "; put char 1 to 100 of line 1 of value(l) & cr after field" && quote & "Values" & quote
    end repeat
    delete last char of field "Values"
  else
    set the curline of this stack to the hilitedLines of field "Names"
    if the curline of this stack is empty then set the curline of this stack to 1
    set the curscroll of this stack to the scroll of field "Names"
    get the hilitedLine of field 1 of stack "Execution Contexts"
    if it is empty then get the number of lines of field 1 of stack "Execution Contexts"
    set the debugContext to line it of field 1 of stack "Execution Contexts"
    debugdo "put the variableNames into field" && quote & "tvnames" & quote
    put empty into field "Names"
    put empty into field "Values"
    put 1 into field "tcline"
    repeat until field "tcline" > 4
      put 1 into field "tcitem"
      repeat until field "tcitem" > the number of items of line (field "tcline") of field "tvnames"
        put item (field "tcitem") of line (field "tcline") of field "tvnames" & cr after field "Names"
        set the textColor of the last line of field "Names" to item (field "tcline") of the vcolors of this stack
        put item (field "tcitem") of line (field "tcline") of field "tvnames" into field "tvname"
        debugdo "put char 1 to 100 of line 1 of" && field "tvname" && "& cr after field" && quote & "Values" & quote
        add 1 to field "tcitem"
      end repeat
      add 1 to field "tcline"
    end repeat
    delete last char of field "Names"
    delete last char of field "Values"
    if line (the curline of this stack) of field "Names" is not empty then
      set the hilitedLines of field "Names" to the curline of this stack
      set the hilitedLines of field "Values" to the curline of this stack
      debugdo "put" && line (the curline of this stack) \
          of field "Names" && "into field" && quote & "Contents" & quote
    end if
    put empty into line (the number of lines in field "Names") of field "Watched"
    put item 2 of the debugContext into field "handler"
    set the debugContext to empty
    get the debuggingScript of stack "Script Editor"
    if it is not empty then
      get the scriptObject of it
      repeat for each line l in the watchedVariables
        if item 1 of l is it and item 2 of l is field "handler"
        then put numToChar(183) into line lineOffset(item 3 of l, field "Names") of field "Watched"
      end repeat
    end if
    set the scroll of field "Names" to the curscroll of this stack
    set the scroll of field "Watched" to the curscroll of this stack
    set the scroll of field "Values" to the curscroll of this stack
  end if
  unlock screen
end refresh

on selectVar theLineNum
  if line theLineNum of field "Names" is empty then exit to top
  if the number of lines in field 1 of stack "Execution Contexts" is 0 then
    get item theLineNum of the globals
    do "global" && it & "; put" && it && "into field" && quote & "Contents" & quote
  else
    get the hilitedLine of field 1 of stack "Execution Contexts"
    if it is empty then get the number of lines of field 1 of stack "Execution Contexts"
    set the debugContext to line it of field 1 of stack "Execution Contexts"
    debugdo "put" && line theLineNum of field "Names" && "into field" \
        && quote & "Contents" & quote
  end if
  set the curline of this stack to theLineNum
  set the hilitedlines of field "Names" to theLineNum
  set the hilitedlines of field "Values" to theLineNum
end selectVar

on setVar
  if the number of lines in field 1 of stack "Execution Contexts" is 0 then
    get the selectedText of field "Names"
    do "global" && it & "; put field" && quote & "Contents" & quote && "into" && it
  else
    get the hilitedLine of field 1 of stack "Execution Contexts"
    if it is empty then get the number of lines of field 1 of stack "Execution Contexts"
    set the debugContext to line it of field 1 of stack "Execution Contexts"
    get the selectedText of field "Names"
    debugdo "put field" && quote & "Contents" & quote && "into" && it
  end if
  get the hilitedLine of field "Names"
  put char 1 to 100 of line 1 of field "Contents" into line it of field "Values"
  set the hilitedLine of field "Values" to it
end setVar

on resizeStack
  local tWidth, tHt, tHalf, tTopHalf
  put the width of this stack into tWidth
  put the height of this stack into tHt
  if the left of grc "vLine" > the width of this cd - 20 then
    put the width of this cd div 2 into tHalf
    set the left of grc "vLine" to tHalf
  else put the left of grc "vLine" into tHalf
  if the top of grc "hLine" > the height of this cd - 20 then
    put the height of this cd div 2 into tTopHalf
    set the top of grc "hLine" to tTopHalf
  else put the top of grc "hLine" into tTopHalf
  
  set the height of field "Watched" to tTopHalf + 1
  set the width of field "Names" to tHalf - 16
  set the height of field "Names" to tTopHalf + 1
  set the width of field "Values" to the width of this cd - tHalf - 4
  set the height of field "Values" to tTopHalf + 1
  set the right of field "Values" to the width of this cd - 4
  
  set the height of field "Contents" to (tHt-the bottom of grc "hLine") - 4
  set the width of field "Contents" to the width of this stack - 8
  set the left of field "Contents" to 4
  set the top of field "Contents" to the bottom of grc "hLine"
  
  set the height of grc "vLine" to the height of field "Names"
  set the top of grc "vLine" to 0
  set the width of grc "hLine" to the width of this cd
  set the left of grc "hLine" to 0
end resizeStack
          ż á        ě  ë  ď  ő  ö          
  ë Values ż)p on scrollbardrag
  set the scroll of fld "Names" to the scroll of me
end scrollbardrag

on mouseDown
  selectVar (word 2 of the clickline)
end mouseDown
   ÜÜÜÜÜÜ   @  ) y              ˙    	`      Ś   w
  ě Names ?)p Bon mouseDown
  selectVar (word 2 of the clickline)
end mouseDown
   ÜÜÜÜÜÜ   @    y            
  ď 	Contents  )p +on enterInField
  setVar
end enterInField
   ÜÜÜÜÜÜ   @  |ˇ a        ę              	`      Ś }  _  ő vLine   Kçlocal dragging
on mouseDown
  put true into dragging
end mouseDown

on mouseMove x, y
  if dragging then
    set the left of me to min(max(x, the left of field "Names" + 8),the width of this cd - 32)
    resizeStack
  end if
end mouseMove

on mouseUp
  put false into dragging
  resizeStack
end mouseUp

on mouseRelease
  put false into dragging
  resizeStack
end mouseRelease

on mouseEnter
  set cursor to 28
  lock cursor
end mouseEnter

on mouseLeave
  unlock cursor
end mouseLeave
   ŔŔŔŔŔŔ         y         w  ö hLine   KĚlocal dragging
on mouseDown
  put true into dragging
end mouseDown

on mouseMove x, y
  if dragging then
    set the top of me to min(max(y, 42),the height of this cd - 32)
    resizeStack
  end if
end mouseMove

on mouseUp
  put false into dragging
  resizeStack
end mouseUp

on mouseRelease
  put false into dragging
  resizeStack
end mouseRelease

on mouseEnter
  set cursor to 27
  lock cursor
end mouseEnter

on mouseLeave
  unlock cursor
end mouseLeave
   ŔŔŔŔŔŔ       xż        z˝ z
   Watched 	x  (on mouseUp
  local debuggingObject, cl, wv, s
  get the debuggingScript of stack "Script Editor"
  if it is empty then exit mouseUp
  put the scriptObject of it into debuggingObject
  put word 2 of the clickLine into cl
  if line cl of field "Names" is empty then exit mouseUp
  put the watchedVariables into wv
  if the clickText is empty then
    get word 2 of the clickLine
    put numToChar(183) & cr into line it of me
    ask "Stop condition:" with line it of field "Names" && " = "
    put cr & debuggingObject & comma & field "handler" & comma & line cl of field "Names" & comma & it after wv
  else
    put cr into the clickLine
    delete line lineOffset(debuggingObject & comma & field "handler" & comma & line cl of field "Names", wv) of wv
  end if
  set the watchedVariables to wv
end mouseUp
         ÜÜÜÜÜÜ        y            
   tvnames  !`       Č   T        ę   v1          
   tcline  !`       Đ d x         ę 5      
   tcitem  !`       Ň  x         ę 1      
   handler  !`       Đ Ł x         ę mouseUp      
   tvname  !`       Î Á x         ę v1        ě Execution Contexts    `   ŹŹŹŹŹŹ      Ř n            ˙˙˙˙     U 
helvetica   ę    	P+on preOpenCard
  set the textFont of field 1 to the scriptTextFont
  set the textSize of field 1 to the scriptTextSize
  refresh
end preOpenCard

on refresh
  local l
  get the executionContexts
  repeat while char -11 to -2 of item 1 of it is "mctools.mc"
    delete line 1 of it
  end repeat
  put lineOffset("mctools.mc", it) into l
  delete line l to -1 of it
  put it into field 1
  set the hilitedLines of field 1 to the number of lines in field 1
end refresh

on resizeStack nw, nh
  set the rect of field 1 to 4, 4, nw - 4, nh -4
end resizeStack
            n  ë
  ë   ˇ)p	on mouseUp
  get the selectedText of me
  set the debugContext to it
  editScript item 1 of it, false
  send "startDebug" && item 1 of it, empty, item 3 of it, empty to  card 1 of stack the result
  send "Refresh" to card 1 of stack "Variable Watcher"
end mouseUp
          f              ě    	`         d  ö Message Watcher    `   ŹŹŹŹŹŹ     Ľ\         ˙˙˙˙     U 
helvetica   ę    	P	constant maxmess = 100
local mlist

on recordMessage t, m, o, h
  local ns
  if m is among the lines of the suppressedMessages of me \
      or t is among the lines of the suppressedTypes of me \
      or h is among the lines of the suppressedActions of me \
      or the suppressIDE of me \
      and (char -11 to -2 of o is "mctools.mc" or char -11 to -2 of o is "mchome.mc")
  then exit recordMessage
  get the hilitedLines of field "Messages"
  if the number of lines in mlist > maxmess then
    delete line 1 of mlist
    delete line 1 of field "Messages"
    subtract 1 from it
  end if
  put char 1 to (the number of lines in the executionContexts) - 2 of "              " into ns
  if field "Messages" is empty then
    put t,o after mlist
    put ns & m after field "Messages"
  else
    put cr & t,o after mlist
    put cr & ns & m after field "Messages"
  end if
  if it < 1 then
    put empty into field "Object Name"
    put empty into field "Message Type"
    set the scroll of field "Messages" to 10000000
  else set the hilitedLines of field "Messages" to it
end recordMessage

on selectMessage which
  put item 1 of line which of mlist into field "Message Type"
  put item 2 of line which of mlist into field "Object Name"
end selectMessage

on openCard
  set the messageMessages to true
end openCard

on closeCard
  set the messageMessages to false
  clearMessages
end closeCard

on clearMessages
  put empty into field "Messages"
  put empty into field "Object Name"
  put empty into field "Message Type"
  put empty into mlist
end clearMessages

on resizeStack
  set the width of field "Messages" to the width of this card - 8
  set the height of field "Messages" to the height of this card - 76
  set the top of field "Object Label" to the bottom of field "Messages" + 8
  set the top of field "Object Name" to the bottom of field "Messages" + 8
  set the width of field "Object Name" to the width of this card - the left of field "Object Name" - 8
  set the top of field "Type Label" to the bottom of field "Messages" + 40
  set the top of field "Message Type" to the bottom of field "Messages" + 40
  set the top of button "Clear" to the bottom of field "Messages" + 40
  set the top of button "Suppress..." to the bottom of field "Messages" + 40
  set the right of button "Suppress..." to the right of this card - 8
  set the right of button "Clear" to the left of button "Suppress..." - 8
end resizeStack
             suppressedTypes  getProp
setPropsuppressedResolutions  not handledsuppressedMessages  	mouseMovesuppressIDE  truesuppressedActions  false  ë  đ  ń  ň  ó  ô  ő
  ë 	Messages ˇ)p @on mouseUp
  selectMessage word 2 of the clickLine
end mouseUp
          Î              ö    	`      v   Ě  đ Suppress... ŕEŤp 4on mouseUp
  modal "Suppress Messages"
end mouseUp
       ' ú `          	     
  ń Object Label 	          Ú <            Object: 
  ň Type Label 	          ú t            Message Type: 
  ó Object Name )`       @ ÚG         ę       
  ô Message Type  )`       t ú d         ę         ő Clear ŕEŤp (on mouseUp
  clearmessages
end mouseUp
        ç ú 8          	       ů Suppress Messages    `   ŹŹŹŹŹŹ     ž;B            ˙˙˙˙     U 
helvetica   ę    	P}on preOpenCard
  repeat with i = 1 to the number of buttons
    set the hilite of button i to false
  end repeat
  set the hilite of button "IDE Messages" to the suppressIDE of card 1 of stack "Message Watcher"
  put the suppressedMessages of card 1 of stack "Message Watcher" \
      into field "Suppressed Messages"
  get the the suppressedActions of card 1 of stack "Message Watcher"
  repeat for each line l in it
    set the hilite of button l to true
  end repeat
  get the the suppressedTypes of card 1 of stack "Message Watcher"
  repeat for each line l in it
    set the hilite of button l to true
  end repeat
end preOpenCard
           B  ö  ÷  ů  ń  ň  ó  ô  ő  ÷ Handler Type i         \ p   í message @eŠ        p d  	Messages          	       î 	function @eŠ         d  
Functions          	       ď getProp @eŠ        ¨ d  	GetProps          	      đ setProp @eŠ        Ä d  	SetProps          	    
  ń Suppressed Messages  ˇ)`        0 ¤            
mouseMove   ř    	`      # 1    ň Add... ŕEŤp đon mouseUp
  ask question "Message to add?"
  if it is not empty then
    if field "Suppressed Messages" is empty
    then put it into field "Suppressed Messages"
    else put cr & it after field "Suppressed Messages"
  end if
end mouseUp
         Ă <          	       ó Delete ŕEŤp on mouseUp
  get the hilitedLines of field "Suppressed Messages"
  if it is not empty
  then delete line it of field "Suppressed Messages"
end mouseUp
        ô Ä <          	       ô OK ŕMŤpnon mouseUp
  set the suppressIDE of card 1 of stack "Message Watcher" \
      to the hilite of button "IDE Messages"
  set the suppressedMessages of card 1 of stack "Message Watcher" \
      to field "Suppressed Messages"
  get empty
  repeat with i = 1 to the number of buttons in group "Action"
    if the hilite of button i of group "Action"
    then put the short name of button i of group "Action" & cr after it
  end repeat
  delete last char of it
  set the suppressedActions of card 1 of stack "Message Watcher" to it
  get empty
  repeat with i = 1 to the number of buttons in group "Handler Type"
    if the hilite of button i of group "Handler Type"
    then put the short name of button i of group "Handler Type" & cr after it
  end repeat
  delete last char of it
  set the suppressedTypes of card 1 of stack "Message Watcher" to it
  close this stack
end mouseUp
        A ë A          	       ö Action i          x F  ë true @eŠ         l  Handled          	       ě false @eŠ        7 l  Not Handled          	      ů IDE Messages @EŠ                   	      ő Cancel ŕEŤp +on mouseUp
  close this stack
end mouseUp
        Ŕ ě A          	      