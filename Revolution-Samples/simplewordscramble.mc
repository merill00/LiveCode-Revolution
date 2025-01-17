#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                   SimpleWordScramble   jon openstack
  set the loc of this stack to the screenloc
set the dontuseQTeffects to true
end openstack
  ` ¬¬¬¬¬¬  ¬¬¬¬¬¬     « `û         1Simple Word Scramble / <www.sanke.org/MetaMedia>     ÿÿÿÿ     W 
helvetica   W Arial   W Arial   U @GungsuhChe   U Arial Black   W Arial Black   W Arial Black   U Arial   U Arial   W Arial   W Arial   U Arial   W Arial   U Arial   U Courier New   W Courier New   W Courier New   U Lucida Grande   U Verdana   U 
@DotumChe  
 U Arial   ê Übung   	P }on openCard
set the label of btn "readme" to "show Readme"
hide group "readme"
  send "mouseup" to btn "Start"
end openCard
           û  ì  í  î  ï  ò  ó  ô  ö  ÷  ù  ú  û  ü  ý  þ  ÿ  ñ  ð                    Lexikon   	@          û      
  ì Display  	h         2 ! Ð "        ê RBHUOTTOHS 
  í Eingabe  )x  on returninfield
  global Loesung, scrambleword
  put me into Eingabe
  if Eingabe is Loesung then
    show fld "richtig"
    add 1 to fld "korrekt"
    wait 2 seconds
    hide fld "richtig"
    send "mouseup" to btn "Aufgabe"
  else
    show fld "falsch"
    add 1 to fld "false"
    put empty into fld "Eingabe"
    wait 3 seconds
    hide fld "Falsch"
    put toupper(scrambleword) into fld "Display"
    put empty into fld "Eingabe"
    focus on fld "Eingabe"
  end if
end returninfield


on rawkeyup x
  global Loesung, Aufgabe,AZahl
  if len(x) >3 then
  else
    put x into BST
    put numtochar(BST) into BuchST
    #==next three lines for different "rawkey" and "Numtochar" values===
    #==of German "Umlaute" ä, ö, and ü ========================
    if x is 39 or x is 34 then put numtochar(228) into BuchST             # ä
    else if x is 126 or x is 96 then put numtochar(246) into BuchST    # ö
    else if x is 59 or x is 58 then put numtochar(252) into BuchST      # ü
    #=================================================
    put offset(BuchST, fld "Display") into Stelle
    if STelle <> 0 then
      delete char Stelle of fld "Display"
    else
      delete last char of me
      show field "nicht vorhanden"
      beep
      wait 2 seconds
      hide field "nicht vorhanden"
    end if
  end if
  if the number of chars of me is AZahl then
    returninfield
  end if
end rawkeyup

on backspacekey
  #==checks for insertion point (cursor in field) and deletes
  #==char to the left
  lock screen
  put word 4 of the selectedchunk of me into Letter
  put toupper(char Letter of me) after last char of fld "Display"
  pass backspacekey
end backspacekey
        2 } Ð "        ê    î Start àE«pon mouseUp
  global Lexikon, Laenge
  put fld "Lexikon" of cd "Lexikon" into Lexikon
  put 0 into fld "korrekt"
  put 0 into fld "false"
  put 0 into fld "Hilfen"
  hide fld "nicht vorhanden"
  answer "Short or long words?" with "short" or "mixed" or "long"
  wait 3 milliseconds
  put it into Laenge
  send "mouseup" to btn "sortieren"
  send "mouseup" to btn "Aufgabe"
end mouseUp
       Z #           	       ï Aufgabe àE£p@on mouseUp
  global Lexikon, Loesung,AZahl, scrambleword
  put the number of lines of  Lexikon into Zahl
  if Zahl is 0 then
    send "mouseup" to btn "Start"
  else
    put empty into fld "Hilfe"
    put empty into fld "Eingabe"
    put random(Zahl) into Auswahl
    put line Auswahl of Lexikon into Aufgabe
    delete line Auswahl of Lexikon
    put Aufgabe into Loesung
    put the number of chars of Aufgabe into AZahl
    put empty into scrambleword
    repeat with i = 1 to AZahl
      put the number of chars of Aufgabe into ZZahl
      put random(ZZahl) into Nummer
      put char Nummer of Aufgabe into char i of scrambleword
      delete char Nummer of Aufgabe
    end repeat
    put toupper(scrambleword) into fld "Display"
    focus on fld "Eingabe"
    hide btn "more letters"
    show btn "Help"
  end if
