#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  Ź 
Auto-Math   ľon openstack
  set the dontuseQTEffects to true
  set the loc of me to the screenloc
  set the backdrop to blue
end openstack
on closestack
set the backdrop to none
end closestack
  w         ůůččŇŇ AntiqueWhite         ˙˙˙˙˙˙ white   ŹŹŹŹŹŹ    ĄWžR         Auto-Math  (deutsch)     ˙˙˙˙   	  W 
helvetica   W Courier   W Courier   U Courier   U Courier   U 
helvetica   W 
helvetica   U Arial   U Arial   ę    	@          žR  ë  ě  í  î  ď  đ  ń  ň  ó  ô  ő  ö  ÷  ř  ů  ú  ű  ü  ý    ¨  Ş  Ť  )    	@          žR                         !  "  #  $  %  &  '  (    Š  Ş  Ź      	P +on openCard
  focus on fld 3
end openCard
           žR  ˙                     	  
                    Ş  f    	@          žR    S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e                Ş  z    	@          žR    g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  {          ˘  §  Ş      	@          žR    |  }  ~                                           Ą  Ł  ¤  Ľ  Ś  Ş
  ë   h         ˇ 7 )         ę 14 
  ě           ě 8             x 
  í   h        8 )    Nummer  10        ę  
  î  	        J : ) !           = 
  ď   h        n 8 '         ę 140   đ Aufgabe ŕEŁp$on mouseUp
  Global Tasten, Distraktorenwerte
  repeat with i = 2 to 5
    set the loc of btn i to the Ort of btn i
  end repeat
  put the random of 20 into Ergebnis
  put Ergebnis into fld 5
  put the random of  10 into Term1
  set the Nummer of fld 3 to Term1
  put empty into fld 3
  if Ergebnis > Term1 then
    put Ergebnis - Term1 into Term2
    put "+" into fld 2
    put Term2 into fld 1
  else
    put Ergebnis + Term1 into Term2
    put "-" into fld 2
    put Term2 into fld 1
  end if
  put "2,3,4,5" into Tasten
  put the number of items of Tasten into Zahl
  put the random of Zahl into Auswahl
  put item Auswahl of tasten into Taste
  set the label of btn Taste to  Term1
  delete item Auswahl of Tasten
  put Term1 into Distraktorenwerte
  send "mouseup" to btn "Verteilung"
end mouseUp
         ` R          	       ń New Button ŕeŤx  ľon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
    set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
    add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
Aliceblue         ˙˙˙˙˙˙    ˛  ) !   Ort  198,157 11          	       ň New Button ŕeŤx  ľon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
    set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
    add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
Aliceblue         ˙˙˙˙˙˙    ę  ) !   Ort  254,157 13          	      ó New Button ŕeŤx  ľon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
    set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
    add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
Aliceblue         ˙˙˙˙˙˙      ) !   Ort  308,157 10          	      ô New Button ŕeŤx  ľon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
    set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
    add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
AliceBlue   ˙˙˙˙˙˙   X  ) !   Ort  364,157 14          	    
  ő Fehler  h          @ /         ę 4   ö Verteilung ŕEŁpNon mouseUp
  Global Tasten,Distraktorenwerte,Faktor2
  #put "Wert" into DistraktorenWerte # muß hier wörtlich eingesetzt werden, um die "repeat until"-Schleife
  # zu bedienen
  repeat with i = 1 to 3
    put the number of items of Tasten into Zahl
    put the random of Zahl into Zufall
    put item Zufall of Tasten into Taste
    put Distraktorenwerte into Wert
    # repeat until Wert is not among the items of Distraktorenwerte and Wert > 0 and Wert < 11
    # put the random of 20 into Wert
    # end repeat
    repeat until Wert is not among the items of Distraktorenwerte and Wert > 0 and Wert < Faktor2 + 5 and Wert > Faktor2 - 5
      put the random of 20 into Wert
    end repeat
    
    put Wert into item (i + 1) of Distraktorenwerte
    set the label of btn Taste to Wert
    delete item Zufall of Tasten
  end repeat
end mouseUp
          T           	       ÷ skripte ŕEŁp qon mouseUp
  repeat with i = 2 to 5
    set the script of btn i to the script of btn 2
  end repeat
end mouseUp
         ¸ L &         	       ř 	Aufgabe2 ŕEŁpon mouseUp
  Global Tasten, Distraktorenwerte, Faktor2
  
  repeat with i = 2 to 5
    set the loc of btn i to the Ort of btn i
  end repeat
  #===================================
  put the random of 20 into Faktor1
  put the random of 20 into Faktor2
  put Faktor1 * Faktor2 into Ergebnis
  #===================================
  set the Nummer of fld 3 to Faktor2
  
  put empty into fld 3
  #===========Wahl Multip oder Division========
  put the random of 2 into Wahl
  #====================
  if Wahl is 1 then    # Multiplikation
    
    put Ergebnis into fld 5
    put "x" into fld 2
    put Faktor1 into fld 1
  else
    put Ergebnis into fld 1
    put ":" into fld 2
    put Faktor1 into fld 5
  end if
  put "2,3,4,5" into Tasten
  put the number of items of Tasten into Zahl
  put the random of Zahl into Auswahl
  put item Auswahl of tasten into Taste
  set the label of btn Taste to  Faktor2
  delete item Auswahl of Tasten
  put Faktor2 into Distraktorenwerte
  send "mouseup" to btn "Verteilung"
end mouseUp
         4 R !         	     
  ů Treffer  h           Ě /         ę 5 
  ú  	         8            	richtig: 
  ű  	        0            falsch:   ü Start ŕEŤp oon mouseUp
   put 0 into fld "Treffer"
  put 0 into fld "Fehler"
send "mouseup" to btn "Aufgabe2"
end mouseUp
         8 P          	     
  ý  )      ďď÷÷˙˙ 
AliceBlue    0 h            7Multiplikation und Division im Zahlenraum bis etwa 300 
  ˙   +h         ˇ 7 )          342 
              ě 8             : 
     +x  -on returninfield
  if the text of me is the nummer of me then
    set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "White"
    add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    put empty into me
add 1 to fld "Fehler"
  end if
end returninfield
   ˙˙˙˙˙˙ White   8 )    Nummer  18          
    	        J : ) !           = 
     +h        n 8 '          19    Aufgabe ŕEŁp$on mouseUp
  Global Tasten, Distraktorenwerte
  repeat with i = 2 to 5
    set the loc of btn i to the Ort of btn i
  end repeat
  put the random of 20 into Ergebnis
  put Ergebnis into fld 5
  put the random of  10 into Term1
  set the Nummer of fld 3 to Term1
  put empty into fld 3
  if Ergebnis > Term1 then
    put Ergebnis - Term1 into Term2
    put "+" into fld 2
    put Term2 into fld 1
  else
    put Ergebnis + Term1 into Term2
    put "-" into fld 2
    put Term2 into fld 1
  end if
  put "2,3,4,5" into Tasten
  put the number of items of Tasten into Zahl
  put the random of Zahl into Auswahl
  put item Auswahl of tasten into Taste
  set the label of btn Taste to  Term1
  delete item Auswahl of Tasten
  put Term1 into Distraktorenwerte
  send "mouseup" to btn "Verteilung"
end mouseUp
         ` R          	        New Button ŕeŁx  Ion mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
