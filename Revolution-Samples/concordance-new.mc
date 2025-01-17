#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                    Concordance-New   �on openstack
if fld "Basetext" of cd 1 of this stack is empty then put empty into fld "Pfad" of cd 1 of this stack
end openstack
     ����    U ��         7Concordance-New / Sanke 2001 / sanke@hrz.uni-kassel.de      U Arial  
 U Arial   U Arial   W 
helvetica   U 
helvetica   U Courier New   U Courier   U Courier New   U Arial   U Times New Roman   U Times New Roman   W Times New Roman  W Times New Roman  U Times New Roman   � 
Find Card   	P�on preOpenCard
  put empty into fld "Find"
  #put empty into fld "Fundstellen"
end preOpenCard

on MCFind
  local thilited, tstring
  set the cursor to watch
  put the hilitedButton of group 1 into thilited
  put field "Find" into tstring
  set the caseSensitive to the hilite of button "case sensitive"
  set the defaultStack to the topstack #"schnellkurs_investmentfonds1" #the label of button "Stack Name"
  if thilited is 1
  then find chars tstring
  else if thilited is 2
  then find whole tstring
  
  
  
  if the result <> "not found" then
    if the visible of the foundfield is false then
      send "mouseup" to btn "suchen" of card 1 of stack "suchen-neu2"
      exit to Metacard
    end if
    put the short name of the foundfield into Feld
    put the short name of the current card into Seite
    put "Feld"&&Feld&&"auf Seite"&&Seite&&CR after last line of fld "Fundstellen" card 1 of stack "suchen-neu2"
  else
    beep 1
  end if
end MCFind

on returnInField
  MCFind
end returnInField
           �  �  �    �  
                     � Type   �          ( �    parts  D�        , h         	  �  	 whole words  D�       H , j         	  �   � Hilfe �D�p on mouseUp
  help
end mouseUp
        � b T         	  � 
  � Find  )`         �         � ben    case sensitive  D�         � + d         	  �   
 Icon g�0on mouseUp
  if the icon of me is 916 then
    put the rect of stack "concordance-new" into Rechteck
    add 280 to item 4 of Rechteck
    set the rect of stack "concordance-new" to Rechteck
    set the icon of me to 914
    set the label of me to "close full text"
  else
    
    put the rect of stack "concordance-new" into Rechteck
    subtract 280 from item 4 of Rechteck
    set the rect of stack "concordance-new" to Rechteck
    set the icon of me to 916
    set the label of me to "show full text"
  end if
end mouseUp
         G x !              �     show full text          	     
   Fundstellen  �	x  �on mouseUp
  put word 1 of the value of the clickline into Zahl
  put the number of chars of fld "Find" into Anzahl
  lock screen
  select after last char of fld "fulltext"
  # select  char Zahl to (Zahl + (Anzahl - 1)) of fld "fulltext"
select  word Zahl  of fld "fulltext"
  put the vscroll of fld "Fulltext" into VFound
  set the vscroll of field "Fulltext" to VFound - the textheight of fld "Fulltext"
end mouseUp
         j9        �             `    @  k 7    	colorize �E�pDon mouseUp
  global Suchstring
  put 0 into Fundanzahl
  put fld "Find"  into Suchstring
 # replace Quote with "" in fld "Fundstellen"
  put fld "Fundstellen"  into GesuchtText
  
  #=======================================
  put the hilitedButton of group 1 into thilited
  set the caseSensitive to the hilite of button "case sensitive"
  if thilited is 1
  then set the wholematches to false
  else if thilited is 2
  then set the wholematches to true
  #=======================================
  put the length of Suchstring into Laenge
  put 0 into BuchSt
  put 1 into Stelle
  put 0 into skip
  repeat until Stelle is 0
    put wordoffset(Suchstring,Gesuchttext,skip) into Stelle
    if Stelle <> 0 then
      add Stelle to BuchST
      set the textcolor of word Buchst of fld "Fundstellen"   to "red"
      if last char of word Buchst of fld "Fundstellen"  is in "?:;,.!"
      then set the textcolor of last char of word Buchst of fld "Fundstellen"  to "black"
      add 1 to Fundanzahl
    end if
    add Stelle to skip
  end repeat
  put Fundanzahl into fld "Fundanzahl"
end mouseUp
        � | P          	     
   Fundanzahl  h          � J 2         � 0         open textfile �E�pon mouseUp
  #=======================================
  answer file  "Bitte Analysetext ausw�hlen." with filter "*.txt;*.doc;*.rtf;*.000"
  put it into Datei
  #==========================================
  put Datei into fld "Pfad"
  
  if Datei is not empty then
    open file Datei for text read
    read from file Datei until eof
    put it into  Textdatei
    close file Datei
  else
    exit to Metacard
  end if
  #====================
  if TextDatei is not empty then
    if char -4 to -1 of fld "Pfad" is ".rtf" then
      set the rtfText of fld "Fulltext" to Textdatei
      put fld "Fulltext" into Textdatei
    else
      put Textdatei into fld "Fulltext"
    end if
    put Textdatei into fld "BaseText"
  end if
  # #==================================================
  
