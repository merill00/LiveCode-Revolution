#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  � SlideShow-Win  ��on preopenstack
  if item 4 of the screenrect < 768 then
    answer "Set your screen resolution to 1024 X 768"&CR&"or higher and start this program again."
    close this stack
  end if
end preopenstack
on openstack
  go to cd 1
  set the decorations of me to empty
  set the loc of me to the screenloc
  set the backdrop to "black"
set the dontuseqt to true

end openstack

on closestack
  set the backdrop to none
end closestack
  w         ������  ������  ������ white ������  ������  �  � �     alwaybuffer  false              ����     W 
helvetica   U 
helvetica   W Arial Black   U 
helvetica  
 U 
helvetica   W 
helvetica   W Arial   U Arial  W Arial   W Arial   W Arial  
 U Arial  
 W Arial   U Adolescence   U Arial   U Arial   W Arial   W Arial   W Arial  cREVGeneral    scriptChecksum  pM�[lR<*�=�;��
bookmarks   handlerList  openstack
closestacktempScript   prevHandler  
closestackscriptSelection  char 139 to 138script     � Auswahl   	PHon preopencard
  hide fld "overview"
  set the label of btn "overview" to "show overview"
  if there is a stack "Metacard Menu Bar" then
    if the vis of stack "Metacard Menu Bar" then
      set the label of btn "environment" to "hide Metacard GUI"
      show btn "environment"
    else
      set the label of btn "environment" to "show Metacard GUI"
      show btn "environment"
    end if
  else
    hide btn "environment"
  end if
  
end preopencard
on opencard
  send "mouseup" to btn "File-Pruefung"
end opencard

on formatieren
  
  put the formattedheight of image 3 into FHoehe
  put the formattedwidth of image 3 into FBreite
  set the numberformat to 0.00
  put FBreite / FHoehe into Proportion
  if Proportion < 1.33 then
    lock screen
    set the height of image 3 to 768
    put 768 * Proportion into Breite
    set the width of image 3 to Breite
  else if Proportion > 1.33 then
    lock screen
    set the width of image 3 to 1024
    put 1024 / Proportion into Hoehe
    set the height of image 3 to Hoehe
  end if
  
  set the loc of image 3 to the screenloc
end formatieren
   ������  �            cREVGeneral    scriptChecksum  nN�uR!�@|�$��=*
bookmarks   handlerList  preopencardscriptSelection  char 353 to 352prevHandler  openCardtempScript   script     c  �  �    J  e  f  g  k  m  n  o  q  r  t  |  }  ~  �  �  �  �  �   Diashow   	p
on preopenCard
  Global Lupe,Zaehler,Zoomschalter
  put "aus" into ZoomSchalter
  set the hilitedbutton of group 2 to 2
  put "on" into Lupe
  # send "mouseup" to btn 2 of group 2
  put fld "Bildanzahl" into Zaehler
  put fld "Ordner" of cd "Auswahl" into imagefile
  put "/"&line 1 of fld "Dateien" of cd "Auswahl" after last char of imagefile
  if fld "Dateien" of cd "Auswahl" is empty then
    answer "Please select image files before going to the show."
    go to cd 1
    exit to Metacard
  else if there is not a file imagefile then
    answer "   The listed files are not accessible."&CR&"Check your drives or select new folder."
    go to cd 1
    exit to Metacard
  end if
  put fld "Dateien" of cd "Auswahl" into LexikonDia
  put fld "Ordner" of cd "Auswahl" into Ordner
  set the thumbpos of scrollbar 1 to 2
  put "normal" into fld "sequence"
  hide image 1
end preopenCard
on opencard
  send "menupick normal sequence" to btn "ShowStart"
  if fld "Bildzahl" > 20 then
    show btn "10 images forward"
    show btn "10 images back"
  else
    hide btn "10 images forward"
    hide btn "10 images back"
  end if
end opencard
on closecard
  if the visible of group "Hilfe" is true then
    hide group "Hilfe"
    set the label of btn "Hilfe" to "show help"
  end if
end closecard
on formatieren
  Global Lupe
  put the formattedheight of image 1 into FHoehe
  put the formattedwidth of image 1 into FBreite
  set the numberformat to 0.00
  put FBreite / FHoehe into Proportion
  if Lupe is "on" then
    #=====================================
    if Proportion = 1.33 then
      set the width of image 1 to 840
      set the height of image 1 to 630
    else  if Proportion < 1.33 then
      lock screen
      set the height of image 1 to 630
      put 630 * Proportion into Breite
      set the width of image 1 to Breite
    else if Proportion > 1.33 then
      lock screen
      set the width of image 1 to 840
      put 840 / Proportion into Hoehe
      set the height of image 1 to Hoehe
    end if
    
    #=====================================
    
  else if Lupe is "screen" then
    if Proportion < 1.33 then
      lock screen
      set the height of image 1 to 768
      put 768 * Proportion into Breite
      set the width of image 1 to Breite
    else if Proportion > 1.33 then
      lock screen
      set the width of image 1 to 1024
      put 1024 / Proportion into Hoehe
      set the height of image 1 to Hoehe
    else
      set the rect of image 1 to the rect of this stack
    end if
  end if
  set the loc of image 1 to 512,384
end formatieren
               �  �  T  �  �  �  �  �  �  �    �  �                     j  l  u  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �
  � Ordner 	        � �:            XC:/Dokumente und Einstellungen/Besitzer/Desktop/Bilder2004/KlassentreffenFulda25-27Juni 
  � Dateien  �	p&
on mouseDown
  if the Controlkey is down then
    put word 2 of the clickLine into cl
    #set the textColor of line cl of me to red
    set the textstyle of line cl of me to bold
    put item 2 of the mouseLoc into starty
    put the effective textHeight of me into th
    repeat while the mouse is down
      if item 2 of the mouseLoc - starty > (th/2) then
        lock screen
        put cr & line cl of me after line cl + 1 of me
        delete line cl of me
        add 1 to cl
        set the textstyle of line cl of me to bold
        #set the textColor of line cl of me to red
        add th to starty
        unlock screen
      else if starty - item 2 of the mouseLoc > (th/2) then
        lock screen
        put line cl of me & cr before line cl - 1 of me
        delete line cl + 1 of me
        subtract 1 from cl
        set the textstyle of line cl of me to bold
        #set the textColor of line cl of me to red
        subtract th from starty
        unlock screen
      end if
    end repeat
    set the textColor of line cl of me to empty
    set the textstyle of line cl of me to plain
  end if
end mouseDown

on mouseUp
  Global Ordner, FHoehe, FBreite
  put the value of the clickline into Bildname
  put fld "Ordner" into Ordner
  lock screen
  set the filename of image 1 to Ordner&"/"&Bildname
  if there is no file Ordner&"/"&Bildname then
    answer "There is no such file!"
    exit mouseup
  end if
  set the numberformat to 0.00
  put the formattedheight of image 1 into FHoehe
  put the formattedwidth of image 1 into FBreite
  put FBreite / FHoehe into Proportion
  if Proportion < 1.33 then
    lock screen
    set the height of image 1 to 360
    put 360 * Proportion into Breite
    set the width of image 1 to Breite
    set the loc of image 1 to 688,396
  else if Proportion > 1.33 then
    lock screen
    set the width of image 1 to 480
    put 480 / Proportion into Hoehe
    set the height of image 1 to Hoehe
    set the loc of image 1 to 688,396
  end if
  put "real image size is"&&FBreite&&"X"&&FHoehe into fld "image size"
end mouseUp
        ? �[�           P6250001.JPG  P6250002.JPG  P6250003.JPG  P6250004.JPG  P6250005.JPG  P6250006.JPG  P6260007.JPG  P6260008.JPG  P6260009.JPG  P6260010.JPG  P6260011.JPG  P6260012.JPG  P6260013.JPG  P6260014.JPG  P6260015.JPG  P6260016.JPG  P6260017.JPG  P6260018.JPG  P6260019.JPG  P6260020.JPG  P6260021.JPG  P6260022.JPG  P6260023.JPG  P6260024.JPG  P6260025.JPG  P6260026.JPG  P6260027.JPG  P6260028.JPG  P6260029.JPG  P6260030.JPG  P6260031.JPG  P6260034.JPG  P6260035.JPG  P6260036.JPG  P6260037.JPG  P6260038.JPG  P6260039.JPG  P6260040.JPG  P6260041.JPG  P6260042.JPG  P6260043.JPG  P6260044.JPG  P6260045.JPG  P6260046.JPG  P6260047.JPG  P6260048.JPG  P6260049.JPG  P6260050.JPG  P6260051.JPG  P6260053.JPG  P6260054.JPG  P6260055.JPG  P6260056.JPG  P6260057.JPG  P6260058.JPG  P6260059.JPG  P6260060.JPG  P6260061.JPG  P6260062.JPG  P6260063.JPG  P6260064.JPG  P6260065.JPG  P6260066.JPG  P6260067.JPG  P6260068.JPG  P6260069.JPG  P6260070.JPG  P6260071.JPG  P6260072.JPG  P6260073.JPG  P6260075.JPG  P6260076.JPG  P6260077.JPG  P6260078.JPG  P6260079.JPG  P6260080.JPG  P6260081.JPG  P6260082.JPG  P6260083.JPG  P6260084.JPG  P6260085.JPG  P6260086.JPG  P6260087.JPG  P6260088.JPG  P6260089.JPG  P6260090.JPG  P6260091.JPG  P6260092.JPG  P6260093.JPG  P6260094.JPG  P6260095.JPG  P6260096.JPG  P6260097.JPG  P6260098.JPG  P6260099.JPG  P6260100.JPG  P6260101.JPG  P6260102.JPG  P6260103.JPG  P6260104.JPG  P6260105.JPG  P6260106.JPG  P6260107.JPG  P6260108.JPG  P6260109.JPG  P6260110.JPG  P6260111.JPG  P6260112.JPG  P6260113.JPG  P6260114.JPG  P6260115.JPG  P6260116.JPG  P6260117.JPG  P6260118.JPG  P6260119.JPG  P6260120.JPG  P6260121.JPG  P6270122.JPG  P6270123.JPG  P6270125.JPG  P6270126.JPG  P6270127.JPG  P6270128.JPG  P6270129.JPG   �    	`    @ � � �   � P6250002.JPG  �	t�Global ZoomSchalter
on mouseUp Taste
  cancel item 1 of the pendingmessages
  if fld "stop" is empty then
    put "stop" into fld "stop"
  else
    if ZoomSchalter is "aus" then
      if the Altkey is down then
        send "mouseup" to btn "continue"
      else
        if Taste is 1 then
          send mouseup to btn "Bild vor"
        else if Taste is 3 then
          send "mouseup" to btn "Bild zur�ck"
        end if
      end if
    end if
  end if
end mouseUp
     �  \ EHv   Legende  9Felsenformation am Naturlehrpfad zwischen Grafenau und Au eC:/Dokumente und Einstellungen/Besitzer/Desktop/Bilder2004/KlassentreffenFulda25-27Juni/P6250002.JPG     
  � Legende      �on mouseUp Taste
  if Taste is 1 then
    send mouseup to btn "Bild vor"
  else if Taste is 3 then
    send "mouseup" to btn "Bild zur�ck"
  end if
end mouseUp
   ������     �� &         P6250002.JPG 
  � Bildzahlhintergrund  )`       �� N           
  � Bildanzahl  H     ������      ��           2   � 	continue �E��on mouseUp
  Global Zaehler
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide group "Hilfe"
  set the label of btn "Hilfe" to "show help"
  put empty into fld "stop"
  send "mouseup" to btn "Diashow"
end mouseUp

on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
      '� L  #restarts continuously running show          	       � stop �E�~on mouseUp
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  # hide group "Hilfe"
  # set the label of btn "Hilfe" to "show help"
  put "stop" into fld "stop"
end mouseUp
on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
      7� L  stop          	       � Spacetaste �E�p�on mouseUp
  Global Lexikon, Tempo
  put the thumbposition of scrollbar 1 into Tempo
  put the number of lines of Lexikon into Zahl
  set the lockscreen to true
  if Zahl = 0 then
    put "keine Bilder mehr vorhanden"
    beep 1
    exit to Metacard
  end if
  
  put the number of lines of Lexikon into Zahl
  put Zahl into fld "Bildanzahl"
  put the random of Zahl into Auswahl
  put line Auswahl of Lexikon into Bildzeile
  put item 1 of Bildzeile into Bildname
  #=======================================
  put "jpg" into char -3 to -1 of Bildname
  #=======================================
  put item 2 of Bildzeile into fld "Legende"
  #set the filename of image ID 1067 to "AnLu-Bilder/"&Bildname
  set the filename of image ID 1067 to "Mem-Bilder/"&Bildname
  set the  name of image ID 1067 to Bildname
  
  #set the tooltip of image ID i to Bildlegende
  #set the loc of image ID i to the Ort of image ID i
  delete line Auswahl of Lexikon
end mouseUp
        � x          	       � Start der Diashow �E�0�on mouseUp
  Global LexikonDia, Zaehler
  put 0 into Zaehler
  put empty into fld "History"
  hide fld "keineBildermehr"
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  put fld "Dateien" of cd "Auswahl" into LexikonDia
  #=========================================
  put the number of lines of LexikonDia into Bildzahl
  put Bildzahl into fld "Bildzahl"
  repeat with i = 1 to BildZahl
    put the number of lines of LexikonDia into Zahl
    put the random of Zahl into Auswahl
    put line Auswahl of LexikonDia into line i of History
    delete line Auswahl of LexikonDia
  end repeat
  put History into fld "History"
  #=========================================
  send "Mouseup" to btn "Diashow"
end mouseUp
       �� �  Start der Diashow          	     
  � keineBildermehr      ��         � � �           Keine Bilder mehr vorhanden!  Bitte neu starten oder  mit Klick auf das Bild   !zur�ck- (rechte Maustaste) bzw.   "weiterbl�ttern (linke Maustaste). 
  � History  �!`        �  �         P6250001.JPG  P6250002.JPG  P6250003.JPG  P6250004.JPG  P6250005.JPG  P6250006.JPG  P6260007.JPG  P6260008.JPG  P6260009.JPG  P6260010.JPG  P6260011.JPG  P6260012.JPG  P6260013.JPG  P6260014.JPG  P6260015.JPG  P6260016.JPG  P6260017.JPG  P6260018.JPG  P6260019.JPG  P6260020.JPG  P6260021.JPG  P6260022.JPG  P6260023.JPG  P6260024.JPG  P6260025.JPG  P6260026.JPG  P6260027.JPG  P6260028.JPG  P6260029.JPG  P6260030.JPG  P6260031.JPG  P6260034.JPG  P6260035.JPG  P6260036.JPG  P6260037.JPG  P6260038.JPG  P6260039.JPG  P6260040.JPG  P6260041.JPG  P6260042.JPG  P6260043.JPG  P6260044.JPG  P6260045.JPG  P6260046.JPG  P6260047.JPG  P6260048.JPG  P6260049.JPG  P6260050.JPG  P6260051.JPG  P6260053.JPG  P6260054.JPG  P6260055.JPG  P6260056.JPG  P6260057.JPG  P6260058.JPG  P6260059.JPG  P6260060.JPG  P6260061.JPG  P6260062.JPG  P6260063.JPG  P6260064.JPG  P6260065.JPG  P6260066.JPG  P6260067.JPG  P6260068.JPG  P6260069.JPG  P6260070.JPG  P6260071.JPG  P6260072.JPG  P6260073.JPG  P6260075.JPG  P6260076.JPG  P6260077.JPG  P6260078.JPG  P6260079.JPG  P6260080.JPG  P6260081.JPG  P6260082.JPG  P6260083.JPG  P6260084.JPG  P6260085.JPG  P6260086.JPG  P6260087.JPG  P6260088.JPG  P6260089.JPG  P6260090.JPG  P6260091.JPG  P6260092.JPG  P6260093.JPG  P6260094.JPG  P6260095.JPG  P6260096.JPG  P6260097.JPG  P6260098.JPG  P6260099.JPG  P6260100.JPG  P6260101.JPG  P6260102.JPG  P6260103.JPG  P6260104.JPG  P6260105.JPG  P6260106.JPG  P6260107.JPG  P6260108.JPG  P6260109.JPG  P6260110.JPG  P6260111.JPG  P6260112.JPG  P6260113.JPG  P6260114.JPG  P6260115.JPG  P6260116.JPG  P6260117.JPG  P6260118.JPG  P6260119.JPG  P6260120.JPG  P6260121.JPG  P6270122.JPG  P6270123.JPG  P6270125.JPG  P6270126.JPG  P6270127.JPG  P6270128.JPG  P6270129.JPG       	`    @  � �  �   � Bild zur�ck �E�0�on mouseUp
  Global Lexikon, Tempo, Lupe,Zaehler,Ordner,Proportion
  put the pendingmessages into Befehle
  put "stop" into fld "stop"
  cancel item 1 of Befehle
  #  if the cursor is not 323 then set the cursor to watch
  set the numberformat to 0.
  put fld "Bildanzahl" into Zaehler
  put (Zaehler - 1) into Zaehler
  if Zaehler < 1 then
    lock screen
    put fld "Bildzahl" + 1 into Neuzahl
    put trunc(Neuzahl) into fld "Bildanzahl"
    #put Neuzahl into fld "Bildanzahl"
    send "mouseup" to me
    unlock screen
    exit to Metacard
  end if
  put  line Zaehler of fld "History" into Bildname
  put Bildname into fld "Legende"
  lock screen
  set the filename of image ID 1010 to Ordner&"/"&Bildname
  #set the  name of image ID 1010 to Bildname
  set the loc of Image ID 1010 to the screenloc
  #===================Proportion Breite/H�he berechnen====================
  formatieren
  put Zaehler into fld "Bildanzahl"
  unlock screen
  # set the cursor to hand
end mouseUp
        y� V          	         Diashow �E�p�on mouseUp
  Global  Tempo,Lupe,Zaehler,Bildzahl,Ordner,Proportion
  put the thumbposition of scrollbar 1 into Tempo
  # set the cursor to hand
  set the lockscreen to true
  add 1 to Zaehler
  if Zaehler = fld "Bildzahl" + 1 then
    put 0 into Zaehler
    if fld "sequence" is "normal" then send "mouseup" to btn "Start Normalfolge"
    else if fld "sequence" is "random" then send "mouseup" to btn "Start der Diashow"
    # send "mouseup" to me
    exit to Metacard
  end if
  put Zaehler into fld "Bildanzahl"
  put line Zaehler of fld "History" into Bildzeile
  #=========================================
  put item 1 of Bildzeile into Bildname
  set the filename of image ID 1010 to Ordner&"/"&Bildname
  set the  name of image ID 1010 to Bildname
  #========================================
  put  line Zaehler of fld "History" into Bildname
  put Bildname into fld "Legende"
  #===================Proportion Breite/H�he berechnen====================
  #  if the cursor is not 323 then set the cursor to watch
  formatieren
  unlock screen
  show image 1 
  #========================================
  
  send "mouseup" to me in Tempo seconds
end mouseUp
       �� �          	        card 1 �E��on mouseUp
  
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide group "Hilfe"
  set the label of btn "Hilfe" to "show help"
  visual effect barn door open
  go to cd "Auswahl"
end mouseUp
on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
        �� 9          	     
   Lexikon-unterbrochen  !`      & .L             	Bild vor �E�0�on mouseUp
  Global Lexikon, Tempo, Lupe,Zaehler,Bildzahl,Ordner,Proportion
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  #  if the cursor is not 323 then set the cursor to watch
  put "stop" into fld "stop"
  hide fld "keineBildermehr"
  set the numberformat to 0.
  put fld "Bildanzahl" into Zaehler
  put (Zaehler + 1) into Zaehler
  
  if Zaehler = fld "Bildzahl" + 1 then
    lock screen
    put 0 into fld "Bildanzahl"
    send "mouseup" to me
    unlock screen
    exit to Metacard
  end if
  #=============================
  put  line Zaehler of fld "History" into Bildname
  put Bildname into fld "Legende"
  #==========================
  put  line Zaehler of fld "History" into Bildzeile
  put item 1 of Bildzeile into Bildname
  #=======================================
  #put "jpg" into char -3 to -1 of Bildname
  #=======================================
  lock screen
  #put item 2 of Bildzeile into fld "Legende"
  set the filename of image ID 1010 to Ordner&"/"&Bildname
  set the  name of image ID 1010 to Bildname
  set the loc of Image ID 1010 to 512,384
  #===================Proportion Breite/H�he berechnen====================
  formatieren
  put Zaehler into fld "Bildanzahl"
  unlock screen
  # set the cursor to hand
end mouseUp
        �� V          	     
   	Bildzahl  H     ������     2��           124 
   von  H     ������     ��           of    
showstart ��  �on mousedown
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide group "Hilfe"
  set the label of btn "Hilfe" to "show help"
  set the opaque of me to true
end mousedown
on menupick which
  Global LexikonDia,Ordner
  put empty into fld "stop"
  set the cursor to watch
  switch which
  case "normal sequence"
    put "normal" into fld "sequence"
    put fld "Dateien" of cd "Auswahl" into LexikonDia
    put fld "Ordner" of cd "Auswahl" into Ordner
    send "mouseup" to btn "Start Normalfolge"
    break
  case "random sequence"
    put "random" into fld "sequence"
    put fld "Dateien" of cd "Auswahl" into LexikonDia
    put fld "Ordner" of cd "Auswahl" into Ordner
    send "mouseup" to btn "Start der Diashow"
    break
    
  end switch
  set the opaque of me to false
  set the cursor to hand
end menupick
on mouserelease
  set the opaque of me to false
  set the cursor to hand
end mouserelease
on mouseup
  set the opaque of me to false
  set the cursor to hand
end mouseup
on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
     � �� �      select image sequence     normal sequence
random sequence       	        Hilfe �e��on mouseUp
  
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  if the visible of group "Hilfe" is false then
    hide fld "im-size-info"
    set the label of btn "im-size-info" to "additional information about image sizes"
    show group "Hilfe" with visual effect scroll left
    set the label of me to "hide help"
  else if the visible of group "Hilfe" is true then
    hide group "Hilfe" with visual effect reveal right
    set the label of me to "show help"
  end if
end mouseUp

on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
       d� T  opens help information  
show help          	        Navigation   i       ��� Z !   zur�ck �C�0 �on mouseUp
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide group "Hilfe" of cd "Diashow"
  set the label of btn "Hilfe" of cd "Diashow" to "show help"
  go previous cd
end mouseUp
       �  )               @             	        vor �C�0 �on mouseUp
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide group "Hilfe" of cd "Diashow"
  set the label of btn "Hilfe" of cd "Diashow" to "show help"
  go next cd
end mouseUp
       �  )               A             	        Start Normalfolge �E�0�on mouseUp
  Global LexikonDia, Zaehler
  put 0 into Zaehler
  put empty into fld "History"
  hide fld "keineBildermehr"
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  #=========================================
  put the number of lines of LexikonDia into Bildzahl
  put Bildzahl into fld "Bildzahl"
  put LexikonDia into fld "History"
  #=========================================
  send "Mouseup" to btn "Diashow"
end mouseUp
      =� �  Start der Diashow          	       J beenden �e�p =on mouseUp
  save this stack
  close this stack
end mouseUp
       L� S  close stack          	     
  T   	 1on mouseenter
  show scrollbar 1
end mouseenter
       �U �             e 
sortieren �e�p -on mouseUp
  sort fld "Dateien"
end mouseUp
        d� q  sort images          	       f delete hilited line �E�puon mouseUp
  if the hilitedlines of fld "Dateien" is not empty then
    put the hilitedline of fld "Dateien" into Zeile
    delete line Zeile of fld "Dateien"
  end if
  put the number of lines of fld "Dateien" into Anzahl
  put Anzahl&&"Bilder" into fld "Bilderanzahl"
  set the hilitedlines of fld "Dateien" to Zeile
send "mouseup" to btn "HilitedLineImage"
end mouseUp
        �� v          	     
  g Bilderanzahl           � � �            124 images   j Bildfolge in Sekunden  �Y   �on scrollbardrag x
  global Tempo
  put (x * 0.1) into Tempo
end scrollbardrag
# on mouseenter
# show me
# end mouseenter
# on mouseleave
# hide scrollbar 1
# end mouseleave
      �� �   use slider to set display speed E��
,�� 1  12         k zur Seite "Diaschau" �e�p -on mouseUp
  go to cd "Diashow"
end mouseUp
       +� �  go to card "slideshow"          	       l beenden �e�p�on mouseUp
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide group "Hilfe"
  set the label of btn "Hilfe" to "show help"
  save this stack
  close this stack
end mouseUp
on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
       �� K  close stack          	     
  m  	        K\K @           .- click at image name in field to see preview  /- change order of image names by pressing CTRL  )  and dragging image name with the mouse     n delete hilited file �E�pfon mouseUp
  answer "Wollen sie das ausgew�hlte Bild wirklich als Datei l�schen?" with "Ja" or "Nein"
  if it is "Ja" then
    if the hilitedlines of fld "Dateien" is not empty then
      put the hilitedline of fld "Dateien" into Zeile
      put line Zeile of fld "Dateien" into Datei
      
      put fld Ordner into Loeschdatei
      put "/"&Datei after last char of Loeschdatei
      #put Loeschdatei
      delete file Loeschdatei
      delete line Zeile of fld "Dateien"
    end if
    put the number of lines of fld "Dateien" into Anzahl
    put Anzahl&&"Bilder" into fld "Bilderanzahl"
  end if
end mouseUp
        �� v          	       o 
real size �e�pTon mouseUp
  put the loc of image 1 into Stelle
  put the formattedwidth of image 1 into FBreite
  put the formattedheight of image 1 into FHoehe
  lock screen
  if FBreite < 480 and FHoehe < 360 then
    set the width of image 1 to FBreite
    set the height of image 1 to FHoehe
    set the loc of image 1 to Stelle
  end if
end mouseUp
       �\ � & 9set real size (if smaller than
preview window 480 X 360)          	       c exvoto.gif �	t m
on mouseUp
  set the filename of image 3 to the filename of image 1
  formatieren
show image 3
end mouseUp
       � ��h eC:/Dokumente und Einstellungen/Besitzer/Desktop/Bilder2004/KlassentreffenFulda25-27Juni/P6260008.JPG       q show first image �E�p�on mouseUp
  Global Ordner
  put  line 1 of fld "Dateien" into Bildname
  put fld "Ordner" into Ordner
  lock screen
  set the filename of image 1 to Ordner&"/"&Bildname
  if there is no file Ordner&"/"&Bildname then put "Keine solche Datei vorhanden!"
  set the numberformat to 0.00
  put the formattedheight of image 1 into FHoehe
  put the formattedwidth of image 1 into FBreite
  put FBreite / FHoehe into Proportion
  if Proportion < 1.33 then
    lock screen
    set the height of image 1 to 360
    put 360 * Proportion into Breite
    set the width of image 1 to Breite
    set the loc of image 1 to 688,396
  else if Proportion > 1.33 then
    lock screen
    set the width of image 1 to 480
    put 480 / Proportion into Hoehe
    set the height of image 1 to Hoehe
    set the loc of image 1 to 688,396
  end if
  put "real image size is"&&FBreite&&"X"&&FHoehe into fld "image size"
end mouseUp
       {� �          	     
  r image size 	       $_ �             real image size is 1280 X 960   t +Ordner bestimmen und Bild-Dateien einlesen �e�p�on mouseUp
  Global Ordner
  put empty into fld "Bilderanzahl"
  put empty into fld "Dateien"
  
  answer folder  "Select folder" with filter "*.gif;*.jpg"
  if it is not empty then
    put it into Ordner
    put Ordner into fld "Ordner"
    set the directory to Ordner
    put the files into Dateien
    put the files into fld "Dateien"
    put the number of lines of Dateien into Zahl
    #===========================================
    put "Choose an image type to load." into DataTransfer
    put "jpg,gif,bmp,png,all these types" into line 2 of DataTransfer
    put "Image Type Dialog" into line 3 of DataTransfer
    set the dialogdata to DataTransfer
    modal "datachoice2"
    put dialogdata into Bildformat
wait 1 millisecond
    #===========================================
    if Bildformat is "all these types" then
      repeat with i = Zahl down to 1
        if "jpg" is not in line i of  Dateien  and "gif" is not in line i of  Dateien \
            and "bmp" is not in line i of  Dateien and "png" is not in line i of  Dateien then
          delete line i of Dateien
        end if
      end repeat
      
    else
      repeat with i = Zahl down to 1
        if Bildformat is not in line i of  Dateien  then delete line i of Dateien
      end repeat
    end if
    put the number of lines of Dateien into Anzahl
    if Anzahl <> 1 then
      put Anzahl&&"images" into fld "Bilderanzahl"
    else
      put Anzahl&&"image" into fld "Bilderanzahl"
    end if
    put Dateien into fld "Dateien"
    if fld "Dateien" is not empty then
      set the hilitedline of fld "Dateien" to 1
      send "mouseup" to btn "show first image"
    end if
  else
    put empty into fld "Dateien"
    put "0 images" into fld "Bilderanzahl"
  end if
end mouseUp
       U � �  Open folder for images          	       u image size �   �# on mouseenter

# set the showborder of group ID 1141to true
# set the opaque of group ID 1141 to true

# end mouseenter
# on mouseleave

# set the showborder of group ID 1141 to false
# set the opaque of  group ID 1141 to false

# end mouseleave
        � a N  v 
real size @D�  �on mouseUp
  Global Lupe
  put "off" into Lupe
  lock screen
  
  
  set the width of image ID 1010 to the formattedwidth of image ID 1010
  set the height of image ID 1010 to the formattedheight of image ID 1010
  set the loc of image ID 1010 to 512,384
  
end mouseUp
on mouseenter
  set the showborder of group ID 1141 to true
  set the opaque of group ID 1141 to true
end mouseenter
on mouseleave
  set the showborder of group ID 1141 to false
  set the opaque of  group ID 1141 to false
end mouseleave
        � Q          	     w medium size @D�  7on mouseUp
  Global Lupe
  put "on" into Lupe
  formatieren
end mouseUp

on mouseenter
  set the showborder of group ID 1141 to true
  set the opaque of group ID 1141 to true
end mouseenter
on mouseleave
  set the showborder of group ID 1141 to false
  set the opaque of  group ID 1141 to false
end mouseleave
        � `          	    y screen size @D�  bon mouseUp
  
  Global Lupe
  put "screen" into Lupe
  #===========================================
  set the numberformat to 0.00
  put the formattedheight of image 1 into FHoehe
  put the formattedwidth of image 1 into FBreite
  put FBreite / FHoehe into Proportion
lock screen
  if Proportion is 1.33 then
  set the rect of image ID 1010 to the screenrect
 else   if Proportion < 1.33 then
    set the height of image 1 to 768
    put 768 * Proportion into Breite
    set the width of image 1 to Breite
    set the loc of image 1 to 512,384
  else if Proportion > 1.33 then
    lock screen
    set the width of image 1 to 1024
    put 1024 / Proportion into Hoehe
    set the height of image 1 to Hoehe
    set the loc of image 1 to 512,384
    
    
  #else
    #set the rect of image ID 1010 to the screenrect
  end if
  #============================================
end mouseUp
on mouseenter
  set the showborder of group ID 1141 to true
  set the opaque of group ID 1141 to true
end mouseenter
on mouseleave
  set the showborder of group ID 1141 to false
  set the opaque of  group ID 1141 to false
end mouseleave
        � T          	   
  |   h          � - 1Animation kann von hier wieder gestartet werden.         � � Wilhelm Sanke 4/01  University of Kassel  sanke@hrz.uni-kassel.de   } 	show.png 	P -on mouseUp
  put the mousecolor