AliceBlue         ˙˙˙˙˙˙    ˛  ) !   Ort  198,157 5          	        New Button ŕeŁx  Ion mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
AliceBlue         ˙˙˙˙˙˙    ę  ) !   Ort  254,157 8          	       New Button ŕeŁx  Ion mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
AliceBlue         ˙˙˙˙˙˙      ) !   Ort  308,157 18          	        New Button ŕeŁx  Ion mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
AliceBlue   ˙˙˙˙˙˙   X  ) !   Ort  364,157 10          	     
  	 Fehler  h          @ /          0   
 Verteilung ŕEŁpon mouseUp
  Global Tasten,Distraktorenwerte,Faktor2
  #put "Wert" into DistraktorenWerte # muß hier wörtlich eingesetzt werden, um die "repeat until"-Schleife
  # zu bedienen
  repeat with i = 1 to 3
    put the number of items of Tasten into Zahl
    put the random of Zahl into Zufall
    put item Zufall of Tasten into Taste
    put Distraktorenwerte into Wert
    repeat until Wert is not among the items of Distraktorenwerte and Wert > 0 and Wert < 11
      put the random of 20 into Wert
    end repeat
    put Wert into item (i + 1) of Distraktorenwerte
    set the label of btn Taste to Wert
    delete item Zufall of Tasten
  end repeat
end mouseUp
          T           	        skripte ŕEŁp qon mouseUp
  repeat with i = 2 to 5
    set the script of btn i to the script of btn 2
  end repeat
end mouseUp
         ¸ L &         	        	Aufgabe2 ŕEŁp!on mouseUp
  Global Tasten, Distraktorenwerte, Faktor2
  
  repeat with i = 2 to 5
    set the loc of btn i to the Ort of btn i
    hide btn i
  end repeat
  #===================================
  put the random of 20 into Faktor1
  put the random of 20 into Faktor2
  put Faktor1 * Faktor2 into Ergebnis
  #===================================
  set the Nummer of fld 3 to Faktor2
  
  put empty into fld 3
  #===========Wahl Multip oder Division========
  put the random of 2 into Wahl
  #====================
  if Wahl is 1 then    # Multiplikation
    
    put Ergebnis into fld 5
    put "x" into fld 2
    put Faktor1 into fld 1
  else
    put Ergebnis into fld 1
    put ":" into fld 2
    put Faktor1 into fld 5
  end if
  put "2,3,4,5" into Tasten
  put the number of items of Tasten into Zahl
  put the random of Zahl into Auswahl
  put item Auswahl of tasten into Taste
  set the label of btn Taste to  Faktor2
  delete item Auswahl of Tasten
  put Faktor2 into Distraktorenwerte
  focus on fld 3
  send "mouseup" to btn "Verteilung"
end mouseUp
         b R !         	     
   Treffer  h           Ě /          0 
    	         8            	richtig: 
    	        0            falsch:    Start ŕEŤp qon mouseUp

  put 0 into fld "Treffer"
  put 0 into fld "Fehler"
  send "mouseup" to btn "Aufgabe2"
end mouseUp
         8 P          	     
    )      ďď÷÷˙˙ 