end mouseUp
       � M ^          	        search �E�p
_on mouseUp
  put empty into Ergebnis
  put empty into fld "Fundstellen"
  #=======================================
  put the hilitedButton of group 1 into thilited
  set the caseSensitive to the hilite of button "case sensitive"
  if thilited is 1
  then set the wholematches to false
  else if thilited is 2
  then set the wholematches to true
  #=======================================
  # answer file  "Bitte Analysetext ausw�hlen." with filter "*.txt;*.doc;*.rtf;*.000"
  # put it into Datei
  # #==========================================
  # put Datei into fld "Pfad"
  # if Datei is not empty then
  # open file Datei for text read
  # read from file Datei until eof
  # put it into  Textdatei
  # close file Datei
  # else
  # exit to Metacard
  # end if
  # #====================
  # if TextDatei is not empty then
  # if char -4 to -1 of fld "Pfad" is ".rtf" then
  # set the rtfText of fld "Fulltext" to Textdatei
  # put fld "Fulltext" into Textdatei
  # else
  # put Textdatei into fld "Fulltext"
  # end if
  # put Textdatei into fld "BaseText"
  # end if
  # #==================================================
  put fld "Basetext" into Textdatei
  put the number of words of Textdatei into Wortzahl
  put Textdatei into GesuchtText
  put GesuchtText into GesuchtTextOhne
  # replace "." with "" in Gesuchttextohne
  # replace "!" with "" in Gesuchttextohne
  # replace "?" with "" in Gesuchttextohne
  # replace ";" with "" in Gesuchttextohne
  # replace ":" with "" in Gesuchttextohne
  # replace "," with "" in Gesuchttextohne
  # replace ")" with "" in Gesuchttextohne
  # replace "(" with "" in Gesuchttextohne
  put fld "Find" into Suchstring
  put the number of chars of Suchstring into Suchlaenge
  put 0 into BuchSt
  put 1 into Stelle
  put 0 into skip
  repeat until Stelle is 0
    put wordoffset(Suchstring,GesuchtTextOhne,skip) into Stelle
    # put offset(Suchstring,GesuchtTextOhne,skip) into Stelle
    if Stelle <> 0 then
      add Stelle to BuchST
      if WortZahl < 11 then
        put Buchst&"  "&GesuchtText into Gefunden
      else
        # put Buchst&"  "&char (BuchSt - 45 ) to (BuchSt + (45 + Suchlaenge)) of GesuchtText into Gefunden
        
        put Buchst&"  "&word (BuchSt - 5 ) to (BuchSt + (5 + Suchlaenge)) of GesuchtTextohne into Gefunden
      end if
      replace CR with " " in Gefunden
      put wordoffset(Suchstring,Gefunden) into WortStelle
      if Wortstelle <> 0 then put Return& Return&Gefunden after last line of Ergebnis
    end if
    add Stelle to skip
  end repeat
  delete line 1 to 2 of Ergebnis
  put Ergebnis into fld "Fundstellen"
  send "mouseup" to btn "colorize"
end mouseUp
       7 M ^          	     
   	FullText  �)h      �  �   rtfText 0#{\rtf1\ansi\deff0{\fonttbl{\f0\froman Times New Roman;}{\f1\froman\fcharset0 Times New Roman;}}
