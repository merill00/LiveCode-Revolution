#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  � Modal Dialogs    w         ������  ������  ������ white ������  ������    �� �         /Modal Dialogs / <www.sanke.org/MetaMedia> 2003     ����     U Arial   U Arial   W 
helvetica   U 
helvetica   �    	@          � �  �  �  �  �  �  �  �
  �   )`         �         � hervorragend        � modaler Fragedialog �e�x  son mouseUp
  modal "Fragen" # opens stack "Fragen" as "modal"
  if the feedback of stack "Fragen" is "OK" # "feedback" is a custom property of stack "Fragen"
  then put the Eingabe of stack "Fragen" into searchstring # "Eingabe" is also a  custom property
  if searchstring is not empty then
    put searchstring into fld 1 # put your commands here
  end if
end mouseUp
       "  � % -modal question dialog
with custom properties          	       � answer dialog �e�x  on mouseUp
  modal "Auswahl" # open stack "Auswahl" as "modal"
  set the backdrop to the feedback of stack "Auswahl"
  # the buttons of stack "Auswahl" have English names that are placed into the
  # custom property "feedback" and then determine the backdrop color
end mouseUp
        ) � � 6 @modal "answer dialog" 
with buttons to choose
the backdropcolor          	       � Schieberegler �e�x  "on mouseUp
  # "feedback" und "Farbe" are custom properties of the modal stack "backdrop"
  modal "backdrop" # opens stack "backdrop" as "modal"
  if the feedback of stack "backdrop" is "OK" then # "OK" is the button name (not the "label")
    # of a button in the modal stack
    set the backdrop to the Farbe of stack "backdrop"
  else if the feedback of stack "backdrop" is "none" then # "none" is also a buttonname and
    set the backdrop to "none"                        # at the same time the value for *no* backdrop
  end if
end mouseUp
       k � � 6 7modal dialog with
scrollbars to set
the backdrop color          	       � use of "dialogdata" �e�x  �on mouseUp
  put "This is an experiment that tries to find out the possibilities of cloning the answer dialog" into DataTransfer # put your question or hint here
  put "prima,hervorragend,excellent,nicht zu glauben" into line 2 of DataTransfer
  # put the buttonnames (up to 6) as items into line 2 of Datatransfer
  put "for Sivakatirswami" into line 3 of DataTransfer # option: put the title of the modal stack here
  set the dialogdata to DataTransfer
  modal "datachoice"
  #  modal "Newanswer"
  put dialogdata into fld 1 # the returned dialogdata has been set to the name
  # of the clicked button of the modal stack;
  #  do whatever you like with the returned dialogdata
end mouseUp
        4 T � + (use of "dialogdata"
- edit before use -          	       � Fragedialog �e�pQon mouseUp
  set the dialogdata to "What do you want to find?" # put your question or statement here
  modal "question"
  put dialogdata into searchstring # modified dialogdata, i.e. the input of the user is returned here
  if searchstring is not empty then
    put searchstring into fld 1 # put your commands here
  end if
end mouseUp
        U � ' 6question dialog with "dialogdata"
- edit before use -          	       � Schieberegler �e�x   �on mouseUp
  modal "backdroppalette"
  # there is no feedback from the modal stack
  # the backdropcolor is set in the modal stack
end mouseUp
        � � � H Hmodal dialog with
scrollbars to set
the backdrop color
without feedback          	       a Fragen   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     � �+ r   Eingabe  Kaufmann	feedback  Cancel          Type searchstring:     ����     U 
Helvetica   �    	@    �     + r   
fieldmode     _  \  ]  \ OK �L�p �on mouseUp
  set the feedback of this stack to "OK"
  set the Eingabe of this stack to fld "Eingabe"
  close this stack
end mouseUp
        ? L 4         	  �   ] Cancel �D�p Xon mouseUp
  set the feedback of this stack to "Cancel"
  close this stack
end mouseUp
        � L <         	  � 
  _ Eingabe  �p �on returninfield
  set the Eingabe of this stack to me
  set the feedback of this stack to "OK"
  close this stack
end returninfield
                     	Kaufmann   a 	question   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     � <H+ r   Eingabe  Kaufmann	feedback  Cancel         What do you want to find?     ����     U 
Helvetica   �    	Peon preopenstack
set the title of this stack to dialogdata
end preopenstack
on mouseUp
  if the short name of the target is "OK" then
    set the dialogData to field 1
    close this stack
  else
    set the dialogdata to empty
    close this stack
  end if
end mouseUp

on returninfield
  click at the lock of btn "OK"
  close this stack
end returninfield
     �     + r   
fieldmode     _  \  ]  \ OK �L�`       ? L 4         	  �   ] Cancel �D�`       � L <         	  � 
  _ Eingabe  �`                    	Heinrich   i Auswahl   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     �  ��+ i   	feedback  none         Backdropcolors     ����     U 
Helvetica   U Arial   U Arial  
 U Arial   �    	@    �     + i   
fieldmode     \  d  e  f  g  h  i  \ green �L�p don mouseUp
  set the feedback of this stack to the short name of me
  close this stack
end mouseUp
             ��        ! B         	  � 
  d  	         ? 4            Choose color for backdrop.   e blue �L�p don mouseUp
  set the feedback of this stack to the short name of me
  close this stack
end mouseUp
   ������  3333��     t ! B         	  �   f red �L�p don mouseUp
  set the feedback of this stack to the short name of me
  close this stack
end mouseUp
           ��         � ! B         	  �   g white �L�p don mouseUp
  set the feedback of this stack to the short name of me
  close this stack
end mouseUp
   ������      E B         	  �   h black �L�p don mouseUp
  set the feedback of this stack to the short name of me
  close this stack