AliceBlue    0 h            7Multiplikation und Division im Zahlenraum bis etwa 300       i        ź4 H    	previous âCŤP .on mouseUp
  go to previous card
end mouseUp
        Ŕ8                 @             	        next âCŤP on mouseUp
  # visual effect dissolve slowly to black
  # visual effect dissolve slowly to card
  
  go to next card
end mouseUp
        ŕ8                 A             	     
     h         ˇ 7 )         ) 3 
             ě 8             x 
     h        8 )    Nummer  19        )  
    	        J : ) !           = 
     h        n 8 '         ) 57    Aufgabe ŕEŁp$on mouseUp
  Global Tasten, Distraktorenwerte
  repeat with i = 2 to 5
    set the loc of btn i to the Ort of btn i
  end repeat
  put the random of 20 into Ergebnis
  put Ergebnis into fld 5
  put the random of  10 into Term1
  set the Nummer of fld 3 to Term1
  put empty into fld 3
  if Ergebnis > Term1 then
    put Ergebnis - Term1 into Term2
    put "+" into fld 2
    put Term2 into fld 1
  else
    put Ergebnis + Term1 into Term2
    put "-" into fld 2
    put Term2 into fld 1
  end if
  put "2,3,4,5" into Tasten
  put the number of items of Tasten into Zahl
  put the random of Zahl into Auswahl
  put item Auswahl of tasten into Taste
  set the label of btn Taste to  Term1
  delete item Auswahl of Tasten
  put Term1 into Distraktorenwerte
  send "mouseup" to btn "Verteilung"
end mouseUp
         ` R          	        New Button ŕeŤx  Żon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
 set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
 add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
AliceBlue         ˙˙˙˙˙˙    ˛  ) !   Ort  198,157 19          	        New Button ŕeŤx  Żon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
 set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
 add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
Aliceblue         ˙˙˙˙˙˙    ę  ) !   Ort  254,157 13          	        New Button ŕeŤx  Żon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
 set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
 add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
AliceBlue         ˙˙˙˙˙˙      ) !   Ort  308,157 18          	       New Button ŕeŤx  Żon mousedown
  grab me
end mousedown

on mouseUp
  if intersect(me,fld 3) and the label of me is the Nummer of fld 3 then
    put the label of me into fld 3
    move me to the loc of fld 3
 set the backcolor of me to "green"
    wait 1 second
    set the backcolor of me to "Aliceblue"
 add 1 to fld "Treffer"
    send "mouseup" to btn "Aufgabe2"
  else
    move me to the Ort of me
    add 1 to fld "Fehler"
  end if
end mouseUp
  2 ďď÷÷˙˙ 
Aliceblue   ˙˙˙˙˙˙   X  ) !   Ort  364,157 20          	     
    Fehler  h          @ /         ) 0   ! Verteilung ŕEŁpłon mouseUp
  Global Tasten,Distraktorenwerte,Faktor2
  #put "Wert" into DistraktorenWerte # muß hier wörtlich eingesetzt werden, um die "repeat until"-Schleife
  # zu bedienen
  repeat with i = 1 to 3
    put the number of items of Tasten into Zahl
    put the random of Zahl into Zufall
    put item Zufall of Tasten into Taste
    put Distraktorenwerte into Wert
    repeat until Wert is not among the items of Distraktorenwerte #and Wert > 0 and Wert < 11
      put the random of 10 into PreWert
put Prewert + 10 into Wert
    end repeat
    put Wert into item (i + 1) of Distraktorenwerte
    set the label of btn Taste to Wert
    delete item Zufall of Tasten
  end repeat
end mouseUp
          T           	       " skripte ŕEŁp qon mouseUp
  repeat with i = 2 to 5
    set the script of btn i to the script of btn 2
  end repeat
end mouseUp
         ¸ L &         	       # 	Aufgabe2 ŕEŁp@on mouseUp
  Global Tasten, Distraktorenwerte, Faktor2
  
  repeat with i = 2 to 5
    set the loc of btn i to the Ort of btn i
  end repeat
  #===================================
  put the random of 10 into Faktor1
  put the random of 10 into Faktor2
  add 10 to Faktor2 # um Zahlen zwischen 11 und 20 zu erhalten
  put Faktor1 * Faktor2 into Ergebnis
  #===================================
  set the Nummer of fld 3 to Faktor2
  
  put empty into fld 3
  #===========Wahl Multip oder Division========
  put the random of 2 into Wahl
  #====================
  if Wahl is 1 then    # Multiplikation
    
    put Ergebnis into fld 5
    put "x" into fld 2
    put Faktor1 into fld 1
  else
    put Ergebnis into fld 1
    put ":" into fld 2
    put Faktor1 into fld 5
  end if
  put "2,3,4,5" into Tasten
  put the number of items of Tasten into Zahl
  put the random of Zahl into Auswahl
  put item Auswahl of tasten into Taste
  set the label of btn Taste to  Faktor2
  delete item Auswahl of Tasten
  put Faktor2 into Distraktorenwerte
  send "mouseup" to btn "Verteilung"
end mouseUp
         4 R !         	     
  $ Treffer  h           Ě /         ) 0 
  %  	         8            	richtig: 
  &  	        0            falsch:   ' Start ŕEŤp oon mouseUp
   put 0 into fld "Treffer"
  put 0 into fld "Fehler"
send "mouseup" to btn "Aufgabe2"
end mouseUp
         8 P          	     
  (  )      ďď÷÷˙˙ 
AliceBlue    ( q            8Multiplikation und Division mit dem "großen Einmaleins" 
  S   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 Q T    
VErgebnis  14        f 112 : 8 
  T   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    Q T    
VErgebnis  11        f 55 : 5 
  U   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß Q T    
VErgebnis  49        f 49 
  V   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 Q T    
VErgebnis  11        f 11 
  W   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 n T    
VErgebnis  6        f 6 
  X   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    n T    
VErgebnis  14        f 14 
  Y   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß n T    
VErgebnis  13        f 13 
  Z   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 n T    
VErgebnis  13        f 13 x 1 
  [   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7  T    
VErgebnis  49        f 7 x 7 
  \   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white     T    
VErgebnis  200        f 20 x 10 
  ]   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß  T    
VErgebnis  200        f 200 
  ^   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3  T    
VErgebnis  60        f 4 x 15 
  _   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 ¨ T    
VErgebnis  108        f 108 
  `   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    ¨ T    