\viewkind4\uc1\pard\lang1031\b\f0\fs24 Prof. Wilhelm Sanke                                                                               July 2001\par
University Media Center (Zentraler Medienbereich)\par
University of Kassel, Germany\par
sanke@hrz.uni-kassel.de\b0\par
\par
\par
The stacks "MCBrowser" (for Metacard) and "RevBrowser" (for Revolution) are tools like the Metacard "Control Browser" and Revolution's "Application Overview". They have most of the features of the "Control Browser" and the most often needed ones - from my point of view - of the Rev AO. Apart from minor enhancements the main differences of my stacks are\par
\par
- added navigation possibilities\par
- "search-and-edit" capabilities for all or categories of the scripts in a stack\par
-  mutual "control" between browser and open stacks or cards\par
\par
This last feature is very much like that of the Metacard Control Browser for controls, but extended for stacks and cards as well: From the browser side you can easily switch to any of the opened stacks (bring them to the front as "toplevel") or immediately go to any card of a topstack; on the other hand any change outside the browser (opening another stack, making another stack the topstack, navigating to another card) will automatically be reflected when you re-enter the browser area.\par
\par
One reason to continue to use MCBrowser and RevBrowser and trying to improve them were a number of inconveniences I felt when using the Rev AO, especially when working with larger stacks or a greater number of controls on a card (I reported this in the Revolution list). MCBrowser and RevBrowser are considerably faster than the Rev AO in some cases, which can make an essential difference when you use computers with moderate power - like my main computer with Windows 98 that still has only 350 MHz.\par
\par
I indeed like some of the features and the outer design of the Application Overview, especially the simulated tree view, and I think the developers see the drawbacks and will eventually improve AO and possibly add new features. At the present stage of development (as of July 2001), however, I most of the time use my own browsers (and for that matter, I use the Metacard "Control Browser" - as it is very quick and convenient - much more often than the Revolution "Application Overview"). The one feature I borrowed from the AO is the possibility to show an expanded and collapsed view of the browsers; apart from that not a single scriptline was "borrowed" from the AO.\par
\par
This is the first time I offer my personal tools MCBrowser and RevBrowser for public inspection, use, and critique.  Possibly and probably there are bugs, and I would appreciate any kind of feedback.\par
\par
The main reason for the different Metacard and Revolution versions - at present - is the different syntax needed to bring up the properties dialog, "palette "Properties"" (Metacard) and\par
  "send "revBuildPropertyPalette" to stack "revPropertiesShell"" (Revolution).\par
\par
To function properly, "MCBrowser" and "RevBrowser" must be opened as "modeless"; they are preset to "modeless", so they can be opened in the same way like other stacks. Should you change the mode to look at the scripts or copy parts of them etc. be sure to reset the stacks to modeless or open them by using the message box: "modeless "MCBrowser"". I have integrated "MCBrowser" for greater convenience as one of the tools into the MenuBar and will describe below how to do this.\par
\par
MCBrowser and RevBrowser have 4 cards:\par
\par
\b Card 1: Automatic and manual stack selection, display of card names and their control details\par
Card 2: Backgrounds/groups view with control details\par
Card 3: Search scripts of current stack, current card and of card controls and edit scripts\par
Card 4: Search scripts of whole stack (all controls, all cards or all backgrounds) and edit scripts.\par
\par
\ul Card 1\par
\par
\ulnone\b0 When the browser is opened, this card shows the current topstack as the label of the "stack name" button on top of the card and the card names of the topstack beneath. The name of the currently displayed card of the topstack is hilited (and scrolled into view, if necessary). \par
\par
Clicking at one of the card names immediately navigates to this card; in this way you can use the browser as a navigator to access and browse through the cards. \par
\par
Choosing another stack from the pulldown-option button "Stackname" brings the chosen stack to the front and displays its cards.\par
\par
Expanding the card with the blue triangle shows the control details of the current card (displaying visibility, ID, type and name, layer, and number of script lines).\par
\par
The buttons under the controls field give access to the script of a hilited control (having clicked once at a control line before), changing the layers and the visibility. \par
\par
Double-clicking at a control line brings up the properties dialog of that control, like in the Metacard "Control Browser".\par
\par
There are extra buttons to access scripts and properties dialogs of the topstack and current card.\par
\par
If any control of the topstack should be selected, the respective line of the controls field is hilited. On the other hand, clicking at one of the control lines selects the control of the topstack. If you change the selectedobject in the topstack by clicking at the control of the topstack directly, this change will be reflected in the browser when you enter the browser area again with the mousecursor. \par
[There is a possibility to provide for an immediate reflection (without having to enter the browser area) of the changed selection of a control - as with the Metacard "Control Browser", but this needs some change in the script of the MenuBar. I will describe this possibility also later.]\par
\par
Likewise, any change of the topstack or navigating to another card of a topstack will automatically be shown when you re-enter the browser area. This holds for the other three cards of the browsers, too.\par
\par
If a control name is abbreviated, clicking at the line of the controls field will display the full name on top of the controls field.\par
\par
\par
\ul\b Card 2\ulnone\b0\par
\par
Most of the features are like for Card 1.\par
\par
When opened, Card 2 displays the names of all groups of the topstack in hierarchical order for subgroups (i.e. not only the basic backgrounds as in the Rev Application Overview, whose names can be retrieved with the "backgroundnames" function). \par
\par
The name of the group presently selected in the topstack is hilited. If no group of the topstack was selected, the name of  \f1 the \f0 first group on the current card will be hilited and that group will show as selected on the current card of the topstack.\par
\par
Clicking at one of the groupnames that is not on the current card will navigate to the card\f1  on which the specific group can be found\f0 .\par
The expanded view of the card displays the control details of the respective group like in card 1.\par
\par
Any selection changes in the topstack will be shown in the browser when the cursor reenters the browser area - like with card 1.\par
\par
You can change the layers of the group controls, even move controls of sub-groups out of  groups; be careful when you do this.\par
\par
\ul\b Card 3\ulnone\b0\par
\par
This card is to search for strings either in the scripts of all controls of the current card of the topstack or in the card and stack script.\par
\par
As the result of a search, the number of involved controls and the number of found scriptlines is shown, and the found lines are displayed (preceded by the line number in the respective script and with the searchstring being colored) under the name of the involved control.\par
\par
These search results will remain on the card - together with the name of the target of the search - until the next search.\par
\par
Clicking at the name/address of a control in the found-lines field will open the script editor.\par
\par
\ul\b Card 4\ulnone\b0\par
\b\par
\b0 Card 4 has similar features as in card 3, it searches in scripts of a whole stack: of all controls, all cards, or all backgrounds.\par
\par
For stacks with a larger number of cards (e.g. a database of some sort), which most probably have all or most their controls inside groups, it is sufficient in most cases just to search the group control scripts.\par
\par
During the search the cards of the searched topstack will be displayed in rapid succession; this is to speed up the search process: a search proceeds much faster when a searched card is the current card. This display of cards could be easily suppressed by "lock screen", but would at the same time suppress the indication of the state of the search that is shown by the continually updated number of searched cards and a progress bar; such progress indication is a helpful orientation in case of larger stacks.\par
\par
The search does not slow down when you search a greater number of cards (usually collecting a large amount of data - even in a variable - with continually added new found lines in this case, would considerably decrease the speed). For example, if the about 33.000 controls of the (topleved) Revolution "Transcript Dictionary" are searched with the "RevBrowser"- there are more than 1000 cards in the dictionary - the search in the scripts of the last searched card would proceed at exactly the same speed as for the first searched card.\par
To do such a search makes of course only sense for testing purposes, all the controls of the "Transcript Dictionary" are inside groups, so you only need to search these.-\par
\par
\par
\ul\b Integrating "MCBrowser" and "RevBrowser" into the Menubar\ulnone\b0\par
\par
To be able to add these stacks to the tools accessible from the Menubar, you need a version other than the Starter Kit because of the script length limitations.\par
\par
For those that should be interested in such help, I describe the procedure for Metacard (the way to do it in Revolution is similar):\par
\par
- start Metacard and do not open any stacks\par
 \par