end mouseUp
   ������      33     s E B         	  �   i none �L�p don mouseUp
  set the feedback of this stack to the short name of me
  close this stack
end mouseUp
        � E B         	  �   � backdroppalette    w         ������  ������  ������ white ������  ������  � � ��   Farbe  	50,140,89	feedback  Cancel            ����     W 
Helvetica   �    	@          �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �
  �               H          � R 
  �               j          � G 
  �               �          � B 
  � Beispielfeld  	� ion mouseup
  set the Farbe of this stack to the mousecolor #"Farbe" ist ein custom property
end mouseup
  s ������  22����  ������  @@@@@@         black �  - � �   Eigenschaft  218        �          � R  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into  fld "R"
  put x into item 1 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
end scrollbardrag
        - O � 2@      255       
  � RGB  x    con mouseUp
  Global Farbe
if Farbe is not empty then set the backcolor of me to Farbe
end mouseUp
   � � �  
lightblue    - + �         � RGB-colors   � G  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into fld "G"
  put x into item 2 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
end scrollbardrag
        . r � �      255         � B  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into fld "B"
  put x into item 3 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
  
end scrollbardrag
        . � � �.      255       
  � B  `       � � #         � 169 
  � G  `       � p %         � 140 
  � R  `       � R %         � 50   � OK �e�p eon mouseUp
  set the backdrop to the backcolor of fld "Beispielfeld"
  close this stack
end mouseUp
        q � �  (Accept color of field as backdropcolor.          	       � Cancel �e�p Xon mouseup
  set the feedback of this stack to "Cancel"
  close this stack
end mouseup
        � � S  Cancel          	     
  �             S A            .Use scrollbars to set the color of the field.   � None �e�p Hon mouseUp
  set the backdrop to "none"
  close this stack
end mouseUp
        � � �  Remove backdrop          	       � 	backdrop    w         ������  ������  ������ white ������  ������  � � ��   Farbe  none	feedback  None            ����     W 
Helvetica   �    	@          �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �
  �               H          � R 
  �               j          � G 
  �               �          � B 
  � Beispielfeld  	� ion mouseup
  set the Farbe of this stack to the mousecolor #"Farbe" ist ein custom property
end mouseup
  s ������  22OOZZ  ������  @@@@@@         black �  - � �   Eigenschaft  218        �          � R  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into  fld "R"
  put x into item 1 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
end scrollbardrag
        - O � 2@      255       
  � RGB  x    con mouseUp
  Global Farbe
if Farbe is not empty then set the backcolor of me to Farbe
end mouseUp
   � � �  
lightblue    - + �         � RGB-colors   � G  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into fld "G"
  put x into item 2 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
end scrollbardrag
        . r � N�      255         � B  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into fld "B"
  put x into item 3 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
  
end scrollbardrag
        . � � Z�      255       
  � B  `       � � #         � 90 
  � G  `       � p %         � 79 
  � R  `       � R %         � 50   � OK �e�p �on mouseUp
  set the feedback of this stack to "OK"
  set the Farbe of this stack to the backcolor of fld "Beispielfeld"
  close this stack
end mouseUp
        q � �  (Accept color of field as backdropcolor.          	       � Cancel �e�p Xon mouseup
  set the feedback of this stack to "Cancel"
  close this stack
end mouseup
        � � S  Cancel          	     
  �             S A            .Use scrollbars to set the color of the field.   � None �e�p ~on mouseUp
  set the feedback of this stack to "None"
  set the Farbe of this stack to "none"
  close this stack
end mouseUp
        � � �  Remove backdrop          	       m datachoice   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
     � <D+ {   	feedback  blue         for Sivakatirswami     ����     U 
Helvetica   U Arial   U Arial  
 U Arial   �    	P�on preopenstack
  repeat with i = 1 to 6
    hide btn i
  end repeat
  put line 1 of dialogdata into fld "Frage"
  set the title of this stack to line 3 of dialogdata
  set the name of btn 1 to item 1 of line 2 of dialogdata
  set the name of btn 2 to item 2 of line 2 of dialogdata
  set the name of btn 3 to item 3 of line 2 of dialogdata
  set the name of btn 4 to item 4 of line 2 of dialogdata
  set the name of btn 5 to item 5 of line 2 of dialogdata
  set the name of btn 6 to item 6 of line 2 of dialogdata
  repeat with i = 1 to 6
    if item i of line 2 of dialogdata is not empty then
      show btn i
      set the width of btn i to the formattedwidth of btn i
    end if
  end repeat
  if the vis of btn 4 is true then set the height of this stack to 123
  else set the height of this stack to 84
end preopenstack

on mouseUp
  if the name of the target contains "button" then
    set the dialogData to the short name of the target
    close this stack
  end if
end mouseUp
     �     + {   
fieldmode     \  d  e  f  g  h  i  m  \ prima �L�`             ) 5 (         	  � 
  d Frage 	         !  "           \This is an experiment that tries to find out the possibilities of cloning the answer dialog   e hervorragend �L�`             l 5 Q         	  �   f 
excellent �L�`             � 5 <         	  �   g nicht zu glauben �L�`        Y g         	  �   h  �L�`  ������     s Y B         	  �   i  �L�`       � Y B         	  �   m Hima-small.gif 	@              �GIF89a    �     11� c�c�1���� �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              !�   ,         � H��� (\���Ç&dH1 ć3V�h���p��$!� %ɂ+Y�LI0f˙k���2�ʛ<~�y0hE�;�
%�QiC�M(�*ȉh�* h � �r+�!ذd�.<��@ڱ-�Zu���S�t�j)�^�|���:u������;�  �So}�8cd�{����f΀=2�,z �¥~��:�C��/ ;       