VErgebnis  108        f 9 x 12 
  a   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß ¨ T    
VErgebnis  60        f 60 
  b   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 ¨ T    
VErgebnis  6        f 96 : 16   c 	Aufgabe2 ŕEŁp	on mouseUp
  Global Zaehler, Vergleich, VergleichID
  lock screen
  put 0 into Zaehler
  put empty into Vergleich
  put empty into VergleichID
  repeat with a = 1 to 16
    set the backcolor of fld a to "white"
    show fld a
  end repeat
  put "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16" into Felder
  repeat with  i = 1 to 8
    put the random of 20 into Faktor1
    put the random of 20 into Faktor2
    put Faktor1 * Faktor2 into Ergebnis
    put the number of items of Felder into Zahl
    put the Random of Zahl into XFeld
    put item XFeld of Felder into XNummer
    delete item XFeld of Felder
    put the number of items of Felder into Zahl
    put the Random of Zahl into yFeld
    put item yFeld of Felder into YNummer
    delete item yFeld of Felder
    put the random of 2 into Modus # Div oder Multi
    if Modus is 1 then # Multiplikation
      set the VErgebnis of fld XNummer to Ergebnis
      put Faktor1 &&"x"&&Faktor2 into fld XNummer
      put Ergebnis into fld yNummer
      set the VErgebnis of fld yNummer to Ergebnis
    else       # Division
      set the VErgebnis of fld XNummer to Faktor1
      put Ergebnis &&":"&&Faktor2 into fld XNummer
      put Faktor1 into fld yNummer
      set the VErgebnis of fld yNummer to Faktor1
    end if
  end repeat
end mouseUp
         Ţ R !         	       d Skripte ŕEŁp ron mouseUp
  repeat with i = 1 to 16
    set the script of fld i to the script of fld 1
  end repeat
end mouseUp
        
 Z !         	       e 
Vergleich ŕEŁpon mouseUp
  Global Zaehler,Vergleich, VergleichID
  if item 1 of Vergleich = item 2 of Vergleich then
    hide fld ID item 1 of VergleichID
    hide fld ID item 2 of VergleichID
add 1 to fld "Treffer"
  else
    set the backcolor of fld ID item 1 of VergleichID to "White"
    set the backcolor of fld ID item 2 of VergleichID to "White"
add 1 to fld "Fehler"
  end if
  put 0 into Zaehler
  put empty into Vergleich
  put empty into VergleichID
  #=====================
  put 0 into VisZaehler
  repeat with i = 1 to 16
    if the vis of fld i then add 1 to VisZaehler
  end repeat
  if VisZaehler = 0 then send "mouseup" to btn "Aufgabe2"
end mouseUp
        Ś ä Z          	     
  g   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 Q T    
VErgebnis  102        z 17 x 6 
  h   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    Q T    
VErgebnis  360        z 355 + 5 
  i   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß Q T    
VErgebnis  49        z 93 - 44 
  j   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 Q T    
VErgebnis  72        z 	120 - 48 
  k   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 n T    
VErgebnis  360        z 18 x 20 
  l   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    n T    
VErgebnis  102        z 5 + 97 
  m   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß n T    
VErgebnis  209        z 11 x 19 
  n   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 n T    
VErgebnis  88        z 	147 - 59 
  o   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7  T    
VErgebnis  340        z 20 x 17 
  p   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white     T    
VErgebnis  238        z 230 + 8 
  q   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß  T    
VErgebnis  49        z 7 x 7 
  r   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3  T    
VErgebnis  238        z 17 x 14 
  s   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 ¨ T    
VErgebnis  209        z 	168 + 41 
  t   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    ¨ T    
VErgebnis  72        z 18 x 4 
  u   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß ¨ T    
VErgebnis  88        z 11 x 8 
  v   +x  qon mouseUp
  Global Zaehler, Vergleich, VergleichID
  if Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 ¨ T    