- make sure the "Metacard Menu Bar" is visible, i.e. in the case of the MacOS you need to bring up another Menubar by clicking at the "Menu Bar" button of the homestack - the Apple "Metacard Menu Bar" at the top of the screen is not sufficient\par
\par
- open the MCBrowser as modeless (one possibility is to type "modeless "MCBrowser"" into the message box)\par
\par
- "home" will be displayed on the label of the "Stackname" button; switch to "Metacard Menu Bar" in the pulldown menu \par
\par
- expand the MCBrowser card to look at the control details\par
\par
- select the line of button "tools" and open the script\par
\par
- add \par
\par
"case "MCBrowser"\par
    modeless "MCBrowser"\par
    break"\par
in the menupick handler\par
\par
- bring up the properties dialog of btn "tools", go to "extras" and insert a line "MCBrowser" in field "Button (Menu) Content"\par
\par
- save the changed menubar by using the message box: "save stack "Metacard Menu Bar"" (or save stack "revMenuBar" in Revolution)\par
\par
- as the menubar is now "selected" and does not work as usual, de-select it. One way to do this is to reopen the menubar by clicking again at the "Menu Bar" button of the homestack.--\par
\par
If you want to have the additional feature of the Metacard Control Browser of an immediate reflection (without having to enter the browser area) of the changed selection of a control - compare the information above for Card 1 - you have to add two lines to the script of button "Menubutton" of the Metacard MenuBar in the handler "on selectedObjectChanged":\par
 \par
" if the mode of stack "MCBrowser" is not 0\par
  then send "renew" to card 1 of stack "MCBrowser""\par