end mouseUp
       d Z  (         	       ò Help àE«p)on mouseUp
  global Loesung
  put the number of chars of Loesung into Zahl
  if Zahl <4 then
    show fld "noHelp"
    wait 2 seconds
    hide fld "noHelp"
focus on fld "Eingabe"
    exit to top
  else
    put empty into Hilfe
    repeat with i = 1 to Zahl
      put "-" into char i of Hilfe
    end repeat
    put char 1 of Loesung into char 1 of Hilfe
    put last char of Loesung into last char of Hilfe
    put Hilfe into fld "Hilfe"
    focus on fld "Eingabe"
    add 1 to fld "Hilfen"
    hide me
    show btn "more letters"
  end if
end mouseUp
       Z Ï           	     
  ó Hilfe  	h          * É ù '        ê  
  ô rawkeyNumbers  !`      {ÿò yJ        ê a,97,65  b,98,66  c,99,67  	d,100,68  	e,101,69  	f,102,70  	g,103,71  	h,104,72  	i,105,73  	j,106,74  	k,107,75  	l,108,76  	m,109,77  	n,110,78  	o,111,79  	p,112,80  	q,113,81  	r,114,82  	s,115,83  	t,116,84  	u,117,85  	v,118,86  	w,119,87  	x,120,88  	y,121,89  	z,122,90  ä,39,34-228  ö,126,96-246  	ü,59-252   õ    	`    @ ãÿó H   ö 
chartonum àE£p ûon mouseUp
  put fld "rawkeynumbers" into N
  put the number of lines of N into Zahl
  repeat with i = 1 to Zahl
    put item 2 of line i of N into Z
    put Z - 32 into item 3 of line i of N
  end repeat
  put N into fld "rawkeynumbers"
end mouseUp
       d a          	       ÷ more letters àE£píon mouseUp
  global Loesung
  put fld "Hilfe" into Hilfe
  put the number of chars of Hilfe into Zahl
  put empty into Leerstellen
  repeat with i = 1 to Zahl
    if char i of Hilfe is "-" then put ","&i after last item of Leerstellen
  end repeat
  delete char 1 of Leerstellen #(das "Komma" am Anfang)
  if the number of items of Leerstellen <3 then
    show fld "nomoreletters"
    wait 3 seconds
    hide fld "nomoreletters"
    focus on fld "Eingabe"
    exit to top
  end if
  put the number of items of Leerstellen into LZahl
  put random(LZahl) into Auswahl
  put item Auswahl of Leerstellen into BST
  put char BST of Loesung into char BST of Hilfe
  put Hilfe into fld "Hilfe"
  focus on fld "Eingabe"
  add 1 to fld "Hilfen"
end mouseUp
       Z Ð           	     
  ù korrekt  `       U0 '         ê 0 
  ú false  `       Î0 '         ê 0 
  û Hilfen  `      J0 '         ê 0 
  ü          1 D            	correct: 
  ý          1 >            false: 
  þ         1 A            used help:   ÿ 
sortieren àE£pon mouseUp
  global Laenge, Lexikon
  put the number of lines of Lexikon into Zahl
  if Laenge is "short" then
    put empty into Lexikon2
    repeat with i = 1 to Zahl
      put the number of chars of line i of Lexikon into WLaenge
      if Wlaenge < 9 then put CR&line i of Lexikon after last line of Lexikon2
    end repeat
    delete line 1 of Lexikon2
    put Lexikon2 into Lexikon
  else if laenge is "long" then
    put empty into Lexikon2
    repeat with i = 1 to Zahl
      put the number of chars of line i of Lexikon into WLaenge
      if Wlaenge > 8 then put CR&line i of Lexikon after last line of Lexikon2
    end repeat
    delete line 1 of Lexikon2
    put Lexikon2 into Lexikon
  else if Laenge is "mixed" then
    put Lexikon into Lexikon
  end if
end mouseUp
       a            	     
  ð richtig  #h    
 ÿÿ33  ÿÿ33       ß s        ê   right 
  ñ falsch  #h    
 ÿÿff33  ÿÿ33       ß u        ê   false 
    nicht vorhanden  #h   
 ÿÿÿÿ  ÿÿÿÿ     ) £ í 4        ê +There is no such letter left in this word!    to vocabulary àE«p -on mouseUp
  go to cd "Lexikon"
end mouseUp
   ÿÿ33    y Y          	        page "scramble" àE«p +on mouseUp
  go to cd "übung"
end mouseUp
   ÿÿ33    y |          	     
   Lexikon  )h           ß         April  August  
breakfast  chimney  coffee  comfortable  day  	December  dinner  evening  
evolution  Friday  garden  house  impressive  
ingenious  
invention  January  July  machine  March  	Metacard  Monday  morning  October  Revolution  roof  	Saturday  shirt  Sunday  toothbrush  towel  Tuesday  	valuable  
Wednesday  window  astonishment  
reception  simultaneously  circumstance  separation  
telephone  
imprecise  	question  
nightmare  
partition  
courtyard  motorcycle  contemptuous  	suddenly       	`    @  ë      quit? àE«p on mouseUp
  Answer "Do you really want to quit?" with "Yes" or "No"
  if it is "Yes" then
    save this stack
    quit
  end if