VErgebnis  340        z 	280 + 60   w 	Aufgabe2 ŕEŁpon mouseUp
  Global Zaehler, Vergleich, VergleichID
  lock screen
  put 0 into Zaehler
  put empty into Vergleich
  put empty into VergleichID
  repeat with a = 1 to 16
    set the backcolor of fld a to "white"
    show fld a
  end repeat
  put "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16" into Felder
  repeat with  i = 1 to 8
    put the random of 20 into Faktor1
    put the random of 20 into Faktor2
    put Faktor1 * Faktor2 into Ergebnis
    put the number of items of Felder into Zahl
    put the Random of Zahl into XFeld
    put item XFeld of Felder into XNummer
    delete item XFeld of Felder
    put the number of items of Felder into Zahl
    put the Random of Zahl into yFeld
    put item yFeld of Felder into YNummer
    delete item yFeld of Felder
    # put the random of 2 into Modus # Div oder Multi
    # if Modus is 1 then # Multiplikation
      set the VErgebnis of fld XNummer to Ergebnis
      put Faktor1 &&"x"&&Faktor2 into fld XNummer
      put the random of 100 into SubAddFaktor
      if Ergebnis < 100 then
        put Ergebnis + SubAddFaktor into Summe
        put Summe&&"-"&&SubAddFaktor into fld yNummer
      else
        put Ergebnis - SubAddFaktor into Sub
        put Sub&&"+"&&SubAddFaktor into fld yNummer
      end if
      set the VErgebnis of fld yNummer to Ergebnis
      # else       # Division
      # set the VErgebnis of fld XNummer to Faktor1
      # put Ergebnis &&":"&&Faktor2 into fld XNummer
      # put Faktor1 into fld yNummer
      # set the VErgebnis of fld yNummer to Faktor1
   # end if
  end repeat
end mouseUp
         Ţ R !         	       x Skripte ŕEŁp on mouseUp
  repeat with i = 1 to 16
    # set the script of fld i to the script of fld 1
    set the margins of fld i to 4,6,4,6
  end repeat
end mouseUp
        
 Z !         	       y 
Vergleich ŕEŁpbon mouseUp
  Global Zaehler,Vergleich, VergleichID
  if item 1 of Vergleich = item 2 of Vergleich then
    hide fld ID item 1 of VergleichID
    hide fld ID item 2 of VergleichID
  else
    set the backcolor of fld ID item 1 of VergleichID to "White"
    set the backcolor of fld ID item 2 of VergleichID to "White"
  end if
  put 0 into Zaehler
  put empty into Vergleich
  put empty into VergleichID
  #=====================
  put 0 into VisZaehler
  repeat with i = 1 to 16
    if the vis of fld i then add 1 to VisZaehler
  end repeat
  if VisZaehler = 0 then send "mouseup" to btn "Aufgabe2"
end mouseUp
        Ś ä Z          	     
  {              ˙ü H           Memory:  9Multiplikation mit ergänzender Subtraktion oder Addition  1Zuordnung von Aufgaben mit dem gleichen Ergebnis 
  |   +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 Q T    
VErgebnis  195         	129 + 66 
  }   +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    Q T    
VErgebnis  44         54 - 10 
  ~   +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß Q T    
VErgebnis  108         6 x 18 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 Q T    
VErgebnis  99         	119 - 20 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 n T    
VErgebnis  190         10 x 19 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    n T    
VErgebnis  99         9 x 11 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß n T    
VErgebnis  6         68 - 62 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 n T    
VErgebnis  190         	166 + 24 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7  T    
VErgebnis  44         11 x 4 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white     T    
VErgebnis  3         39 : 13 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß  T    
VErgebnis  3         52 - 49 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3  T    
VErgebnis  104         34 + 70 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   7 ¨ T    
VErgebnis  6         2 x 3 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white    ¨ T    
VErgebnis  108         107 + 1 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white   ß ¨ T    
VErgebnis  195         13 x 15 
     +x  on mouseUp x
  Global Zaehler, Vergleich, VergleichID
  if x is 3 then  # d.h. rechte Maustaste
    put the backcolor of me into Farbe
    put the text of me into MeText
    put the VErgebnis of me into me
add 1 to fld "Hilfen"
    wait 30 ticks
    set the backcolor of me to Farbe
    set the text of me to MeText
  end if
  if x is 1 and Zaehler < 3 then
    #==========================
    if the backcolor of me is "White" then
      set the backcolor of me to "red"
      add 1 to Zaehler
      if Zaehler is 1 then
        put the VErgebnis of me into item 1 of Vergleich
        put the ID of me into item 1 of VergleichID
      end if
      if Zaehler is 2 then
        put the VErgebnis of me into item 2 of Vergleich
        put the ID of me into item 2 of VergleichID
        wait 30 ticks
        send "mouseup" to btn "Vergleich"
      end if
    end if
    #==========================
  end if
end mouseUp
   ˙˙˙˙˙˙ white  3 ¨ T    