\par
The procedure to add these lines is identical to that described above.\par
\par
The necessary corresponding "renew"-handler that will be activated by the added scriptlines is "pre"-scripted in the script of card 1 of the "MCBrowser".\par
\par
Make sure to write "re\ul new\ulnone ", not "refresh" as for the other targets in the "Menubutton" script.--\par
\par
Regards,\par
\par
Wilhelm Sanke\par
}
         � lProf. Wilhelm Sanke                                                                               July 2001        k 2University Media Center (Zentraler Medienbereich)        1 University of Kassel, Germany         sanke@hrz.uni-kassel.de            cThe stacks "MCBrowser" (for Metacard) and "RevBrowser" (for Revolution) are tools like the Metacard "Control Browser" and Revolution's "Application Overview". They have most of the features of the "Control Browser" and the most often needed ones - from my point of view - of the Rev AO. Apart from minor enhancements the main differences of my stacks are     
  b   !- added navigation possibilities     
     Q- "search-and-edit" capabilities for all or categories of the scripts in a stack     
   P =-  mutual "control" between browser and open stacks or cards     
   <  �This last feature is very much like that of the Metacard Control Browser for controls, but extended for stacks and cards as well: From the browser side you can easily switch to any of the opened stacks (bring them to the front as "toplevel") or immediately go to any card of a topstack on the other hand any change outside the browser (opening another stack, making another stack the topstack, navigating to another card) will automatically be reflected when you re-enter the browser area.     
  �  �One reason to continue to use MCBrowser and RevBrowser and trying to improve them were a number of inconveniences I felt when using the Rev AO, especially when working with larger stacks or a greater number of controls on a card (I reported this in the Revolution list). MCBrowser and RevBrowser are considerably faster than the Rev AO in some cases, which can make an essential difference when you use computers with moderate power - like my main computer with Windows 98 that still has only 350 MHz.     
  �  �I indeed like some of the features and the outer design of the Application Overview, especially the simulated tree view, and I think the developers see the drawbacks and will eventually improve AO and possibly add new features. At the present stage of development (as of July 2001), however, I most of the time use my own browsers (and for that matter, I use the Metacard "Control Browser" - as it is very quick and convenient - much more often than the Revolution "Application Overview"). The one feature I borrowed from the AO is the possibility to show an expanded and collapsed view of the browsers apart from that not a single scriptline was "borrowed" from the AO.     
  �   �This is the first time I offer my personal tools MCBrowser and RevBrowser for public inspection, use, and critique.  Possibly and probably there are bugs, and I would appreciate any kind of feedback.     
   �   �The main reason for the different Metacard and Revolution versions - at present - is the different syntax needed to bring up the properties dialog, "palette "Properties"" (Metacard) and     
   � O  "send "revBuildPropertyPalette" to stack "revPropertiesShell"" (Revolution).     
   N  �To function properly, "MCBrowser" and "RevBrowser" must be opened as "modeless" they are preset to "modeless", so they can be opened in the same way like other stacks. Should you change the mode to look at the scripts or copy parts of them etc. be sure to reset the stacks to modeless or open them by using the message box: "modeless "MCBrowser"". I have integrated "MCBrowser" for greater convenience as one of the tools into the MenuBar and will describe below how to do this.     
  �   'MCBrowser and RevBrowser have 4 cards:     
   &   ^Card 1: Automatic and manual stack selection, display of card names and their control details        ] 5Card 2: Backgrounds/groups view with control details        4 \Card 3: Search scripts of current stack, current card and of card controls and edit scripts        [ eCard 4: Search scripts of whole stack (all controls, all cards or all backgrounds) and edit scripts.        d   Card 1          When the browser is opened, this card shows the current topstack as the label of the "stack name" button on top of the card and the card names of the topstack beneath. The name of the currently displayed card of the topstack is hilited (and scrolled into view, if necessary).      
     �Clicking at one of the card names immediately navigates to this card in this way you can use the browser as a navigator to access and browse through the cards.      
   �   �Choosing another stack from the pulldown-option button "Stackname" brings the chosen stack to the front and displays its cards.     
      �Expanding the card with the blue triangle shows the control details of the current card (displaying visibility, ID, type and name, layer, and number of script lines).     
   �   �The buttons under the controls field give access to the script of a hilited control (having clicked once at a control line before), changing the layers and the visibility.      
   �   {Double-clicking at a control line brings up the properties dialog of that control, like in the Metacard "Control Browser".     
   z   cThere are extra buttons to access scripts and properties dialogs of the topstack and current card.     
   b  �If any control of the topstack should be selected, the respective line of the controls field is hilited. On the other hand, clicking at one of the control lines selects the control of the topstack. If you change the selectedobject in the topstack by clicking at the control of the topstack directly, this change will be reflected in the browser when you enter the browser area again with the mousecursor.      
  �![There is a possibility to provide for an immediate reflection (without having to enter the browser area) of the changed selection of a control - as with the Metacard "Control Browser", but this needs some change in the script of the MenuBar. I will describe this possibility also later.]     
      �Likewise, any change of the topstack or navigating to another card of a topstack will automatically be shown when you re-enter the browser area. This holds for the other three cards of the browsers, too.     
   �   �If a control name is abbreviated, clicking at the line of the controls field will display the full name on top of the controls field.     
   �     Card 2           *Most of the features are like for Card 1.     
   )   �When opened, Card 2 displays the names of all groups of the topstack in hierarchical order for subgroups (i.e. not only the basic backgrounds as in the Rev Application Overview, whose names can be retrieved with the "backgroundnames" function).      
   �   �The name of the group presently selected in the topstack is hilited. If no group of the topstack was selected, the name of  the first group on the current card will be hilited and that group will show as selected on the current card of the topstack.     
   �   �Clicking at one of the groupnames that is not on the current card will navigate to the card on which the specific group can be found.     
   � cThe expanded view of the card displays the control details of the respective group like in card 1.     
   b   �Any selection changes in the topstack will be shown in the browser when the cursor reenters the browser area - like with card 1.     
   �   ~You can change the layers of the group controls, even move controls of sub-groups out of  groups be careful when you do this.     
   }   Card 3           �This card is to search for strings either in the scripts of all controls of the current card of the topstack or in the card and stack script.     
   �  As the result of a search, the number of involved controls and the number of found scriptlines is shown, and the found lines are displayed (preceded by the line number in the respective script and with the searchstring being colored) under the name of the involved control.     
     {These search results will remain on the card - together with the name of the target of the search - until the next search.     
   z   `Clicking at the name/address of a control in the found-lines field will open the script editor.     
   _   Card 4           �Card 4 has similar features as in card 3, it searches in scripts of a whole stack: of all controls, all cards, or all backgrounds.     
   �   �For stacks with a larger number of cards (e.g. a database of some sort), which most probably have all or most their controls inside groups, it is sufficient in most cases just to search the group control scripts.     
   �  �During the search the cards of the searched topstack will be displayed in rapid succession this is to speed up the search process: a search proceeds much faster when a searched card is the current card. This display of cards could be easily suppressed by "lock screen", but would at the same time suppress the indication of the state of the search that is shown by the continually updated number of searched cards and a progress bar such progress indication is a helpful orientation in case of larger stacks.     
  �  The search does not slow down when you search a greater number of cards (usually collecting a large amount of data - even in a variable - with continually added new found lines in this case, would considerably decrease the speed). For example, if the about 33.000 controls of the (topleved) Revolution "Transcript Dictionary" are searched with the "RevBrowser"- there are more than 1000 cards in the dictionary - the search in the scripts of the last searched card would proceed at exactly the same speed as for the first searched card.     
   �To do such a search makes of course only sense for testing purposes, all the controls of the "Transcript Dictionary" are inside groups, so you only need to search these.-     
   �     :Integrating "MCBrowser" and "RevBrowser" into the Menubar        9   �To be able to add these stacks to the tools accessible from the Menubar, you need a version other than the Starter Kit because of the script length limitations.     
   �   �For those that should be interested in such help, I describe the procedure for Metacard (the way to do it in Revolution is similar):     
   �   ,- start Metacard and do not open any stacks     
   +       
    �- make sure the "Metacard Menu Bar" is visible, i.e. in the case of the MacOS you need to bring up another Menubar by clicking at the "Menu Bar" button of the homestack - the Apple "Metacard Menu Bar" at the top of the screen is not sufficient     
   �   j- open the MCBrowser as modeless (one possibility is to type "modeless "MCBrowser"" into the message box)     
   i   v- "home" will be displayed on the label of the "Stackname" button switch to "Metacard Menu Bar" in the pulldown menu      
   u   ;- expand the MCBrowser card to look at the control details     
   :   8- select the line of button "tools" and open the script     
   7   - add      
      "case "MCBrowser"     
        modeless "MCBrowser"     
        break"     
   
 in the menupick handler     
      - bring up the properties dialog of btn "tools", go to "extras" and insert a line "MCBrowser" in field "Button (Menu) Content"     
   ~   �- save the changed menubar by using the message box: "save stack "Metacard Menu Bar"" (or save stack "revMenuBar" in Revolution)     
   �   �- as the menubar is now "selected" and does not work as usual, de-select it. One way to do this is to reopen the menubar by clicking again at the "Menu Bar" button of the homestack.--     
   �  fIf you want to have the additional feature of the Metacard Control Browser of an immediate reflection (without having to enter the browser area) of the changed selection of a control - compare the information above for Card 1 - you have to add two lines to the script of button "Menubutton" of the Metacard MenuBar in the handler "on selectedObjectChanged":     
  e       
    ," if the mode of stack "MCBrowser" is not 0     
   + 4  then send "renew" to card 1 of stack "MCBrowser""     
   3   GThe procedure to add these lines is identical to that described above.     
   F   �The necessary corresponding "renew"-handler that will be activated by the added scriptlines is "pre"-scripted in the script of card 1 of the "MCBrowser".     
   �   aMake sure to write "renew", not "refresh" as for the other targets in the "Menubutton" script.--     
             
  G   	Regards,     
      Wilhelm Sanke     
          
              	`    @  �  
   Pfad  +       g T /        � GC:/Dokumente und Einstellungen/Besitzer/Desktop/Meta2.4.3/readmemc.rtf      
   	BaseText  !`      % o�<        � lProf. Wilhelm Sanke                                                                               July 2001  2University Media Center (Zentraler Medienbereich)  University of Kassel, Germany  sanke@hrz.uni-kassel.de     cThe stacks "MCBrowser" (for Metacard) and "RevBrowser" (for Revolution) are tools like the Metacard "Control Browser" and Revolution's "Application Overview". They have most of the features of the "Control Browser" and the most often needed ones - from my point of view - of the Rev AO. Apart from minor enhancements the main differences of my stacks are    !- added navigation possibilities  Q- "search-and-edit" capabilities for all or categories of the scripts in a stack  =-  mutual "control" between browser and open stacks or cards   �This last feature is very much like that of the Metacard Control Browser for controls, but extended for stacks and cards as well: From the browser side you can easily switch to any of the opened stacks (bring them to the front as "toplevel") or immediately go to any card of a topstack on the other hand any change outside the browser (opening another stack, making another stack the topstack, navigating to another card) will automatically be reflected when you re-enter the browser area.   �One reason to continue to use MCBrowser and RevBrowser and trying to improve them were a number of inconveniences I felt when using the Rev AO, especially when working with larger stacks or a greater number of controls on a card (I reported this in the Revolution list). MCBrowser and RevBrowser are considerably faster than the Rev AO in some cases, which can make an essential difference when you use computers with moderate power - like my main computer with Windows 98 that still has only 350 MHz.   �I indeed like some of the features and the outer design of the Application Overview, especially the simulated tree view, and I think the developers see the drawbacks and will eventually improve AO and possibly add new features. At the present stage of development (as of July 2001), however, I most of the time use my own browsers (and for that matter, I use the Metacard "Control Browser" - as it is very quick and convenient - much more often than the Revolution "Application Overview"). The one feature I borrowed from the AO is the possibility to show an expanded and collapsed view of the browsers apart from that not a single scriptline was "borrowed" from the AO.    �This is the first time I offer my personal tools MCBrowser and RevBrowser for public inspection, use, and critique.  Possibly and probably there are bugs, and I would appreciate any kind of feedback.    �The main reason for the different Metacard and Revolution versions - at present - is the different syntax needed to bring up the properties dialog, "palette "Properties"" (Metacard) and  O  "send "revBuildPropertyPalette" to stack "revPropertiesShell"" (Revolution).   �To function properly, "MCBrowser" and "RevBrowser" must be opened as "modeless" they are preset to "modeless", so they can be opened in the same way like other stacks. Should you change the mode to look at the scripts or copy parts of them etc. be sure to reset the stacks to modeless or open them by using the message box: "modeless "MCBrowser"". I have integrated "MCBrowser" for greater convenience as one of the tools into the MenuBar and will describe below how to do this.    'MCBrowser and RevBrowser have 4 cards:    ^Card 1: Automatic and manual stack selection, display of card names and their control details  5Card 2: Backgrounds/groups view with control details  \Card 3: Search scripts of current stack, current card and of card controls and edit scripts  eCard 4: Search scripts of whole stack (all controls, all cards or all backgrounds) and edit scripts.    Card 1   When the browser is opened, this card shows the current topstack as the label of the "stack name" button on top of the card and the card names of the topstack beneath. The name of the currently displayed card of the topstack is hilited (and scrolled into view, if necessary).     �Clicking at one of the card names immediately navigates to this card in this way you can use the browser as a navigator to access and browse through the cards.     �Choosing another stack from the pulldown-option button "Stackname" brings the chosen stack to the front and displays its cards.    �Expanding the card with the blue triangle shows the control details of the current card (displaying visibility, ID, type and name, layer, and number of script lines).    �The buttons under the controls field give access to the script of a hilited control (having clicked once at a control line before), changing the layers and the visibility.     {Double-clicking at a control line brings up the properties dialog of that control, like in the Metacard "Control Browser".    cThere are extra buttons to access scripts and properties dialogs of the topstack and current card.   �If any control of the topstack should be selected, the respective line of the controls field is hilited. On the other hand, clicking at one of the control lines selects the control of the topstack. If you change the selectedobject in the topstack by clicking at the control of the topstack directly, this change will be reflected in the browser when you enter the browser area again with the mousecursor.  ![There is a possibility to provide for an immediate reflection (without having to enter the browser area) of the changed selection of a control - as with the Metacard "Control Browser", but this needs some change in the script of the MenuBar. I will describe this possibility also later.]    �Likewise, any change of the topstack or navigating to another card of a topstack will automatically be shown when you re-enter the browser area. This holds for the other three cards of the browsers, too.    �If a control name is abbreviated, clicking at the line of the controls field will display the full name on top of the controls field.      Card 2    *Most of the features are like for Card 1.    �When opened, Card 2 displays the names of all groups of the topstack in hierarchical order for subgroups (i.e. not only the basic backgrounds as in the Rev Application Overview, whose names can be retrieved with the "backgroundnames" function).     �The name of the group presently selected in the topstack is hilited. If no group of the topstack was selected, the name of  the first group on the current card will be hilited and that group will show as selected on the current card of the topstack.    �Clicking at one of the groupnames that is not on the current card will navigate to the card on which the specific group can be found.  cThe expanded view of the card displays the control details of the respective group like in card 1.    �Any selection changes in the topstack will be shown in the browser when the cursor reenters the browser area - like with card 1.    ~You can change the layers of the group controls, even move controls of sub-groups out of  groups be careful when you do this.    Card 3    �This card is to search for strings either in the scripts of all controls of the current card of the topstack or in the card and stack script.   As the result of a search, the number of involved controls and the number of found scriptlines is shown, and the found lines are displayed (preceded by the line number in the respective script and with the searchstring being colored) under the name of the involved control.    {These search results will remain on the card - together with the name of the target of the search - until the next search.    `Clicking at the name/address of a control in the found-lines field will open the script editor.    Card 4    �Card 4 has similar features as in card 3, it searches in scripts of a whole stack: of all controls, all cards, or all backgrounds.    �For stacks with a larger number of cards (e.g. a database of some sort), which most probably have all or most their controls inside groups, it is sufficient in most cases just to search the group control scripts.   �During the search the cards of the searched topstack will be displayed in rapid succession this is to speed up the search process: a search proceeds much faster when a searched card is the current card. This display of cards could be easily suppressed by "lock screen", but would at the same time suppress the indication of the state of the search that is shown by the continually updated number of searched cards and a progress bar such progress indication is a helpful orientation in case of larger stacks.   The search does not slow down when you search a greater number of cards (usually collecting a large amount of data - even in a variable - with continually added new found lines in this case, would considerably decrease the speed). For example, if the about 33.000 controls of the (topleved) Revolution "Transcript Dictionary" are searched with the "RevBrowser"- there are more than 1000 cards in the dictionary - the search in the scripts of the last searched card would proceed at exactly the same speed as for the first searched card.  �To do such a search makes of course only sense for testing purposes, all the controls of the "Transcript Dictionary" are inside groups, so you only need to search these.-      :Integrating "MCBrowser" and "RevBrowser" into the Menubar    �To be able to add these stacks to the tools accessible from the Menubar, you need a version other than the Starter Kit because of the script length limitations.    �For those that should be interested in such help, I describe the procedure for Metacard (the way to do it in Revolution is similar):    ,- start Metacard and do not open any stacks     �- make sure the "Metacard Menu Bar" is visible, i.e. in the case of the MacOS you need to bring up another Menubar by clicking at the "Menu Bar" button of the homestack - the Apple "Metacard Menu Bar" at the top of the screen is not sufficient    j- open the MCBrowser as modeless (one possibility is to type "modeless "MCBrowser"" into the message box)    v- "home" will be displayed on the label of the "Stackname" button switch to "Metacard Menu Bar" in the pulldown menu     ;- expand the MCBrowser card to look at the control details    8- select the line of button "tools" and open the script    - add     "case "MCBrowser"      modeless "MCBrowser"      break"  in the menupick handler    - bring up the properties dialog of btn "tools", go to "extras" and insert a line "MCBrowser" in field "Button (Menu) Content"    �- save the changed menubar by using the message box: "save stack "Metacard Menu Bar"" (or save stack "revMenuBar" in Revolution)    �- as the menubar is now "selected" and does not work as usual, de-select it. One way to do this is to reopen the menubar by clicking again at the "Menu Bar" button of the homestack.--   fIf you want to have the additional feature of the Metacard Control Browser of an immediate reflection (without having to enter the browser area) of the changed selection of a control - compare the information above for Card 1 - you have to add two lines to the script of button "Menubutton" of the Metacard MenuBar in the handler "on selectedObjectChanged":     ," if the mode of stack "MCBrowser" is not 0  4  then send "renew" to card 1 of stack "MCBrowser""    GThe procedure to add these lines is identical to that described above.    �The necessary corresponding "renew"-handler that will be activated by the added scriptlines is "pre"-scripted in the script of card 1 of the "MCBrowser".    aMake sure to write "renew", not "refresh" as for the other targets in the "Menubutton" script.--    	Regards,    Wilhelm Sanke         
               �  �         � loaded textfile:       