end mouseUp
   ÿÿ33     y Y          	        scramble once more àE«pon mouseUp
  global Loesung
  put Loesung into Aufgabe
  put the number of chars of Aufgabe into AZahl
  put empty into scrambleword
  repeat with i = 1 to AZahl
    put the number of chars of Aufgabe into ZZahl
    put random(ZZahl) into Nummer
    put char Nummer of Aufgabe into char i of scrambleword
    delete char Nummer of Aufgabe
  end repeat
  put toupper(scrambleword) into fld "Display"
  put empty into fld "Eingabe"
  put empty into fld "Hilfe"
  focus on fld "Eingabe"
  hide btn "more letters"
  show btn "Help"
  end mouseUp
        Q O           	        sort list alphabetically àE«p ion mouseUp
  put fld "Lexikon" into Lexikon
  sort Lexikon
  put Lexikon into fld "Lexikon"
end mouseUp
         y ª %         	     
   nomoreletters  h    ÿÿÿÿ       } z         ê (There are only two letters missing now.    Try to find them on your own! 
   noHelp  h    ÿÿÿÿ       |  Y        ê Word is too short!    No help is available.    readme àe«x  2on mouseUp
  if the vis of group "readme" then
    hide group "readme" with visual effect "reveal down"
    set the label of me to "show Readme"
  else
set the scroll of fld "readme" to 0
    show group "Readme" with visual effect "scroll up"
    set the label of me to "hide Readme"
  end if
end mouseUp
        Ù Q  show Readme          	        readme  a   ÿÿÌÌff      ÿÿþ
   Readme  	h    ÿÿÿÿ      ö}        ê YThis stack is an example of one of many possible structures of a word-scramble exercise.  What it does:    1. Scrambled words randomly selected from a "lexicon" are put into a "scramble" field. There is an option to choose "long", "short", or "mixed" words.    Ð2. When you type into the input field, the typed letters disappear from the scramble field. Only letters contained in the scramble field can be typed into the input field, otherwise  a "warning" will appear.    ç3. If you delete letters from the input field, they reappear in the scramble field; you can move the cursor inside the input field using the arrow keys, then pressing the backspace key removes the letter on the left of the cursor.    V4. You can re-scramble the word to possibly get a better idea what the word could be.    5. Pressing "Help" shows the first and last letter of the searched word and dashes as placeholders for the remaining letters in between.    ã6. Button "more letters", which appears after first pressing button "Help", adds more - randomly selected - letters to the help field. The last two dashes in a word however remain, the user has to find out them on his/her own.    V7. The number of times "Help" or "more letters" is used is shown in field "used help"    @8) The lexicon field on the next card can be edited and sorted.               	`    @ í  {    Moved Icons          @ @              ÿÿÿÿ      ë    	@              H  í    	@              I  ï    	@              J  ñ    	@              K  ó    	@              à  õ    	@              á  ÷    	@              â  ù    	@              ã  û    	@              ä  ý    	@              å  ÿ    	@              æ      	@              ç  H i328  	D   ÿÿÿÿÿÿ  ffffff             0 0       S à 8 ` À   %       B  "    
     0 à¡    _ à ü 8 p p ø Ü Ááq 9 À à p x ?ø à    W¡ à       p @ H @ D @ B @ A @ @@ @À  À      ð    c à ?ø ü ÿþ 6ü øøþÿÀÏÀÇÃÀÃãÀÁóÀÀûÀÀÀÀ?Àà ð? ÿ ?þ ü ð     I i329  	D   ÿÿÿÿÿÿ  ffffff             0 0       Q à      ð                a à à à à à à à à à à à à à à à à à ø ø    U     à               ü    u à à ð ð ð ð à ð ð ð ð ð ð ð ð ð ð ð ð ø ü ü ü     J i330  	D  ÿÿÿÿÿÿ  ffffff             0 0       b ð    0          ` `              b ð ø ø          x ð à          \  â            p À   @ @ @ À    { ð ð ø ü ?þ > < <     ~ þ ü ø ð À    À À À À     K i331  	D   ÿÿÿÿÿÿ  ffffff             0 0       `                           k                         ` @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ À @ @ @ À      À À À À À À À À À À À À À À À À À À À  À À À À     à    	D  ØØ      øø``ÈÈ    ``  øøøøÈÈ  ÈÈ``  øøÈÈ  0000``     0 0        ÿ
  ÿÿ6Àüÿàüÿð7äøoäüßäü¿$ü¿$ü¿$ü¿$ü¿$ü¿ |¿ |¿ |¿ ü¿ "ü¿ ü¿ ü¿ ü¿ ü¿üøÀðààÿÀÿÿ     _ þ         @ @ @ @ @ @ @ @ @ @ @ @ @ @ @£      @                             @ ÿ       @  @  ½    o   	  	  	  I  I  I  I  I  I! @" 5        @  0 à    i   @ @ @ @ @ @ @  ¯À ÿÀ ÿæ ÿü ÿü ÿø ø ð ð ?à À     ã       @  ÿ     ÿ ÿÿÀÿàÿðÿø?ÿüÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþÿþ?ÿüÿøÿðÿàÿÀÿ ÿ     á    	D   
        øøøøøø  øøÈÈ  @@@@@@  ÈÈ``          ````ÈÈ  ÈÈÈÈøø  øø  0000``     0 0       23" P" P" PB$" `w PB" `
q	 PB" vw PB" `qwh	P"" pwP" qwP" qwhP" WUWUWUwhP" whP" whP" WUWUWwhP" whP" whP" WUWUw	hP"BD whP" whP" WUuUuUwhP" wP" wP" `wh	P"D vh P" `f	 P" P" P" P D PU   ÿÿÿ    â    	D   
        øøøøøø  øøÈÈ  @@@@@@  ÈÈ``          ````ÈÈ  ÈÈÈÈøø  øø  0000``     0 0      « 23" P" P" PB$" `w PB" `
q	 PB" vw PB" `qwh	P"" pwP" qwP" qwUuwhP" wWuwUwhP" wWuwUwhP" wUwhP" wWuwhP" wUwhP" wWuwhP" wWuw	hP"BD whP" wWuwhP" wWuwhP" wP" wP" `wh	P"D vh P" `f	 P" P" P" P D PU   ÿÿÿ    ã    	D            øøøø    øøøøøø  ÈÈ``  @@@@@@  PPPPPP     0 0         À @ `   0    0   a CÂ Ã Á ÁÀÀÀ@`  0  0À À`@ À À ÿþ   X  @    H   @    @    @   @       |    À À à à 0 0 8 ,8 ,< \< \> ¼> ¼? |? |?þÿÀÿÀü?àü?àü?ðü?ðÿø    j                 @ @              : @         @     ?ÿü    ©  @ @ ©    
ø ?ÿü      À À à à ð ð ø ø ?ü ?ü þ þ ÿ ÿ ÿÿÿÀÿÀÿàÿàÿðÿðÿøÿø?ÿü?ÿüÿþÿþÿÿþ    ä    	D  xx      øø      xx||xx  øøüüøø     0 0        à à     @     @ @ @         @ @ @        @   à à    | à ÿü ÿþ ÿÿÀÿBÀ¿÷à?ãð>Áð?ðøÀøàøð?øð?øàøÀøø?ð>Áð?ãð¿÷àÿÀÿÀÿÿþ ÿü à    e                   8 x ð à ` ?ÿ ø    P @ à ð> ø| |ø ?ð à À À à ?ð |ø ø| ð> à @¥    ~ à ÿü ÿþ ÿÿÀÿàÿð?ÿøÿøÿüÿþÿþÿþÿÿÿÿþ?ÿþÿþÿüÿøÿøÿðÿà ÿ ?ÿ ø     å    	D  xx||xx  ¸¸¼¼¸¸  øøüüøø      øø             0 0        à à        @ @        @ @     < x ð à àÀ <     8     H      @  @ @  @              } À ø ÿþ ð?ð?Àð?àð?à?ÿð?ÿ&ðà?øø?øø?øø?øø?ø?ø?ð?ø?ðø?àààÿÀÿÿþ ø À À À À À @    C  À À  À À À À À À À À ðµ    p @                  @   à           `     à ÿü ÿ ÿÿÀÿà?ÿðÿøÿüÿþÿþÿÿÿ?ÿþÿþÿüÿøÿðÿà ÿÀ ?ÿ ø ø ø x 8      æ    	D  xx||xx  ¸¸¼¼¸¸  øøüüøø              øø     0 0        à à        @ @        @ @     < x ð à àÀ <     8     [        (    @  $   @                | À ø ÿþ ÿ*àÀÆàÏà?Ãð?ÂðÂøü?øüøüøüÿø?ÿð?øðøàøàøÀÿÿþ ø À À À À À @    p @                  @   à           `    D À à 0ð <ð <ð à À       ²     à ÿü ÿ ÿÿÀÿà?ÿðÿøÿüÿþÿþÿÿÿ?ÿþÿþÿüÿøÿðÿà ÿÀ ?ÿ ø ø ø x 8      ç    	D  xx||    øøüü    ¸¸¼¼¸¸          xx||xx     0 0       z         @ @                 @ @     @           À ?À ?à à p ðp (ðx ðx ð| ð| ð~ ð~ øÿ øÿ øÿýÿÿÀ?øÀ?øàøàøðÿðÿà?ÿÀ    K   @           @             @ @                    @  @              ÿà    |   0           À À ` ` 0 0          ÿþÿü      à ð ?ø ?ø ü ü ÿþ ÿþ ÿ ÿ ÿÿÿÀÿÀÿàÿàÿðÿð?ÿø?ÿøÿüÿüÿþÿþÿÿ?ÿÿþÿü    î Answer Dialog      on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
       üG b   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
Helvetica   U 
helvetica   W Lucida Grande   U Lucida Grande   U Verdana   W Verdana   U Arial   ê    	Pon preOpenStack
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
  get item 3 of dialogData
  if char 1 to 3 of it = "<p>" AND char -4 to -1 of it = "</p>" then
    set the htmlText of fld 1 to it
  else put it into field 1
  get item 4 of dialogData
  if it is empty then get "OK"
  put the number of lines in it into nchoices
  put 32 into bwidth
  if nchoices > the number of buttons - 1
  then put the number of buttons - 1 into nchoices
  repeat with i = 2 to nchoices + 1
    show button i
    set the name of button i to line nchoices + 2 - i of it
    set the width of button i to the formattedWidth of button i + 32
    add the width of button i + 29 to bwidth
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
  #if the lookAndFeel is "Macintosh" or the lookAndFeel is "Appearance Manager" then
  if the platform is "MacOS" then
    set the bottomRight of btn 2 to (the width of this stack-20), (the height of this stack -20)
    repeat with i = 3 to nchoices+1
      set the bottomRight of btn i to (the left of btn (i-1))-14,(the height of this stack-20)
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
           G b  z  î  Ø  Ù  Ú  Ý  Þ  ß  à
  î   @        7            Short or long words?   z icon À@P on mouseUp
end mouseUp
          ( (       	  ê   Ø long àD«h            ; C        	  ê   Ù mixed àD£`        ; I        	  ê   Ú short àD£`       ì ; D        	  ê   Ý Ja àD£`       ; 5        	  ê   Þ y àD£`      ÿj 8 6        	  ê   ß x àD£`       a 8 6        	  ê   à w àD£`       8 6        	  ê    Cursors          0F               U 
Helvetica   é    	@                 ï    	@                 ì    	@                 ñ    	@                 ó    	@                 õ    	@                 ÷    	@                 ù    	@                 û    	@                     	@                     	@                 	    	@                     	@                     	@                     	@                     	@                     	@                     	@                   c5   	D          ÿÿÿÿÿÿ     0 0       d  ø ì Ä NwÞ üò ñÃ ÇÁ Á°ÀáàÀÁ @Aà@`À`   0 p Ð08àã 8 à    ^  8    < 8> ã> O?  ">ß > ? ÿÀ ÿ ÿ  ü` ñÀ Ç  p À    j  ø ü ü wþ ÿþ ÿ ÿ ÿÿÿÀÿ0ÀÿÀÿà?ÿà?ÿðÿðÿðÿðÿàÿþ ø à       c11   	D          ÿÿÿÿÿÿ     0 0       [    5 [       @   A   H 0 à     J   
 $ p ø ð à À   > | x ° À £    [    ?  þ ü ø ð à À ?  þ ü ø ð à        c12   	D          ÿÿÿÿÿÿ     0 0       Y >  ÿ ÿ ÿ ÿ  ?  0 @   A    ð à ¦    .ª  À à À   > | x p²    Y >  ÿ ÿ ÿ ÿ ÿ ÿ þ ð À ?  þ ü ø ð à ¦       c16  	D          ÿÿÿÿÿÿ     8 8     KÀ ð !ø Aü Aü þ þ ÿþ ÿ ÿ   ? 0 À    2   > > ~ ~ ü ü ø ø ð À    B
ÀðD?ø 
üÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À          c17   	D          ÿÿÿÿÿÿ     8 8     IÀ 0   p x< ü~ þ ÿþ þ ü~ x< p   0 À    < À ð à À     À à ð À    AÀÔðà?øüÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À        c18   	D          ÿÿÿÿÿÿ     8 8     KÀ 0 ?   ÿ ÿ ÿþ þ þ Aü Aü !ø ð À    2 À ð ø ø ü ü ~ ~ > >      B
ÀðD?ø 
üÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À        c19   	D          ÿÿÿÿÿÿ     8 8     KÀ ð ?ø _ô Oä Â    Â Oä _ô ?ø ð À    -   0 x< | ~ü | x< 0      B
ÀðD?ø 
üÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À        c20   	D          ÿÿÿÿÿÿ     8 8     KÀ ð !ø Aü Aü þ þ ÿþ ÿ ÿ   ? 0 À    2   > > ~ ~ ü ü ø ø ð À    B
ÀðD?ø 
üÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À        c21   	D          ÿÿÿÿÿÿ     8 8     IÀ 0   p x< ü~ þ ÿþ þ ü~ x< p   0 À    < À ð à À     À à ð À    B
ÀðD?ø 
üÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À        c22   	D          ÿÿÿÿÿÿ     8 8     KÀ 0 ?   ÿ ÿ ÿþ þ þ Aü Aü !ø ð À    2 À ð ø ø ü ü ~ ~ > >      B
ÀðD?ø 
üÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À        c23   	D          ÿÿÿÿÿÿ     8 8     KÀ ð ?ø _ô Oä Â    Â Oä _ô ?ø ð À    -   0 x< | ~ü | x< 0      B
ÀðD?ø 
üÿýüPÿþ 
ÿþ ÿþ ÿþ ÿþüÿýü?øBð À        c1   	D  ÿÿÿÿÿÿ             8 8     B À         @ À  ² é 	     7 @ ` p x | ~   | l L      J À à `ð pø Xü pþ Eÿ 0ÿÁÿÀÿÀEþ  þ ï  E       c8   	D          ÿÿÿÿÿÿ     8 8     J 	 	 	 	 	 	à è¸ ¬ * À
 ` 0       G       @ gP wÔ ?ô ü ü ø ø ø    C   5ó  %àïø%ÿü%ÿþÿþ%þ?þþüü      c24   	D  øøüüøø             8 8     A À            ² é 	     D @ ` p x |A ~A A Á |A lA LA A A     C HÀ ÿýà Ðð ÿýø Pü 
þA ÿA ÿÁ ÿÁÿýÿÁÿýþAþAïA A        c25   	D  øøüüøø             8 8     I À      > > ¶ 6 ¢ 6 ²6 é> 	>     D @ ` p x |A ~A I É |] lI LI A A     B HÀ ÿýà Ðð ÿýø Pü þ ÿ ÿ ÿýÿýþþï         c26  	D  øøüüøø             8 8     N@    p @ @ ÿ   ÿ @ @ p    @    F À à    þ þ    à À     CÀ à@ðÿýðhÀuÀ ÿýÿ@ÿ ÿýÀÿýÀÐðð@à À       c27  	D  øøüüøø             8 8     H À @ @ 2L RJ y @ @ y RJ 2L @ @ À    >    ! a ý¿ ý¿ a !       > À@ÀÿýÀh3ÌusÎ ÿýÿ@ÿ ÿýsÎÿý3ÌÐÀÀ@À        c25   	D          øøüüøø     8 8     Pà ø 8< p x Ì Æ Ã Á ÀÃ `f `6 p <8 ð À    > À 0  2 ) $ "D !$  H   À    Dà ø@?üÿýx>h|fþ ï ç@ãÇ áçÿýpþÿýp~Ð|<?ø@ð À    