VErgebnis  104         13 x 8    	Aufgabe2 ŕEŁpon mouseUp
  Global Zaehler, Vergleich, VergleichID
  lock screen
  put 0 into Zaehler
  put empty into Vergleich
  put empty into VergleichID
  repeat with a = 1 to 16
    set the backcolor of fld a to "white"
    show fld a
  end repeat
  put "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16" into Felder
  repeat with  i = 1 to 8
    put the random of 20 into Faktor1
    put the random of 20 into Faktor2
    put Faktor1 * Faktor2 into Ergebnis
    put the number of items of Felder into Zahl
    put the Random of Zahl into XFeld
    put item XFeld of Felder into XNummer
    delete item XFeld of Felder
    put the number of items of Felder into Zahl
    put the Random of Zahl into yFeld
    put item yFeld of Felder into YNummer
    delete item yFeld of Felder
    put the random of 2 into Modus # Div oder Multi
    if Modus is 1 then # Multiplikation
      set the VErgebnis of fld XNummer to Ergebnis
      put Faktor1 &&"x"&&Faktor2 into fld XNummer
      put the random of 100 into SubAddFaktor
      if Ergebnis < 100 then
        put Ergebnis + SubAddFaktor into Summe
        put Summe&&"-"&&SubAddFaktor into fld yNummer
      else
        put Ergebnis - SubAddFaktor into Sub
        put Sub&&"+"&&SubAddFaktor into fld yNummer
      end if
      set the VErgebnis of fld yNummer to Ergebnis
    else       # Division
      set the VErgebnis of fld XNummer to Faktor1
      put Ergebnis &&":"&&Faktor2 into fld XNummer
      set the VErgebnis of fld yNummer to Faktor1
      put the random of 100 into SubAddFaktor
      if Faktor1 < 100 then
        put Faktor1 + SubAddFaktor into Summe
        put Summe&&"-"&&SubAddFaktor into fld yNummer
      else
        put Faktor1 - SubAddFaktor into Sub
        put Sub&&"+"&&SubAddFaktor into fld yNummer
      end if
    end if
  end repeat
end mouseUp
         Ţ R !         	        Skripte ŕEŁp on mouseUp
  repeat with i = 1 to 16
    set the script of fld i to the script of fld 1
    #set the margins of fld i to 4,6,4,6
  end repeat
end mouseUp
         ě Z !         	        
Vergleich ŕEŁpon mouseUp
  Global Zaehler,Vergleich, VergleichID
  if item 1 of Vergleich = item 2 of Vergleich then
    hide fld ID item 1 of VergleichID
    hide fld ID item 2 of VergleichID
add 1 to fld "Treffer"
  else
    set the backcolor of fld ID item 1 of VergleichID to "White"
    set the backcolor of fld ID item 2 of VergleichID to "White"
add 1 to fld "Fehler"
  end if
  put 0 into Zaehler
  put empty into Vergleich
  put empty into VergleichID
  #=====================
  put 0 into VisZaehler
  repeat with i = 1 to 16
    if the vis of fld i then add 1 to VisZaehler
  end repeat
  if VisZaehler = 0 then send "mouseup" to btn "Aufgabe2"
end mouseUp
        Ś ä Z          	     
               $ | B           Memory:  ,Multiplikation und Division mit ergänzender   Subtraktion oder Addition 
    	        Ü d  ,           .Wert eingeben und mit Returntaste bestätigen.    Start ŕEŤp son mouseUp
  
  put 0 into fld "Treffer"
  put 0 into fld "Fehler"
  send "mouseup" to btn "Aufgabe2"
end mouseUp
         $ <          	     
    	        r 8            	richtig: 
   Treffer  h           ˛ /         f 0 
    	        ö 0            falsch: 
   Fehler  h          & /         f 0 
               \  ,           DMemory mit Zuordnung von Aufgabe und Ergebnis im Zahlenraum bis 400 
    	         L Ě$ D           HJe zwei Felder anklicken. Passen die Felder zusammen, verschwinden sie.  FSind alle Aufgaben gelöst, wird automatisch ein neues Memory erzeugt. 
    	        r 8            	richtig: 
   Treffer  h           § /         z 0 
    	        ä 0            falsch: 
   Fehler  h           /         z 0 
    	        8 8            	richtig: 
   Treffer  h           j /          0 
     	        ˘ 0            falsch: 
  Ą Fehler  h           Ô /          0   ˘ Start ŕEŤp son mouseUp
  
  put 0 into fld "Treffer"
  put 0 into fld "Fehler"
  send "mouseup" to btn "Aufgabe2"
end mouseUp
          8 0          	       Ł Start ŕEŤp on mouseUp
  
  put 0 into fld "Treffer"
  put 0 into fld "Fehler"
put 0 into fld "Hilfen"
  send "mouseup" to btn "Aufgabe2"
end mouseUp
         $ <          	     
  ¤  	        0            Hilfen: 
  Ľ Hilfen  h          A +          0 
  Ś  	         0 Ěx D           >Zwei Aufgaben mit gleichem Ergebnis müssen angeklickt werden.  Bei Klick mit der rechten Maustaste auf ein Feld wird kurz das Ergebnis angezeigt; dafür gibt es einen Punkt im Feld "Hilfen". 
  §  	         L Ě$ D           HJe zwei Felder anklicken. Passen die Felder zusammen, verschwinden sie.  FSind alle Aufgaben gelöst, wird automatisch ein neues Memory erzeugt. 
  ¨  	        $              Auswahlfelder --> 
  Š  	        $              Auswahlfelder -->   Ş    i       ˙ü4 6     quit ŕEŤp on mouseUp
  quit