end mouseUp
        ���) v  �*�PNG

   IHDR  )   v   ���B   bKGD      �C�   	pHYs       O%��   tIME�9欩�    IDATx��w`�u���+z!@� 	�Mb)J$�eٖl�v���/~q�$/��I^^^��%v�&W�HVdUR�D�")��zv����2}��q��T(�1���AA���;�;��s�P�v킅�����5���> ��9,��������X�caaaaq���������Zci�����ŵ���k��=�K{,,,,,�5��XXXXX\k,��������X�caaaaq���������Zci�����ŵ���k��=�K{,,,,,�5��XXXXX\k,��������X�caaaaq���������Zci�����ŵ���k��=�K{,,,,,�5��XXXXX\k,��������X�caaaaq���������Zci�����ŵ���k��=�K{,,,,,�5��XXXXX\k,��������X�caaaaq�a��K�i�&e��A7(Ӡ(��)����֤(�0t�	��MP�a[XXXX\Ǽ�1]�E�ՠX�ߙ�U��Jl<��#n�¡Pdl\��8M�.4W�1����3�Q�F7)�0�_��XXXXX\�'�1MSWUE�e��Y����/��M�>����>v�:SV�c|���l��u�"��nQ5�nzc��Q!(t�g~���iQ��j��5H�u�0t]�`h�h��(� @����h�0a�U���������ڣk�,�*�ߺv��f�!������M�4����ya	��HR.C�h;�u����t6�N:�/X^�c�a���־�����NK���n�,k��XHQ���fIy�p0�� ɦ�k��55�3#��+H�LnV}Y<]����a���< M
��@�4CScR�a�R/��L ����u�;j�ij�.
7̛W]Wv��Y6TyQx�dZuUp�G^���ܰ���4͇��L"����ݼz���p6�h�.�˜���7wT(c���J���*�FQ�0�@��466P (�XY��<�N��x�ͤ'X��o�F��~=�̙�y��ˊ�0��B�8��12_�ʥ�J�"Ɋ�Q;h�RU�ø��U����i�1�K�2M�,C�#��.���bA���/�fl�3)�*�B�C:��N��=��i�(��-cJJF�
�n@�!	��"���+��ʸgvw��Y���s566=��V�n[0�M7..)cyv�?�=q���cC��Դ�?��ɇ������X���'��;+��M|�Zh.��������Y?~�p���㻺��4M�i�4M�4]0 p
��L N7���d����<u����/lji2�R��h��(�,��!�xA�����2LN��lN���ka�[�yY���04�2K�&tS������� Ap�\�i��L�.O���:��p���_<�(_S{�_}5uU�c���i��6��-���7�����o����&��u��l Ɓ,�44�pڨ�9u��t� z{zZ��%�џ<züyo����z���_z�������={��6A���p��:|���;�Nc��ľ��� �2��P�DDy%��L�1W>��s��eS�� @�5�j��JQ�,�0�aW�� �}�8j�!9�ܻ�M]�!�@���Ȑ&��wEӴ�˗{��K���$4Y	����g�|~���\���:b���4L���4Р)��h�b�����mL�TU��t*�b�������j�X
9
�R0#Q�1G2	GC���0M���s�̹�����2 ��Nm�������ӧ"��<�	~�늢躾����v�;��g��_�'9�(J�4b�>\���qy��5M�57����o@� R����z|����h��>�o��L>��CSmm�����HO_ogwg"�v��+W�������o����w���kM��fe����=��S/=%��a�}c 0s�Q1�`���!@��Bu%yu��m�N�x@Q�L&��fI��0�q4M�,��o�4� Xs栧��%�Rv��PMV�eY��z�,�J����u�P(\�=�2���P]�����^�
�^�Œ\�E�~s �
M�TU�4Mӵ�r?㧂T 0�M�@�FI��S�o6)�8�a�58�d�c�[�4M���<(R�p�X����3P(C�����Ř��t:W�Xq�?����];����|�|���T���n�u]�4���Id� t������>���������'3�d;H�J��(�(�s��`z~�{e��@�1dk$0����k�e��0U�絶�|�n�8L��%<~��M������u߽�?y4�N�<?008����/yǎ����|#��VTV���b��^�gpdؘ?���������	��p���?���|6+�u]�y�a
M�k+��6 D�j��L&Y�
�B�N o��P(��)��y�eYAEQԅ�'�pKƀ����ޮ�/l"��T�ˉ�D�+M�dS������k�	p��׳x��� ��n��Stv.�2�)ĭSeڴi���>��?3@=���=����0Ə�)E$�7�0�"�
�Λ�MQe���Bab����0�pv����s�X�-9k%9�L�T������<��!��G�y��l����чm����=ع����4�����<5	˲���ʑ,��(<��}��E;������66C׉n�1��6�B!�M��c5MSUo @���: @5p$�����N�:������5�y��W�M���jPY�؏~��1��Y�˖.�lv����֑��`ྏ|��;��?��O��N�m۴ٳ���5��n[�.��;�N��y�'�d�1 f�@N�x|��{���o�M����� �ށ����0Q���v����F��a���$2A<�_]޲� r/��%EE�iZ��l6� � ���!�ZH]P�����\!
� ��l�P(��@"���8�sr6����2��t �X� ��j�,"�g[ez�w�8���M�`MdY�z�oǚ=@p�p�����^���@�m�5M#����f��S	 ���-��ہM2�EVdYƤIaY�� ?R�؄�+�9��S=�}'Br����R�yx�� ��.�a��J�4o޼����7۶�/��Q ӧ�
UUUU%9�a,��<���&s��2C��K���� ��s�ڲ����*�*�FF�f6�����o��D�� 9U����p2���V��R��p:���?�`Μ1��t�߼����!&_��/[�l�(�$�k� EM��̤����Jq���|>�=0<4�T�<G4g��p8�NRw��,o����(�*��v��=ϝ:���g
�� @5:v����T�Tr_=��0,˒����_4�E /BWP(���C;��H$�L&�Y��A�l\x�@<V]�׭[g�L�^�N``4�Ё�HFq�c#�s��o�k�є�i�+����k P��_Ù�/�
O���O(�!�H��u����f��z���O��%�̢L���t6�%w�$�ɿŤ���ŀ�O����}�<���^|u��Շ�V��%%�##�h���y���t:�E*::��I�TRR�v�ڋ���w;a^#����yY�5M#��n��ldk�O�k��Q�����(� 0Нشw[g'L���J�Toi�Й�ꖧ��ճo(gG�h��ښŋQ4mlǏ�8z∩����t�]��g���~��բ(�^�;�8��04B��������}%%ޛn���ѣ����@�H�,�:���q��n���6hq`z%D����յ�?~���������H�
 0�ƾ�CN�|YVIq4�I>����^�D ;�k[�R���@/��GG/�.���f��g��0���w��N�K �@X������SAeZ�14����;$v�S�wLgN�bD�N�! 
� p�m|v+����$J�$�kK���;���t�@��޾g{;?P��
����$�%��f#I�_�ǰH�!2���`���_~�߿�������>�q9�~s @( ��ӓ�dȮ�nwѧa�xؤ�u�ҥ%%%�h`�:ɏ.�He2�T*�ϫ�J�4��X��8���2P/��4ME)440 �M��hh��Ȩf�G�Ɋ��g_���o�Ћ��9wvgG�ʛW�����?4�9l��ZZf}��� �mݺu��,v���E01��'��r�̆���'�����~���~�ͮc�Y��'���󺮳,�r�E1C�����0��}汧��
N�<�@0 P���2�D$2�(���e�4M���p8l6[1%x�d4  ����v��#�L�^MV�% �}}=##� E��:g2���z�.]z�O`p3�qp�1cFn�vn�..4�Κ��V�B?ޅ�y�=����9���+�����]�]�t]�ɴ\1\�k�~�ơD�`�	;`蒘L&s�<�������ם���1�0�Qz�Xg{,� , ���CC�h��h����x���*S�,��bhY����x|�O����4��~~p!F*�Hԕ��GFF�|���I��I�I����4k֬��g���(���(ccc�h4��k��q���&�2]���@{]�X6n��(@�8ڕ���u�HIIY���{���7ox�K7��<Q`R6�ۑ���g%�u#��d�0�D<�ͦ�B�p����]��s/^����}�fϞ�(
M�$~;��0&E� ι8�B0 ��?�{N�:�t�? � �%i:�e�I�p:?|�Db�k��7q|3�  t���Ø� �!�Lhڄ�n��$I*�� �* ( ��Ǌ�:+43N�� �  ��)��0� ^��4M�s#�ڮ�)��-Y��2D�k8z��M[iϯrCUP�pݍ���̏��Rh�:�w�3յ�(�A3���4��f��
G�v�Ò{[�Q|ߞ5d�1��  �0���ѻ�/݇% 5�N�£rF&Ïʦi�T�̲Z\�77ث��ng���o�@pI���@>� ���$��q�U�6����Է���o�l+ ���T �8d�J$��2��.��$cHڙ��>��
�3��׾�����/�������(9��\����h�^h�T�vƌ@G�q�]me�@ggW:�������S�TUU5m�4�|@Ӵ�i}}}�t�R�EKZZ���N�Ӓ,�ݞ�6���O}j^k��CGN�� �O������QU�X�bZ�LoP4�3���2�H<,�q��ݻO?y�]��,�����h���[T��a0���
0 � Tc$� �U�D]EQv�]UUb����a
y�J ��"CO_j��s~�×ʧ���xy,���X��F����-ַ\_n8��inn��5��8�����/%�����S����<ԍ_�_�p/�������0j�����c�|_�i���?y�G��B`6�n���v;�� Ȁ:)<q�������� �Y�j"92<,ed"�n������*:�8sJ�5{UE��&E?���] ؀�(��Bj6K׺����n����*L���x������/�����j ?pXD ��b&�64��)�!��<Ūz����}��R������N~���p(�FI���r�\.b߈M�@��r��P����I ��h\�r��Ӷm۶p�|��34<��C��oߞ��Y�f9�|>_\9A4���9�J�Ʊ����o8q���<c����xB��/���>w�\��_w����'�i�pX�$Y���J�ʈ��B�ӃT��T�Ҙ���^�㎵�ӧ�l60d�؀$ �F���x�_I���xa����0MF���'+4y]��2�ť!�f�Ĝ]u���(;#��np9��!̶m�Μ>��&�X��y�0hӤ)�"%���jz�@��R��m#*��c�~�r��yPހ��z�X��pp��|��L���l�d�,�kkᘁ#O���^}�/c{���P���Z�'��N�A��4�&�؏���*Z�݋�B_2�R��y��p�������;��mg��MF1{���Çνan*�6��U5�C�y�'>y��%�W�o�2S��o��8��瓚1M�&Y�FQ1�0�륒�d�<��Qt�H�P���=�ʮ���k´z��(��ÉD�0��.���Ǒ�����ij����T.,� ��s��D\��d*��{�JJ��qa�6~���r�"` �&�i����8#eo���Q�MKoJg�/��*����u�z�zƢ1xp�Dnb2-����T*EV��l62�NӴ��멣)��a�t��\!X��B"1������}��1��@#0n�zQ{�^A1^��u�o����ƢCC#�����XU&�SU���ij��i&���(&��;������9� �����n�e~2���O� ��1M�NQ,yT�^�CMUժ���;����v�8����v �a��V��ޫ"��$]]�lSS�a�u�������/��h��U������1�uNW8��e;��%7]ʤ � ���АC�(}�-�#�����GY~t4G��.a�f���b��P�e8���F(:�qy+�}GzSu.�s�Y�PiU!YkEQ����v�+��<~��>�g�Lt4<<88��?80�3٬$��M��4M�L���|I��%K�/�O�����蝋;\6�S@ B<'&�ثe"��ޘ����r�W�>�B�����˖.]��O�4UU]���1t-~#*�R\��ɠg��a,�Ȅ����tuwG�h�bZ���}i���1�[6o��	�F�٬�nw:�n��XAh���<R"$J Y�.�W�\F�����q`�i�b/��~yY�%��ӆa���d2
�FG���T� �2�/���g�>¥Pn� $� 0P�Gn�@�ϩ�O�8����)�1��'���'��[PU����_�Ct6O�ͭ��J�+PS�`��㳴,�Ġ��u���"���{�k��p���m�zjjtMW�N��{��-m��v�]PN��o��m�4C��.��o0`���t���E*�hA�Q�8�N2GXLr^w��[��h�+�:~�ʄ/���M�rp� /�
�i��[���=M�,�"É��$%�H$��ҩT�P ��ō�y��*�4'k�"@�ql��׫�U���8�7 �� �r9Y���T��fzoke��ùa$V��s��'��_|�W�h�����z׎�7-[���a$C�+��Ե�$AAJ8��h��;B�o��߳�����?w�e����(
�|>_(�	`Y���FV8� N �%��[-Z� ���H�!�p �@1�!��"�0'����Y�E�*�\B*2y�'-y�p)n��0A�?��H�>�7����ys;�b�h�d�����ם�h�vA�,0e58�t��<l�K`�w#�NI9E�&֮��ﾯ�v�*�!J���R��}��!qh=6�XP~����T�M'�Xɔ��k4h P0�|��h_�-�m��3sb!#x��(�d�I��+!��n�܎\ұ��w�E��1Mc��ŀ�Z�b& b��7��
�6��x��,��Nm�R�L1P  )�ì�_�r����Mh� � Ȳ*���<���I�$��E�9�a��<�2(��NQ:��];��g���8><4���tϩ�-��L��)I�.��/�4<0T^;�۽8��]K���v���"+�H����M'��7��������������v����<Ls�@��@T��i�׬
�G�����JJ�)T�@�CQW��G�]�bEI��I����
z��A���n	ާn�4M2���i����Y�b�fp�Q2݆#x��?{l�$����\ 4ŏO�]�������i��(�bh��
�z/>D��ʷ����8tp��׌�0o5�eU���-�L�3�V���Ĺi����Ɨ����	
Qi0K 4��c�P���\�t�$ԆM[    IDAT�4<���j*�H�*p�������d�(�H�/6�5'�����4K���>̫wq,K���^��� �d�P�j��\��ј���'N�OM6.q��]����I����$��,I�(���*)���,�q,#pC����<EQ�$e2 EM�  +�%E�����N�3m}�U�9��ITbT�P�Tȳ�������l#P�gL���(�����U^���e�m�Z�r 5پk�A��{}��,m��wT���EÐヾ\fJ�Ca$ʪ���s�u�44֧�)Y��Nw�X��E��v��a�|%��|^2]FJ<�����|^��D������H�dr;eY&�Oq��4�i.�,���{�o\4�eV �Yj����֋~��b���݊$��l,�ˎ��R	]�m6���8�>��d�2@���(�T��B�T�Ȳ�0̌3***6�N��ӔC�i���4M]g�4.�>�6�g �߾:�}�z�<PF�Ęt���,W��Ȑ"�XQQA� ��.�b.��i���$$��ϱͳGS�5�	}y����
���ol�z�?9�pI�4���U*�p���������y(j��}i$YAh��AW�lT5�&�łaP��qL�D)�� � �Ձ��˵W'8/1���h���z.�K$�p<��zi�fe������)�՘�i��Q8R��iZ 0M4��Hki��8��(���:D��e*Ph��i�r��hW9�`�6z����<�6�bh�����I����(
,�9���i(�!+�z�Vl�p 8@G�L
Ȧ�r�K���3�W;� He@9.<��$�Uˏ�(�G�$�0+*��u���L�*�c�>S���T$���4��`�d9���(++��g>S(Ȝ��1�ಛ^���i�}]��칳��̪[�q�33fxۺ�ohi�5���"O��~�5��o�a��1���oJn�(J555��%>�4`08�tke�*0z�ct���M�<{�TR�קz���n��^!�iY�W?a6U{��+8��-M�<~���ꥍ/-^����� ��ܳc�'�8�' $S)%W`
4GZ;���`0��z�v;�q<ì���W<�1�i���A���,˒$��;t}M9 X������/}~��xLQ�0r'�OVNO\��&.ƃ>X�k�`.`Ѐ�|�'7��4�Z5#(�*�"��n��M�$�m00����u��	�P�rp�1�_q�D��a]3AS] ���^l�ڞώ�8~`� �ݠ��|�%*^���ꆆ���w}��5��]cY�[�t��4u�ם��  v� ؀6d�zY��t�m!���6����M��ѠI�H��fsS��c��aM#}?��&���{��P8��n�7�s|&�!���Pjb�tX|͋�۟;��M�� |�'---}��׬Ys�CzKϙ[�u�F�MSyY��kkkk/X�b�,`b��F��~�VJ�4�
/�5������\��%1���2����Jҳ�%{��������7�xc�-Y�,51�?y�w�by��E���(�]w�u�X���>��c���V�y}�CҞ)�-w����ճg'bc��W5y/0� n
ƅɢ��������,[����y�f�,�I �wx����{�px��[nPe�8C� ���`08�D\�f��n\�\p�tnN�X<������~�M�I鳚��V�No(�tE�-��j;�������5��iE�r� �04M�$���lѢ����� �.z��������ܷ㩒�2��7�F�bz{��-�ᣟw�����7��d.�E]M��)un�l������̆	����y���熗_~�c�r�Xlt���]��V.׆���	�=kw��q�#4M�|^����x�~?��aX��rڿ��g)���yddddd$����l6[̪O�@���ܗ���kd�	tP�O"�tt��}Ǐ}�O�:uR��I��ë�8�)7��ԺF�N`�����(4�9��(�=Ssϒ��S�I��'b�u��Suu����/���
h��i�6��=�d����R����3SO�x�X���|GW!߬~������3=q��%AI1ËK���I�$����_��������2��۳dA�s/�z����q0��u5��� &f��`�BL&��K|N=p�#�Q���_��u���o��$��p8���9��;��|9M���a�4-�<�4i�}HLS&�+�"I�2���,�N��	� �2_5�i��}���U��<>>��OL�Q&H!@���&��������UfB�%�|o�(�ӦM�t�L�Eꁽ���54�7�_�xb�!yN�h�4/w���| ����+ᮓm���>�RJO���"c��jii)&�rm�0�w*}��������$.�]׉1���C����������iS�ɑ�\m����_���_=ײ�6����@�d�⥚�3�>X?��-�i��N`F���7m���1������.�N��c�a沫�E`�O|������o��S��L�*/�4��W�����p8\UUմx��w�}�=�1� ��V�F"ۺ��a��:Λo�g��M��P	D�Q@ �qm�;�d���?�M��.\x����m�6�3�����ζ�M�|u��'�� J����o��%0(J��dbVM���/\�r:���g]�5�`@ʋn�{|<��u�;yr�$(+K���6�-Pz��^���x�k���n'*���7����L&�٬(��s>�i�^����!E��.���5��z`�M���XUUE*?pp_Muu7S�%����j�/E8��A6���c�m|�)`�W�\V^��v27X,� Ӊd>@Ņ^�t =2��A.)�X*4�r��?po�c�?[YYY�d��G�l���V�o�
����2�]<Db�V�Xqy�s9f�tc(J/WG��ݵ���I�:hN$�'W~� 00�Y5�Q=�~鶞Δ�	��?m�Eυo:����~�A]�`0�v�M�<�;{�7�%9�H����x���]�t]7L��]7h� �,��K��,ƀ2��@ �����լ���=�c��[W}���������˜���S�T_L	e��s�\럶�!��;�I��{߫�� 	`h����f���	��}|�Ӕ�_�#�����/^|�M1��{kw*����/��XF����َ��4N.��f�㣻��{��d�aYUQp�{h4M��#����w�����L#����ϝ-z��[#i���[1�9�헦�A��z{:��P�m��	KgN�rƔ���_¥���1р=���%��<%%%���2@;��ٜ��C��H$4�i�m����/�����pŊ%ӦՏ��gϙ=6�\:ٱ	 tU%��,���)�4>�e����\�:�og XH�k��@8��+��&�0Bt|<S�wuu/Z��e�����շ�>{����`$�X�x�w�sjp��k�-p�b�\�w~/�T.����U��R~��y4M�9}*���~�'�//-�h�0#���Z��ܸ�$P
 :ܞH|��iD]n��qpT%M�YV�i��t�&��z�^Y���A,N�X�8&H��^�:�&�� a ����m��gO���(��5!�L���(<�%��"@=�pB��}o;q#� p-�r��L�K�iZ�����
�쏂70�	u����D	�,@9�瞓'O?�F��dDR�a��޿r�+� ������r�n�xFd��]��,��,F�Zl rB?`��� @�6n��A�N�n�,sI�"�JU1EQ,��:9�XBCcym�ɣ�,��,��55Bp�������E_×0���{�{��ݬ�u9\�隞3s��6
�2eІ���0��D�cR&ʧ\�$�����5gf������C���[s�X�����\��Җ����B�3?��Xd�����U(PW��OS��I��B�@H<&��-�Ew--)�'�ɷ�>�wO���n��c2�����T:��^��p���C��FF3:���;S���ž����r<����ۇ����-��l�Aũe]d�BӴ�����}t��Q
ܽ|e|4���F�h(߻͚Bq�� �Ñ�������8��/\č�R� x��P�0���Vqs�w}@
'
�����G�}���V�t�XO˲,@OQ�a�t��w\����7���[�l)H��XR\�zYA*P���v�-���Y~S^���7����L�PH�R�a�s��U���~��ٓs��dp�ѡoWN�kώ�ٽ{��+~�����=�p�bU)ri�g�{��斦T2e���}�������S6_�ںo|c���&Mx���]��ԜT�l-/����no�����X�z���?t���U��;��>߂:����X�P���Ô��a���~�ӟ�4��o`��n�ges�Z�N��0�Q,�s�ݒ$߭��c-�k��KŮ��n� Ӏ��<�-��FG9��K��Y3Ouu� ��G��J���̞�z��0zΜ[�hngW{׶�  �WdY%2XT�b_m��"���P���`�g�x6�]�nzW�y�L��w�P^^�v���Wz���`zK�W㟟�������s�KQ����"ؤ$�J�c#��E6UNd��M������`�]�0gP��7�zz���mon�<����v�_�@7����(�eّ]�u�k�M �~<W��jo�{��E��D���B�W8�����`�@W��s--h�����]Y1�`K�Q\(N�W����F��M�&g� ���!l��N���8o����ڵ����2c*]��z&�I�;����{�K\P'vJ�h���0I�&�ˑ�����H������A�Uf�坼������>9�_>�t:iU�z�A�=ջh����xsh������	��|i�W��b��X��l 8y$;:����@�ǹ�߫�����tqeY�@�ҝ���.���oZ�x��=�|��޾B&M"6bI!"���<O~!�d@����i�Jx�O���mW��[����Bq��hg��^�
�.��r�G��@�<�m������b���fs��b -��?��y�#��.ה-onihh
}s��446<����z�j��>gN�ikn�������]## �*�x�4Mr;HC)���q���S����t �qv�[�͝�|��gE1���A:����x��c�{o9gc:�O>��ݕH%KK;v�u�G����Z����w�������|�ɒ����w�e/�{4�
h�_}���7l���;����я~����e֬򲲮����x!���:wfˬd<YUU%����%%o���P��|.2�?s��p*c�5��]�*fyeY9L^�t*���z�� }Ҋ~b�!ձd����1��l�i@ ���e�aS���at"� ��w2�!#��@pp���Pht��/"�x �3��p�9�͑"�� ik-��w�q��{B8�0�.zx0lh��5�_�
����Rt�HN\8�11Л?zx��[�d���kn9�Ө��8r��`muA�R��$S����e��ɟG��ۺ{�.]i�� !���>�dŲ����ϝBE��_��n}��f��j��6~�����t� 1���X.jD�/�����S��,�u��W��`������u�H %@t(�I�!..M.�uc끭�g��Q<���JK"B��%R�HZcL�����?Ch�n��6�cW2��r��n��՗Sٽ@{@�0�ޔ�_����z��H�Ol��+����͜F�
I��[)I������_~�����!�E���~��[����?Gd�s`��}M@΍�7�S��{�?��Gi�A��:2��Ë�����i, :��G��1��0x�'�L��������t:)��e�����c���r�9�����ZQx��Ҡ����;2��X��ib��ސ��-�;���O�
c&���Y�=݆�`Y�4�r�\ī#���P�y�^�� ��vn�{ǝ�UU��Kor�\H��*8��&�1��{�	��G7l�X�P�q�p�1,"�L��ÙL�T�3WU]��Y dGN���ݰ`A6����?}����<|���q����o߹����{�*��=��%{v ��]v�䍦iEQ+*�s�L� P��&�9�^�+�P��}�;�1%���'~رs��N(����O����9sn��u������#��̙n���@$�/|�6l /`#���w�j�iu=S(L�6�2ͽ;w�u��ϝ�qܡ��g̚�y���R���G�&�I}��Db���m�p�-��e1����T糩�[^s���GCfYI�_?}j��S�p^/Kӂ ����<-&�nj�q�r�H�qF1��X�؁��ޞΥK�dsY�߽��W.=���R�&Wt��@�ī���&Ƙ��h,�T�Rw"U;2�f�E�!n&i{���zѾ�dϝ<R^Q.�\WGώ�[�\a�����އ>��� ��,�3�ۃLJ���+�0��rղ����fi�y����M��5�$�^�j�����b�kG����%��*�q�ڒ�vA�f�������_~n�vEy�M7�$�04d�$q��Yc��;�|端���/�uEQH�����c(6Ύ�X��+���6�泊��[=����N���8��@
 ���OX�=P�$�bVΈ��VF_���t�1�<�^���d�]� ��F�ф��!���ZJ���%w�e�
C�����Fz�ijBl;iP��(6��`��9����cɥtF�$��c�\7�eɤ�e�xt`���������Z8�S������^_2{~���Y��*��F�BOU��vBSe���Cۿ�o���g
�����,˲��'[��C!x�Hx���S�^s ��h�P8�e�, ���$]��r3��3()>���\�5��qp������R 	2 Y������s����O�ixJ+P��8�t>�&_Qa���~I��;Q��0�Msׯ8w�`�#�)�X �
�a��Z��+��rZ��i�=;nY{��3G�Ӆ�h��遁EQHk�sv;�,Ѐ|�C�P$B�tN�̘1����d)��l˜Y��������m��M�q��"oJ6�M&��:��n�*  %%e+W�2��@xϮ��q�����b_��{��D{��׋�}�c]]�ӧ������IQ�ʕKY��;�y�	@Ӵ����L1` p%��@{t�2(cَ���竫�5M�B�$ݼr�,Ib6;w�\��u`��d6[ZR22<������	�`ٲe=�������ٷ��un��V���P�s/�X�D`���/�9S�'�|>�ә�eUש)�.��-ʏ�nw8$*s����H(ZUUu�ر��`_����]=��I焷W�L-g0�(�� ��Z>��\_US��G���� ���e�բ(��|B���4M_���z����}ْE�@`<�ڲ��d&Q�����H��^��<{`8���W��!k�]�I�d���`Yy���@OG������G�\�K�I@Q�������@6��s���3�t�J�%..�L�K�f� ��g<��˳[Z���K2����-�qft<R�+��ƙ�k��v-]���M��0���5'�P�8Zx�{�ܩ��{{��<n���VdST4ZxG�?<�J��*k�>�d`6�>���6�4�
�?k�&�U��U�]�sO���wvgv6��.�Z�,�����u�����u�`�	��]�6is�vr�f:�T��Qӽ3�F�󇞇e��ΩS����ߜܽ��O����0&�$����)�#}���"`��t:���d2�N$y-����_��c~<2�`�͍͛6����[05�(�����s�ln��;��P
Y����t�V]�Oj�{ҽ2�̾}�6�E�֯�ԫ��}^����" ��C��b�����ڨ3Vנ��Z*z�a�˹23뽸<7�}�T��}4�-�    IDAT��q�@,t^7%< 3	 u��KKB��@!0��KS2��$E+�9�Wv��t8�*-*}�a��I`k��%z���ѻ��m��K���0#��֌ąW.Ǡ�)�s��]��b�)��H��A(
��B�H?L�W����� ]Yv'��-m-�}g vS%J��5m(��C<� ��UV����(�hYQ�9�W  5@d����yə�����
���+��%c�M�}�M-;�.�޽{������L����cN�Q.,.�x�P6tvz��h4*ᡤ�Qz)_���l.����]�ɉ�V'��/���<�v���s���������c�>�T���ɹs�KJ�|>1�|��������RG�E?�����<��7.\P(�h������JN��x���ӻv��Y�ş��f����6�׳<��M	���dd2����dK��:�ʳ��J�Z7�6�7��d6M%S�K-�[/��=Q]]-�XQ�p���_[ �S��Kg<�>Y����Y��]��榆�����Ʌ%�sS������@= �С���,�-l���71��y��d,
��iI/G&���z�a����+�g��]Z�ia���W._
E�'�S`��̰���H5<�ϥ����L2�go��;cU��
�����KKkK���������R)ت6*���{IA��O��y��ʭ?����1��H��"z�V*w���9oi��Vٺ� �O��8z����+1�A-f!�*O}�#�]3��j����p�f���j3�<$I�L��B9Q�y��Mi�LF�";�9�y���'�+��g�WV�UVT�[�8� @���T4i���@,
iǢ���Pn�gB�n�:];Z掠j��)���n�����u�G@����"��N<z��ߺ=5����#@%d4�H8�]&���z踪��z�QE�a2�K��?N��W7Aô2�)�I�$�tw�y �0��L���ÿ�pa���'��@F����L�"�u�N��1C���Py� �-�:{�'��~��}K�^AK��F����%����#���*9��W�U��J��
���|�㊒R�8��j� ��E��UE6hU�[ײ�@��.z�$��ì�N�e%�Z�lD�������v�
��1������K�z0�j��2�� g
`h �B�����D4���W�`M ��D��}�����n��B���!�Rư٫׮�(@��R���EUJ�(�R��ZT�f����L�-?~\g�k��������1==}�������wi�*���?v�B�J�5��(K$�DB
�e2�0�x�ȑ#�U0� ���|2����M����l6)f&'�I �$T*?���]]]E�͛�-KG�V��[,�7�X���/��������tnH����6��SSWT�88h.-���R(>������n���O����͛7�޽{ey�����x������qtt���qqnN�y�$�:<��?��f�]�PQ^������<�vݽZ�|kx�����[�����Lk�N���L&˦��b=� �}��|��EUM�F��o�hY��2�-��A�A���/g#�R4���i�A�2 �K��y.�H���y��i	.²l2�����pY�K��Uq��p4�y�ݽ�F@�QDb��2�������={Y&�p/��@��oo��B�I��tp����H$ �" &
�u���mX�H��Z��įG�V��<d�Ţ���9�-��)-UZd������-��|��7��sg�N�<�I%1t�#�t9�w�G�]$�D$��'l�?Қe�vs�u1�p���-�+!�Oݲ��D=��5t��"P�� ����I�G���dMӥ-��Vz��˛�r$H)<��wc2�^���lKyoxaf����u盕(TX���"�OpXrbKЬvz�m�731��?]b��t�m�E�J13�k*ճ�R*]H%�l6���痝c������%�5��G�>M]���>K!�e_�꾫k�#T��E8���F`թ��Mt���������%�y��ǟd3� H2���;�`��  �=�]Y��
��.G&�(A�t2��f��3�rx�a)44ڹ[+�������$"��ZF�De�J���Z�#z�`�Ժ��g�V��p$[E�J���}�[��Q�N��(��x��(~�S��W�S��J���\�]C �PX ���kjv��1=3��*6��݃� `��(ܗ�Eqv~�����y#�܂�{�=]�����b����k�?�����񱱉�����';���GX���R)��۾�O����ӿ���f��a>ߺ+h����v��H�����T*��ޫ��Ӊ��nQ�����q�d7oneff�Q^�V��B�����f�N����@���C��h:}��_�<}���%�J�\.�������~���ئ���N�<�,MQ����O$<n���?��W�V3��qL&��^زi��l�{W`99A8vvt�mo/��x���j��j�JrQ%���w�WOEQFQY`(�����JKK��z��@i�=�[ ���|p�WN�;� /�Vk<qx��n?r�p�͆T *+�щ��̓t%�a���qj"�P�K����n�������u�%���5u O�L�����bl������<a���Ҳb�O�~Ǩ���V���t:	��i��z�r�3A��\e�v�V��a����D��L2�ͤ�TR�p�}��]ǎ���mO{�G$����}ꩇ�mk���͖�| ����`0��b�Db�]�H���Ri6��Љi�.�76<|��w����wt������w��罹�c� �gC;���@+�p BlΓ�>W���������TĝHx��zbҫЫi-�JC��3돶Q�%n�^(�{��U�hVȚ��,���^v[�r�^��7g9��Qf�l@U����������S"3	�@��	)��F#���:��݂l�vؿ�h���Ц��tcM��-�S����mJ�Z�]K:{	b�T
"���k0F|�D�H��1 
���x:���Y�5U`��y��0h�7��)�E� =���2Y��d2�R��$?�A�7HqydX~x���������5� � �q�Y.��Hݻ�d�f����a{��ϝvr�gQYsey&�:���ks�egh��`;Gq�ڠi�Բ���fX�K@}%�<���>�E�b�-p8hj�����g�ޠ��� �d
 �,��(�y���N���/���8E!����?�ޠ�h4�m�o޺5�8�:�m��gO�_7���,�H=湾C���G F�����^x�/��R�8���V֔�L&SGGG2��F�R�e6�M&�A��m���yl߾���� ���oWVV �;�c4��m['C|�֭H$
��ݜy$������L��l��/~��'/���S(�.WaQ�Q��)���'	�Z}�ر��	�BQ`6�	���v8j�����+��.^����'&R���ܜ�`�̧?���~���E���.]���w�}���+'ND�Iȣ-%0>ry���J89k�89h��M��Ξ~��'=�e0  �P�@y� c���j{�:`t1|�ڵ�b��V�nn�����] �F)���P�d2p�+�{aRYYb6[#����7�]��*,�"P\ݬ��J������8��-�7<x��s���ڢ��R�V�g׎kW�uvv�ھ{at:�BE�h�X����>C8��9�ş�䭷~(����:v��h2��3��P)t�.������la6#�[�s޻���2�Z�/��0\߉��5 ��S��v�?x���VП�����o�5�͍S2R~����j��W-��ȗ��s�N��Ա5�$x�c�]����m��
�5	F�z� ]��P���쫎���?"̊�\���O�
-�畇�S2*�ƍXSQ_�AkSVNz~y��3@c6ƍ�j]�ͦ!�2�@�6C(k睢�J8�'p��Aq�?27�7�����]L,'U���ry,S��r����c��_�=>�}kv��,�!c����-s,+ Ԣ����3���6j�\@4���O�s���/+����5##ly�������V�Ԋ�"�K�����za~r��j��N�r��G"��۷�{B&�Kg�
���W�*��}]c�o�  ����3]l��ϙL&�n�r�������s@�.��&.˷vJ�\�-ȳ�~��fQ�(J�p�j��|����`E!��d�Z�!��o�,��]b��pؿw��ťE�˹uk��L��&�	 �D���W��H�b4]^����v��R��������H4:>>>?7��C�����əቩ���ۋ)��~�R%�X�1=
��&�y�9GX����������@`eaA��Z7����H$���"����bi��2�in���Һy��h�g����ޛ7{�^jqqQ"ᔼ����R&�=I������=�|X��yWV099XS�xh�����駇��3���7�jk�kjf���EEn��СCo��ֱ�GgfڶlI��ۏ���]���L��J���������J��v�����w
���g��K2L>C"Y��v$���g�� �d`�m�үlf�FYd������X �� �T��y�NC�Tii�������*$ !r���VQ:���.F�s����ѱ�ə���!T�(h����3�V�˖��Rcb��TiԧO�y����2{<���7<x��.[����;:�:o,����]�Jʛ�L&S__�aR7�W�[[��Ƿ��%��D"�	�x<�s|�~K��R�,�{��x�PW[f��;�=~pfrHA+�net6��K�<d2Y��#�f��2o�K�����6����w�e�1�@U���T�[/�8�?�hvP�-�mlt9��>��g��vl'���7�V|�������p4ᘙ�iت���7����z��d�U�4rO� 3��h8`[{����_�I��l�O��1�v5��#"K�|:+�������++��]��c�?pn�D��qa��XK��\%�
�T^��0�Cm������S!@���5�3�l���$I5%7����R=��o��Ge)*K����A�b� �&*tTƵ�X)Q�:�r9'�B���H�F�f떆��B��UD��dK"���q�0�Hd�����"S��g\��+u��Ȫ��l>=u���>dKA�ǲl:���а�I�USI]J�`l�ܸ��_S�ɷ�H�yU��ܡE��� : �����A�̤H@~�I��`6���H��o�^s@�j��(��R�-�[o �8�!#��H�$����ڬ
�"��)U�g��9
�"�{߮4�z������g�����b�ٴ��˓��?3���.Y���N&���,::��?���l[uu�d����o��i� �DBy��Ҏ|CC�de2���d[���(�+�����{����5S�2Jے�)G�_�l�(��l��\�p᳟�������v�>M���z#����\Owwey���;5:�J����"�C�>��q��x�f���TUW�"���v�U�d2YY^^`�ܸqC[A�Y����w�kg���ve2�<�(EQ���HrG�] nrx�w��*��ڵ����Zٹ�w�1"�a���"P ���-2d�[����[�Q�SI �ۡZ��� ��.d�}�w��x����/�;�ۗ�ƶM��q�*� 	���G
�y�!��8;7���{�ɭ]�������` ��xp*�w��KS�.��0{�3����{�j%,�F���������2>wk�����J�����w��^!�ʂTh��ںʺ�����Ef�e,�K�j�Z�d�;~���~$�`l��c�tYW��[״YQ�-!�G�E�Je�gν[�U�7�:Mbz�r`(�[6�6�twW���0��7�o6�U�*��/ �V\޻7_~}˱#*R&��,~�$�(*��E<��B��g#�.Q�E-8N !�|�$�{�1��珬�ϻ<x�xѯN��T�l����<w2 �a�\��_�X�[��8l�P[ь�qQ�L)dl(�ו�^�L&��To�O�о=< ��;Pк%���@WWgS��p,�D�o"YVJS+�J)�Ě���(�n�&01�R����7Qg̩EIT�Lf]�����.��s��~.Ad6C��ʪruf���~,G|��,��&���ܵ���+~贘*	��JD�A.�&��$A�|Ѓ	��I�U,� �C��s��+�y���`g)\0����lc*�wm�tD_l�V�ٺ�{f&��p�h4�s-@G"�E��Z�6?A@8�g�ٔ(r�$���O4o6��nj��cᴭ������g�}��7�QTW!�H]}b��)���v�d02�ر�(��F�.lhؤVk��=�il�����&�����+R{M�Z-�����O4\���t:�~��ӧOuu�D�ᕕ@&��ϯ[��QQQ�F�+H�E�C?�>�u%"�JeX�'O8p`�_E��ySS==/}�{��޷O��p���ӧ�{{�&&�zz셅�33e��ccZ���f;|�`�͖I�jjj���>_SC���=��_UWVVUT�~�4MQH$����ǓN�c���v�+�	bdb�m���$$��m{8z闿 !~ዟol�G* �$�L:�� �3𹸈����Z�,)���ꃇA)��9D#��zw!���0���@wםw�}���kY&�N�e[`.55")ϗFV�?2��V�^�h6�B���MG�l��Q�Q��G��۷�`Ъ� "���NQL��<x�O�REEEk�ad2,wu�)**hn�'a����r�,��7��G�h4��b�����M��WE[O�1�5^���X\L��P�P�c�@4��$�h4�F%�4�ߺ�/B*h����X��۾x\�t{\����oØ����&���;���\YY�|�t2Kj�=�Q\��XYW���XP�w��g��w`�>u��|�H$�ŤJ��� 8�e��E%��R��d��$Q�$iP�o��@���xz������xf�`\QT�����I��x|#@\24�Z����W�d	���G�,�t�"����4|� W���lJg1�|Ft���Hg�d2�ǣ�h<糙�(���b�*-�Mx�цM-孍!@.�b< �HĆ�ys����Ͽqfp��/����k7��������}�c33<�\KC��X�l6�HH=��Gltdb�'��IԨ�� vϲȱG�9��|)._��0�H� ����A����#�>��C+0�0 E�?�'C>���d�? >T�=T]�v�h��Πڿ �BYP�}�|�:�Mr,�s ���g�Hy���{ӳ3�OKk���ksnbN"!�H�<d�4���ѣƁE \y�3�����Ν��Nߙ3�/h�Z%ze��D� )X�֢����B�ܬV�v��}�س���F��ĉ'�m�QXXP\\�qX�h�DX�M$�XL*���kW��t���F:�Ig2��]WW�������%3�P,NL�JJ��l��j��x�6����󙧟vy<ø�����ׯ���T*���Y^^���CQT��A�k�F��b�%���������KD�h�$sx�A�$�V3�|����<��[�N����x#�  � >H��� HI��@�kɨ�8���ĕ��� �"��W��Y����ݸ՗�%�<�Fx�
�er��u^��Ws�|�#Β��*����ٹ����R�F�D  y��W�"�p2�]t`<� K��5��<�~�TܧV�&�F��=��Ǿ���k�#�ޙɉ�L�>ծ�`((((,,��|��
����f�G�������M.�B��2��p�5�D"�V�u:]2��|�߅hG��H-,�X˰L2#�X�6�zSI2�)�'�)LoSׇRF�9�pK�P�b1&�3����&��M���i�Zm�W�fh@9���܂Y��$?�ɝ�'����.����9"k4�Xv-�_�P�:���s��@�����qX۠�T@D���|��so�Ǣ    IDATx�Z��$9���ddB`DNA��2�Vk2��Z-��,�L&�r���='\�#ǖ_:-� U�e��	\"��h4�x\��fyJ��*���Ȁ��﷘5��XX�a	B%!𼘌D��կ�}F�Ͽ��o������S|Y���R�����z�K��7�W�#�S�J�����F��4��U�"(5��$)��}O(ߴ'�)��n�"@��e��D��ZOF
�e3sHZ Á!�|��w�m�ux` � ?̨Ԋ�������� ��Oh�Q���EQ���lvQ��d�J�ŅEA�:�vvtl�����V��fW3:y�6鿹xE�N��fP��v�v,�ZXX�iyMMM]������=&�)��Hg��&c4%9�V+��RI�L�
E|v�����ʊ�ܹ^�O&��ǧ�䚷�K����t*�R�T��j���*e(��>��G�����;ߙ_\e���O��߽u@�G�7o.z<4I��p��t��֖������ڪ�*��ۺiSWwwMuu,����d2�L����j8����-9��n�޼ys6���<1���˻�v- D����iij���v�����%?V� � 8r~������D<�� �#�σ ���&�R�\{M/p�쵠��PW)��p��� S"�A��H�=��V�TȽ�� �"6ֈ@Dh��ڶu���GE����X��p��<���<�\���"��clt����O����C���߯��?|x�o�䞾3�r-m?�����Z�F�r��YʈòT&�J����`�d2j�Z��u���x&��|��Ap%R&>ų��5������4����Y��CGm[^oS���Xq��)t岦�A34d(D���v��c��c�|����,��^�����Sr�YqM�K�V�i��� ���1k1���eu��|�i�ђD���S^�!B`�cÀ]�UZ"�rJ�3�f��b���$�U�\��.,*�{���t���9�΁�i�Z�i��L:�ThfRTñ�2�D�ܮͭ=��}�16)�V	�.l0Num�L�CkQE@nj�Z�&��ƃ\�O	WD
r�aX*�I�ڵk�5��z���l]�
(�)c�Y��J����*=���3(`����w�4��
u:�� �P���T��>"���6�
��
�zzvvs�f�g��X���?�BQ�
hV*����li'��tVW�k�쥌n>u)���ԒR����E��0500�k���PTT��y���'��2�2��9N^.��$�
�Vk���f�Y��P�<�e�G�j�l�}����u����Ν۵��w����W����Ձ��k�R) y	ǟ�f�7_Cy�����"�XH���<66���K���� ���(( Inݱ���2��Ԑq��E�N���ZRT�u���nEqqqqϞ=<�_�v�j29������W^���J�R�e'�\�s�Al��%5iPUYYh��=��p������r����� �V)�g��X�9�>te�<��Z;�~��֔�@������G�~��kA44�yNX��.��%�^��"�0���JN�s�.��U^�z�����Ed���T���6�m`Ͳ�0�{��x"�v/�l�۷LN��:eЗ�����*��F�n_��f��|�c?������^ו��j��%�qi��zI���w������Z��+�x<�L���t:�*Ă��x�7L�)5��CG
Z���`}]t�����$,��2��{�	�`�"�J[S)6�,'5�H��O@s��.�ۡ�x�X�k �`��N���z=Az�~���(i�rw׍dXpB>bN�e���e Y0���3�@!�
D*&�)�6��rZ,��*�b$��\�fX�OO��D�$�2\
���eS���2���w0>�G��=�	"��Q|zk�Л},ˮ˹�^}�;�[��b�N��b�G�N�\�sU2��3ٕi�� �!g�	��kݻx��PGJ��F�Ѳ�t,���Gғ][��� k`%p�.g�c��[�e4��M���z\AM��^�����PN�!@p@b���/�|�b����(�_���j?M�(*$%s�nؾ}� (A���^d/3I��Zm0$u+)�YU��P�V뇆�;wV����G�Rԕ�n,.B�G4�k��F
�R��ۍF��^d2Yu�"���(U$"���++�۷{������+WA��u���[7;!'�+A�%��-��=��AJ�0�J���ʾ�x<�[�ny<�����.���@�{�s��]X��׾6�����o'��¢"��zox����j����mji�p�dx�177g�Z�4��sD)��dˁ��a�՚M�逸t:�;����ߴ4�)@	lf�B�j6)�f�g>��kW�� ���U�T_�'�x��.$b��PEY�LN"�2��U�YaSk��<�^o�Z�F#I��@�^��.��D KM�����Oд��y�쫝R]q=�n_
�HǃA��Ur�����?��h<�u�F���������h���n��3�_���`����d��<V͏�$��TRn�s,G6��y�e�,�RCY��J�VG"����62�KR�Mu��xAlE��X^�����t���g�?�|��ʲWo�i����YtD��JV�YFJ#�4��ie䔿�.#� 'H�`S9�d%�����o�<ّ���@?	P�68|�$� �}06��vQm���" �d(�B�d�oM�V��zIu�i�a��{c�*{Q:�f<XZ���I^j��^�2�2-�<�4������������nͷ��u�7����<_l��{��Z�2p�V$�c_��^T�!�.z�c5���.��귫hQ��HEB���r�=��i8�r���|V���`剖i�^�����
�k��)۵���^����~p��  ���Ic  ��$0� {�0��er����tG1��܂P�T
���ܷo��8��������Gx�<7�%)�`����K$�Z��޽�۷�M&���;����#G	��ؽ(/�������'VV|EE���$�f��������
�9� � ��~���ĉ���*�k�����;;�s���������)�Ϛ��@� �s.9�RnDR)?r�H4�����Ѓ��@  ��086VXPp��Y�����������M}�#W�\q.-ݾy�ӟ�4��/�B�m0>>���&��������.*r~�� l˦��M�ͳ����ڥ֯��S�&D�� $�"�,NO���W��ޥ�d�WH�fB��s Ǚ֜AA`%ſv�l6SXTH�)� ೐�EbU)$��t:��h�Z
E:��(�O�e2�o];s�< f#��V3"��ޠ�
�Ħ^��\n'�����+"�d�̵k�~��GTjeN6k�����^��y��A�}�Z�gRR����, �~3*�2�R?�d{~󒏴m H�IR$a6�e2��ds"��_����J�F�Q�%�#E?�!�ɨ(����C�����#�-�҈Tn����~h_�+��$ߨ���	��=#'�3Y�dc��T�^�pi�\���������2�8P�}N����t�f]C	�V!o��qձ�]��s�t@G+�"EQ�=}k=	�Ya1Zb���QE
t)DaUkhm@ �RIDEEE�2 ๦��So��P�R�2#����Z%��U�_�U����7�c��1}�;6��8x�����>�O��ɧ�~z�[R�]�8 b��R���l�&��%�� 2(d@�L&��%%+���w��x��]�m����'�{@Ad!���ˊ�Y2<R�H2<�m�� (/P����z��v�������ƥa�6��$�
pkL�t��Ҟ�0C| � �ݻ�0��p����۳�$�p���%B.W�l2�.@U@r��- �JeN�z��~~��rM&��h��3��4�B��j )�����D"�'��W�ܹ��b���V�|0�ԧꊋ7y��uu�G�۷+������337���d2�n����\\t*�K/��(�[o���^o��kmO2��������=�� ��u$��y�K�N��0�q����!���n�۽�y����݉.^�__��Z��S���lII�������|��t2�J$����KKK555R�)�YBDUi�����Rǎu8.���{��f�˴!-�z�z�I� ���ʦӷo��z���y` ��p�$֤�]� DQ��` H5j�f������?3;	�
�Eh5�],	k(��ɤT*5�CG}^�����551�؉��xbHy���z��=����w765p�L"����!��"D���b�H�| � H��\RL*%U���UV�%���2�B�Wk� �㤣�ɍ|��oR�a�֭�kBƍchP,�|�����j� EQ�RI���Dʛ=�J��w�~�k�n7v�cO<�t����h"�'҉)����|�!p\V�BȆ(��j�˿����FA4*�V'�푄֧:�9�w:�&R�2�4j	L��E\ma���U��ÏQ?�~a�)�B��B���r�G�Q�A�t(�q�Ao����b�C�z@ �&>��Q�/)c�a>J4�����G��V~����9����	M� ŉO��x׿��+f������	9)�2��y�We�u�����cUm��C�ޅy���w�ݙW������� d���T0��>�jZU���1~�� ��� ����h<;r�����L�9s	 �j `8�}�8i�~�۽��@�Cn�r��W�T�uuu?�I�Z�\ld��oq�d�W��(�16�922�P(jjjd2��W�n�q����ty"��377��x�۶���b�w����[MM����ѣ[�r���ܗ���Ȅ\N��~dx�Py�ҏ�z� ����:���@�����y�����j~���"��C�x���û_{��Z�6 �a$VS	w#=k���krn��g��G��H�@��I �������l6�r�<�ڝ4}��ꢡ��۷�ȟ|�+������[�ܼ~=6�׷�����˿/鬑�%�%z����Z����si��w�����I�E�$���q ҄�åZ��ѐ�oy���jyyy������rH��k�BDQ$�,� �ƀ�ٙ�=224��v ������ ]i�$�a	ޣ^/3�����=�7y)Z'Yq�j���k�N�s��߽~���J�޹�d4	i����--��椿�Vd�6��QQQ951��Y������E�A-��ŭr"����]U%���3=[���'�ͥ�$��z%Df>o�������x~��ik����4�ZV����dR���p'���[���t,���-��� �� ���u���/����LUj�w�<��A�Z��D)���ZZ^�����ϳ �J֛h���krnR���6��TlQY
6+����mq`H�b��)�I˒T@ ���{KKs��;���	�QQI�|>>�2oR����zj9QY��=3��� �@�
��\6S�M��<I� `�c�Q��H' ��l�(�Щ����'��dk�_��
=���7�#m�\4$#����G�hxl?���H�pO7D>�yk׾�溼�����t-���s`Y����LR�ɛ�|y\2<����!@%@%� �Z�6�M�8�&,&P� 4��( ����`��H���<IRA*tC��+�g���k��G�RE`J���d������x�C���Rn�6�<��&IU$���� ���v:{z{�����˫���}>�А����cc������+)�UV������W���Z��(F*+km6k,M$�j����ѩSg8N`��s$ʮ�ľ}ę3���PPp����O�ߓ��'�F�E�/l��:� HH�|r o��Z�Χ�e2Yuu��(�p8���W�²?���ut��rBoݸ1?;[TT�v��9�ꫯ�MO����M�3N�D"!ŕJ��R�f����0]W� ���x��C�(J!�+T*��ؐt����߷(��/��8�����P.�OML�L�E	�m�"�`Y�X�P�y��b������ݽwy䣗o^OO�H���kC���%��EQ�u+_RZ�Œ��ǟz�o��u  F$<A܏[d2Y(�AR	�C{�-L�w����z����[o ��S&��J���}C��PmSţ�@�5���# �o�O'�29	`Ż���rL�m��Y��H����:�FQT$�5�p��������?��w%�:�/V*���Ju�X"��ְ�M��r�����K�y4^��@�E^�p��4��+����R��+Z��X��#�p���֏��+���Y/P`��iL�9��P(�D�CyfG��?���o�6��<:<t����V�s�*anwK�<8�S(k�jGu��ogh��pǇ�D��_�Aǉ���DQ\�B!�>�������?g//ؓ/�Et���ru
 ba�j�*` Q�W�|e�/}P ��]�ɤ�o�M���ݨ����W�fC1h��>��X]�d��Z:+�5�|g���� ��
�m���Go;n��
��+������|��w�~@ �C`��j]{��w:]%\�"�i���8r)A��8-�������N����;vtd��kU��{8�!I����R����������h��>������6mj�iD�������!�����5!����{ ��28���?�����W���705	�@�r%�����}w%���DOB�x��j�F���
��GJ��4]WWWSS31>�F��X�qQ����{��,���2��096v�ʕ]۶Yg(4�fR�&5�H�kJ����[[c���159I�b&��&�Ԙ�؈,Zk�I�6zy��2����n��܅�X�l�U���=�$ �޸/I�\��~��%�5�H|6E� 8��q$�f �V��*r�g��^%� ��u��2����{������or�(�4�1L���OIh,  �Ue�-�~����� _�o/.!	B&�˵�����X�����5�/�vRE��t:�J��l&��\&��D�e9V��Sr�{>Ǌ����$IF"�#��o����@0�w_y�~Sc:�F�'FµK��w�P����V�M�mz�W����G#���I�6�(�1��j$�����eZJ�$�]) ����<C�%�<�*����� 4Bޢ��{�G� 2��F@�,��w
����;��)a��j���+'=�`�ޝ���k�1���&�^���HG�qMMM��	@/��jgϵ8����F*���!��� M	�L���i��/
=?!KJQR��ς�J%E ��2P���'@ �려ኗ&cq��EQ��4����܉�\HŁY�Zn�u�DK����px����ꟼى�5 �a���<�M�'�#���-�nݝ>�8� �wv��ĳ��)�����?y��PN&@+bN,_���}gx�y�;3�+v�W�$A�hR��bU[�r$[v����In��%����*vd˒lST��"v�� 
�{u{�SAR�,�z���ٙ3�|����O�u�x �ѣ������7n�#�mϒ�MF����YY�gg�ׯ����理���ȵkm��7]��s�'Q���BQ��v�������©��~xl��-����h���i��[R#.�LK�"J���"�X"7>�� 9�� #�)u:�R��\n���"��`0H2�"�(!�ekW�
�^�9'==���P ��c�>|8#55��`˦M}��U˗_�������&3k����� ��׷��zm~��_xA.�_�~]��L�[��[� ��@f�p�}���֩X8�~�����*�D{�o��4Ø5: 16YJ����YUUy�ܹp8�����s^kA�@%�E&������7�hJ��ʕ����������i Z�i@R��4mK�1Ey[0�*]- ��ڴa����I�F�R��1DB|Aqn<�i�(�����    IDAT8����4�g�� *�l�*�k�O�d�2l��Z�{>���iZ�Pz�6�AJ��_�@�z��R����y�'Ϝx������(�`HUlD}K��!
|��]�&�y��BV���@2�"���<,�1|13/�μke�9���x�"I�8-aYN^� (`�xG�\~�N��r -����FJ�R]�������ٌ�L��T����G�#	ܽ=�s�]��p�B�-$���ͽqӁG(`���n���pf��o�"4FF�V��4��h�9� ����@$�j2��(؋�ށ_���ݎ
5dJ�Eݚ�hx�VP�V�k��B���'�/g!�hE� ����aEv��
��!(U�� yqD�.�*�JLx��� ۀa��g�d�!�ǧR�)�K�@.(x�,^�x>,����D0��tt"�"!Ah�1o&t��@�%�J_X��~��Ç���Cj�m��T�g��eV� M3@H.W�����-(��޾�ܴ�I�t1�@I��IM���fӅo?��S/�|������qV.W�����H,+��M�'_�O<��v�{��%_�����`<O8Z�D�H�X��(��KJ:��%��s�����,	�j�Z�B���#�H,9�����̌�l
�\�R�34�D�>l��v���i���`1�O�W�_ϭ���Ș���f����ܼ�p(�U���<�D��[�j�@o�z`XF�dW��:t���J�
>��u�1M�#�V�T��..��)��Fc0��/=���6���/Z|�dP�H$��"9p}�=۷m������~�w/��"&t�&R1&�P(�4�Z�f�A�����+JJ�'����|yu8ܢO$�~ǳbv]&�q,˲�|J⾇�H���{���/mx�%��C�PL��W 2	u��l�`c�?��k7��x�bsK����s���a�N����f3EQ�K���w�}7M�w�����:ۚ�GY=B�	H�44x$�`9�BrCnފ���h|�� `��JB��0�ƒ�  �	�bEE��8�Z�KVF.��#cЩ��:9�OL��\�|��7����77�_n��M��)+���x����<�裏.Y�Ƀ�����l%���, ?/�J�D����(
��������e��I�Q��amtryE�:m�����8� �^�+����-�9�J�f���bc*dJ��0�}����Hc�:V��[�e_,���z�0�3�Vc�2SI8nd��j)��S�=��k�~`~��u����w(T*��˗흨�s������#�paa���c6�[,�x���èh��(B��J�(�	�Q�Vh�j����p"�Ǔ$��q!�o��)��%6�����EE���cN����$�CT~~q,��%�FEEEv�nhh���NN�fQ\ߺ��@�����CJOO�ѣ�|>��bIeY.wNM�����Q�Hc�Khud�{�X�M$h�R�Phu:N&S�Փ33�yyr��-.V]��N����O�R͵��^O�zGG��&�'����h8	��V�^�jU~^^a~���k��v������e%%yyy�[��<ϓ(�H��H$jW������3eu;�Ã�n�ے���ٵd��nk����)��Jo��N��M)
��OD?b5)���y�i�� ��A��l1����˫*�G�����ff-�I��HA%���T�����i[�oin$�rn��X�N�kӨ5�� ��8�T��Zm ஫[s������V�mQs� ��[+�	E[0��%#��
�R�T�U*���i�$"�/����23㍗�7RS�'�eUVB-����@4�?��|iE�O��G'O���z5/#�u���ܕ殢�������T�FSQQq�Vl
Y~E�Kg&XdsB���� W)�hTĕ�4C�R��|PC�x=�=���)��pH����Qe�{��bRᜍsA��s�3b�xHY$(�Ҫd�Z������l:ӌ,�F���#=��������e�m�j�oq���������+_yF+e���~�9�w��� �0<T��D.�F!y�R��a�}���9F٥R*�k�is�������낞���j��������+��2�ˎDHC2a�E�H��+K�Z�)r�|��]�aJ+�(\#]-�}��Eo���A��$���,�
��$.��
�?U� ��I@���l
�y�I���zƐbjnn�-,$��/�,+������������! N x0+�I���M4j?{����։��g�y���ꉟ��R`.//������y��w)�A<�� �l|b�ZQ10;k�8N��F�3uuu/:�ĝ�Z/Q<I��w8�;v�8{������_��f͚�����T02eǊ�l޼�d�E���I�L%AQT0�&��̍��&����(b6��t�������ǧ(j��Qh����z<�����daAA4	G"��}>�Z����������C �MM�����.�[ġ&�:s[��a���ZXШ��p��8�͖���z����Dvv��hdo'�D�KV�D�zK�\yynV��:�����j�V���k�3j5�<���;�U��.Lm+(�H�蝟� lܸ��j�4�M�vӐ?��cwX�N6�-.*�o˽��q�g��y����`P�����g"�s��y�"�ȊF�7�R�:y��D�`+*+����3�c�P��m����箬�-����ϗ{.�ٽ'��M[w�sOkK���C����J&pj�f�c�-%�ՓWc�ZE�fs��ȕ
�tﵖ�9��t[g�8���E�Tc"�0n�>��iJ��ϳ�~��l���3���ssF�i��]�1�����v�cO<���/��Q�-�W)�rx>���8Ǐuy}�|�5 V+�@s��!�� �\Z4M[�mf���lw\�޹�޶��CV ���hJn�I�  z�X���:=u��͎�	� }�s��j9=17�^.+��������#k�Բ��W�9�ᇦӞ��g������>��6����	�;�|� 
r�q��A4'�f���I�ϋ�RNM�+֯��J�C܆p��q���^�<k��Ql[�Sݨ�B���X	��ޠmhq}>m�I��`0<�~�҅`(��(�r�)��q��>��Ҳ`6��N{2D����C|�� �#`�kv~Q_�p0���;�DL���ر=�����w�ضy�>@�s � �c@�}�� z��frsK��F�9|� ����u�����o��*A8?66g�{._n�(v�N���n�����x���cW��;��;wabb*Itu��1pà�r�Z~7�p�h,���my�f�?�k׽/^�Ţ.\�XR�����^-l"�H�@A��AlMHd&�=(�J�dy�� �U�6�w(}ax��'6�Y,e���z}8\QS�2��,��db9��c�33�K�.}��_�K�F��E���-���j3�ʪ�J����rsϝ93??��'��x�"SXx��u�Kc�"F�㸭[���3��񹔎�Y��lNv���l�`?n7�d�d�6� �x���Tf��b1�t���tv�-�\̈���+�M��3rFQYR|���X,
^{��<�{��Y]^���Ւh�l<�'QV�ֈ3�B!�V[UuCh����޽$X916R�b�����~D�@��;�(J����lK[��1��u<���W���{w5^m�łwݵ��:�?���
N��'|� <Ϸ��m���H�Ȩ,��������}�/���\���?��8�������x?b}�m���!�ai�.���[
%�K˪J�oZKi��驢�����u�뛚�c�pAA�tw[�g������>1p������� hR0�����7�#4M+*�7��Y ���֫����9��`�B�#L�֓#�=� Ҁ^D#��N\m��W�X�!L�`�!!�wy��NA�o\���`]�	@uuuJ�y��ھ}۞��0t�Z~^���B~��?
�%;��1���ȵֳ/�0U�@O zcX�+b����bG�,I�
��B�dzƆ�5 P�NMw�t�[2,6�|zFJ$��7 �P+*3�I�,bS�u�HLčyi�׽>W��={2���ξ�ʲ
��v��L������rT� ��PO�7����,�S�= J ڣQ�f��L)��u�Y.W�����J�����鹢�0%%;��N��s�(�
���|8��h�(����<��={��� �Y	pb�d�տ �����龾��ʨ���������1�E�<��Z�|��hGi���ن��[

��~X8s����F�1.U`B�� A�d2�\���lkkG~~QSSK__������~督K�P�P�DƤ1"��a��q������M�|Q���H���Z������C<��<�y��Z==5�<>^Y]MS�����7ߜI2Ɲ>}�駟�ä�]t�Ȯ"��`���R.�����Dfz�V���l{w��8��*/;{d�&"P�R)�J�ecY�n��ziϽ����
<�r��p0�z����]���]|ˠiz��h�ޱr����s33/���2r��-*P��� �2F��[�l���X,����N{�ggg
kkJ�KO�>�G{;��*������&h�Ba���xYY�C=$���N>tH)S��������+�Y�%!��R)�
���xo� ǲv��g�+/7�۶���Zp��S�C�,s��X�3�dj�F.W�4Ͳ�׾��%��
�s?�v����Ϗ��{KJ��>/�u��H���t��v+A�(
Wm30>185=�c��)�����W�)���4�>�_�����j�\/=Pt��\���ݛm�o����{�#��VBO,M�\Nӄ��� ��?X�y�L���cpC@9 �o���"���	HC�JF��j��04�1�E�ȥQE1Hx�%�~�e��=�������?���쌷����[^���� Z��&S�D�������7.�� �2�A��!�hD�NQPɅ�1&[>��1cCC�Ao1Q�v{���G�N�� ���%�3L<�H!�;�Ze4;�c��S5��4��r�R��5��5)F��w�p����& X���dHģ��+���6��t7 PD�`������X������v�J��F����u:�N�w855-��RE��C,1S�ټ8Nda��jU�.������arA�A<��3��d�8pȠ��H�|0�X2���G�����#vN� ���
�8�6??_ZZ�0��L6<<v�lcv����`���T*	‖N��0����\λ�ީR���

�=������7:�:88/~��tfeeB�k��y�㒜���	c^��Y�&y�b�^:!˲ɘ�R)��=��L&����C%%%3ssn�k|||hd���)wvwC�%|�###���>���S#�⚉Ii�Z��<8�p�J������NQ?8wN�V���^�zu��=���FnnjR�R��Ct�h�ܰyS�\��_�4اP��9v$/?�KO?��߽�Gw+ �f��u2`�;���}��7S�i��������7���v�U���o���Μ�\��߇�C�OQԩ'�wwOWWVV�_��WP�[�����>�������.���ZRZ���HXǧVT���N���V�^���e��W��)HDo�W� C���p�` ���_�x))���|��ʪ���ёѺ���ʺ�:�I��h��g���v��U��o�~;\)����/_|m4_����|>�@�7����^��n $`���~+��]������F���i��w�=}=}�3�.�;�����C��͏Ҵ�� �>��Zchnk<~l�J�J��0�&?.(�q�h1�(0��BVA����.\C��,p��
B�%����@���&&���VDa`nxg"�<+���_|a�������~��/RS-�?�����������7`f�ـ����/{F^�ͻSS�:( ,)��ż���&"�@���k�Z���8O$s��B�U��U
xǜ^�ŋ���<<ڤ7`��P!���)p��DUX�ځ�P�u�~�^�h��wzn���S
���{����e9� s�9���$���#�3�>I��;+��3�*����7�,n�����9ӠR)>�pGG����ؘ5��L扉�;v�l��1�u���uu����c����qJ�?:00��{�D�S<���>��Z�(��S�����ܾ}������ٲ�����U�J���i�*)Y
�-�4���ry������/�8��-���@�A��#k��F)�U*�r�\������V��w��R��+��z�/_n4���l���K�������@'�'�e�$��	�i1%��d2�4C���$u���˹D�{*	�]<,E�t��m�뮟<��V�=z����('mׯ?��3�j2��}���x������O��~�L��jM&9dω;�eY��˪�D���lEE8^��$b������M�E	җ<XuU�٣��g��&b�ĺ�5SSSS�cr����Sew��b5 ��\$
��m�-�{�A�ñ��m�=⅂ P4�P*3�wH���_>�t��ں�X,��_<�ů^����[ߜ[Xx��'*�jd������a�~�J��BNNfKSSJ����� �F
��YT~4C�hY^VE���h(��ԛ��VY^���/���}���-��Ν?��#��g����wx�8�덯~�߾s��&��}�{<��K%{����D��)��g�r%k�k������<���밤���T���=wNNvFff^Nε�������B���]J����o��j�կ�m�@(W�6���C4�)�1gS���A��*�j@�=�/��w�V�/��};7`�Sn̹ O�X�H7�V� +�Nw�����N��	�Pk�I�x	q%A�`�!�:�\�7-��Z92<��2����Ŕ����B�zO����3s���D"8�0�_��ߵ>�i�eB�@�^l.W��h"��ē,�͈���9g(P�j�*��|�JTT�|�@8�N�0?����(�G� �M��"p	HJAI�t�酔G��qz��٩�����ܖ�k��B}e�7�矅����BO�//F�e2�a1\�?�a���l��hGG��四�ٷo��4uEE%���fgg�f��d6M���?��������ٳ�ׯ���W��������ׯ���M���>��C]]�R-�LOO��v�&<��������T�@Z~~!�0�Νko��Wz�?�{�����W{m��m�vG�ќ������R�^���hL����¥K0Y��Q�*��]��.�xN��V˿��ar��f���y �D�?A�2���z�@8�����׶_�~�ȑ�_'�0�[�� 9]���i��x�+���5''���s</�9�=B��M<�	GQ۶�Is������hD����E��ª��0��l6�L�q����H�-�V;73��ٙ�����DEwwwcccvv6EQ�Ԁx֢�d�eY�eW�XO$ �_�,/�Z������M$�k��ܬ{RRR���QA����:�J�Ⱦ�������O�:�����ŋ��c�USH�X(�Ӈ�u���o�L&�F����������86o�`�������\�pN�ROZ'����A�M�D,b�ٮw_�4�L㝶���n޼���Y�V�[R�����#����_^�-
�n(�䵂 63��?����p(��|IIq8��B/�������;�����%%�X�Ί���p����o|�u ٘�������ٙQv6hb[�Z���ax��/��������/�<��Dnn������ǿ�Ս�M}x��{,������9��ʑ����?}�d[g3����23(��I�X� �+*J"� �L�I� �Vk�8̶y���,8���MGP�`ЍL-�@/��L�����jl�z�|�[-XFC�B�������&K�aSZ�����Ʀr�y
%)��Jxݸx��k���M�Xp�ȵX��Z��� ގ �����*X���ш�	"    IDAT��$:�N��-i�&�1J97�`޼�����7g��)��}��0���B#q���T*�Z�^��\���--���FǛN�����/u��!� ��	1O�_]-���D��v#�f@��0O����������k׮i���W?������nݺu˖mg�4LMM���SSZZ~��������R�ǻfM�^o��YIQ|w�]J(���|>�/e2C]]�J�4@(�=z|nξw�Ρ����3\rj����l^^љ3�W��z㍷SR�
���kp�Ʋ���c�.?� zz�~}fZ�6==p��}}��������d�Y��i^�M��y�G?��3�<PZZ�v{~����.A�����2ٍҞ���k�F�զ��������p8�|���+ 
����644��+
��'Taau"As��X,J��F�����<�"7�\��{,[��{����+(��;///���tw�YF�6���>q�98t�Ѓ>H��E�J�X�y� ����Xr����X0�q�Ϝ<�ȣ�<xp^5�r[�J�"]�D��#7;���j4Z�Z)�����̈���&�7؝v6EQ|��#�fI �C�p$TUY���\WW7<6X̴|�$���/8f��z����;���k��+kj�:�F�F�����k����6�=�h��%`k�~��?�x��������[��LM(���m�/_������Ξ`qA�u��<�V+w����ަVi���9�-**�����6m�NKK�1����gΜڳ���u�b�D> �B���~���;��fD�,+6>��cC��hTm���Z�O�[*�q�^��ɵC���r&
`�.�[C�޳�f��{��_�:ș�1��<� �0b��A����[�+yUj(	��O�:U�ә�f�!�7��O�'0>n��t4�1��.�ǉ�0�P�(J^�x/EQ�@�;�T0��Er�aC��J0�����*}q4.���~������/���x�w� ������B��b\G��,��4 +V����v���hDL��^�.9�Z-���|�\��u��~����A y���1f_�؊-�T21�D\F�H�t2�\J(do�n��l��n��L3�7�����BA4%�o}�=7��T*�i@�ڵ�H��c��w��v���c�Z{)*��߾�rev"�p�dg���U�*C�������`{{KFF��e���9}�DQQ���흞���455ujj*���r�N�01��:7�F�ŏ.,��ׯ_���ڵ���%�%I�P��g 6�0^�x����999��S>�o�ʕ��]]ݟ���^����U������+6\�z��A$�ZMSE� dW�ぴ��x<?:�����	���޷ﳯ����^���SS7�鵴�mذ^.א>F��hLa9E)��ȷ�����@ VXX===�0�˗/�>ݴ{��]]�����KB�PTT���~�����Q"\"���J����mk֬).**,(p{<#�ù���㵵�2�Q��2�.[�r�f$+r>�����7W-[&m�A ���u�� �Tr@Sw��|3��ʞ�N�}���
�Mtf����Ŭע�T)������˫׮^70�����lۖ���&�J���z�I����b�usS4�`�g�i�^;4�w߾�������c�q�U+�����s@����*^��֒n�,�ͦ��z��u���ZEQ
���s7l��\Yi���ʊ���j5��/�'�T,7v�V�\ESTiIqN~�\ƌ��d�����V�	��G֬�q����/�PR�*))�y~ll|��=N�{˖M��3gv��u��[�ܳ����(,�������^�}�U!y��v���e�鮇�����0�HD��ҧ��P%�l<���S?U���s�8�	 0 r%�1�1X���X�0Q�Ά� ���= F�q ذ�T�^��#��H[I%;�ţ���&��H��/\��A�@� ��$py*y{�b�>�t��C��/ �\�v� ��
�^��VU��S@"��M��wԯ�q��C ��I �`9�� ��8 ddb|9�ڔe�6��Q��!��%���Vk4I1ºM@���]H�tFJ���B&�(dd���0�����f��]��"8M�R���@Wt��_���f082
����NKS��+$˃�4�XRJ�)�2��0r��ҥccp8���x�"FF`���Bv6::�&���ee�Z�P_��,���j��Bn.�ڎ64��uu�?��3�B����UU҆b��|v���3'	��W����LY�],�j��X�ӹ�9}}mG�`IsM)L|w� �P���>���5}GGGqq���xZZ�B�omm���1�&'�z�K#��]�t�_�������"R�I/2k����{�ޖ���6mU�5SS36����;ǲe+e���/jl����0p:9���/�D��aJ���:=����vv^Rss�e2éS���Ǉ��++W������ݳzu��=���>--�d^ĸ7�����-o@W��xUe��f���AG�����MLL�vw�����޹�Y�^���?75�P*5z��-[�._&�r
��ܜ���(UZ�Z!�	,'(�=;wɒ�3>�J�d�kժ�U���ygN�6��ͣ��@�2��)�a�
���dEmM49z��j]�j�ӱ����b��Ξ�$�0����jt)������m��W�]���k������'WPcbB��7 p[V\�}�gx.��~��TV��X�;��7n�0;cu�]��������z��}��_?9v�]:I���<�p�J�U*�r
�ӣb���p��y.m���L�� D?���a�����#~?��{�����ͣ�Ç���zrss�9�V�ki.�n� ��s:�PHD:�|6@/�<�	��a��=����[_��o~���
D��?��L-�1 +r19��9 0>���V� �f�j�����I��g��6��2F��d2��Q�z�O-�2�r����~��cw��@ ?��H4*��-�\�S�>��7��aP	�@��t�6�����|��/G�hX�Q�@1���|q'SB,	>�g�����?�76�盙
 ��  @��8�@�[W�,/';��y���FŻźJ�"�N��!�R�AI*�96�ʶ���e�� �d��D��,#Ǳ��n�{M���)Y��
� 8�bS�
��"פV�I�h@xt���@�'�L��;���/�x�s� �moFF1ʧO/~"�������� �F���8H�J��ǃ� aѥ(J���|�P(�󮾾������+��ݸ���д �*���v�K/�$���w�������bff����h4i4z�{��vM{{���|QQ��������X��v�Y��������=w�b���pџ��ݑ��x�����.���mE��N'JK�OM��s����j�ѤP()J���V����D:����|n�f0��洌�,��G��[���o��v�F��&^8�����=�H�s>��_4�L�`��t~���<����*���I�R�yӦS��N�[����t0felܰ������t햍�==����5�����je
ť�[��m���R(��?�aú���������%o�h4RE���D
�B����4�y�`���^�ra``��򎌌������HK�D$�Hp�U3s�g����45-�4�C"�]�2Nw��{��|޴Դ��{���J�PL�Md��0396������?�{��׫�����:���㏙�s�G�}�w��U��x��(�S����_-��Ԁo�M��s�^gw<����M�6y<�P($�^HxM��Pz���ۏ���.�P��c��yώ���޾���Ńj�g  ];`��N��-fcV~<�z܄��J�0��R�$��į�:M�ɼ}�ߨ�*����~��6555===77��x"�()��$#)�yAH�)J�c�
%�%⡠F�I�j��cYF+uR����G��P���Uk��-�������bX�L�e9����0|"��y�B�c��ȡ �6��l�X�fsJJ
1K���������C|7���l���������i��c��&x��8�O6�&�GT"���>��=F�<����n����B�D��y.�H�)��Ք<����
�P(�E�?o����_���wg�uR+B
��j5E��p�/^r��_���~�����q˃�D�`�+(h]�l�[o�YYY�P(��V�kl�v�]�GGGC��J��yy���=�4��ؘ�� �����h44���/Y����e�n��,����=����IMM}睃˖唔��Z�6�kj��̜,.^y�D�N�_�~��d>{��h4���P��~$����Y��׎9}�r=�䓄-�JRR�mO%	ک$e��'�ege-+)9q�HNn�G��[��tI���Z�f5(��{��B��_x<��t?�裣#�z�6��Q�Xuٲ��CMN�=z������&F[ZZ֭]��p&77'
��655nٺ��ÓK�8�H$Ӥ2���r�L���DbUMM�����.)��4E	S}��� 53;-,$��~7 \k����e��24��Uʛj�H|Jd��C<q�����*9�K� .լ���}�D,i�^�ܡ��S��* uuu� �:�4���[��d9E"����ǎ}��s�~�cS��a�ζ�֮�(jaa��EH�w�v�/$��O��~��&���D	L&Suuu~~A4M�b	�s- �(�����X��\��%�1�*�F���l6��R���G#�h$���~���&��X��8����h��
����l"g	�e�%�z�P>	%�P@��u���<��b�h$Dk�*�b	G"
B���o�Y��$�{��b�X,��D�d���;t8�p8��z].����ÑH8��MБ$G�v��Á�ڵ�����圝�������s�\���Ek��L$��g����s��)���?wC��<33SQ����G�"����%C��I?�H~�����SSGt:D��W�`�^��[���:t�e�iS�����Ã��$���p:�6�-��EzL��r-������V������(z{�����J��dfd����<x8Ʋe):]�Z�"�ky�NO���/�p���?��?��b>q��<}��f[���9�������w���(Y����%v<�����@0��_ܰq�N��D"W�\�F�;v�;m�m�~0�b	*��H���S�<�������DN^�?}���ٹY�R���$�ܓ�?9:5���������i�蘶Zy�;~�D,��U��gIU`��W��⾾���'@�v׶�щ��¶�6��RZS<�sG�#�� T*Uv~�������}�9����5�H���P(�o�|��!�� �ڴ軌���N h�~�-Y__�p8|ae�a�!>EQǆáM�6.[V��o45�^��z�i����*))aY����f}�B��	��F��@��"��S�>dri;�X,���c��q����H�l��HL�I�����}�[�Ta�X,@�e$�W�����Nr��>%b��\�l�u��ě���	6��G�t4M$ѡ��D?�܌���`0�L&��L�&�LaCani�'*?���������,�eG�I���Y��F��P(�Hy��Y(Q����&�� ��?��w�~�����p8��x���/^�����t:�~���	��d���p"� ?�D�#�c?�K�Q��gf�y�����k�e����R�q	�����=��_���q����9^/�r�lF[��m'
����	��N�#��\.�j���7_�ɿ �A� 

��a߸��a�����h<�vvvG�l~~qss[ss�ٜ����}���_�����z�N�^�|��_��� �?r.H&�`��,��Mf~0���ݾ}��s���<��C�G-W1�eӦ˗/�3�ah:7/���^���'�x���9�OOO߽{�c��q���?��S_�������\.��5<2�j��W^}��G}뵥��(,,LHH�$*e2y4�\O<���ur```l|tv~���ON��I�PɌ19'4C�e��g�,_^��������N/U:��?��#Ѱ�dz��_���|cɗywUUU�8��H���p�T7�IFqI�a�H$B��������|fdd���k~~��u1$��EQ�����l6iE*����t$����b0�t��D��B�׋OD���F�Q�z]l�-��hGqD��!)"��ju��-"��h�X,�'K5�!ҙ1D7�,�H@z! �a�U�L�PU-���С��WM�i��d�AB/�ڒRe�R�h�d2�g$�6�nkɪ;�f��%XX�\��� �L&1-�Q1(�F"�6�䍐wA��T��� ��-,���M��F�����b:��8�&��t�S�l���<�R�D����X���g�ҥ�w��X�*�Bi	�� ���|晟������D�@�x�ۄNn��F"�JE�Gb��,����-���/��o,�QSS 099:<,�ժ��~_&�k�M�=;;�����}�'?�ɲe���{�Fk�;��[�`�q�=�X�V�\D��H�$��ޤ{8�s8����ϝ;���n4[[Z�V뾽{gff������ȩ'�ʗ�/[�r9�
�J�f���r``���S�UՓ��3o��w���>�o�Ν]��f�ybb���wR<eee����U�"��R�T�T���r����cc�y�9���aa��۵i��-gD̫ M�b����Ύ����M�YI�f�<qN�A�~����?��������SH�,.��C��"SSS�\ =�E�q�F8Ik'�ƅ����#RbE�W�V�*//��$:$��m'���y1� ��D_S.�!n2�RSS��2>e�DH�x
� DF�G����0iEH���$
sbY%ʢ�F���
	�(:Iy�Z�&l���З<��&���eIX��+⽉��\KN�x�C��"������j}>�BB�.��R�%ibN�$�]�Cw���Ωd���` ��r�\�$�V&+c2���\�� �S�Պ�6Qޢ�!QA��@�w�������,����ݎE�h��e����tF'K$�OB�܋���Η�n���.(�#K_W�\	��p�e�@ @�6�$7��:3�K�~8.�tΝ9���OLMM~����h4�I<�q�z��5k����?%�K�� ���I��������g Z[	��i �Q���k�
�`�Z��OL7���q#��W���1�dgg�����'Ê#��CCCf��������  ��Z�1�������JJJΝ;�P*�	��f���Uk�#/+]��W_��Y>=mu�]Scw\Ӽ�<��	��o2��H$�F��b1'���#XG�@/.��!C.W,�/�u�M6�}��A�Y����EQ<��5k�444<��G���<������3�Ѩ�\kjj��A�5�TD�˲2�L�=�!��L	��[l��$قE,�FZҜFz$$�Z"}H�J���v!�O:ș$�I�F�"�CH�M�R��G�g'7@6���C�N�#�f�=�\B�(�T*��&�L��^���u��d�IX��8d���!z�lW�^O�HuH*&I�Gt�^��B���S-z�ɀ�� ~�x4�
�h�G��Ilv� 1H?$�FC_�BUo4��-�c�i�j��h$�Z*��lZQċY7�$�3ܤ%ݽ�uk4�D"AT�+/ޛp3vC<�/����["X��iA��r&33�`0��m"���+W�\XX�x<�X,--��A���AI��b8���U��ǎ}��K/=���hH� ��6��z����/���W�򕏞'z�2w���2���t��"[����F�G��ѣ��;����Ǉ?��dn��(�N���QVZz��q�ϛ����zGGFj��Z����V�áP(���?P^Y���8�ĕ��奥��@%+���5�Ǡ�h4Z��:u������I,'q��:�F�����[ɡՏh1QE�߱X��޵k���HCCI`+,33��(��N����,�C�B�7��N'�éd�A<��U�  oIDAT����į�?�^c  �ܜE��$�b�^L�]��/�����M�����!R��!{A��$U��SK�P��!&6Qb�wH���z��P(D#��dDoR,��^K�B"������$�Kى�� �-ɚ��zb|�G����H����� D��]
&�� ԋ��]!��K|vr �Tp�oJT�j����E�EI����z�^����~1�D���f����褊�Y���'����x)�p� ��b� ��ˈ?��Ɖ�!�))}�@ 
����w��<x�ĉ.��(�۾M�M!IS�	�����!���W^y��^�t�ҟe�5MUU�q~���%�7�$DY��A��­�G�h4�T*�����O��K	�yAp{<�._�j�*�����@!S���kuZ���r9
%���[��7���2�N�D�!H�&b�*
�Z��z�^�8�Gj�ARj�ql��;v�'-,,���ÄB!�׫�jɾYsG�=�#�䬓���ݓ������n���'f��-D/^��aw"+I���I���mpJ�? R�$�i	�
��Dr��+��"BA�$TE"�č ������g��G�%j��4{'*� �@
YyZߔ%���Wdu�%	m�(K��5�	|��W|�Hf5���;�qD���Qf�7FĊ��I=6$���T�)����ҽ'Js��-��L�@4e
Yp�?�>1%���c�$��0�ȉj!N��` "B���E��(v���� �.�z=��4�x~�*�S��D�s�wnUBdq�!���Wȝ���J��"���K,�{ײ�ĖEw��"q��!@H�`���{��"1cԗ/�/��'0j1A| �����@7ބ��ȱca��z�8+�^���4g�)��8g���^{W�i/�~-a�q���z���˗O�8�������R�k�?�ׂ�k�br�Ν�ׯ?y��ŋ�۹;w����čD��iU����$]���E�n�{�ҥ{���K�����}���������˗f��������&�Fk��.\@�G6h	�qW833ӈo޼�ƥ,�vw���s��������������W�^���ӧOQu�]��&�0���S�Yq�!Hl���o��c��[�ʟ dq��l�j��h���:���e���ocn��6��9R1�h����ZN��Q�ҡ���BǍFcgg�i��sq�9��쇐�H�4��r%�&eR�`W`��qzu%�L����"0�W����p���4	�S&AOG��s9�B���ecn3\ �û���R.�)r�Ƽ��a��͡fF �$nN���:�۞�,���̩�Q�ĥ�2�x��u��Ur��Vy!����cA�2|�E�g-[�Vz&��8��(���Qݺu��ի�_�^^^���sUjU4���<y�۷o�I�0Dk������ rK%��*�����ͻw�>{���+�}4�E{�ޔ`f�ϟ�t:$�5M���~cB��8>w�������?���/^��W>����{��˗/�~�I�p("W�{8���A�<������:���R��`�b�3f���aNSEk	��i�}�'�n�Q��p8nooC(9ts*p  ��y $�Y��j!�aᄡ"�9����h`&;��:�� 9GlN�g�;�R}Y�Q�#��0��OD=/-p�[ �t̝-o#�C���&��yR�$�s�XH3Y�U�8�49�3%|�ҐT�mL������$"�U>\�9��Q`�D� $u�[:6�I]H���ɝH(\xf]Za��2[�Պ��y��smނC���Ǧ��fD2�
��|M�3���?a�`0���H�A�1=���E�%�3�>&���N�uZe&��J�G�����G�=~���Ç��V�(;I��N���#��Q4������ڵk7o�4�����_�����}�veeemm�}x��$t����;�=P5W~�911Z����ڕ����$I����,���g�9��G�Bn��gHN�]T��6ځ㯘�q�^�+����#_�n��A��Ǳ�p]|E�f�Cq$�bJ��41J�1Up�hH���j�i���Vd�Gl��uh�v��Q�[����J�s��;,4T�1
DoS�J��=��M����_
��>���8��h4ޘ$E�����?a#��>�!�	.���>$6@��ÅG��L.�S���Κ>Χ����|ǀm+D{�3��y��	�+X�g_������r����`p����g�>x�`uu�����رc�N����d�?�v{ii	�ڝNY*�J��ÄTt�k ��+�T"�[�ct�RvF"2w��A���0�1٢(�NF�l6�=���@�('�1��*	U��[��>G�DQ��ff��kL
���X֓�h�9bz��\�G���8�˧���7��v�?�}�ؔ?W�������~\��F��9}.c�@��2:��.�GH�!�	�R��H��=Z��
b�S�Ga�>-GCџ$I����m%0I�k����t�=z�,À�l�ݙ���n��0,f������3U��rO�{x �:}���������>}���ʱ633���f�D�iY�8e�B�	�:�rI]�	�g�7�sA�=5)�x(�A�	t����9���TZ7P����r��SR[ȥp�آI��P���W}��a�d(�_ԹҬ�4pVs�g���(�C�i<c�#?򌼕����P��\�r�ce��y��y�x<\�f�]��e�˲BԇJ�6vb]��u�
��$�y�57{�����v�~�~s�����Dcĥ�0�6�f�z^�k<ڇ>�^�^��c��h�O$����7nܸr�J��]]]���D=�Y��tnna8�e��u�9S�U��Z-��`Dp������x'PM�\��ᨌ��P�@����e�EP�i�"Yfm��ǌ������T�E�[<7��>0Vb�C��X!������
]e"���z7�T�����7o�}�B�@�X���n����pˤӎ�N2pM��D(:�R�	��[����;��5�c��2�Ρ�[:i+TE��ۜ�x#�_���*(�u����^����>�J���:r�H�$������q<77w����J	M�����2Wc��q�W���1���м}9w�o�13Cʀ�YB�Mo$�$p�y��f�$.�?7�����*���$���R*�H�3��R��=O����Bn��J����bc2��Yu����4�+y���锞sb���R_%uC�ޅ��dI?
�f�Mu��ء�
:�>�X6;���m���nhP�ͯ�s�8h�E��f�rK"M�J�1��j��ē�^d<H�r�iِ���s3Q�hbjҐ������ �&�$��7)����M�E���:p�lIs�0�#
���]�B�K�a��~o��_m��,��a��$��өk`a���#�s�2e|Uj��F7p����X�Aa���b�g6f�5�4���t��ü��Bfv�~�C�T��Lʈ7��,B�	9����*�$�b cEL�[�flt7�ʙ)�&jZ�J-�D��^�1�4G=C8d{���_�޼y���1����k	�
�rk̊��U�tJ�M �A�_�Y	H�bygX螆3g�;�G���	ؓ�~�']w=��~kk�	�A�b2��P��	��a��NZ��Ň2�#(&!\"U(�$��Չ�ҝn�J+�N���+�횭��o޼�ʖc�':��u�O��'���:R\��sȺs �lj��챂�"t�(OAA1�9R�ý*�Ǝ����t8�x�Dk:��s�l� i��TRщ�ӿ���/���A�Л7o��M��y𔇅YQ���q(�}0cLOL���'c�e�n��K��<0��M��l��u����h]��x���޵����Tj��O�j�<��͛�_�JS+ULT��'����T�cR�B���@���Ri��i���p'��$���)�� ��|ܣ�7o޼UY.W�X��Z����M�=&�*��p o �S�[ B^�4�k���ʽ�qz�<�x�����m"�t@g��1I�L�����p�`,�)�R��QǛ7o޼���7�i}�� *�y<^��4ۜu(�͛7o�~
���r��k🉼�Ĳ37����޼y����� �
���JU�    IEND�B`�        ~ Environment �e�x  )on mouseUp
  if the label of me is "hide Metacard GUI" then
    hide stack "Metacard Menu Bar"
    hide stack "home"
    set the label of me to "show Metacard GUI"
  else
    show stack "Metacard Menu Bar"
    show stack "home"
    set the label of me to "hide Metacard GUI"
  end if
end mouseUp
     �  � v      hide Metacard GUI           cREVGeneral    scriptChecksum  ��ُ ��	���B~
bookmarks   handlerList   scriptSelection  char 140 to 181prevHandler  mouseUptempScript   script   	     
  � scrollbarlegende    �on mouseenter
set the showborder of me to true
set the opaque of me to true
end mouseenter
on mouseleave
set the showborder of me to false
set the opaque of me to false
end mouseleave
       � �            speed of display  can be changed during show        
  � faster 	        �� )            faster 
  � slower 	        �� '            slower   � Hilfe   a         3�
   Hilfe  	�   {on mouseUp
  hide group "Hilfe" with visual effect reveal right
  set the label of btn "Hilfe" to "show help"
end mouseUp
  B ����ff  444444  `  � 7�         N                                                                                     L    
 L  M                                                            Help Information     
   L   �Click at the button "select image sequence" to choose between normal or random order of images (an new random order will be generated each time all images have been displayed once); the continuously running slide show starts (again).          @     �� Blue        +  @ ��     Red  >      D  @ ��     Red  H      T �   �You can change the image size during the slide show (radio buttons at bottom left), as well as the speed of display by using the slider at the bottom right. The speed is also influenced by the size of the image. Real size images display fastest.         @     �� Blue   
      F @     �� Blue  c      s a @     �� Blue  � 	     �    �After you stop the show (by click at button "Stop", showing the help information, navigating to card 1 and back) you can restart the slide show by clicking at button "continue".        , @     �� Blue  ,      2  @     �� Blue  @      P  @     �� Blue  `      f @ @     �� Blue  � 
     �   �You can also interrupt a continuously running show by directly clicking at the image; when using the left mouse button the next image will be displayed, using the right mouse button you go to the previous image. In this way you can move back and forward manually. Button "continue" (or ALT + mouseclick at the image) starts the automatically running show again, beginning from the last shown image.          @     �� Blue   	        @     �� Blue  6      T  @     �� Blue  e      v  @     �� Blue  { 
     �  @     �� Blue  �      �  @     �� Blue  �      � = @     �� Blue  
      @     �� Blue      . a   aWith button "hide controls" you can hide all controls to have an undisturbed view of the images.         @     �� Blue         D @     �� Blue  _  �Left and right mouseclicks at the image for manual control and restarting the continous show with ALT-mouseclick remain possible.  @        Black    � YClicking within the lower part of the screen (the cursor changes) the controls reappear.  @        Black    X  ?Button "zoom" interrupts the show, hides all controls and displays a slider where you set the size of the current image. Extra sliders appear for moving the image horizontally and vertically when the image extends beyond the screen. "hide zoom controls" hides all zoom sliders and again displays the standard controls.         @     �� Blue         8 @     �� Blue  E      K � @     �� Blue  �      � A           �Warning: If an image contains transparent areas, you have to click at a non-transparent part to move back and forward in the show by mouseclick.               @ ��     Red        /  @ ��     Red  H      \ 4                        q                                               - click to close this information or click at button"hide help" -        ' @ 	��     Red  ' I          � im-size-info �e�x  �on mouseUp
  if the visible of fld "im-size-info" is false then
    show fld "im-size-info" with visual effect scroll left
    set the label of me to "hide additional image information"
  else if the visible of fld "im-size-info" is true then
    hide fld "im-size-info" with visual effect reveal right
    set the label of me to "additional information about image sizes"
  end if
end mouseUp
   ����ff  @ � �K  )additional information about image sizes          	     
  � im-size-info  �    B ����ff  ((((((  ` �
�	         real size:  @     �� Blue    
 �Images will be displayed in their true proportions and sizes. Images larger than 1024 X 768 extend beyond the visible window, providing then kind of a zoom effect for the remaining part of the image - compared with a screen size image.  -Real size images will be displayed fastest.   @        Black    +     +    medium size:  @     �� Blue     �Images are displayed in a frame of 840 X 630 pixels. Images are resized to fill as much of this frame as possible. The true proportions are maintained.     screen size:  @     �� Blue     dImages are resized to fill as much of the window as possible. The true proportions are maintained.  
  � 	sequence  `        7 x          normal 
  � 	overview  �` B ������  444444  ` ! ���        �:This is one of the sample stacks used in our seminars to explore capabilities of Metacard (mostly examples with educational features). The stack is intended to be used under Windows with a 1024 X 768 screen resolution (There is a separate Mac version because of some differences of display features - fonts etc.).   �It has a simple surface design as it is not intended for commercial purposes, but only as a programming example and maybe for private use. The scripts are not too simple, exceed the limits of the Starter Kit, and a number of the controls have a medium-high degree of interrelatedness, which can provide difficulties when trying to edit the scripts. The scripts are unprotected. There are remnants of earlier versions in some scripts,  Falso parts of the scripts could be still simplified, but there was no  Eneed to do this so far, as the stack generally seems to work without  
problems.    6The features of the slideshow stack (two cards) are :    Select and Preview Card           I- loading image names from any folder/directory into an image name field  D- selecting images types (at present jpg, gif, png, and bmp, or all  these types)  G- image names can be sorted, deleted or rearranged by drag-and-drop in  the name field  G- the current number of names in the scrolling name field is displayed  G- clicking at a name shows the image in the preview window (480 X 360)  Iwith maintained proportions. The real image size will be indicated below  Hthe preview window. If the real image size is less than width or height  Hof the preview it can also be viewed in its true size and proportions -  #there is an extra button for this.    Slide Show Card:           D- when navigating to this card, a continuously repeating slide show  Fstarts (showing the images in the sequence arranged in the image name  field of the preview card)  N- image size and/or display time can be changed without interrupting the show        ! @        Black  ! , 1- there is a help information field to be opened  H- image names, the total number of pictures of the show and the current  image number are shown  C- instead of the normal sequence a random display of the images is  Gpossible (also as an endless show, but no image will be shown a second  7time before all other images have been displayed once)    There are three image sizes:   "real size":  Images will be displayed in their true proportions and sizes. Images larger than 1024 X 768 extend beyond the visible window, providing then kind of a zoom effect for the remaining part of the image. Real size images will be displayed fastest.  @     �� Blue          � @        Black  � +   �"medium size": Images are displayed within a frame of  840 X 630 pixels. Images are resized to fill as much of the frame as possible. The true proportions are preserved.  @     �� Blue          �   C"screen size": Images are resized to fill as much of the window as  @     �� Blue          5 0possible. The true proportions are maintained.-    H- clicking at the "stop" button or clicking at the image stops the show  @- clicking at button "continue" starts again the automatic show   �You can also interrupt a continuously running show by directly clicking at the image; when using the left mouse button the next image will be displayed, using the right mouse button you go to the previous image. In this way you can move back and forward manually. Button "continue" (or ALT + mouseclick at the image) starts the automatically running show again, beginning from the last shown image.          @     �� Blue   	        @     �� Blue  6      T  @     �� Blue  e      v  @     �� Blue  { 
     �  @     �� Blue  �      �  @     �� Blue  �      � = @     �� Blue  
      @     �� Blue      . a   aWith button "hide controls" you can hide all controls to have an undisturbed view of the images.         @     �� Blue         D @     �� Blue  _  �Left and right mouseclicks at the image for manual control and restarting the continous show with ALT-mouseclick remain possible.  @        Black    � YClicking within the lower part of the screen (the cursor changes) the controls reappear.  @        Black    X  ?Button "zoom" interrupts the show, hides all controls and displays a slider where you set the size of the current image. Extra sliders appear for moving the image horizontally and vertically when the image extends beyond the screen. "hide zoom controls" hides all zoom sliders and again displays the standard controls.         @     �� Blue         8 @     �� Blue  E      K � @     �� Blue  �      � A           �Warning: If an image contains transparent areas, you have to click at a non-transparent part to move back and forward in the show by mouseclick.               @ ��     Red        /  @ ��     Red  H      \ 4  �    	`    @ � � �   � 	overview �e�pAon mouseUp
  if the label of me is "show overview" then
    set the scroll of fld "overview" to 0
    show fld "overview" with visual effect scroll down
    set the label of me to "hide overview"
  else
    hide fld "overview" with visual effect reveal up
    set the label of me to "show overview"
  end if
end mouseUp
       � o _  show overview          	       � show controls  @	
on mouseenter
  set the cursor to 323
  set the lockcursor to true
set the showborder of me to true
end mouseenter
on mouseleave
  set the cursor to hand
set the showborder of me to false
  #set the lockcursor to true
end mouseleave
on mouseUp
  lock screen
  show group "image size"
  show btn "Hilfe"
  show btn "card 1"
  show btn "stop"
  show btn "showstart"
  show btn "continue"
  show scrollbar 1
  show btn "beenden"
  show fld "scrollbarlegende"
  show fld "faster"
  show fld "slower"
  show fld "Bildzahl"
  show fld "Bildanzahl"
  show fld "von"
  show fld "Bildzahlhintergrund"
  show fld "Legende"
  show group "navigation"
  if fld "Bildzahl" > 20 then
    show btn "10 images forward"
    show btn "10 images back"
  else
    hide btn "10 images forward"
    hide btn "10 images back"
  end if
  show btn "zoom"
  set the cursor to hand
  set the lockcursor to true
  hide me
  show btn "hide controls"
  send "mouseup" to btn 2 of group "image size"
  set the hilitedbutton of group "image size" to 2
end mouseUp
        7 � #         show basic controls again          	   	       � hide controls �E��
on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
on mouseUp
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  lock screen
  hide group "image size"
  hide btn "Hilfe"
  hide btn "card 1"
  hide btn "stop"
  hide btn "showstart"
  hide btn "continue"
  hide scrollbar 1
  hide btn "beenden"
  hide fld "scrollbarlegende"
  hide fld "faster"
  hide fld "slower"
  hide fld "Bildzahl"
  hide fld "Bildanzahl"
  hide fld "von"
  hide fld "Bildzahlhintergrund"
  hide fld "Legende"
  hide group "navigation"
  hide btn "10 images forward"
  hide btn "10 images back"
  hide btn "zoom"
  show btn "show controls"
  hide me
  unlock screen
  answer "If you click within the lower fifth of the screen"&CR&"               all controls will reappear."&CR&"     The cursor will change in that area."
  wait 1 millisecond
  send "mouseup" to btn "continue"
end mouseUp
       o� \          	       � 10 images back �g�   �on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
on mouseUp
  Global Zaehler,Ordner,Lupe,Proportion,Tempo
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  lock screen
  put fld "Bildzahl" into Zahl
  subtract 10 from  Zaehler
  if Zaehler < 1 then put Zahl + Zaehler into Zaehler
  #========================
  put Zaehler into fld "Bildanzahl"
  put line Zaehler of fld "History" into Bildzeile
  #=========================================
  
  #=========================================
  put item 1 of Bildzeile into Bildname
  #=======================================
  
  #=======================================
  put item 2 of Bildzeile into fld "Legende"
  
  set the filename of image ID 1010 to Ordner&"/"&Bildname
  set the  name of image ID 1010 to Bildname
  #========================================
  put  line Zaehler of fld "History" into Bildname
  put Bildname into fld "Legende"
  #===================Proportion Breite/H�he berechnen====================
  formatieren
  if fld "stop" is empty then send "mouseup" to btn "Diashow" #in Tempo seconds
end mouseUp
       P  8  10 images back               �     -10          	       � 10 images forward �g�   �on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
on mouseUp
  Global Zaehler,Ordner,Lupe,Proportion,Tempo
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  lock screen
  put fld "Bildzahl" into Zahl
  add 10 to  Zaehler
  if Zaehler > Zahl  then put Zaehler - Zahl  into Zaehler
  #========================
  put Zaehler into fld "Bildanzahl"
  put line Zaehler of fld "History" into Bildzeile
  #=========================================
  
  #=========================================
  put item 1 of Bildzeile into Bildname
  #=======================================
  
  #=======================================
  put item 2 of Bildzeile into fld "Legende"
  
  set the filename of image ID 1010 to Ordner&"/"&Bildname
  set the  name of image ID 1010 to Bildname
  #========================================
  put  line Zaehler of fld "History" into Bildname
  put Bildname into fld "Legende"
  #===================Proportion Breite/H�he berechnen====================
  formatieren
  if fld "stop" is empty then send "mouseup" to btn "Diashow" #in Tempo seconds
end mouseUp
       �  :  10 images forward               �     10+          	       � Groesse  �1^global Proportion, Stelle
local Neuhoehe, Neubreite
on scrollbardrag x
  put x into Neuhoehe
  put Neuhoehe * Proportion into NeuBreite
  put trunc(Neubreite) into Neubreite
  put NeuBreite&&"X"&&Neuhoehe into fld "Rechteck"
end scrollbardrag
on mouseup
  set the cursor to watch
  lock screen
  set the height of image 1 to Neuhoehe
  set the width of image 1 to NeuBreite
  set the loc of  image 1 to 512,384
  if NeuBreite > 1024 then
    put (Neubreite - 1024) div 2 into BreitDiff
    set the Startvalue of scrollbar "horizontal" to -Breitdiff
    set the Endvalue of scrollbar "horizontal" to Breitdiff
    show scrollbar "Horizontal"
  else
    hide scrollbar "horizontal"
  end if
  if Neuhoehe > 768 then
    put (Neuhoehe - 768) div 2 into HoehDiff
    set the Startvalue of scrollbar "vertical" to -Hoehdiff
    set the Endvalue of scrollbar "vertical" to Hoehdiff
    show scrollbar "vertical"
  else
    hide scrollbar "vertical"
  end if
  set the thumbpos of scrollbar "vertical" to 0
  set the thumbpos of scrollbar "horizontal" to 0
  put the 512,384 into Stelle
  set the cursor to hand
end mouseup
   ������    � 
 � ��     16  2300         � horizontal  �1gGlobal Stelle
local StelleNeu
on scrollbardrag x
  put Stelle into StelleNeu
  add -1*x to item 1 of StelleNeu
  #add x to item 1 of StelleNeu
end scrollbardrag
on mouseup
  lock screen
  put item 2 of Stelle +  -1 * (the thumbpos of scrollbar "vertical") into item 2 of StelleNeu
  set the loc of image 1 to StelleNeu
end mouseup

#========================
   ������     ^ 	 �� �     -676  676         � 	vertical  �0NGlobal Stelle
local StelleNeu

on scrollbardrag x
  put Stelle into StelleNeu
  add -1 *x to item 2 of StelleNeu
  #add x to item 2 of StelleNeu
end scrollbardrag
on mouseup
  lock screen
  put item 1 of Stelle +  -1 * the thumbpos of scrollbar "horizontal" into item 1 of StelleNeu
  set the loc of image 1 to StelleNeu
end mouseup
   ������      & .s :     -507  507       
  � 	Rechteck    ������    �  �            2376 X 1782   � zoom �E�on mouseUp
  Global Proportion,ZoomSchalter, Stelle
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  set the hilitedbutton of group 2 to 2
  send "mouseup" to btn 2 of group 2
  put the formattedheight of image 1 into FHoehe
  put the formattedwidth of image 1 into FBreite
  put FBreite / FHoehe into Proportion
  put the loc of image 1 into Stelle
  show scrollbar "Groesse"
  set the thumbpos of scrollbar "Groesse" to the height of image 1
  show fld "Rechteck"
  #lock screen
  show btn "ZoomAus"
  put "an" into ZoomSchalter
  #============================
  
  hide group "image size"
  hide btn "Hilfe"
  hide btn "card 1"
  hide btn "stop"
  hide btn "showstart"
  hide btn "continue"
  hide scrollbar 1
  hide btn "beenden"
  hide fld "scrollbarlegende"
  hide fld "faster"
  hide fld "slower"
  hide fld "Bildzahl"
  hide fld "Bildanzahl"
  hide fld "von"
  hide fld "Bildzahlhintergrund"
  hide fld "Legende"
  hide group "navigation"
  hide btn "10 images forward"
  hide btn "10 images back"
  hide btn "hide controls"
  #============================
  hide me
end mouseUp
on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
        �� K          	       � ZoomAus �e�}on mouseenter
  set the showborder of me to true
  set the opaque of me to true
end mouseenter
on mouseleave
  set the showborder of me to false
  set the opaque of me to false
end mouseleave
on mouseUp
  Global Zoomschalter
  lock screen
  put "aus" into Zoomschalter
  hide scrollbar "Groesse"
  hide fld "Rechteck"
  hide scrollbar "vertical"
  hide scrollbar "horizontal"
  hide me
  show btn "zoom"
  #===========================
  show group "image size"
  show btn "Hilfe"
  show btn "card 1"
  show btn "stop"
  show btn "showstart"
  show btn "continue"
  show scrollbar 1
  show btn "beenden"
  show fld "scrollbarlegende"
  show fld "faster"
  show fld "slower"
  show fld "Bildzahl"
  show fld "Bildanzahl"
  show fld "von"
  show fld "Bildzahlhintergrund"
  show fld "Legende"
  show group "navigation"
  if fld "Bildzahl" > 20 then
    show btn "10 images forward"
    show btn "10 images back"
  end if
  show btn "hide controls"
  #===========================
  send "mouseup" to btn 2 of group "image size"
  set the hilitedbutton of group "image size" to 2
if fld "stop" is empty then send "mouseup" to btn "continue"
end mouseUp
       �  �  hide zoom controls          	       � File-Pruefung �E�pon mouseUp
  put fld "Ordner" into imagefile
  put "/"&line 1 of fld "Dateien" after last char of imagefile
  if there is not a file imagefile then
    answer "   The listed files are not accessible."&CR&"Check your drives or select new folder."
  end if
end mouseUp
       l � �          	     
  � stop  !`       �  �             � P7010089_DCE.JPG  �P "on mouseUp
  hide me
end mouseUp
              IC:/WINDOWS/Desktop/Bilder 2002/Baltikum2002/Auswahl/DCE/P7020002_DCE.JPG     � HilitedLineImage �E�p�on mouseUp
  put the   hilitedlines of fld "Dateien" into Zeile
put the value of line Zeile of fld "Dateien" into Bildname
  put fld "Ordner" into Ordner
  lock screen
  set the filename of image 1 to Ordner&"/"&Bildname
  if there is no file Ordner&"/"&Bildname then
  answer "There is no such file!"
  exit mouseup
  end if
  set the numberformat to 0.00
  put the formattedheight of image 1 into FHoehe
  put the formattedwidth of image 1 into FBreite
  put FBreite / FHoehe into Proportion
  if Proportion < 1.33 then
  lock screen
  set the height of image 1 to 360
  put 360 * Proportion into Breite
  set the width of image 1 to Breite
  set the loc of image 1 to 688,396
  else if Proportion > 1.33 then
  lock screen
  set the width of image 1 to 480
  put 480 / Proportion into Hoehe
  set the height of image 1 to Hoehe
  set the loc of image 1 to 688,396
  end if
  put "real image size is"&&FBreite&&"X"&&FHoehe into fld "image size"
  
end mouseUp
       D � x $         	       a Ask Dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
       5�@ �               ����     U 
Helvetica   �    	P;on doresize
  local twidth, iwidth
  put the width of this stack into twidth
  set the width of field 1 to twidth - 64
  set the left of field 1 to 48
  set the width of field 2 to twidth - 64
  set the left of field 2 to 48
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
  local twidth
  set the itemDelimiter to numToChar(0)
  if word 2 of item 1 of the dialogData is "password"
  then set the fieldmode of me to "password"
  else set the fieldmode of me to "plain"
  if item 2 of the dialogData is empty
  then set the title of this stack to space
  else set the title of this stack to item 2 of the dialogData
  put item 3 of the dialogData into field 1
  put max(the formattedWidth of field 1 + 64,\
      the formattedWidth of field 2 + 64, 320) into twidth
  set the width of this stack to twidth
  set the height of field 1 to the formattedHeight of field 1
  set the top of field 1 to 8
  set the height of this stack to (the height of field 1) + 100
  doresize
  if the fieldmode of me is not "plain" then
    put item 4 of the dialogData into field 3
    star
  else put item 4 of the dialogData into field 2
  set the dialogData to numToChar(0)
  set the itemDelimiter to comma
  set the icon of button 1 to item itemOffset(the lookAndFeel,"Motif,Macintosh,Windows 95") of "330,994,998"
end preOpenStack

on keyDown which
  local tpos
  if the name of the target contains "field" and the fieldmode of me is not "plain" then
    put the selectedChunk into tpos
    put which into character (word 2 of tpos) to (word 4 of tpos) of field 3
    star
    select after character (word 2 of tpos) of field 2
  else pass keyDown
end keyDown

on deleteKey
  if the fieldmode of me is not "plain"
  then deleteone
  else pass deleteKey
end deleteKey

on backspaceKey
  if the fieldmode of me is not "plain"
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
  if the fieldmode of me is not "plain"
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
  �   �        0                  \ OK �L�p on mouseUp
  switch the fieldmode of this card
  case "plain"
    get field 2
    break
  case "clear"
    get field 3
    break
  case "password"
    get mcencrypt(field 3)
    break
  end switch
  set the dialogData to it
  close this stack
end mouseUp
        B \ 4         	  �   ] Cancel �D�p +on mouseUp
  close this stack
end mouseUp
        � \ <         	  � 
  _   �`       0 (              
  `   
!`       b 8 |         �    a New Button �B@         $ (              �            	  �   � Answer Dialog  � �on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
     �  � � v   macintoshIcons  992,993,994,995motifIcons  328,329,330,331windows95Icons  996,997,998,999                U 
Helvetica   �    	P*on preOpenStack
  local dtype, foffset, oldwidth, bwidth, twidth, iwidth, theight, curx, nchoices
  set the itemDelimiter to numToChar(0)
  if word 2 of item 1 of the dialogData is "plain" then
    hide button 1
    put 0 into foffset
  else
    show button 1
    switch the lookAndFeel
    case "Motif"
      get the motifIcons of this stack
      break
    case "Macintosh"
      get the macintoshIcons of this stack
      break
    default
      get the windows95Icons of this stack
    end switch
    put word 2 of item 1 of the dialogData into dtype
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
    set the width of field 1 to twidth - foffset + 16
    set the dontWrap of field 1 to false
  end if
  put the width of this stack into oldwidth
  set the width of this stack to twidth
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
  if the lookAndFeel is "Macintosh" then
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
            � v  z  �  �  �  �  �  �  �  �
  �   �@        h 2           (   The listed files are not accessible.  (Check your drives or select new folder.   z icon �@P on mouseUp
end mouseUp
          , (       	  �   � OK �D�`       f H 3        	  �   � Ja �D�`       � 6 -        	  �   � .bmp �D�`       6 =        	  �   � .gif �D�`      o 6 1        	  �   � .jpg �D�`      � 6 5        	  �   � x �D�`       i 4 '        	  �   � w �D�`         4 )        	  �   � Message Box 0     � 4 �     cs  modeless "mcbrowser-neu"              ����   J  U 
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
Helvetica   �    	P�local initted

on resizeStack
  set the rect of field 1 to the rect of me
end resizeStack

on preOpenCard
  if not initted then
    set the topleft of this stack to the left of the topStack -\
        (the width of this stack - the width of the topStack) div 2, the bottom of the topStack + 32
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
           �    �
  � Message Field  )p�local it
local MessageBoxHistory, MessageBoxIndex

on init
  put 1 into MessageBoxIndex
  put empty & return into MessageBoxHistory
  put empty into field 1
end init

on errorDialog
  if the scriptError is not empty then
    modeless "Script Error"
    set scriptError to empty
  else modeless "Execution Error"
end errorDialog

on returnInField
  local debugging, command, cword
  if the title of this stack is empty
  then put false into debugging
  else put true into debugging
  lock error dialogs
  put return after MessageBoxHistory
  put me into command
  if command is empty
  then exit to MetaCard
  put command into the last line of MessageBoxHistory
  if the number of lines in MessageBoxHistory > 20
  then delete line 1 of MessageBoxHistory
  if the traceStack is not empty
  then set defaultStack to the traceStack
  else set defaultStack to the topStack
  put empty into msg
  set scriptError to empty
  put 1 into MessageBoxIndex
  put word 1 of command into cword
  if cword is not in the commandNames then
    if cword is "the" or cword is a number or token 2 of cword is "("
    then put value(command, this card)
    else send command to this card
  else
    if debugging
    then debugdo command & return & "if the result is not empty then put the result"
    else do "global" && the globals & return & command \
        & return & "if the result is not empty then put the result"
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
  if which is "P"
  then prevline
  if which is "N"
  then nextline
  if which is "U"
  then put empty into msg
  pass commandKeyDown
end commandKeyDown

on arrowKey which
  if which is "up"
  then prevline
  if which is "down"
  then nextline
  pass arrowKey
end arrowKey
     @     �           � 2     Execution Error                 �, �             U 
Helvetica    e Execution Error Card   	plocal ee

on returnInField
  send "mouseUp" to button "Ignore"
end returnInField

on returnKey
  send "mouseUp" to button "Ignore"
end returnKey

on closeCard
  set executionError to empty
  show button "Script..."
  show button "Set Breakpoint..."
  put empty into field "Error Message"
  put empty into field "Object"
  put empty into field "Bad Token"
end closeCard

on preOpenCard
  put empty into field "Error Message"
  send "geterrs" to me in 1 tick
end preOpenCard

on geterrs
  local ec
  put the executionError into ee
  put the number of lines in ee into ec
  if ec > 100
  then delete line 100 to ec of ee
  repeat with i = the number of lines in ee down to 1
    get item 1 of line i of ee
    put line It of field "Messages" & return before field "Error Message"
    if item 2 of line i of ee is not 0 then
      put item 2 of line i of ee into field "Line"
      put item 3 of line i of ee into field "Column"
      put item 4 of line i of ee into field "Bad Token"
    end if
    if item 4 of line i of ee is not empty
    then put item 4 of line i of ee into field "Bad Token"
  end repeat
  delete last char of field "Error Message"
  if the errorObject is empty\
      or the short name of the errorObject is "Message Field" \
      or the script of the errorObject is empty \
      or "mctools.mc" is not in the frontscripts \
      or word 1 of the mainStacks is not "Home" then
    hide button "Script..."
    hide button "Set Breakpoint..."
    put item 4 of last line of ee into field "Object"
  else
    put the long name of the errorObject into field "Object"
  end if
  set the loc of this stack to the screenLoc
end geterrs

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
  put item 2 of line which of ee into field "Line"
  put item 3 of line which of ee into field "Column"
  put item 4 of line which of ee into field "Bad Token"
end seterror
     �      �   executionerror �572,4,1,refresh
240,4,1,errorDialog
352,0,0,button id 1043 of card id 1001 of stack "C:/WINDOWS/Desktop/Meta2.4.2/mctools.mc"
311,0,1
615,3,5,P6270058_DCE
464,3,1
240,3,1,mouseUp
352,0,0,button id 1196 of card id 1002 of stack "C:/WINDOWS/Desktop/Meta2.4.2/slideshow-win.mc"
528,9,1,mouseup
240,9,1,mouseUp
352,0,0,button id 1126 of card id 1002 of stack "C:/WINDOWS/Desktop/Meta2.4.2/slideshow-win.mc"      
                                    
    	Messages   @       
 
| �        e /Handler: Running low on memory, script aborted  !Handler: Recursion limit reached   abs: error in source expression  accept: bad expression  &aclip: playLoudness is not an integer  !acos: error in source expression  acos: domain error  -add: destination has a bad format (numeric?)   add: error in source expression  add: can't set destination  %Operators and: error in left operand  &Operators and: error in right operand  (Operators bitAnd: error in left operand  )Operators bitAnd: error in right operand  $annuity: error in period expression  "annuity: error in rate expression  %answer: error in question expression  %answer: error in response expression  "answer: error in title expression  (arrowKey: error in direction expression  arrowKey: not a direction  !asin: error in source expression  asin: domain error  "ask: error in question expression  ask: error in reply expression  ask: error in title expression  !atan2: error in first expression  "atan2: error in second expression  atan2: domain error  !atan: error in source expression  atan: domain error  $average: error in source expression  )base64Decode: error in source expression  )base64Encode: error in source expression  "baseConvert: bad destination base  (baseConvert: error in source expression  baseConvert: bad source base  'baseConvert: can't convert this number  (baseConvert: destination is not base 10  beep: error in expression  ,binaryDecode: destination is not a variable  )binaryDecode: invalid data for parameter  $binaryDecode: not enough parameters  )binaryDecode: error in source expression  )binaryEncode: invalid data for parameter  $binaryEncode: not enough parameters  )binaryEncode: error in source expression  !Button: bad accelerator modifier  !Button: family is not an integer  %Button: menuButton is not an integer  &Button: menuHistory is not an integer  $Button: menuLines is not an integer  #Button: mnemonic is not an integer  %cancel: message id is not an integer  &charToNum: error in source expression  choose: error in expression  choose: not a tool  &Chunk: error in background expression   Chunk: error in card expression   Chunk: error in character range  *Chunk: container is not a button or field  !Chunk: error in chunk expression  Chunk: error in item range  Chunk: error in line range  "Chunk: error in object expression  %Chunk: error in range end expression  'Chunk: error in range start expression  !Chunk: error in stack expression  Chunk: error in text string  Chunk: can't separate tokens  Chunk: can't separate words  Chunk: can't delete object  Chunk: can't find object  #Chunk: can't get object attributes  0Chunk: can't get value of destination container  Chunk: can't get number  Chunk: can't get source string  Chunk: can't get substring  Chunk: can't find substring  Chunk: can't set attributes  ,Chunk: can't store to destination container  Chunk: can't set as a number  Chunk: can't find background  Chunk: can't find card  Chunk: no such object  Chunk: can't set property  Chunk: can't find stack  Chunk: no target found  +Chunk: can't select object that isn't open  !Chunk: source is not a container  'Chunk: can't find object to store into  'Chunk: can't get source from container  &Chunk: destination is not a container  click: script aborted  )click: expression is not a button number  !click: error in point expression  !click: expression is not a point  click: stack is not open   clone: error in name expression  clone: can't clone this object  clone: stack is locked  "clone: can't find object to clone   close: error in name expression  close: can't find stack  #color: error setting selectedColor  "compact: can't find stack to save  compact: object is not a stack  &compound: error in periods expression  #compound: error in rate expression  %compress: error in source expression  ,compress: error occurred during compression  $Operators &&: error in left operand  %Operators &&: error in right operand  #Operators &: error in left operand  $Operators &: error in right operand  *Operators contains: error in left operand  +Operators contains: error in right operand  #convert: can't read from container  convert: can't set container  !copy: invalid destination object  $copy: can't find destination object  copy: can't copy source object  copy: can't find source object  "copy: stack is password protected   cos: error in source expression  cos: domain error  5create: error in bad parent or background expression  create: error in expression  %create: stack is locked (cantModify)  cut: can't find or copy object  'decompress: error in source expression  *decompress: string is not compressed data  'decompress: error during decompression  &delete: error in file name expression  delete: can't find object  disable: can't find object  ,Stack: stack has not been given a file name  0divide: destination has a bad format (numeric?)  #divide: error in source expression  divide: can't set destination  divide: divide by zero  divide: range error (overflow)  %Operators div: error in left operand  &Operators div: error in right operand  &Operators div: range error (overflow)  Operators div: divide by zero  do: aborted  do: error in source expression  do: error in statement  do: error in expression  0do: unexpected end of line in source expression  do: can't find command  do: not a command  do: license limit exceeded  doMenu: error in expression  "doMenu: don't know this menu item  drag: script aborted  drag: bad "button" number  drag: bad end point expression  drag: end point is not a point  !drag: bad start point expression  !drag: start point is not a point  !drives: error in type expression  edit: can't find object  $encrypt: error in source expression  Operators =: error in operand  "exp10: error in source expression  exp10: domain error  !exp1: error in source expression  exp1: domain error  !exp2: error in source expression  exp2: domain error  5export: error in file (or mask file) name expression  'export: can't open file (or mask file)  +export: can't write to file (or mask file)  -export: no image selected, or image not open  (export: selected object is not an image  $Expression: error in numeric factor  #Expression: error in string factor   exp: error in source expression  exp: domain error  Factor: error in left operand  Factor: error in right operand  Field: bad text attributes  %Field: hilitedLine is not an integer  (Field: scrollbarWidth is not an integer  Field: shift is not an integer  *Field: tabstops is not a positive integer  2files: no permission to list files or directories  filter: bad source string  filter: bad pattern string  filter: can't set destination  find: bad source string  flushEvents: bad event type  focus: not a valid control  fontSizes: bad font name  fontStyles: bad font name  fontStyles: bad font size  0format: bad format string or parameter mismatch  $Function: error in function handler  %Function: error in source expression  !Function: source is not a number  Function: is not a number  get: error in expression  get: can't set destination  %globalLoc: coordinate is not a point  #go: error in background expression  go: error in card expression  go: error in stack expression  go: error in window expression  *go: can't attach menu to this object type  go: can't find destination  grab: can't find object  graphic: not an integer   Operators >=: error in operands  Operators >: error in operands  Group: backSize is not a point  'Group: hilitedButton is not an integer  Group: bad object type  %Operators (): error in right operand  Handler: aborted  Handler: error in statement  'Handler: error in parameter expression  %Handler: not a valid parameter index  !hasMemory: bad amount expression  (hide: error in visual effect expression  hide: can't find object  (hostAddress: error in socket expression  /hostAddressToName: error in address expression  #hostName: error in name expression  ,hostNameToAddress: error in name expression  if-then: aborted  'if-then: error in condition expression  if-then: error in statement  Image: bad pixmap id  !Image: hotspot is not an integer  Image: id is not an integer  .Image: id is already in use by another object  $Image: image must be open to set id  #Image: hotSpot x is not an integer  #Image: hotSpot y is not an integer  import: error in expression  .import: can't open file, mask file or display  .import: can't read file, mask file or display  1import: destination stack is locked (cantModify)  insert: can't find object  insert: license limit exceeded   intersect: two objects required  $Operators is: error in left operand  %Operators is: error in right operand  %Operators is: can't compare operands  6Operators is: left operand of 'within' is not a point  ;Operators is: right operand of 'within' is not a rectangle  %isNumber: error in source expression  "isoToMac: error source expression  #Operators ,: error in left operand  $Operators ,: error in right operand  "keys: parameter is not a variable  kill: no such process  kill: bad number  (launch: error in application expression  #length: error in source expression   Operators <=: error in operands  Operators <: error in operands   ln1: error in source expression  ln1: domain error  ln: error in source expression  ln: domain error  load: error in url expression  "load: error in message expression  $localLoc: coordinate is not a point  "log10: error in source expression  log10: domain error  !log2: error in source expression  log2: domain error  "macToIso: error source expression  mark: bad card expression  mark: error in find expression  +matchChunk: can't set destination variable  %matchChunk: bad or missing parameter  (matchChunk: error in pattern expression  'matchChunk: error in source expression   max: error in source expression  *MCISendString: error in source expression  &MD5digest: error in source expression  #Operators -: error in left operand  $Operators -: error in right operand  $Operators -: range error (overflow)   min: error in source expression  %Operators mod: error in left operand  &Operators mod: error in right operand  &Operators mod: range error (overflow)  Operators mod: divide by zero  "mouse: error in source expression  move: script aborted  move: can't find object  move: bad end point expression  move: end point is not a point  move: bad duration expression  move: duration is not a number  !move: bad start point expression  !move: start point is not a point  2multiply: destination has a bad format (numeric?)  %multiply: error in source expression   multiply: can't set destination  !multiply: range error (overflow)   Operators <>: error in operands  &Operators not: error in right operand  )Operators bitNot: error in right operand  &numToChar: error in source expression  !Object: bad textAlign expression  Object: unknown color  Object: error in colors  'Object: card must be open to set layer  Object: not a textStyle  6Object: stack locked, or object's script is executing  +Object: object does not have this property  !Object: height is not an integer   Object: layer is not an integer  !Object: margin is not an integer  /Object: value is not a boolean (true or false)  Object Name:  #Object: property is not an integer  "Object: coordinate is not a point  )Object: rectangle does not have 4 points  Object: no Home stack  Object: license limit exceeded  &Object: pixel value is not an integer  !Object: pixmap is not an integer  /Object: can't set script while it is executing   Object: can't set this property  %Object: textheight is not an integer  #Object: textsize is not an integer  )offset: error in start offset expression  !offset: error in part expression  "offset: error in whole expression  "open: error in message expression  open: error in name expression  /open: no permission to open files or processes  $Operators or: error in left operand  %Operators or: error in right operand  'Operators bitOr: error in left operand  (Operators bitOr: error in right operand  #Operators /: error in left operand  $Operators /: error in right operand  $Operators /: range error (overflow)  Operators /: divide by zero  param: error in expression  param: bad parameter index  "param: error in source expression  param: is not a number  $paste: stack is locked (cantModify)  (peerAddress: error in socket expression  =place: group is not in this stack or is already on this card  place: can't find group  place: can't find card  place: source is not a group  !place: destination is not a card  $play: can't get sound or movie name  play: bad movie location  play: bad movie options  *play: can't read sound or movie from file  %play: can't find sound or movie file  #Operators +: error in left operand  $Operators +: error in right operand  $Operators +: range error (overflow)  pop: can't set destination  post: can't get source  post: can't get destination  pow: error in left operand  pow: error in right operand  pow: range error (overflow)  ,print: can't get 'from' or 'to' coordinates  !print: can't get number of cards  print: can't get rectangle  print: error printing  'print: error writing file (disk full?)  print: coordinate not a point  %print: expression is not a rectangle  print: not a card  .print: card or stack must be open to print it  print: no card specified  arcAngle: not an integer  blinkRate: not a number  penColor: bad color  "colormap: bad color name or value  )Object: error counting objects as number  'Object: error counting objects as text  dragSpeed: not a number  effectRate: not a number  extendKey: not a number  Property: bad array expression  gridSize: not an integer  idleRate: not a number  lineSize: not an integer  moveSpeed: not a number  multiSpace: not a number  polySides: not an integer  repeatDelay: not a number  repeatRate: not a number  !doubleClickDelta: not an integer  doubleClickTime: not a number  roundRadius: not an integer  slices: not an integer  startAngle: not an integer  traceDelay: not a number  traceStack: not a stack name  print: bad property value  syncRate: not a number  tooltipDelay: not a number  typeRate: not a number  userLevel: not an integer  beep: not an integer  brush: not an integer  brush: can't find image  #brushPattern: not a valid image id  brushPattern: can't find image  "Object: no object to set property  "Object: can't set object property  cursor: not an integer  cursor: can't find image  5Property: value is not a boolean ("true" or "false")   Property: value is not a number  defaultStack: can't find stack  !defaultMenuBar: can't find group  $Object: does not have this property  #Object: property is not an integer  !penPattern: not a valid image id  penPattern: can't find image  'randomSeed: property is not an integer  socketTimeout: not a number  "umask: property is not an integer  push: object is not a card  push: can't find card  put: error in expression  put: can't set destination   put: can't put into destination  *queryRegistry: error in source expression  #random: error in source expression  read: aborted  read: error in 'at' expression  $read: error in condition expression   read: error in count expression  read: error reading  read: count is not an integer  "read: error in 'until' expression  read: file is not open   read: error in 'for' expression  read: process is not open  remove: can't find object  remove: object is not a group  remove: object is not a card  #rename: error in source expression  (rename: error in destination expression  repeat: aborted  ,repeat: error in 'for' condition expression  repeat: error in statement  .repeat: error in 'until' condition expression  .repeat: error in 'while' condition expression  1repeat: error in 'with' end condition expression  3repeat: error in 'with' start condition expression  2repeat: error in 'with' step condition expression  &repeat: error setting 'with' variable  replace: can't set container  %replace: error in pattern expression  )replace: error in replacement expression  'replace: error in container expression  replaceText: bad parameter  replaceText: bad source string  #reply: error in keyword expression  #reply: error in message expression  %request: error in keyword expression  %request: error in message expression  %request: error in program expression  "getResources: error in expression  return: error in expression   revert: can't revert Home stack  +round: error in source or digit expression  $save: error in file name expression  save: saving disabled  save: can't find stack to save  save: object is not a stack  $seek: error in file name expression  !seek: error in offset expression  seek: file is not open  select: can't select target  3selectedChunk: error in button or field expression  &selectedButton: bad family expression  -selectedButton: bad parent object expression  )send: error in message handler execution  "send: error in message expression  send: error in 'in' expression  "send: error in program expression  send: bad target expression   set: error in source expression  set: can't set property  2setRegistry: no permission to get or set registry  (setRegistry: error in source expression  shell: aborted  shell: can't run shell command  "shell: error in source expression  %shell: no permission to run commands  (show: error in visual effect expression  #show: error in location expression  *show: error in number of cards expression  )show: location is not in proper x,y form  show: can't find object   sin: error in source expression  sin: domain error   sort: can't find object to sort  sort: error sorting  sort: can't find field  !sqrt: error in source expression  sqrt: domain error  Stack: bad decoration  4Stack: invalid id (must be greater than current id)  Stack: invalid key  Stack: bad substack name  ,Stack: can't set mainStack (has substacks?)  "Stack: deskIcon is not an integer  #Stack: userLevel is not an integer  Stack: size is not an integer  #Stack: stack is password protected  Stack: can't find mainStack   Stack: stack is not a mainStack  *Stack: error in external function handler  start: can't find object  start: stack is locked  !start: expression is not a group  start: license limit exceeded  $Handler: error in source expression  Handler: can't find handler  stop: error in expression  stop: target is not a group  2subtract: destination has a bad format (numeric?)  %subtract: error in source expression   subtract: can't set destination  subwindow: error in expression  subwindow: can't find stack   sum: error in source expression  &switch: error in condition expression  !switch: error in case expression  switch: error in statement  !textHeightSum: can't find object   tan: error in source expression  tan: domain error  "there: error in source expression  "throw: error in source expression  #Operators *: error in left operand  $Operators *: error in right operand  $Operators *: range error (overflow)  $toLower: error in source expression  %topStack: error in source expression  $toUpper: error in source expression  "trunc: error in source expression  try: error in statement  type: script aborted  type: bad string expression  ungroup: can't find group  ungroup: target is not a group  &uniDecode: error in source expression  &uniEncode: error in source expression   unload: error in url expression  *unlock: expression is not a visual effect  &urlDecode: error in source expression  &urlEncode: error in source expression  #urlStatus: error in url expression  "value: error in source expression  "value: error executing expression  value: can't find object  Array: bad index expression  Chunk: source is not a number  visual: bad effect expression  wait: aborted  wait: error in expression  !wait: expression is not a number  within: can't find control  within: not a point  write: error in expression  (Operators bitXor: error in left operand  )Operators bitXor: error in right operand      
 Ignore ��p Ion mouseUp
  set executionError to empty
  close this stack
end mouseUp
        * | H                 	   e 
    Perror Field  	            ������      0 H       
      	          8 @         e Object: 
      	          \ ,         e Line: 
    Line  	         0 \ 0         e 4 
      	         ` \ @         e Column: 
    Column  	         � \ >         e 5     
Script... ��p Don mouseUp
  editScript the long id of the errorObject
end mouseUp
        � | O                 	   e 
    Object  	         @ 8� $        e  
      	         � \ X         e Bad Token: 
    
Bad Token  	        6 \ �         e      Help ��p on mouseUp
  help
end mouseUp
       � | D                 	   e     Set Breakpoint... ��p 5on mouseUp
  modeless "Script Debugger"
end mouseUp
       
 | �                 	   e 
    Error Message  �)p�on mouseDoubleUp which
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
  seterror word 2 of the clickLine
end mouseUp
          (                   	`    @ � 	  &    Cursors          �� � �             U 
Helvetica   �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �     �    	@           � �         	@           � �         	@           � �     	    	@           � �         	@           � �       c5   	D          ������     0 0       d� � �� � Ă Nw� �� �� �� ��������� @A�@`�`   0 p ��08��� 8 ��    ^� � 8�  � � <� 8>� �>� O?� � ">߀ >� ?� �� �� �  �` �� ǂ � p� ��    j� � �� �� �� w� �� �� �� �����������0�����?��?������������� � ��       c11   	D          ������     0 0       [� � � �� 5�� [� �� � � �  � @�  �� A� �� �� H� 0� �� ��    J� � � 
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
� `� 0� � � ��    G� � � � � � � @� gP� wԂ ?� �� �� �� �� ��    C� � � 5�  �%���%��%�����%��?��������    m datachoice2   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     � ��+ {   	feedback  blue         Image Type Dialog     ����     U 
Helvetica   U Arial   U Arial  
 U Arial   �    	PIon preopenstack
  
  put line 1 of dialogdata into fld "Frage"
  set the title of this stack to line 3 of dialogdata
  set the name of btn 1 to item 1 of line 2 of dialogdata
  set the name of btn 2 to item 2 of line 2 of dialogdata
  set the name of btn 3 to item 3 of line 2 of dialogdata
  set the name of btn 4 to item 4 of line 2 of dialogdata
  set the name of btn 5 to item 5 of line 2 of dialogdata
end preopenstack

on mouseUp
  if the name of the target contains "button" then
    set the dialogData to the short name of the target
    close this stack
  end if
end mouseUp
     �     + {   
fieldmode     \  d  e  f  g  h  \ jpg �L�`              5 0         	  � 
  d Frage            "           Choose an image type to load.   e gif �L�`             \ 5 0         	  �   f bmp �L�`             � 5 0         	  �   g png �L�`             � 5 0         	  �   h all these types �L�`             e Z d         	  �    Moved Icons          @ @ � �            ����      �    	@           � �  H  �    	@           � �  I  �    	@           � �  J  �    	@           � �  K  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �  �    	@           � �  �      	@           � �  �      	@           � �  @      	@           � �  A      	@           � �  �  	    	@           � �  �      	@           � �  C  H i328  	D   ������  ffffff             0 0       S� �� 8� `� �� �� �� %     �  B  "    
   � � �0� �    _� �� �� 8� p� p� �� � �������������q� �9� �� �� p� x� ?�� ��    W� �� � �� �   � p @ H @ D @ B @ A @ @�@ �@��  �� �� � � � � �    c� �� ?�� �� ��� 6� ��������σ����������������?��� �?� �� ?�� �� �     I i329  	D   ������  ffffff             0 0       Q� �� � � � � � �� � � � � � � � � � � � �    a� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��    U� � � � � �� � � � � � � � � � � � � � � ��    u� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��     J i330  	D  ������  ffffff             0 0       b� �� � � � 0�  �  �  � � � � `� `� �� � � � � � �� � � �    b� �� �� �� � �� � � � � � � � x� �� �� �� � � �� �� ��    \� � � �� � � � � � � � � � � p� �� �� �� @� @� @� ��    {� �� �� �� �� ?�� >� <� <� � � � � ~� �� �� �� �� �� �� �� �� �� �� �� ��     K i331  	D   ������  ffffff             0 0       `� �� � � � � � � � � � � � � � � � � � � �� � � �    k� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��    `� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� �� @� @� @� ��    � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��     �    	D  ��      ��``��  ��  ``  ������  �Ș�``  ���Ș�  0000``     0 0       � ��
 � ����6�������7��o������$���$���$���$���$��� |� |� |�� ��� "�� �� �� �� ������������������� ��    _� �� �� � � � � �  � @� @� @� @� @� @� @� @� @� @� @� @� @� @� @�    �� �� @�  � � � � � � � � � � � � � � � � � � � � �  � � �  � @� ��� ��    � � @� �� @� � �    o� � � 	 � 	 � 	 � I � I � I � I � I � I!� @"�� 5�� � � � � �� �� � @�  0� ��    i� � � @� @� @� �@� �@� �@� �@� ��� ��� ��� �� ��� ��� ��� �� �� �� ?�� ��     � � � � �  � @� � �    � �� ���������������?���������������������������������������������������������?������������������ ��     �    	D   
        ������  ���Ș�  @@@@@@  �Ș�``          ````��  ������  ������  0000``     0 0      �� �2�3�"� P�"� P�"� PB$"� `�w��� PB"� `�
q�	 PB"� v�w�� PB" `q�wh	P"" p�w�P�" q�w�P�" q�whP�" WUWUWUwhP�" �whP�" �whP�" WUWU�WwhP�" �whP�" �whP�" WU�WU�w	hP"BD �whP"� �whP�"� WUuUuUwhP�"� �w��P�"� �w�P�" `�w�h	P"D v���h� P"� `�f�	 P�"� P�"� P�"� P �D� �P�U   ���    �    	D   
        ������  ���Ș�  @@@@@@  �Ș�``          ````��  ������  ������  0000``     0 0      �� �2�3�"� P�"� P�"� PB$"� `�w��� PB"� `�
q�	 PB"� v�w�� PB" `q�wh	P"" p�w�P�" q�w�P�" qw�Uu�whP�" wWuwU�whP�" wWuwU�whP�" �wU�whP�" �wWu�whP�" �wU�whP�" �wWu�whP�" �wWu�w	hP"BD �whP"� �wWu�whP�"� �wWu�whP�"� �w��P�"� �w�P�" `�w�h	P"D v���h� P"� `�f�	 P�"� P�"� P�"� P �D� �P�U   ���    �    	D          ������  ����    ������  �Ș�``  @@@@@@  PPPPPP     0 0       � �� �� @� `�  � 0� � �� � 0�  � a�� C �Â �� ���������@�`� � 0� � �0� �`�@� �� �� ���   X� �� @�  � � H�  � @� �� � �� ��@� �  � @� �  @  � �    |� � � �� �� �� �� �� 0� 0� 8� ,8� ,<� \<� \>� �>� �? |? |?����������?��?��?��?�����    j� �� �� � � � � � � � � � �  �  � @� @� �� �� � � � � � � � �    :� @�  � � � � � � �� @�  � � � ?����    � �� @� @� ��    
� ?����    � �� �� �� �� �� �� �� �� �� ?�� ?�� �� �� ��� �� ������������������������������?���?��������������    �    	D  xx      ��      xx||xx  ������     0 0       � �� �    �� @�  � � � @� @� @� �� �� �� �� �� �� �� �� @� @� @�  � ��  �  � @ � � �� ��    |� �� �� �� ��������B����?��>��?���������?��?�������?��>��?����������������� ��� ��    e� � � � � � � � � � � � � � � � � � � 8� x � � `� ?�� �    P� @� � �>� �|� |�� ?�� �� �� �� �� ?�� |�� �| �>� �� @�    ~ �� �� �� ������������?���������������������������?��������������������� �� ?�� �     �    	D  xx||xx  ������  ������      ��             0 0       � �� �   � �� �  � @� @� �� �� �� �� �� �� �� @� @�  � � � <� x� � � �� <� � � � � 8�     H�  � �  � @�  @� @� � @� �  � �  � ��  � �    }� �� � �� �?��?��?��?�?���?��&��?��?��?��?��?�?�?�?�?��?������������ �� �� �� �� �� �� @�    C� �� �� �� �� �� �� �� �� �� �� �� �� �    p� @�  � � � � � � � � � � � � � ��  � @� � � ��  �  �  �  � �� `�    � �� �� �� ���������?���������������������?������������������ ��� ?�� �� �� �� x� 8�      �    	D  xx||xx  ������  ������              ��     0 0       � �� �   � �� �  � @� @� �� �� �� �� �� �� �� @� @�  � � � <� x� � � �� <� � � � � 8�     [�  � �  �  � (  � � @  $� � �� @�  �  � � ��  � ��  � �    |� �� � �� ��*�������?��?�����?��������?���?�������������� �� �� �� �� �� �� @�    p� @�  � � � � � � � � � � � � � ��  � @� � � ��  �  �  �  � �� `�    D� �� �� 0�� <�� <�� �� �� �� � � � �� �� �    � �� �� �� ���������?���������������������?������������������ ��� ?�� �� �� �� x� 8�      �    	D  xx||    ����    ������          xx||xx     0 0       z � � � �  �  � @� @� �� �� � � � � � � � � � �  �  � @� @� �� �� �� �� @�  �    � � � �� �� �� ?�� ?�� �� �p� �p� (�x �x �| �| �~ �~ �� �� ���������?��?������������?����    K� � �� @�  � � �� � � � �� � � @� � �  �� �  �    �� �� @� @�  �  � � � � � �� �� �� �� �� �  �  �  @  @   �     � �  � � � ����    |�  � 0� � � � � � � � � �� �� �� �� `� `� 0� 0� � � � � � � � � � ������   � � �� �� �� ?�� ?�� �� �� ��� �� �� �� ������������������������?���?�������������������?��������    @ i320  	D           ������     0 0       d� � � 
� 
� � � #��  � @� @� �� �� @� @�  � #�� � � 
� 
� � �    R� � � � � � �� ?�� ?�� �� �� ?�� ?�� �� � � � � �    b� � � � � � � ?�� ?�� �� �� ��� ��� �� �� ?�� ?�� � � � � � �     A i321  	D           ������     0 0       d� `� `� P� P� H� H� �Ă �� �� �� �� �� �� �� �� �ă H� H� P� P� `� `�    R�  �  � 0� 0� 8� �� �� �� �� �� �� �� �� 8� 0� 0�  �  �    b� `� `� p� p� x� x� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� x� x� p� p� `� `�     � i485  	D          ������  ������     0 0       a� �� �� �� �� �� �� /� _�� ����������� ��� �� ?�� �� �� �� �� �� ��    X� � � � �  � @� �� � � � � � �� �� �� p� 8� � � � �    &� � � � � �  � @� �� �    k� �� �� �� �� �� ?�� �� ������������������������ ��� �� ?�� �� �� �� �     � i486  	D          ������  ������     0 0       ]� @� `� P� h� t ��  } �����@����������������� ��� |� x� p� `� @�    [� � �� �� �� � � � � � � � � � � ��� �� �� �� �� �    &�  � � �  ��� � �� @�  �    k� @� `� �� �� � �� �� ����������������������� �� ��� �� �� �� �� �     C i323  	D           ������     0 0       e� �� � � � � � � �  ��� `�� `� �� `� �� ����  �  ����    T� �� �� �� �� �� �� �� �� � ��� �� �� �� �� �������    h� �� �� �� �� �� �� �� �� � ��������� �� �� �� �� �������������    