end mouseUp
         8 .          	     
  Ť  	          Ä <           @Ein Auswahlfeld mit linker Maustaste auf das leere Feld ziehen.  .Stimmt der Wert, erscheint eine neue Aufgabe. 
  Ź  	          Ä <           @Ein Auswahlfeld mit linker Maustaste auf das leere Feld ziehen.  .Stimmt der Wert, erscheint eine neue Aufgabe.    Moved Icons          @ @              ˙˙˙˙      ë    	@              H  í    	@              I  ď    	@              J  ń    	@              K  ó    	@              ŕ  ő    	@              á  ÷    	@              â  ů    	@              ă  ű    	@              ä  ý    	@              ĺ  ˙    	@              ć      	@              ç      	@              @      	@              A  H i328  	D   ˙˙˙˙˙˙  ffffff             0 0       S ŕ 8 ` Ŕ   %       B  "    
     0 ŕĄ    _ ŕ ü 8 p p ř Ü Ááq 9 Ŕ ŕ p x ?ř ŕ    WĄ ŕ       p @ H @ D @ B @ A @ @@ @Ŕ  Ŕ      đ    c ŕ ?ř ü ˙ţ 6ü řřţ˙ŔĎŔÇĂŔĂăŔÁóŔŔűŔŔŔŔ?Ŕŕ đ? ˙ ?ţ ü đ     I i329  	D   ˙˙˙˙˙˙  ffffff             0 0       Q ŕ      đ                a ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ŕ ř ř    U     ŕ               ü    u ŕ ŕ đ đ đ đ ŕ đ đ đ đ đ đ đ đ đ đ đ đ ř ü ü ü     J i330  	D  ˙˙˙˙˙˙  ffffff             0 0       b đ    0          ` `              b đ ř ř          x đ ŕ          \  â            p Ŕ   @ @ @ Ŕ    { đ đ ř ü ?ţ > < <     ~ ţ ü ř đ Ŕ    Ŕ Ŕ Ŕ Ŕ     K i331  	D   ˙˙˙˙˙˙  ffffff             0 0       `                           k                         ` @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ Ŕ @ @ @ Ŕ      Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ  Ŕ Ŕ Ŕ Ŕ     ŕ    	D  ŘŘ      řř``ČČ    ``  řřřřČČ  ČČ``  řřČČ  0000``     0 0        ˙
  ˙˙6Ŕü˙ŕü˙đ7äřoäüßäüż$üż$üż$üż$üż$üż |ż |ż |ż üż "üż üż üż üż üżüřŔđŕŕ˙Ŕ˙˙     _ ţ         @ @ @ @ @ @ @ @ @ @ @ @ @ @ @Ł      @                             @ ˙       @  @  ˝    o   	  	  	  I  I  I  I  I  I! @" 5        @  0 ŕ    i   @ @ @ @ @ @ @  ŻŔ ˙Ŕ ˙ć ˙ü ˙ü ˙ř ř đ đ ?ŕ Ŕ     ă       @  ˙     ˙ ˙˙Ŕ˙ŕ˙đ˙ř?˙ü˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ˙ţ?˙ü˙ř˙đ˙ŕ˙Ŕ˙ ˙     á    	D   
        řřřřřř  řřČČ  @@@@@@  ČČ``          ````ČČ  ČČČČřř  řř  0000``     0 0       23" P" P" PB$" `w PB" `
q	 PB" vw PB" `qwh	P"" pwP" qwP" qwhP" WUWUWUwhP" whP" whP" WUWUWwhP" whP" whP" WUWUw	hP"BD whP" whP" WUuUuUwhP" wP" wP" `wh	P"D vh P" `f	 P" P" P" P D PU   ˙˙˙    â    	D   
        řřřřřř  řřČČ  @@@@@@  ČČ``          ````ČČ  ČČČČřř  řř  0000``     0 0      Ť 23" P" P" PB$" `w PB" `
q	 PB" vw PB" `qwh	P"" pwP" qwP" qwUuwhP" wWuwUwhP" wWuwUwhP" wUwhP" wWuwhP" wUwhP" wWuwhP" wWuw	hP"BD whP" wWuwhP" wWuwhP" wP" wP" `wh	P"D vh P" `f	 P" P" P" P D PU   ˙˙˙    ă    	D            řřřř    řřřřřř  ČČ``  @@@@@@  PPPPPP     0 0         Ŕ @ `   0    0   a CÂ Ă Á ÁŔŔŔ@`  0  0Ŕ Ŕ`@ Ŕ Ŕ ˙ţ   X  @    H   @    @    @   @       |    Ŕ Ŕ ŕ ŕ 0 0 8 ,8 ,< \< \> ź> ź? |? |?ţ˙Ŕ˙Ŕü?ŕü?ŕü?đü?đ˙ř    j                 @ @              : @         @     ?˙ü    Š  @ @ Š    
ř ?˙ü      Ŕ Ŕ ŕ ŕ đ đ ř ř ?ü ?ü ţ ţ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙đ˙đ˙ř˙ř?˙ü?˙ü˙ţ˙ţ˙˙ţ    ä    	D  xx      řř      xx||xx  řřüüřř     0 0        ŕ ŕ     @     @ @ @         @ @ @        @   ŕ ŕ    | ŕ ˙ü ˙ţ ˙˙Ŕ˙BŔż÷ŕ?ăđ>Áđ?đřŔřŕřđ?řđ?řŕřŔřř?đ>Áđ?ăđż÷ŕ˙Ŕ˙Ŕ˙˙ţ ˙ü ŕ    e                   8 x đ ŕ ` ?˙ ř    P @ ŕ đ> ř| |ř ?đ ŕ Ŕ Ŕ ŕ ?đ |ř ř| đ> ŕ @Ľ    ~ ŕ ˙ü ˙ţ ˙˙Ŕ˙ŕ˙đ?˙ř˙ř˙ü˙ţ˙ţ˙ţ˙˙˙˙ţ?˙ţ˙ţ˙ü˙ř˙ř˙đ˙ŕ ˙ ?˙ ř     ĺ    	D  xx||xx  ¸¸źź¸¸  řřüüřř      řř             0 0        ŕ ŕ        @ @        @ @     < x đ ŕ ŕŔ <     8     H      @  @ @  @              } Ŕ ř ˙ţ đ?đ?Ŕđ?ŕđ?ŕ?˙đ?˙&đŕ?řř?řř?řř?řř?ř?ř?đ?ř?đř?ŕŕŕ˙Ŕ˙˙ţ ř Ŕ Ŕ Ŕ Ŕ Ŕ @    C  Ŕ Ŕ  Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ Ŕ đľ    p @                  @   ŕ           `     ŕ ˙ü ˙ ˙˙Ŕ˙ŕ?˙đ˙ř˙ü˙ţ˙ţ˙˙˙?˙ţ˙ţ˙ü˙ř˙đ˙ŕ ˙Ŕ ?˙ ř ř ř x 8      ć    	D  xx||xx  ¸¸źź¸¸  řřüüřř              řř     0 0        ŕ ŕ        @ @        @ @     < x đ ŕ ŕŔ <     8     [        (    @  $   @                | Ŕ ř ˙ţ ˙*ŕŔĆŕĎŕ?Ăđ?ÂđÂřü?řüřüřü˙ř?˙đ?řđřŕřŕřŔ˙˙ţ ř Ŕ Ŕ Ŕ Ŕ Ŕ @    p @                  @   ŕ           `    D Ŕ ŕ 0đ <đ <đ ŕ Ŕ       ˛     ŕ ˙ü ˙ ˙˙Ŕ˙ŕ?˙đ˙ř˙ü˙ţ˙ţ˙˙˙?˙ţ˙ţ˙ü˙ř˙đ˙ŕ ˙Ŕ ?˙ ř ř ř x 8      ç    	D  xx||    řřüü    ¸¸źź¸¸          xx||xx     0 0       z         @ @                 @ @     @           Ŕ ?Ŕ ?ŕ ŕ p đp (đx đx đ| đ| đ~ đ~ ř˙ ř˙ ř˙ý˙˙Ŕ?řŔ?řŕřŕřđ˙đ˙ŕ?˙Ŕ    K   @           @             @ @                    @  @              ˙ŕ    |   0           Ŕ Ŕ ` ` 0 0          ˙ţ˙ü      ŕ đ ?ř ?ř ü ü ˙ţ ˙ţ ˙ ˙ ˙˙˙Ŕ˙Ŕ˙ŕ˙ŕ˙đ˙đ?˙ř?˙ř˙ü˙ü˙ţ˙ţ˙˙?˙˙ţ˙ü    @ i320  	D           ˙˙˙˙˙˙     0 0       d   
 
   #˙   @ @   @ @   #˙   
 
      R      ţ ?ţ ?ţ ţ ţ ?ţ ?ţ ţ         b       ?˙ ?˙ ˙ ˙ ˙ ˙ ˙ ˙ ?˙ ?˙           A i321  	D           ˙˙˙˙˙˙     0 0       d ` ` P P H H ˙Ä         ˙Ä H H P P ` `    R     0 0 8 ř ü ü ţ ţ ü ü ř 8 0 0        b ` ` p p x x ˙ü ˙ü ˙ţ ˙ţ ˙ ˙ ˙ţ ˙ţ ˙ü ˙ü x x p p ` `      Cursors          Tc               U 
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
ţA ˙A ˙Á ˙Á˙ý˙Á˙ýţAţAďA A        c25   	D  řřüüřř             8 8     I Ŕ      > > ś 6 ˘ 6 ˛6 é> 	>     D @ ` p x |A ~A I É |] lI LI A A     B HŔ ˙ýŕ Đđ ˙ýř Pü ţ ˙ ˙ ˙ý˙ýţţď         c26  	D  řřüüřř             8 8     N@    p @ @ ˙   ˙ @ @ p    @    F Ŕ ŕ    ţ ţ    ŕ Ŕ     CŔ ŕ@đ˙ýđhŔuŔ ˙ý˙@˙ ˙ýŔ˙ýŔĐđđ@ŕ Ŕ       c27  	D  řřüüřř             8 8     H Ŕ @ @ 2L RJ y @ @ y RJ 2L @ @ Ŕ    >    ! a ýż ýż a !       > Ŕ@Ŕ˙ýŔh3ĚusÎ ˙ý˙@˙ ˙ýsÎ˙ý3ĚĐŔŔ@Ŕ        c25   	D          řřüüřř     8 8     Pŕ ř 8< p x Ě Ć Ă Á ŔĂ `f `6 p <8 đ Ŕ    > Ŕ 0  2 ) $ "D !$  H   Ŕ    Dŕ ř@?ü˙ýx>h|fţ ď ç@ăÇ áç˙ýpţ˙ýp~Đ|<?ř@đ Ŕ    