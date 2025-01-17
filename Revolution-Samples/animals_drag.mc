#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  S Animals_Drag  � �on preopenstack
  set the backdrop to "black"
  set the loc of me to the screenloc
  set the effectrate to 3000
end preopenstack

on closestack
  set the backdrop to none
end closestack
  u        Black ffffff  � � �  white ������  � � �  	darkgray   	 ��%         \Tierbilder  / Beispielprogramm zu Drag-and-Drop-�bungen / Sanke/Fingerle Universit�t Kassel     ����     U 
Helvetica   W 
Helvetica   W Arial  W Arial   U Arial  
 W Arial   W Arial  W 
Helvetica   W 
Helvetica   W 
Helvetica   U Verdana   U Verdana   W Verdana   @    	@  ������        �%  D  F  Q  C  �   Bildzuordnung   	P pon preopencard
  show fld "Abdeckung"
end preopencard
on openCard
  send "mouseup" to btn "Start"
end openCard
   ������        �%  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �          ,  /  0  1  2  3  4  5  6  7  8  9  :                     "  !  (  '  �  ;  &  �      $  �          #      	        
  )     <  *  %  I  J  L  O  P  � Navigation   i        �� 9   next �C� fon mouseUp
  set the effectrate to 3000
  visual effect barn door open
  go to next card
end mouseUp
   ������   �� '  eine Seite weiter               A             	        	previous �C� ion mouseUp
set the effectrate to 3000
  visual effect barn door close
  go to previous card
end mouseUp
   ������   �� (  eine Seite zur�ck               @             	       S Programm beenden �C�P {on mouseUp
answer "M�chten Sie das Programm beenden?" with "Ja" or "Nein"
if it is "Ja" then close this stack
end mouseUp
       � ; 1 Programm beenden?               �             	       � skripte �E�pCon mouseUp
  # put the name of image 1 into BName
  # set the name of fld 1 to word 2 of BName
  # set the showborder of BName to true
  repeat with i = 2 to 12
    # put the short name of image i into BName
    # delete char -4 to -1 of BName
    # set the locktext of fld ID i to true
    # set the Bildname of image i to BName
    # set the script of image  i  to the script of image 1
    set the script of fld i to the script of fld 1
    #  put the name of image i into line (i-16) of fld "Verzeichnis2"
    #set the showborder of image i to true
  end repeat
end mouseUp
         � w           	     
  � camel  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
           ������  �  �  g {   Uebersetzung  KamelSprache  englisch             camel 
  � zebra  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � L  g {   Uebersetzung  ZebraSprache  englisch             zebra 
  � pig  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � �  g {   Uebersetzung  SchweinSprache  englisch             pig 
  � koala  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � ]  g {   Uebersetzung  Koalab�rSprache  englisch             koala 
  � 	elephant  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  �  � � g {   Uebersetzung  ElefantSprache  englisch             	elephant 
  � 	squirrel  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � K � g {   Uebersetzung  Eich- h�rnchenSprache  englisch             	squirrel 
  � hare  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � � � g {   Uebersetzung  HaseSprache  englisch             hare 
  � tiger  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � ^ � g {   Uebersetzung  TigerSprache  englisch             tiger 
  � horse  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  �  �P g {   Uebersetzung  PferdSprache  englisch             horse 
  � orang-outang  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � JQ g {   Uebersetzung  
Orang-UtanSprache  englisch             orang-outang 
  � 
crocodile  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � �P g {   Uebersetzung  KrokodilSprache  englisch             
crocodile 
  � bear  x   on mouseUp
  set the effectrate to 2000
  hide me with visual effect reveal down #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into line 3 of me
    set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the short name of me into line 3 of me
    set the Sprache of me to "englisch"
    set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll up #stretch from center
end mouseUp
   ������  � ]Q g {   Uebersetzung  B�rSprache  englisch             bear 
  � Verzeichnis-36  �!`       | *�         image "bear.gif",B�r  image "camel.gif",Kamel  (image "chipmunk.gif",Streifen- h�rnchen  image "elephant.gif",Elefant  image "goose.gif",Gans  image "gorilla.gif",Gorilla  image "hare.gif",Hase  image "kangaroo.gif",K�nguru  image "koala.gif",Koalab�r  image "ostrich.gif",Strau�  image "rhino.gif",Rhinozeros  $image "squirrel.gif",Eich- h�rnchen  image "leopard.gif",Leopard  image "zebra.gif",Zebra  image "gibbon.gif",Gibbon  !image "tortoise.gif",Schildkr�te  image "cock.gif",Hahn  image "cow.gif",Kuh  image "crocodile.gif",Krokodil  image "fox.gif",Fuchs  image "heron.gif",Reiher  image "horse.gif",Pferd  image "lion.gif",L�we  image "lynx.gif",Luchs  image "marmot.gif",Murmeltier  $image "orang-outang.gif",Orang-Utan  image "owl.gif",Eule  image "peacock.gif",Pfau  image "pig.gif",Schwein  image "pigeon.gif",Taube  image "polar bear.gif",Eisb�r  image "roe.gif",Reh  image "skunk.gif",Stinktier  image "tiger.gif",Tiger  image "turtle.gif",Truthahn  image "wolf.gif",Wolf   .    	`    @ �  �   � Start �e�0on mouseUp
  Global Verzeichnis
  hide fld "KeineAufgabenMehr"
  hide fld "letzterDurchgang"
  put 0 into fld "Fehler"
  repeat with i = 1 to 37
    hide image i
  end repeat
  put fld "Verzeichnis" into Verzeichnis
  send "mouseup" to btn "Verzeichnis"
end mouseUp
   ����33       � * Start 
 der Bilderzuordnung          	       � Verteilung �E�p�on mouseUp
  Global Bildnamen
 # put 0 into fld "Fehler"
  put Bildnamen into Repertoire
  lock screen
  if the number of lines of Repertoire <> 12 then
    show field "keineAufgabenmehr"
    exit to Metacard
  end if
  repeat with i = 1 to 12
    put the number of lines of Repertoire into Anzahl
    put random(Anzahl) into Zufall
    put item 1of line Zufall of Repertoire into Wahlbild
    put empty into fld ID (i+1004)
    put the Bildname of Wahlbild into line 3 of fld ID (i + 1004)
    set the name of fld ID (i+1004) to the Bildname of Wahlbild
    put item 2 of line Zufall of Repertoire into Ue_Setzung
    set the Uebersetzung of fld ID (i+1004) to Ue_Setzung
    set the Sprache of fld ID (i+1004) to "englisch"
    set the Bildname of fld ID (i+1070) to the Bildname of Wahlbild
    put offset("- ",Ue_setzung) into Stelle
    if Stelle <> 0 then delete char Stelle to (Stelle + 1) of Ue_setzung
    set the Uebersetzung of fld ID (i+1070) to Ue_setzung
    set the Sprache of fld ID (i+1070) to "englisch"
    put empty into fld ID (i+1070)
    set the backcolor of fld ID (i+1004) to 153,255,153
    delete line Zufall of Repertoire
  end repeat
  send "mouseup" to btn "Aufgabe"
end mouseUp
        * ] u "         	       � Aufgabe �E�pLon mouseUp
  Global Bildnamen
  put the number of lines of Bildnamen into Anzahl
  if Anzahl is 0 then
    # show fld "KeineAufgabenMehr"
    exit to Metacard
  end if
  put random(Anzahl) into Zufall
  put line Zufall of Bildnamen into Imagename
  delete line Zufall of Bildnamen
  set the locklocation of image imagename to false
  set the loc of image Imagename to 94,242
  show image imagename with visual effect stretch from top
  if the visible of fld "Abdeckung" is true then
    set the effectrate to 500
    hide fld "Abdeckung" with visual effect dissolve
  end if
end mouseUp
        * � u "         	       � leopard.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � L � d x   	Bildname  leopard  VGIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � /\( L`1��
\(�����p�0`1.���!Ǐ�]@�2�J�TY0d�..��Q�Ø�,��Yp�Ϟ=
8 �`��TaA��:�PC�&1`-��2aV>
VX����u��	�O�p�Ɯ9�B��:-�͉6(P�����0 �)1y��\�x;M}�ݺt�j>j�.B��ƕ+�\��\��,������zF�ߐ*g��h^�3=��{y�U�L'N]r�b��¼�� �
�;�}7o�|���<�sO�ħN��=sd"��{AŎ'R�I�Ѕ���VhhZxvy�Xq��`���90Y��}Mfц���b��yŉ�Yhze��q)��b!=�Y!�]��םO����Q|)�n
uX�I�L���WO�yA4ӓ[ݩ�߁�t��=	9�_.
F!s��(����䀣	�TAH�Wvxf�C(�S�AZB$��!jR�%��0	�d�C3�A A��\�U��z���*v	�u��&�����q�1=�⛧~6�o@�X\��] ���Z%�i��Ua��t�%���X��TV��X�@�����L���%���%_�I'�t2L-:g��D�F\�Ů��b����^��cv�xr��*<G��>�mH ���,6ݼ-�42����l�������\�Z;U��*�����1�'t́D�Ťs�x�.H�_�q��%Gd���T<GN/kjF|-�|�]gy�<Hq4�m�A4<&aBA'<<﨓��;Wk\�D ���!�:A�A�h.G����UЯR�mv9y�; `���� a�: l`�;#56#:KV�"��:�#�w��%�&���
E�����%A�ά'����r� �:H�<7{��%:�=�0I���:%��j��Ev��x�ߥU�-�8���NG�J��9��j�ә�.���]�{B�޽~�:u�#}��  ڗA���~ �R�ƣ�o�`Ä	�@��e����7�9$/q�;&<a���u�6;���8hq�w\N�B<MD8`�x���A]��G�w9,�H��B�!y(�<���$$m����pr��}��`�B�,[_�O�r�	6@�m�<� �I/�m0	2�����`L�7۹�uV�Z��aA$(-5�C���'�@��~=��N�9x"G���t���с��C|��9$am `c��	�!�fV���,�&Tfp}w��D$�M��F|R��=d�nss@F6����:6���P7��)�f�+��ІO�0>Yc�a,�͝dk-�����g3[2Oy�(��@4�-�7�\l.��yx���,�;"���M����Ȥ Ut-٪�B�̔?����
���ݬj�3� �0d�r��;s˥&i`1 =9Ƿ$x�u���8��GU���MJ��ʮ6���N񉱆	hCJ
�<u U�D��й��.c�c"�6C�!���k#�PR!�fFb2ʖ]�������	9��hs��N}��tf��HH*8'$��h|u���<I�n.��t����!�rHd߶E���T����em���^,����^�؆7���I���z�O���u�FEr6��C��f���uAӎ�)ߝ�o-�BWB!�YOD�pW�]�jٰ��o p���F��}�G�C^���y�a�AX����`c�Mg�_m����J&]�ۯe��_tٌ�]k�`J|�`���� x��=/�<DoQ�F�2L�	N瀴5��b��EBg���43e1��u.-�8]B���v�=	ی�mx�\7�W�&��*F�͑҂�;^Մ �'h2n�4%����*���bs!��q�^s�Wŀ�= OiB�CI�˽��	�h��@㣕�Y��ݐ�O$����,���.)��˴����P�*��HH�H+}=O|ԑV���@<[��������OaI���+��z]Vn�w��o�o����l�R浶���=0�Hy�ܺ���«�Ta�r�؋��]�H`b�>ws>k�?ls�x����,�f�
�g���3����xg����K�rP)Jj^	@\L?�6iF7W׳~x�r�-�'����#f�Z�����v㓄w�2����B�f7V�bk�\Z��OY����W��Y�_|aa_$�y`�0!ڒ[w	3��Y�qw��%��z��I?��IW,	%h���h�)\����=���:թ4��G57��2ڎ�w�a���1N8?�dAs�ń�mO�����
�y�Z�{������n'����0�3�%�rM�\�'����غ�Ј�n�q�u��d�p�O �h���;|�G�\91��`҉~����7�A� &#�����c/Gp/��	;�-�3��0l��0�s��~�~h3�.�Qy0�0�:#x�6]��N��=�fl8Q/0m��:A�hfF>��Ok�8s k��S��k\ףq����M>X`�e8��`?tfZ��0˱;�b5t@f?��fa�?�wq�uy�UKm .C�6;X�r �:cL?UQLellG�B̳a7�1�|�.�  ��<Z�jV]��er�< �Y��~x�V���mS�l0
�j&���fS�=|�u�Wd]hT�S8OF8�bq	I���7i�O��?ד��׆g\��=ǆg�4w�d,�0�.�tu�fwVs<��^�m��=;�<�%B#��6��xl����w1��S�h��(A��OnSi�c��.� e\��Ip���4&�@{�r���Jz�=���{�F�Z�A��3l(�C؆�����Dcr�Np=S47xv@f�eJ)�k��$�p�`wD��cAuT36X1��dpc8�%A;؋�g�߃��N@>DsR��dM(a��=�v�S2�#�V	D�S�a�zV�g��fWK ّ4��ؖ��1�g�ɷ0�`Op1�h�w�I�60�<{O a���w��q7�3��8�g�6C�r#7�8��,PE�_k�H�"��V��0�wІ=�3#G�ׄ�7��O@>�W>9�|�;��g�C�O��=��V�&aw�Q�F��\�Ci���k�j&�i?䖳�`��cAR�Н��pWH���Yә�(�?v�z@�\�d}	c.�3sw	r$G�וh�7"CU�A�^촛�ٝ��􉇆�Z��V�=)iK�X��U8�(c�S4<�0B�h	T1�5iDs>�y��)5���P��-�;:{Ѵ3�b6
\O�j�C��|ndU��?Fe`Z��k�=��`���턠.�/�VZI�DI�CpsX���W<{�ɖ�d3;Dq'Z�u��cT�9x!�=߹�+*���.��0
�/��#J��d3� BP>
C%�@m�v �=	ä��G�S.���t�t�k�����/ڧ.z>ڝz�R�3hcl��S187<�v���'�&�3������y1z��cK��j��a���V�� 5
Т���RS�uX���T�Ww����rJ��i�)GL	�=�=j��Dc��d����:����ڪ�4Bɀ7S��3�40q=���0!.��hL_j��YTf��DsC��HV�~��"��{ڝ+zAIi2����W>9��1��if~f5�ZW$Gȕy	�p�w��7Aଁ
�RsFyӴ�y�:4XH���:������G@��v{��7�0u��=���94As���0Z5E��M��u�p6�3EX��]��`J�$z=ޣ���P�s����Jq.Wyڢ��yw�x�A�=lFj�8i �6�fr��S��]��]�O;�6�(Dƕ�g!k<�<R��
�����δN��|��n�.�6�S�
p{���y{��@�F���X11t-5��hӝ'����z{�#f[�Z*uu�󹐧���p/v"��ӺH�J�.-dT�xq(9Ys6:�$;�{#|�3R"i���z�ە<$�$���=d	Ljx;l)�&W�O�yC�z;zh�{3Ӫ7z�@�D�;�	�"
��d������:�	�*D��S�*�ۆ�b(�DS> p��7`��=��:B��eUVӠz�H�d3j|=�s	��=��=�D�?��}NY��&<�h�=$�P�裆�"���3׵m9�ZfS>L��gxR:)D�r�i��$r l����F�@�w;�D�ʯzï��aH��h���6I 7�On��f�0�K>X�0��gؖ(�1�d	(̶�Þ	���vF��۹�ܴ��6����dש�:�6�8��o�S��¡j΁�,�1 ���:xٌ���x�@�:g1�Į����C�ʽ5{ku�R]�,��.�	�p�\�O'ar;ï7�#�a������6�n��[�$���NXQڡE̳��&F\1�.�0Pw��PI\�L.'2R���f^�T@��<�y.���ף�T9@p��Hq�g��k�����L)��p��pЯ�	�B 2��6G�Q0T5�:.��V�4Ww��wf�������lK�e�2&A�U&�=�ۻL�H��K
th��p��h��O7�,")��Ecjv=Ӡ��uj�	cxE�X�.�Jcvp=Ӛ�$]:�D{3�SV,V3;m2-X!Q5hsf>�q(�4]q�?�ИvJC �_�34C�Խk�M�H�m0���~��V�Wq�41�3��k�.t<zY/��6WQg��0�l>���\:\�B+���rŪ#1 �OVrju2X7Ш���O.&.�He���B;���J}�.���� ��2�y�^��VgU+�Z֊�=ا�.�BS��3iG�ZtԻ�I���B
.�Mj���YW���ӑ��dV�6��iD�P��0��;,��'����{3�K��l+�4P���7�va��>�O��˴�q��s��zs=��1~��B�<���P
�%�Hj���g(D��&y|E�-ګ��m������-I8%I�b. ������<�:`��<�
� @}V4 ����w.!���D�M��Y�hIq�Q�1"��������A��H�@��+d=��z��0���($G�掳�BJ�7�Ii�D����.li�N�q��{S�R�AP��� �QV��j��O��YP!�Y�b�S(n��=���tV���l�0�7���c�[@�j/��Lj���SL�/C�w{~H�1�'��}=B��`[Ȟk��#%KҷgjS=Ns�zmw7df����r�f}��F��S�v�S��D�湞<��Q���I�˵�J�Cŷy�����vR邆[�u>̰�q@o�a2�SI�6pP���UsP����}NVE
�>0㝠zf6���0���W4q6zE���c���WK��-��k0N��4�v��r���Iv����S�yQ߃�c�jӶ�R'1h(J� B��6/|i�b�cH�K�@QH��E�S����I�8yA�_��V��h�&�a?K.�s� a3G��Q��FN�m�̉0G����@8B0�6��t�M�wv��!C�,�!)!�'Lr� A��F�s.�D2T�'9t�����;
�����"��F�/U����ɎkΚ����z.d�����L 9x	�SRzjHX�Іl�����ƨ��u�I�vE�1���b)>Dr�t���A�2���/3���.oA��yt���B�
L2�;}Bm�X�e�%#����d��J���!H�ă:�/�fP���  :�5�����.y�D6(�6.��d0�L���+�۩2�ָ������`&�(�	�;̂f�@o��`��OO�`�9�)�N<q�9&����#@y�	-C21�P�c�N0&�L����1��:!i�wj��z�5����#��j@�&�'��"�6���9#��K������#�&�@2�� r0�ā#2�`�#N�>�Ƅ)/$��`Bn�N���J�
��Gǐ� @Ƭ�jP$=���V����z�d����$���$�ZC-�#�Q %�X��k:�k� ���M���*ʐL�D���	O�dn�!:kC��Ͷ �X#G���ۄ����N�<'�P[�� ��Fr����!hNa:jHI%�z*��ص���}��N���j6�ݴ���'�4��GO�l(S#NH�6*�*��RK`�nI�x�I�]HD	��V�䈷�R���XZ7�/�OO���,c�:$�	���	O|5�Ҏ8ɳ�s�!wc-l���L!s�z�+cL5��)7
�ʨ�xb��ȧN��/ƌ}���b�]��4)e�-c�!��%�9�h��p@�5�Ci7$L���9������ܦ�m�O�P����0a�6�E�5�V��߯E��
�ڎ���Mu�	5m�?�݈����\%G�mx�� Ը_������Uy&:W�ܠb�h�Wac�i>�Fk��p���F4��V�c%%qW�C��w��p³|�G�9��,���K3�3��1'�H�Z���4�:��L�4��K22�H�=g%i����P]	4�������	$4�����,԰a2Tl	�B��rSg
�FR��d'J�s�N�@!� �c5Ԋ'�03a �r��n�8����^r� g�`��4�� �<P?��#su�	�c�I	i� @���-bFF�1W'�b]��y��T�05��`���5<.Ӫ�<�?D��&A�̍4ƕ�hOIHvn8��\*�<�t!*	�o����%E	��ؙG�f	6��pU�%�\��`3�U$��TGG��W.:�Mh$ّÒd���:�`�� 0�]�(�C0��P��M�C�A2N��8�/uӪ�f) 0`�	!O�݈���ł3�u�C&@��15(����8�8� Ѷ� 9��v�����])�O^''\�JS���J �Ik�r���Ʋ�\C��J�+ᑘ�� ��&ȡ~�kZ2�I7%Y���*��W�!��ɓ���!�"����>�%.\I�?6\D5��Uw.��J�$��l\(��d]�P(C�(�!�J��6'r��2&�ϔ3�p�k����"��� �҆��ğ\�\�|�;����O<a�~���xb�.M0lP�m�s�1�E� Zj@d���a�VWZd|c�l�%�dO 0�t�e�aH��A t,�B��ˤ���`It���:��u���~� �T��$WB�C �p�6�\�ݽ~�� ;        � gorilla.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  gorilla  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � /	HP`�K"T��C���ib��+jĈ�"�� 3rdӆ�3BP�d��I��\�p`�PT�f�ÊN�I�g�1�d#�i!)Sb�e�`C�;!V�y�N�=3B���lX�ER�x��6oW65S��U�w�Ҽ����H:#"ŉu�ąH7�lc�$�3B.�z��M�zF`ù3�Kd��mBL[#�]�x)g�T%O�45�2	k��6k�JT&л�a*�ȶ͙6�/�;�^�����Y������6m����|�7L�R�V�qB
/G�%���ϙb�ȑ7a�%w]Z�]�I0�@rD0�~l�Ɵ}G����]S��U�aM��T�`�P�I'M��}DP�v�׉/��f �_�(	U��ي����()�'ԉ',��%,��f�h<24�earj:���$�&��P�$**I��n��A �A�Ef�!5�jgzX�BT%H�0\�L�L�e��\)�llA�A@ ǧ'^�h�@��I��"C�,B�椓^�f�X!GA'lsA�f���^Y�J����G�Vd�y���\�A��A���m�qZ	�IN*���6z^Y}�Q�!d��DQ ̤�K���b�L�i���{���z�d�V"����Yc�8(M��V���"�09�����뫸�"� �K�k�PEբX�k���"��t�Ŕm��[� �[r�w�. $YA���矴��K��U糈"� y�{k��<n0ʮ��D�FA�qD�p
*��M��U�h�U�a��Z���,�,|p�����
!cL ������*�j��V�c����m��k��W����q ���I�y�fAә����֐��J����].�H|�%���o+^P��A<�8��.��f5S���0�p�;�.�g�m��(>y{Ou�%"^P�6�zUq"Г�DO&����%0�u�Ms�T0\�E�W5���怂T�Y`���*�l�uZ����6��)�a�p���t׫G��Wr���DņYU�6���@L��Á�0���."5;�i���a۾�=��*ً�b1�d:U����*�'S�ط�G �J�C4a�nUB�Ej�� �k�)l:mBD�T	dV%���Rֽq%�e����-��s،��G�8�Pu��ؽNT���`>�c���4�����޺�A%��y���<d:Y-�ˊ�4��`�\���0��.�8^�Z���@�&S)������]BY�6O�뛃����P�M�tj-�����,h4Ƞ��G.\&rS۟DQf2�qS2�K$���|-=IN��A�R�{'���5�Y�r 	Rn�CX�K9�q�W���������ڸW��P�g�I��!3Q�zK��ᒚ �T�,��,�ʼe�+}=�!珨ŭP�&�P�0FLbb���#Y!�W}�OeI�SzӢ��D��1C�=�&�GM���M�R�$�&��PD�@c M�&x��m&���6�^���*�Q�B�6�s�)��)E�)�.,���[K�(����B�Տ��C��ji����y�e�@���Z��,��)�gFT��Ͷl_J��dJ�>���p�\rT@��� `*�8�p4�f���P��5%���L鏻���F��Di2�m�N%Ig�o =1�aw'Ե�lJ�' W=Vԥ�R�:U��)�gb�a�xޣ��8!�t+׺0K��2E5����V���/dxּN�J�4��
%c;i��JdҺ��`��%�
.� ��D�T�w��]�t,5f�C%f"�������"yN~��ꋰw�y�tBR�ne� �*!%��%t2��\P3�E0L�Ua��NXz�t�l.9�r��9p����YPv��UL���W�:q��K����E]���F��q.�D*B���dMn�	�kh�J�O;�Đq�N����EF�'ت�l�p������`k���#���*��Q� �,Rm���=�YE��n,��
r�����9C�I�$wՐ�
 5j0�r��,Ԙ�5�ꈈ\�?B���N)��)��ѡZ�0��y�H:�����0��|�'�%v(��2vmR��,A֏�N\� ��	+�JdZ�Ձ��՟�:�)����"9�aN��+�
r9/��a�e����T��[�U�o�P����d�tPm@�4�BV���=�]����2��������jk��u_b"��eA�iI�Ĥ$�I�	�2p{p�2�JU!�h��3C�5s�@,�3&�LCtb��Q=�"������j�+�*�'�S�_ʷ\�2��4_ힾ��}�U���[���o����2�����h�"_�D>F`�(K�LQ"��~�F.H�7�d� x �x�9�e��2�")��Էu�2b��c��s 	�z�br�G	�0S�G���9A��7�'*'>�^�c3�e2HERԦW��K�SR�CF�%'*�K(�+�zl`	,��)�BY�w:	�&h4ҵ.��}�F;�w�Q<rp7�׈2L��PJ��=�gi�v	:H=�?8s,�4ڧ+q�^L� �2�l�74v��4۳w3�i�bkwx�Z�59_�AE�+d%H�d��>�P��xd#M�6)Spo� ��8�FKw�z��}�CH\�R)�)le/B1�&�Rc2�G7�dGAAP
uMߒ���f.��DȂ�,�)G���2~��)-�+�RG#w��1�hw9�`�X/s2?�;�d`��fW2~�7H@c�Q�ze+<H^v�&:��s8\x��Zʒl�g?��M�Rgl�.�`	�����H �'3���b& E�>�z88�Q0��bQ�P�0rw�sH�5)��������6߲b�:�A����H�%����הO*5�"�,)�"�vL4e�����0��B�/v{09m��$�Ow�D�yu.�M#_�2�	e�d0Nq��7�A�5Vx&	^x��`�s���vG��$�M��K�4�$��N% 7i7l��P�����(	��7Dw�	$1U1c1+39�9A�}�wLbQ�+I�"�u+wHwmD8tg4A}v���-�⏧i�k)�!Q�,�4f���	0j�uC-�A�⛘I>vAm�^xU2��6���H�5� �0_�(w,rT.8gG-�a��!U!f�y�z�w�梺����GeW5�$k63r�K�r#��ZH'�bL)xSj1}z3�D'��4Q�0�f��U��$7
��T�H�FV5�x¢H���H����)*+m�	b7l%�G�'_�G#�%HY)CFq�%1�&�ţHT!�qEy��e֗6��d��6��Et�0I>~�O&�����Aeq�5�e*�cT��tU�:D���Ė���HYB��`W� wZ�rhZ���1�A$A4�t�acɒ$ٔ4�C\�4B�t��Lr	 r��!�y.��r,��_�$��~�؃�fO4�M��k)���.�D~�"#�zUJj:BK��!�K%E��>��z� ��@b�4�Qq��`+��A���qQ��g��1y�>DW&	q=�^�'��yMZlQ�;)�$2�θ")0Ĵ^D�"�q7���wD�c�E)�[n"L��I�1����0j�O�Aa��n�"���ؐ+į�w�gESJ�1�eo��0��RֵrRs&,2�)sP<��->�$l��R,�s� �b}zQA/����k�Y�����k�Ơ5w<z���f��& �,�P=�� ��[ fK�p�Wm��wI���DԤ���HMs����HS6�-�r�Jv%��-�8�B��X$�=�"KM@�U�b�gtJ�;��� �X<�.�0]�+n'YG'�~2�{/�w��[�;�s;:� 7; �j��\�P��&$��.5HEZ91��U�.��6��v	ز�'�%��!5F��S��`��$YIv�uǡw��8��t���f8���}�"sNTZ�1�x
�=�.��"���u�wԷdW��W�W0�dMHT<!�^�:LĴ��l�.ك~HCHHi���>�w:��V��#D��A�97q��s2''6��R5��}Rӂ*f	�����щ��Qⶴrf3�{�n"',�P�/��T}�t�g>=P3��H���-j�}�O�bF�xv�,�󶾔ZA�t��	���g��G�aA�٢$i����2eQP35���,�`�©��S�8)��͜e_���'�-�bW�]T��R��$������dN5�Z��72���e��m�{֫6�z�b�2�u^x�'���F.a.E�#��"�h�?�]�DVs���ڿUs>�^+�'J%��6�W��'�lG���a��dV�f�JЀ%:��a�G�+q��8�]�e\���U-�ѧ��%XMZ-�E�)�
��7zn�[=)�Z���ډ)Y�!����e^��Ǘ��`�֓��0���2R!�Ga@;*�7�gm2���g �Za.��IB`����P�4ghxu��|���a�q0�j�TQ?��%��1,�(�1�D�5�r˟���Ua�7�	�K-�s�(Z�5MPaH�P�M��֝)�e�w��r�MYY�G�d���&Cpx�r�3���-����mq�˫ԥ�W"k	�zۄ��fy1��.��s$Jym]��yI�����l@��u����[��%ێ�ǔ�ݡTC)K�+O$?�a���~���A O�P��H�w��XY�Xӵ~d�XR7
�'R��B2_���:q���V�z%P�O.�y���t��|�����R#*I.F߻�P��窸�Rs>�n�B�H���:ȏ��[�b��`a,�D��碮�':����9^a�p�m �O���7��w��&)f�7�N��D��b�t+�B�
"��ė���=ۍ��!峍���2$�5wb�=]�j*�K�B��}�����E��0+�����C`�g���=���C]�m�D�-ރY��x��Ts%��hu����H��I�1��.�m 	��t��.�.�-{�KG�2iq`2tƥ.|���!��h���,�N������ok�M���e�$�,�ln-C2mj9D��rf���{������!��j����w7�,�rT�.;�=P(�����FUҫJ	������$����{_�E�+mB�l*wҁU��I.ɉ�aA�A���J�~��U�#�$��fY�¬�.�����h���>��!g�O���  ;         chipmunk.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  chipmunk  -)GIF89ad x �  ���! ����{k��{��s��{ֽ�����{k�scΥ�kRBΜ{ޔc�ν޽���{��s���﵌�{RZ9!�ֽ��{罜��k�cJ�{Z֔cΌZ�Z9J)�έ�ƥ޵�֭�Υ����Μs﵄ޥs֜k�kJ��ZΔcƌZ��R�c9�R)kB!k9ֽ��{k�{c��k1 ��Μ�{�ε�ƭƭ��ƥ��sֵ���k��s�kR��k�{Z��kޭ{�sR�ƌ��c֥skR9��Z�{RcJ1�sJ��s{Z9ZB)�kB9)kJ)J1Z9 Μc��s�޵�Μ�Ɣ��s�kB�c9�޽�ֵ�{c�����c�kJsZ9J9!cJ)R9��{�sZ޽���s��k9)��B9)��Z���ZRB��sscBJB1����޵�Ɯ��c��Z! ����skRRJ1��ZJB)��֌�cJB!)! �Υ�Ɣ��k��Z�֜������BB911)�����Ɯ�{�Μ�ޥ��s��k�ƌ��c��s��kccBssJZZ999!!!))!! ��J�����R�ｵ����{�Ɣ��c{�R19��{��{s{Z��c! ��sRZBBJ1)1��Zk9�֔�Ƅ{�R��s��kcsJRc9JZ1)9����֜k�JRZJJRB�Ɣ��{��ks�Z��sk�Rc�B!1�甜�s9J){�J��{��s��kk�Rc�JBc)c{R{�cBZ1�ތRkBc�B1J!�Ƅ��{��k{�cs�Zk�RZ�Bk�ZJk9)J�΄1B)RsB9Z){�cBk1J�1��{�֔R�B)Zk�c1Z)��{{�{191)1)199!))   ,    d x  � 	Ԧ����0`@6D�aÈl3�LCmjs��!2'ې����~� i�O�!x�c�V�����뷏_Q~H��+Z��F) �@Ç1ڐ*a@D�)zl��%!�<��l� 4(��Dc��D�s�P��#��t�R��HVB�X��m#ԂC(��h�²*͒�cҬ�6�P�x� ��60��{�֭��q�;���e�['��0���J��x���I����m�!����p*����g�HȎ![���a�6|�r��ǟ��c��T96�YAdF"�v����!5�5���e2?�w̆굷�n�qو���T�ݧ� �	�AA� �c��F��&K[�Q�v�I�yzix�'"C�a��w\��}5�e��
T��U��� �!�p��w��ݎ��T��>ו�	b�Hn�^`M�x��IP_��MI%�U@ Wu��3J G�s�p�ew�؆����U�ٗ@\z��l#�'�EB؇���
YW�J9��Ŵ(���UB�9F)�melA�*�,��R�h7�W�0Y���!�!Q���$i���`@ �WY� ��VܧX!�,AN�d)}�}��	�@5�����`���p�J�� �U=�/�$n�ѵ�nDQBq��ßa�-����$?���0Y�9D.q��Xm�^I��bUB9��|�rd-4C#~T��s��k�2R���	�+��#n�P�q�"w����ـe�T�(L�Nu)~w�t�� o_{L0�6Ԣ@��rV%��d���AMOy�م~�eP>J�r1�AW�n$�N����ߵ�*X�S�X�[y���aI�ۃ>yа[�cq��|~���f��n_�����C�3>�6B��������S>T�D�n���oI��^�d�3��D��S?O+��[�}��^F@E�lem�;T S�©}��@���`� �l.��EA*@Z�����=M����R��L%]������w�K.�!��c)��N�w�����6F`C�������[\T�l��E�hV�{MB2/K'>��JC�%��[���h��	*����������f\�c�6��\I���f$Ø��}
)S�h6ʩi({�$��6-*�z$z�Ux��9f�m�Rk̨+Nl��2�UڅE�A���b�T�f9�u�9���8)��j\�D��E���c�gD�=23!o)�ӟH=�5��%Ѱؿ�����"��0Y;�qN���_���0Z}@Ax[~ȠNw�i>���e�F���jF�'���@�p'!��[�ΩN����R��7�5���c� 'JRjDجJ�b���-*QA(����
P��ތ�E�̈��� ����1N�{#H�)�E�Nc(���"�^A}��g;�5��-SPW���K��G>
���#Iy4�.U�/������u�
%�ID'q25��@r�SA���?U�Or��\�����"��˦�ke�D5XG��4(
� %��g���f�$5Ir���f0G#�J@	h��%F*���6r�G��Iη����V�Z�+��
.�5X����e;gz�R $�	�!��2�FVʮO��LT$),��tZ��]��\�����i�&� L�N���	5 @0�,��]�.�+�������-�6"���G��+��t��@ 
H���%P�	`@�\T"��C � ~ D�m�qa�*��k��Fg�c����pT��.L` $��'��< B !% �Jh���`%�w0v� ���Bb���5��t�ÕS�ʴ�qMoQ�@� �8z ��`�
8�� ��XB:��"`Ac("p �!K���2E8�K �����zWA�@ �6�{ iF���#p�6��!H�H�(p	;� %P�Np�n� X@Cr��!� 
������& ��l ����;6Ľ6k	P�{�8	�0@
C@&`�Q�(�AX�f!	G�p @��-�@E[Y#����l�S�3��� �����>���p�R�.���,B%������@@�0 b�h�gr���+ �]XJz����2�K �\��%��$���6Q�*�z��ބ�s� v�A�P�\`�@ ����M���D)'�0SR��W1@z�WyQ����!0a1A��� �P�,���o$<!L��J�1 �m�A��W�CY6�?�de%+#LNE�C\9A��P�l�?8�"��
T�A���&8�) B�@�x�rz��Eݺ�de(S�M5` Srk��Y(h�$,�bG��?#�[L�H�Rp�R`L` P�,���.�p� $@-�^P"��v4 Wo$T�8L}�DY�o$r}��:�L:P� x H�_@+c+ T��N���w)�)(��(P!0�`2�4  >�O��r�%X�u��6.�bN�#�.��@�� S�_h�p�P�tr�N��P F�.`g*�(p�hP 9�E e��Hc�y��[��5vH��C%����>��?�������M P�M����/�Jp'�K��)�0hc 	%`!��u\��ny>�%�I_h���3B B*�"O���fCPf�b.�~.ЏP�#p�� '@(�#�mPl8b /a��aC�0�(��yNP$�?D ��#`8~_�F�-�-*�t(`�%�p%``�@�P � Pk��W;�U��d>(+��c�1N��:	 S0C�  �g���-���/� Q�-Pm�O #�z  �904�W�Z��D��r��H��$$�?W%��C=�� �40�W�Z��x��,@�Qp7�[Q`^`\@J00`��09���A��r}	[	`��q:�>��0��"�&o�#S 	  ��
PvP�����*�p���I�Q�m0J !�V� 	o��L LP��PC�
�L�l�Yx���MM����H��I�� yp909��`]NH��M�7� ��[�Q��`H�P�� �L� ���4pbW6A@ @ ��	���i��%���6o�e v@ 9 %�0�Ym�	��h ����7�&P'�)�� �q S�q��u4	`�@ �hs�7�%����Y'7d�H�vB �(��Op` :P�`���dɡ�p�RLz]�h�2 z�E��O�m 8� @��sf0�@q
�YJ9dx%YO����e�! 	��kq�gv/�^Z�Ip�{ rO�(��y��pf`O cL��WqP� !P90���U�y:�_��O~m0h� ] � 	CPy`�f-ВG@�J�\�,��6��f�k �0^>`z�$�{�� Up
�i 	z��`Ys�*��ZvO6%�(J�z���sE�.���� 0�Q�)�P�' =�PГ8�xVj�0��*@�z��9�8�9 �0X�f�FId ��\ ��'�¸{�Z��(p��U�z�`rPX �� f�{W0_@��@����P���jV�5k�2ZaW+�� g�)`&�J�{J���.�*`-��%� �f� i�f�!�>�P@0�x�k�8Prp�0�9�q�C 	�YTS�jS��\},X��B� @K�ff���(Iq%�� j$p�����FpM��Zi0R� 9�O08��~��k@����#�r>z.WU�c_` �I�w#� DPx,��W�HPV�
7۸x�n�G�N�V�  �;� 	f@{r�^| pS0#П��N+wUxu(T�$�"�
�	7�м�RXx-RP!m���cS�w�^ j	I! �]�n@D�{8�!<�6 (�O�y1  �|�2I�$��Fh�v(4V��x�,H E�@?���7x����)?�s�M@n0^�x\��c`�4� n�OP 7 " ��\� ��p  vFW�a6�$X�� �fSEY_�	y0x0 `H```xL`����o� ���EPx^�@^l�+Ф�C�� � 8�G�#�����,0�]��5����`` w|2TA=
Z�
��x`R`_�R,?
0�@��_��zg�RЁV�k�_����8�4� }'�HP�7� c�`�gM�EZ+7r�F �Ň�R����s0��	���T�V]� d�O��`M f`=`�:>@�L�W��z�h0�s	� 4�Ȑ  �{|��	`F�c.���k�R=�� �9�	=�w��f�l�g
��p>PW(q��f� b�@�2��] 	��S��{��v`��;�m�]��L��
4#-f��oT�0y0�s`L��HPgMp�ph�L�f h�����"�j`DP\�� �q�c ��R04 	i0�v[ &ޕ?H��9�J��05� 	m̃�	�Z�f�]i9v
6`TP�n�++D`VHz�p@����p@�$@ s=5�d TMFX�c�6N��uk"�F���܃0����g0N��px��mF�t���q�f�nP�aP��� ?�pޜ& v�� xP�@ Yr�T2��hrՊ���QS[L
�m����� ����m�xK�`�W,�_ u�B���@n�)!�0:@�P��F.aezM��f5h�r�<.W�~�B��@� L� g�(�)��{*�m��-�# M`� D`"�vp�� z0 v�<�@P x��w� �:�Qe lz�Ǆ��]�� %�TJ���Ngg�Z���P�h]�F�H #�f Cp\� p�� P�P��� ��2�J	�j����A�CH�A��;�2��B�+`R�c���8�' ���! 2��� X`@ 	`:� �3\� y�v���.�(A)�hW�cHXe�Bz`z�2O�&��Da�A�h��)0���^�.�\p$ a�z�H�]��V7;S  �M\*$R��"�y���Yvb�O l0	l �T"Jo�3� 
%o�g ���7 &L8�rd�#%� �"�$"��$Ȏ%B�r�A$U�� �� 6l��D�6$H�@��  �7:cS��� j�@�@B͚p���0P��@q$

)P�`q��E���a�9? �P��8��Q����4x*A²�>M��L�$8��13	k�������$� ϠAg�4��B�X`�Pq䋛H0�0�H
�8P���:g����H�9
�����4|�,g��L.�3��lV��C�0aÐ%-�SB�P��8i���:���.����FX� .0C�. b;� �'2�@
Q�+�)�hC%ڐ@�6�� Xޘ� ʂ�32jX̨ 4(�6b!�=�`,I����3��	�B!	����A��&`bH4xH���H�`�*�@"�⤎��
� �$�I���I��(�3�E8���>�� 8�&� 	#2Ea	/�@!7�*��)�������D�9� "�"�  �` ��hRIl@�	"��X�k�I��CF	��$�Mt���
 `Q!�O	�"�P��.P �#��b	"�A�	.$b�6���9@("@��
�H�V,��l0�2hR��x��7$�����Y�eD�Nt>	dҡ>�>�?�0��/� a"(C7�~�b�6d
" ��
ze�|`��)��"�Lx)捤&���Nڛ�% �=nc8��Ѷ�v�U�PP�7� T8�e�ІL�kQ������]'4P �Q�xB��(�&���
;����c�6�"O2q�U\��	P���I&(` 4И)�j �GB�mÕf趄 &�PYj�e�dBD�h�3�x��;�` ��`b
$ް�QY��8��/�ؠ�*pb�4�;�^���ذ	V���H�I~!Ox���&8ql��E0��
Wt� ��!�V��(T�!H������8P$l�6�U~P�A�0���`���	�Ѐ4H�
L�� � $�m�h�/\� �a�D�V�` �s��(*A�Sp�`�7t�g�B��p�	[��ml�����0�"g0C��`� �gȐ<��x�*�C�	I�Hѱ+0@�^���;����#��dB��F0\q� ����xC3��;t���� ��
P����0��j��pF&L2��FP	���P�Hy`@��3@��)$
RHaTW�� �Ѓ+�d+��2�@���m����1�!2��� �+\!�x���D+�!Y|�A`:~q
n�^\�3B�6	��	t�m�@$h�:5DjІ���U���	d �h�*W�lB����G0"� �/�q�vh�� �
�����m@E+ޚ	�4�m��FD���
�0ۂ�6`�T��ІTa E!�02��d(D%��\���l� A��]4��H�0h��2�aVY$CE&T(�mxxm�,B��Ml�Cp�'BaD���;\��+�YB�@�>�	x�^(�� 6�mU� ��#��FA<�	���ى3�AM��&81�tc��&D�Bc���E:
`�"���,f�	X�	^�6|qK[L��xC�Lcs}�'PB����BX�0<�8M�@C&@�c0� i�4A �>�*�0�L4���9葎wh㭡��D��
�����/�1�u����D2J؃	�A���-�!XAb���`�%(�} a!�!~Ԡ�1@X��k��tN<��z�	i��|`D�A�Wx��`�]�\�⸂��,��[|C���b+�!A6�H븅;�xg��E4(������@�Pa� ��@ O�Bo�����?0�OD���&P��p�#��K���H��á[a��"���X\�������n#?vpF/�Qb��0�X����d����*6
W��zBpZ` ���X���+4�0
&0�Y�c�X.�	]�{Ѓ8�!�p��,~�1dq�H��v�,|&؀�pG:��]v���<��
�D�^5���.|�h�10��J�D@N�c��i�a|��Pl�#(C&�av�b���� 
$��`G2��A���P@$$��QT!���u��6�B��E7���m�� �0��60@D~hBNpsy���:�����
~`�;�q��6qk����!l � G4vq�F���PC�$��dX�J��`�<��Q�R[�*xf m@�PO�d��KuPw���u�g��H�QȃHB0(X��B��>(<H�3��'� WXcІg�D �	�M(5��	�2`Y(�h�S`T�,3� 
Ѓ��o �i�����c`/��_Ё��e�?P�i`ȃ[X|�zH�xP�{��o��vȃ��A��7@�F�F��C<@'��'�axP�!��(P ��&x�b��ZЄhY�  P��[��u�o؆����(g��^;�i)�A��H�mp�nP`��y�u؆�:���Aj �0�2 7(��(0��m`��!�7��0��1�@^��S`7�h3H�(H$��
��[�\�~��[fp�H��
�u��A�M`Y�hp�kp�xP��tp�m8��X
�@PXt�F8ZB$��P�@��P(�S`�3(�s� .p�*�N؅hȅ=�E0��; ��R��xL�`ЅI�8�}�_H�v�\ e�Ed �G� YȆt �r`�d`�n�]pu��Q�I؇H8�7@(h S8�3 �j��!X�����n��L8[��C9��0�
`��j8M#F��� �/^�`P�r��[8�`#\x~��{X�B��D�bP�z���m��r �}�~��H��` �>Њ�5��UЅA�$��x�!WX�D��"�%�%8�t!<X�h�AN@T�KЄX�U�Ph�b��s�xp�[x�<�`�i�k�* C :�tXnpwp�kHYX�tX�^H}@�~���<� (��&`Sp�YP�Mh<@�2E��P@՘� ux��^�g��'�g`�h�L���+t�Cn�sX�c8 �`ؽ�[l�DH��xg��{�lx�y��pn@�`R~��~@��!�
p(�MF`�U D��2`��c.Wh><�%`$h (�h %ȄK�Z�+mXa@�t�4�Hs�vȆ��ۥ�b�Z��:0'@w��p���]0�ah>g�W8>�E�2�0`)�T)�)4ЄS��v�ah�rFP'0�KP)8�(&��V��pP�sȅkx\��q�[��lЅU�cv��f8�6Ȅ�cchDH�D@�{ �?Tl �f�m�8@T��]��PI@dH#@P0b5�NXDpf��i X�9c�F<L�D<��6�t`Qq�B`�R��c �W��^L��k��shK�+dBh�3pk 7��WȆ�,Y|�k`�jZ�U=xM j��Y�5d��C�<�s��S�9DXT�7;mЅt�]`;kjT0�V�Dxn��z8v ��� `�W �o�dh��)P0�\`chjQ�Scx�l50x�^��k��nh�v�u�n`�uxcX�]�k��f��~�N MX`]��r �Zh��mV�[ȃiu��lX�k��op_`�J�Q�nxtЅY�$���vd�:g�Dx`�5Y�0`0<Y@�g�T�`c0sp�L8\��tȆli(y��|�ZX=pG8] �UX�lh��W �`��^#�V`Qu�lX�a������o�|�T`-h�F�ą!�t��R��rq��Ն`��[��NP�G��^h�f�5aP�e�r��kBM���hpG�B8�]�V0�r0�k��q0lx�u�%
vtȆm`��	�'>MqЅ^�l �2h�2����ih�MȚ⫆YkFa��9��(u0�OX�Y�ubZxh�Sx�Fx$�	� Yh�N�4h�eX�L��lP�xp�r��r��z؆�3)��Zp-A�Ihs@T���6�C .l0ᖌ��e
�e@�ߜHOSp�M(a�nx�nH��jO��S�jXVx�N�h��T�PpLh�5�,�s�En�Kk�U0�U`��}n�P�PȄk t�oH�P�)`%V����_X`���0``qhF�5p� x�kȆx�wh��`(O �� &@�N�9 ��r���k/r�z`+]�v�hpf �gh�`�U8Tw��W@�2�:!�r����㓨p(�;�QO��A�0_H��~y�AX �ІkX�m��})� m�@J�@Dx�;��[��U��LЅ��l`�^ЅgPvx�W���j�PЅ�X(�Y �S0$�e���t�P^��ft�e9ă�mO���f�p�w�]� 8�P8+`��n��[�m@%��\�M` <�l����kWxMX��n�fXP�g��]��m����CX�t`�L���H�Q��3Y%��3|�kj+`��;@��o��Z��5]�J�i��u��8;�T@���J�_@���]T�na�ak��E���n��u؆e�=�f����0X���Wh���_��	�AϹF��<p5��c�~k]@>�߳چtx�#Pa�^`���
�_��p�l8�l��φ_p�� sw�[s�Y�O�M7X�}EP��`K�s�c�����=>��4��
2V�<��A JMG��e��q��TH�Ƅ6�T@_k(���Z���@!���a�dP_�1�mx���N8�K� ȁ/��A�u��C�R�^���*�/�  C抽p��Ah�EMpM�t�dx��r��k�=v��r�VM "����ke�F��6�r_(U��&���Y�o8^8�M� 0�Px�.�*�J�&��� (�2� ? ���@A�_hf8�~3x y@DUH_��pЅs��q�j��(�O[��{�sXp�7�O�F 8����\�UOS0�S ���c�{ �PbP2�I`'4Ѐ20��ǃM��  ;         tortoise.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � L � d x   	Bildname  tortoise  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � =8�@�
�(0�C=<�R�I$N���ሃ8MԻ3E�q��q��ŖU4�B��Qr��@�	�;������Nsrrr9AΥ	�.	�کS�	�(�]�w"�r ȑ�0�"$&0b�H�H�x:���	6I�h<���E9G�j"��%OsX:9��qc'�"��*'�%9l.]�J:¥ _h�X�w;� A�b�#OL<I���F�-/��wN$t����$�_�l0͙�M0a�.�a�l�[�I��h��|{9��6��9��~p@�V�%T�R6H�_��D	m�܁�9��t�'�h�&&Q<Ƶ�F���	�H�6&rq�vn7]tH@8�^�&��_j�l��E�`��BX!t�׆�s���i��r
�Xjt�B �]�JjĆ�A��t���%E���������sv�A@ ^�m$A�qBd��O���04i\qNi\�mt�e�D	�l�qɆ�E2��!�_z�_�oi��oq(�gP���B��h������Rv*���B��3�l�y��.��Yu�ѥ��j$f�b�D�f��lH\��x��'/Dة��F{놑`�]t�ۡ���S`$m0J!uu!f�TB+��E�Z��қ�vks��K����Z𝟊g�_�lZ�kB[�%����
Sp	�m�Ah�÷�I�e�;\�F�"��:k,��2���qmbR]�F�忑:����q��VD�̦]�l�!�&qr�:Fbg�(c���'�F��Ejy�vH@B,{ǊIa��bBa�p��d�I�*D_
�fX�u�s�9�|J�%^��̑v*�O
��R}�&�R���G�k�����%�:�&�D�,���k(������ Af�l��d�l� ��j	���Qˁ�r�k�t����V*D�"Wˡ:�R��_�׆VԆ5�:�ͼ��6P�YGБ�:�5��C|����D$��T���:f� �(F�i���V��hO�Vżb��E��#��,'����C��º<X�\�,C�!_
e(����^ T��8�$b5�ѐ:� $��U:"�F&��L��P����h��)��E1��*JbB����-�iL8��W&�;'ld�V&��(KBP��zEo��*c��<5Vz�� 'qP;�J*ϖ0+Y�e++b�b�O<MV�Ҍ���*\���tȔ�!��f� �c�u���I�mh\��� �!~iD��rx�����Y���?��O1���$<h�&���أ�8I��u�g��$f:��Nr
b�G�谁`��ܔ:#d�rNb�@��'�NxX���\�NNre��	*$��@��ҧ̃�N�av��`���`�kV��!��-niPH �<0���+a��NF� ��sƼ��޲ O`�j���:E�}RCIf�֥�"�>�Z�����)^�"���
�Fd�?�<�/�p�M��6�N0I��9J�N^$L�E,$���e��@n���@ :�=�'�\�	8L���>��Kd�@�������=+4Q#8�b��,�;��,�>r��W��{JPa��Z$8�K�|�g� !�*�/�i��\;E=}q�z��WR��:) 6}P�+]�zŊ{�S�7`�:	PgZ���$�ޒ���<.���;$��������]�.�����3���H[-x?U����kh�D�}�NLs�����]O<��}�ꀦ��@XpV�0��k�����5D ��A$����k:��NW��X��Ib~�����0ٿ���f���J�68@KS<A�u/�h�����)���T��6����D%�1���N��<� �6+#ensEJ��9���H���?�)�
s�<!���X�q�_�pf1��1�H�< x�+n�j^���6[5)K�L\���t������+W�׆^�5.�XM���sd�Mo�5ͽ����X����!��(�u�7\C��Ax>�+Lo��dB:�/�h��8�>q�SA�]�_<G���u���'�{�t���M��h���=O���:T�FC�H!���j!G?����'l�R֑��LW�	e�r���](��u�~�n�<q$���E�q�ƤGUC��R.�}��~+�ep��n�o���ڂ���\H=�q�x��Ɔ4-R����*�[�O>��%��G=~ȊD�'���̎m��|��kM4G��t.���K�z��sJ���wo�9r�G؎��Gy�*>�W2� `<�puG�F�������j�=�(���v��('�M-��|�8�N�����$��0t_�Ïmb4���'H��w�A��p"�y2&��|Odl�&pW�b�W�N� 'uW��\(em[Ti�&x�6A��P��	�gf��%G}br`A2a����j�V
�s)�r�i���r�Fr�e0p7�m�Nx	O��9B&bR2c�jlp �7`�m�p{�#9��{R�UfAaR]�')�|��~rSnd	�0Q��/2aff=A �6���u6ڵ~��m�ƈ�rt�i% r�v�}N�gVֈk0NNr@�p	{�v6uc��1ws�}n�uT�tpq��GobA��i�
���x��\)e�v{��zh	`��� �� ��mz �z�z�`= '��b�拹�t!`gwko'��i8Ȅ�F�� ���b0����m�7Xy$�����qǶ�7�t��FA�Fy�K��`	�`	p�{h	�F�Q��x�z�p��cb�%P �'8�=�~KXJ��\<�]��rʈЌ$��u��P�{�r�ނj9vBN�b�q ��o�(~��oR��>"h-&p"�jT� x�Lوh���@�r0z�~��kE%�!kp am�8���g�mq �g�9&Z�|�x����	 	�r��k0�k�ᒀ�HvC�W��&h�&x��j�R�ceI�yW��'xP	!	�b�P1���x	0M�:B}���&|��x�����R���)�ۆ�L}�'K��造��x	���n��I'���Q�X�ZYp�we#�y~h7�pI�KH���։�9�Jɔ�X���	���pR�ۑR�#�6���v��	q��G��ن7Y�"X��������h�w�u�}5���k��o��$o2&��h�����8ك��Z��6ضj'l�i��v��a��{�w��u��=$I�E�o!(eL�o����r���%�"�$��Xs���s�m�n�e�e�!�E�Z�yw�`A^7uTrN����RI�Pq����QP��Y��^�-�Eq��Dc"x�wf 7�Nh$٩�sG����� IUq��Q��
�Q1薖q�'Ȑ^����wS'u�h	!�#
}B��?�stell�mM�	xI��j��J@��Z�aS�7���g�qt"�ЬOB�6�o� I�"Zi��|y�gw�{ٙ�z�꫻P��� �dZ�݃z�%"�zjyڊM�!�z��:��*eL��Z��3+��`��VA�UA�	�`r0���p�gZ*�,w(l�F�/���	���vg��Zr|� {��+��j_�	Wa���y��קU�|O�	H�1�� g�Xw�JhCK�P�Ǹ~4��b���>;�d;��!��EW���7�G.9�6��4�i��u�Nx���FWE��	��xY�Z�K�j`[��>�>(��N ցV����1q��>�W��e��(���& ��I��울5k=�7��ę��V�>���x��q��@���D�5�%�i�ƀs(�d+�諻�:f��3��ڽ�k�;���vNѶcD�J��pס���̩���	��oB`����������;�;��[��۳���Dk��2'��^�I�a�p���>��{�4^�q��
ʵ����K���ȳ�Z�0
5���ʇ�H���X�Ti�W�����A�a��Vfwב��.\��_�������]�1���Q�OAyP��7��I���i� �k��vS
G\��$�X�ء�d���굏��ȹ�Q�����_K�<������}�����>	%�6�	���zh�w9i	� ����_�Ț����g��a۳�뫜`�h���{������x"���
|�QNX�|���1L��˫䪇���m3<��!�d��:;���^k<�i��j�фe�~Zi	��;�8��\�)�v�M��J�1��͈{��s@ƚed�p�6����cv}�0��4�Z���=ͮ蹫�y�|��|��ڳ��	�7��c���|A�^�����]̮���	O٫V1��p��)�=m]���mPVeM��E�»Юr0
�FiV��,��	���Qq���	�f�	����k���6$q}A4�i���0lSU�~�wL�ûo�b�	ML�	ª�9&�Tq��)���5��
��$��N�rܵ�����0tf샡a��>zS�`F�\���'Ȑ��{Ƚ�4K�!b� ��}"umx���S�ӵ�P@B�7�$��-�3q���K��	�$��1��-���ߛ�ټ��|�Kzx
tȸEA0��뱴Q��{R��黖�|)�a+�J��(� EfsB�E<�K�3<��+hI!H��������g�.+�;�s䌲�=��J˵��q5��-��������mw
��U�^�� t�ģ�gBK��>��j��������	t�yV���������l�X�,x�+�zs�~^��@N��b}Mq��&�|u��.���W�0a9��]�%~�E,���>z�k@��~����r�0�����P�!�
�����F�$\����Ss�N��J�*�]3�sxh���lK�K�p�|e�Q�qj�ס�����>NA� �#~�̬�ia[y���	a��>��mǔ靠!�7V�$cH�~,��sq�K����\���`l�!��G@��%.���K��0�!Ĭ��0�M������=�$��/XCV��Ԙ��]�?���3���~1��|�r<r!޿P�d���@����E<�6�����l��(y�М�$	�����eL���>϶Td�)��ꝸ�>�RY�N���>Բ,����s	����;��ۊ>^��]�>�1x	�����Q�@
VQ������d^�:P�B�e�U�.�>rsгCM����%�#�a��ɋ�\�ڻK� 	//\����N��6q�Lv�^C�� �O�d,���\����dl�<������R�N'P�pI$"a#�"����a3硜 A��� ���T),���R��YS%͘7[8� Â_&\y�B(�i��a���|��Q�'9�	ԓ0�H;]ryS&��1��T���K�
}�$��hX��|"<�	�ƍ!@|���9S���fM�K��\2ܕ�Mhmͺ���-�0.QG'��I6�V����9��8�$�L�JJ�@�+S��	33̈́B��3'N�-��Kq0�5��l��F�.�� �(Ad�2�Y?�Q����W�@���]:S��
b��bC��9 p"���`*�<H��)��(�V"j���`��CK���.UZ�
��C�d�09\kЉ��`P�b�,-��?O,(%@{������@��%�dh:
v� 	�䀀#!�L�i��$8QO��� *)��8�@CQ&�6��&�L,�3�xR�(�(8S�#�٭	���*��*i�`<i+�5 @�'��'���2����'�,�r!0��+%9��h�)�#�,����36d.���81E�~�,3�. �P���1�̔2�(F�䤓��8"17ɤ(X�H��%����JK �@�ޅ֦jCdQ�`x�P��i;E/Ym�{!�@<'�(���ب���r�d�[	����,��"��@(�:�*q4����J���������]ݔC$���Q.��.��i�):O������/�����;�jk�/=��*�4�H�<���8��dR��� r+��:�����"��3�|��`��������/K0���Ej� �aГ6�|����NTY����Z� (�(�\�uaZ�C6�	u�U�	�=j��"��?��b�ԕQ��n��]L�J��캌�C��p��#O|��]/��yۧi�w���Y;#ʧ�:�@���<\��o!��D4,�4H��Q̮���U$d��\B��<�Z$*r����L�YJ����F)�K��'�ţ5�#1�]U2��&6��@L����dyA�( �T%�0j�Cn���)6fZ�%:�:ԍEA2������#Nl��3}Ie{��^�#�|!`�P��d	7�'6��(4��1Sa�UD���=dH�@g��;�l�T�_g$��M ;H� b�T7a�!R������$7[�4�4h"=e�9[I�	
��N`�'[��YG�%E]bD}���JV��>��/;�H����(7n�ٮڤ�T��P��6L
zD��`.��&d���Ƃ��� 
������X�#�C�C0r�{9(���C���H8F`V@}����R<��G.�	��.�_tT3&ɡ�A�3&�D� ��QN��B�hM�)<�d``xգ_��L���¨�X� �%�"�؜�5��S��юX�	��M�x���4�C�$P���->1
X�5�zs"fd�'��;�2�=���Ϊ҆�@ 6f�Hn�9��I�G��<�X4!5�Kd��3E�LseC.����rV�&U" X� �6�S$ʇ��n�b���)vB��^.���t▍�mx��Z������Y;r��uD�p���T�Ξ�M�Jj��/F4�pC�B6�4�wbvr�  ;         	hare.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  hare  .�GIF89ad x �  ������)!!�ƽ����{k�{c!絜�cR���scZ罥ޥ�ƌkε�����{k��k����kR�cJ) ��s����{c�����k��c{ZBέ���s��kƜ{�kR�cJ�{ZsR9�έ�ƥ޵�Υ���sΜs�sR�kJ�{R�{sƵ�������ֽ��{k�sc����{ccRBsZBJ9)B1!{sk��������Μ�{�ε�ƭ��sε�ƭ����{kZ91)��{scR޽���sֵ���k�Υƥ�罔ZJ9�kR��k{cJ��c�sR��cZB)sR1Z9 �֭�֥�Ɣ��s��c���ν��{c�����c�kJ{cBkR1�ֽƵ���{�sZ����ƭ��k{kRZJ1sZ1�{kcZJ��B9){sc�ֵZRB�����k{kJscBRB!{c1�����{��sskZkcRJB1)!��s��k��c��Z�{Rsc9cR)ZJ!J9ƽ����cZB��k�{J!!!�������ε���{sZ��R�{Z��s��R��֔�kskJ�{RZR1cZ1{sJskBZR)RJ!JB��c��Z��R�{J{sB������RRJJJBBB9kkZ11)ccRZZJRRB))!��{JJ9{{Z!!��ckkJ11!JJ1ssJZZ9��RkkB{{J))cc9ssBZZ1BB!cc1 ��Zs{JksBksJRZ1JR)Zc99BckJRZ9JR1BJ)ZcBk{J19!{�ZZk9csJRc9BR)ZkB9J!BJ919)BR1Jc1ZkJ1B!ZcR9B1BZ1RkB!1Bc1BJB191)1)!)!!1B99JB!))9JJ1BJ   ,    d x  � �t��k��nŶi[�-��m�xi{��nݎ#FX�kݮi7r!�n�;6�\�I��u�F�W�QSj\��$��vz�$2$J�ǒ���MO�m�&��8"9��Ƚs��a�k׎qd	�l�jڪ�T;)�1e�ޖ+�,(1S8���{lڱ�t��u��3���r{,\�I�ճ��B��j~���q_Sr����ߏ�Ʃ�T��c���FӔ)b�Ls�:����W-[7�b�`!wS�1!C��:4�tFQ9閛�ة�!Y��&v��is��C�.G�'�Lڻ�ﺃa�%ڲ��k+9��6����B��8�C�J�r�m�V�)��1E��r18��($�u!{xul.f�\{�L��i'�6��<y֙e��4NF4Q㖇�1&vx#�(�,C�&�ܡ�1O��1~�ȑ^ȕ#�)��FTq�%�y�u��$�G�HB*�PI��V8-mĥ(�|h�w�qT��$��&q��4���S0��4y��PX�rƠ,)��q�R]�	RI�ݩC��ͥ"Gzx�kIӉ6��s�0;ı�!� QG9�1�)]��S_E�����閃�qT�N�ܦ�W`QW]7���G����5�_�tr�/�X��3��`��rDRT1E�_:8M�z��)2�b�����R�ڮ�R���Wj��5gF���߇�I��)D�uW/�؂D��P�:$3�-	� os$G&S�ʲ�`\���Ţ).!%a���5IaQ�Wf���fk�
/6�¢���!����3Y\�/���F�쬄_4-�0� 3���|:�m�aLL��6�m}&�o�	c�w�1�)�wdܴs�
�A�G�zɑ@H�#�! ��,�,p�R���4��$�4�LA��e��7ncQ#�2���l�]��i�x��ݼ'ֲ�g�1}�A�+j�с�R�/H�aE���9H�G[�Hx�z#�y��B�жa��1Ӛ2�7*8M-.���lՇ�(�#z���<�7�1�"�	p�X��Y���ԁu��lӥ�*Jd���>��8��(��`��1��2�)�tU�zȘ\���A+H ��?H���E��3?�>��ۖ�g
WTj�� 1���� gj�IY��i��IR�Yg4�`(Wg�*P�
 	J����^ԂJ�B�B;b��[�`Xn��Fp�J�������HJK
���Y��)�8��U�`x9:�ܡ�R�o�:� uP�>$%�#(�r#a7#⅔q��J&q�(�\t!`��&K�7�X���B.�U�CfQ�9��2qq�� s�˖���
���x�������d#.�PF5������hCj�q,Rbؖ��2�:�A.�a	Z"���-�0�!�A	ٸ�\��5Ӣ^����i��]� LjₚrD�1"{�_��-�6��1��3�@
�Ѓ-|A�:AU�Aj�$@	2�^�9��̒���X�f�#d�YFP^D�p�B*��R��sJ#�ӈlI��V�"	5�A�`	�"5A� ��J(�\j��I,MR���6I�ą7�K W@��/�
GP��3��5�ۉ,2�J"R.�:�E.<؎#�`
��C�P %l�]�@�V���z�V�0��2�b����I6�����,p�B����T��1 ��Q�����!�;��x D�#mP�G�+�Q�=	�su�� �h��)2�L��ʰ'ގ8V��S��p%uc����x![`0�$U�GpM����*�`�+9���=Sk�5�Je �`��1��o��Z�.�2#���=�����d����n�8t�����(���K�VAY	1��.E6�P�B�7�W�h�o��� �g��j��v���=t�6��0�Cf��B��@W�<�#W�ғ1�r�ذA	kR3���AbI�i��P�DԘ�4ʘ��)cu0/|a ��u�Y  �If#��aX^>rc/�M��9�5�����Ű��j�#ྫྷDV�=�% .C�ˈ�2��Z$<��t_�D��T���
�+�?3~�� �(�� �(����x<��f�pY#+�|	=c6�¤�q��M�Y�I��Uh����
��j�a,yh%pf0�1���8�����C�|�$+�p�6(�c�2\�צå>�C�hPu��៥�	�M�
iDV,?��r��)EIJ����ܫ�T%�<�k�r��`Io`hы꽫�/\�Y=��
� �
��6ܠ��l���t���9�T	��	4�F�8��ϐ$PV~�G��1�i�F��vLP�����2�A!�@�z��j=B���eH��̸7�a��r	.���!
�����y�ef�}��_��a���4taf|#%Wq�@z�m0d�v��ZgI�F�'y��X�pjU�`X����Ƀ�� �8� �q��@��C\�M�`?M7�0	J@	�O��`BRP"Lg���0
I�%p@3xN���#aXՀ@��Pa�q�Y��q �z#U��W��;�'�u�VSp4Sp r�Lp=!e�Ve� `�ue����� QD�^ʐ\8X"�%\s�;����aҐ�7�py�^ݐu�{I � 0	u��p75�C\2hf�������tTtAz�bf��
�ǀo�;�5�!Y��}��Wa����km�R �T�Zpd� (8�aP�0&�s�.FG����� (��p��`�@y��i�А�F3���w�2�z`Vd`�@�k8� ���H7p�.U�᠓zy��CW�z�t�$�%�h`�t�uq� ��eI��^I�xo��0+u�8Pxv�P00 �t �~7��p��:IU��T�u��i���=��
�'��ȇ�j�Ǉ��9�P�� ����� ���@�0/�	A�%0HLG�p�sif���y� ~�<��Q7��e�D|�W~Y��t:&Mh��'�����/���`���`J�D�) ,p	�PES`iѸ��4
��q`94XnQj�"��~�|��x��j�&�JR�%��pQ�М�@���`� ���� �p	��Y�m�,��ɇ]��DQI�w(R�p�� ��
���yjU���s�����w�!z�@��Z� �mS��&�*`�I��g
�(Q�7�eƀ�'�TT� }�p�`v�8հ�RJ�f���h?1Z�Lyf�P�0�0� L� �A���  �&p��P S�� \�a�1h�H�=Gu!}��}��f�w��`7Q�U�%�C�bH���0���0��� ��H�5@2�M� P �0m�� ����?#��i�@��۠�pٚ�p���;�� MWe��@~!9y�u�0��� ��Pd������6�0		�� 7`I@*��eY��i��P�c�sg��@ܰ��@8�&�Z�����dʛU:ల������ ������ ��0w0˙��OU�IP 6`L@,Pl0
����0��f���7pk����PXmj*ƐI�'+���P8 �� YD��G�H����8 
UWa��E�V��K�(AB��TZ�&i��P�$���z��t� �� +�["g!>��0uP�P���� Ъ@J�HPV�@�mpS�5�{ 5yW�,�Um���nB�oQ���p��J�:9�{R�'�VC@x������ke�Cp��I ��pGPG059�����J0W Z,g"��Ŋ�0P�:� ����p� ����0	��[@ I�{*���;��[t:@w�x�	x�5�Lu�~�� WPY�p �%� :W�m�_���iڠs�@_����(��=�u�˩̉�H���'IZ�@l���<��@4p�lpq0	�P8 P�) S >��PmP�gqe�Fmך��!Y|;yzo� ��Ǆ� �T��L8k���\�[�P�;1@R��y@> 2`2p/�HJ�!�*`���� f�5IU��!\5(\��iA"����e*�k�������O{�Hг��j��j��D ��P0
� � ��o @ �Pm`!)6�%0�� ���Y��S���s����A��� ��wp���l������K�|'�� ]���5��5��hL1�	� o� @0�����& B����:�֘[�l�ie�ᷓ�����p�0��`��E'9�]xg���z�a��0��u�Ƥ�d �rA�j�  /P�M}&� &�>�2‭�{��z�ɣ����"��^�����@� �j��k�lwkzpvM�aU%�Y�˿t0;M@�
 0/���D� A� �P��@U���!XҐ�$O�ݠ�P��ݼ �P� �ҕl��wv�&��x+]� �P%���mV�0	GP�p��d@� 1 <�ܬ�6�E�-��`Ar%�Sx���նѧ������=�ʰ� � ���ZňL�l�w��tϼHȄP����dD{�<
��Anl�-�`��������`f�����"-�� f� ����󀜆��,Tض���jӼX�p� � �'Y��\� edP �8d�2 l`Z2]0P{
"�d�lR8}�ۀ���Ӑ�y��@_���'���(d�ň�h��{S��i�ҏ9�����Hˢ��(��p09 �6 �1 	E0D��0�� �Y��E`f}��^�0�� oG� �`	y���`�ֺ꼷w��\DZxŘ>�����z��Gu@�wSJ��{@�D@( P�d@ ՠ+�`'갓ah}�i��̐���ę~��`��0�k7V|;�8p-��Ǐv[u�������Ŀ��a���L��F�(���<	�0
|p���pl��� ��_�; ���+�	L�j>�Z���x x���CZm@[@^����� ^am�(5<�{1i�K�P)P  J6
L�L�/(%�>ն�й����P}��ao	��H0�� fe�G��9�Bx�4 ��h��;�7ˋ;�O��ʯO��7@�>)��@_+�(�l�����Omjaުѽ�F���������m0�=���	dp�}/UhR0�x.�� ǝ@��Oo�~7P�k �D )�`X�I�I�n �6�Z9`ŴUW.\�i�ԕ�q��q�E�uH�z��ɺ��.%Jh��Q�F�\�f�R��ƦuhD�Qc������UG��5��i��'m"|�`�I(DR$2�)�5i��X��$m�^cVn�8u�8z�'�Z�:����G/W�Y�f�*�x��d)�5�W��zj�Ô8�zr�Ek�mu�(!Ӛ��67�8a���$FR,	��5�Ԁ�U�Z�l�ƥ�8��4������W���fm���i�#��"��:�x�3i��"��'}ew�
R�F�#ȸ�'n`�> �&����r���8f���8B&�f�m8���p>*Ǹ�ށ�uй���ч�;l�%���B� F�8j�>^6�=� ��6��2Bp��^�+�2����0�$>h"���Fi��f8j���o���Crԩfx��وCx�G_��O[l�����B&9����>Yܩe5 ���;��H3$=�!�Iz$� '�00	�T��+Q��Ƙc:G�jz�ƸuĩFkR'�q��r�q����ewf�a�|P�^� c�8�É���0�r8�Q���:69�`r�&%���&���&@� �&�(cbFA��Q�)��r��9<�ц��;*G��Y�O�����d� �Ȅ =���?%
�Ѱ:�z��� bh �Z���:��*����.b �>LQFb�Z��k&���~��q8I���I瞎��Ŵsn��A������A
2���Y�q�>`mGC
�Cm��Z%c����5�@HB��@ �Eqf�i�"�fĹ��r���e����k�	Q�w�9�^�$%�h��\z$���;�<fAb'^�0����#JCBU��[T#���%�����%0(�cҗ�i����P��x�m��f���!G�w��r��v�Q.nqY�Bp� ��Ѓ!S(/t�^&��/�W�:�bgϋY}��mMK��X<D c�0F4�AfTc8�(5NG�Q��u�H9�q�t�CO밅=c	{У��-jA�! AEX��M��>�0�ހ��(��	!{�'
<(ahC��X� x�M��gՊe��S�2��!Q��d��8��v���������?�cw��fhp�� QT��h��[�,��}ꃞ�U��z�V��&���#
1ox��p�7�a
D,CL�P�)N1�N�o�!:��kdcY��N=h�v�C=�p���&�A
C9��,Sq��?%MS@(��J�J�p�$`�P��*��e�b���1N��V�P�H�3Gay�c��6�ئ]�,��mQC�bu�����)�+(��E��2D�S�� �R�3`X�{IЊ�P`�I��A3�
+��P+ΰi�Ep�2���-�#:�%/�z���������@@���&�����!�Z���'z��r��汧
�� ?���~a�E0�**�
c4b�xE+�ъE��pF%qLogC��9&�"'>�c���Rx!�O-
 �����!7I!-X%�@�u�).�tJ���<���n��" �X*^��U�a�p+Z�
S,�� F#�	gcn�F��Եq��$�D=�[�����@	� �s��@�m;����g�*�.��(5�D���QWT��x�4���V �L�X��"�c�"M�x��L�"���pG�G�*a4��"T`� h&��T `��$�t �!��J�&7Zr�� ��%�E4����Ȑ%���h�¡ˀ(2tE�lCtn*�;�[t�#�H���5\�SԀ$'@�	�xx �@k�A�x�;dp�P�&. I� F@3� �ˈ+зgP�����Ag,��S8FE��jt�ǹ[l��!	��-/�pD��W@�d�"�NH.�� (� �d��TO"fJ��}0�%�� B��o̹ƨxY�
�~�d��*a�IXC~Ж�6NW�eA�c��:x-�����C.�`AJ�w�pȼ;=���j0�!��p�!6�E��B Bӛ��Qc�0�2��
V��Mx[a�pxc�@�+a�n��j�hF��"{췿%wG�݁}���7�"��:Bk�C�P`"bp
�ø�0�I:�@>xC&ް�&�@)�1 ��g��x%>aތ ��@�)чm��(F7���J������Q|$�BpH�p����Älp�,����$����DuІA-jj EP��.����ߜb;;c���+��5��� �cP�a�s��ap_p���"}pz�;)ʏ[��\B�)�x�BQ�K�1x��L`�B`؄M`%H���%��!��ȃXP��. G �N@�QpX�U`�W ;�&`ze(@HP�mP�i�;��$'�[�"z�BD�8�+� �I��A����LP1 �#�PP�ɨ��%��Vb؄L��KX� �A�e���h�:F�J����i�j��k��E�sp=�߃=�f�{���B��\��.!`�B�>7�7�8\�!���C�<3��(`�e(�B�Xp�"�/��GP����CV�,�į[�kP�k8�	D�(��^�\�U${pE쐢zp�[�W8*xA�hh��c<7��#����B�b G��H�/xl�A�1�"h�.��Ox�^腄A�Npg@�Jp=Gh>P�#�rHQp�d`wh-"c�#���[E(:�?�}��[��� �*` #��@P^ĄK��  �#3X�
@+��	��G(�Z��7�L� �{Gb��R`eh����z��m(�N�\�z@~8�y���Ї���?9�\�2`�<�  ���H�7pCL�! �b<��AȆN�@�3`�*xm(x XУK (��F�4X�k�Dh�S@�_�ޓ�_��d��[��܇~�؇}�~`�ȴ�[� P�,�8����<���� ���+I�P�b` *�� ��G��:�p5�!�Xp���3XEPSh�h��Q@�"e�|���;��N}�a���(�\ȢR���$��`�AЄ���5�C1�6 ���!�B�����S�3� H�. eX�7��X �%p�1�F��)��S�:g�f���Q��{^h}����¸�mB	���c�I&`�60�͛�#]�"��!��& �N�PH6�"� � p�/0,0�N��7��$�U�R�kp�_@`P�J��c��f�b(b(�_P�Y��s��s�}h��ԇy��d��U��:�>h��
&0� ��5��J�Є��O@����mЃ�آ" ,u /��E�p2��1`<�Ph4`�c�W�QP�FH�e�: �TH�c(�rPv�z��~ �Z�}��v�$�Ĭ�}�^�<8�x�H�ؼ"��1��AQ:0
%(B���ӆ��W<� ��h �p�"�\PX8��c�PD��T8�cMj Vj8` �8�t��d��{�lm��}8�`��렅Fk�M��!h30�E`�< 5�>�E�I`��I(�I�$X�6��, �5��!(���HЂI I�:��X�� �Q U`�R �8�*sH;k��c$��x��\�s@Y��`ȏd��a�\ �ix�N �"�7��8P ��M����(���3h�t�EA(�H�=]h�b�:���0��b�Sh�cȱ_Ɇb��k�ep�o؆uH�"��t$h�Z8��ӃV�����'(�=(�Uȃ&��+8@�P�c� ��3�h	`�����%��$��p 8l�^X��HHF��+���T �c�T��b(�lQ �I��\@�o@�;БB0��C8���c�҃M�X>� DH��<(&��N��2��_X�)(�~�P,��_ kH�l >�8+ * S��I���b��aX``�)��) C�=���n �C��/&�a ,^m��K�oH=x�%�$��S؅2�EX���O�c ���L�+P�E��&@W8�P����B��F��+@V�����b>���J`�3�QPQ��)��(�r �؆t؆z��j�Q�\��R �\�^��I��Bx���P�H�Y��N2�L$�3�Q��_ �E�S`F�k�`����>��c0�L$k�Fh�=1Q+`���kP���Q��!c�+�8(=�*��n�n(��UmF�h`�=0�>`S8�r��h@�]�Xn^��TF��E(��)�e �&��3�0�텄�jG�E2�8��R��f�\`[0.`��j���i�����q[.�c�`8`k��hDi��cĴ81Q�jX�B�F��,8b0d0��bP��.�^ȺS���\[fn�'Ti��:�b`�`�k��/�`����k���;�����U�e�����L<�jE�8x�S(�	�` �h@��k[V�3��E�?8�8�T����>�l0�R|��jexq @f����q�b��"�ex�cHq(��!���W8�)������n��Ʉ1j�"Q8�N0Ȟ�N0�*o㮆fІ���I�����b��bPm��S��i�k�{��˙<s��8��l�fXm�j��9�r��i��i���]n�f8�)`�ep0�>8`����o�Nne���4&�ee��[r�i����c���Ã3��^�h�7	�p 荎e@8m�N �pP[��Q���)ǴpS��3(gz&3k�mM�)�m��b.�b�/�b����A�8�Q�IH)hpN�L�n��s��rF<`�Q���[>����V+Vg:�JXF�:h2�)H?x�r��l��[�^0�b8qչ�mo��+m�x�m�Ӟ��V��}n`�!�Y�79�_ j��jP�ѡ'c����!�N,��^�+��+`Fh�>�DP�cHsb�^wqG�j�5�fy�im00�`vhm`2���XKq�b��l�r����!{ސ����-�:����k��igEh�~��j����a�=�8n���p�Ց�ד�PyG�w���9Qf�&�$�h��T�����.G�ֆ���j��:4�gW��t�3@�����v��8����c9��Oy��n��a�_.�I`��NysX�*�A������>�?�r��-�D�=�3�i(��y�S�L�ZT�ضjݔ+V,�6mڪi1ݰbݴ�ۨ��n��M�4�N�:��M�����r�̥���ܶkʀ�L[�q�����5Qǔ3Չ�1bҮ���Z�r˔1�&-θ�E��]:r+�m��*�۰j����6��6nִYFM�6wܚ�v��b��n�ƫ[7�$v�+�h�rE�*�ԙڴr��\��k�ʱ�l��E��]ۨ�In��M҃u����Z,-�i�}KǭZ!��&Sv�#7m���:�6��x�#
o-�cǊi/[n�(ښ���^��Q��)�ֲ\d� ;         
zebra.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  zebra  #�GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � � r ��֔9ࠌ��Yq`C�1: �c�Â
 FB$A�!�DiH=�/OJT@S���j�YP`C�d8Vt��].,Y��B�s�l� dA2++"��(M�G�SP/�є_o2�8�A�G��ˁ�%9�)���/?'�[��^2:&*@,2.Ľlے�N�%��H���䋒��E��	�kA��H���I�Fj>�5'C/��<���s�#S��n�9V�-����F�+15C�V������!7�6L�;� ��̩�A�
�4W�3���m�De<�<2�#�QדDRG�a��z�M(�aeUHA !WAF9Pr�ݧ�b�סe��FC
8�D��v@ ���ND[v�	vaE}-d�Ad!V��uR�խUOf.%F�:\8V�8I�`Qv��D�E�P��`kT��#B���Ņ4��]M�Hxe�xk��[!�AVi$FTTo"nM$��V�Tb��v�x��v@!�v�3zp���w�(�K�8x�� �CD�x*�=���Qw�k�ed[�u�Ц�9�G�m��C��dH�DV���ԑOg=�mJ�b�Ke%_J�O$�	�@PԵ�9�ZF̛Q���e�9A[Q�&_Ut=�&�M�V!��d�GЫ�#@BF=	)sHA��%�(׌ej=1[9߆ݝ��^����L�I(�7�d$:-$�`ֲ'y�$��		ּ6]��\i�N���]QGy�2^�	tԱ
Tŗ���\l�����[b��9F@��aJ�PL�}ѡ�����Td�^�y0����M�ҍe��9�䐵����	��5\�B�*Y��U���A��J�i��?�P`��_��Fy@��9�ԐL I	9#m!�1$�S AkP0t�[eMC�Zt)C��Gu���R�%0�K�Dz��[N���x`EjS�ރ�.�f	�9H!k��. 0�	�o���# A��9�O��췑�,�!\�Kk�T1X"n�h %>\�8����@�Ad9t�* }XóZV��p��% ��2�!�[C��EH�\"�M�	ZL+!H���� MHӰ)Axw��e�K���	]x��������.f�p�#@�Ga^�yU�n� ����<��`$� ����	T�*��D&`	Z0�5��� ���Y��@7�v	�mN1�8��B��zQix �&�=�o�@-�Ȇ �������4��JI�X4�i���	�Vi�]�k�x��.Қ5d��|4�����.);����IF���&��`d����H�=���
�?� f���
��7�}1�R�7���$PB$lR�������.�` �j8N=����t���D-���	,dZ݌�X ;B@��@IX��E`��Cՙ��E��m�Q0�V�`L� �� ��D��&k؉%�D`�]<[J4�IR�hr�Z˰ؽ��|�I�'=d'�!��q�zTB�R�@-Ё��6AG�5�m��� $:���V3Z-.��]��h�ؚ#����p�*N�r��J~*��l��	C�B ��
��+Kh�	�b�p�..���Q�Z%s��M��(#0ٽ^�F7�ez2���Opo--A��'�(p�J8�y��=)p�u*����8ת�p�!�����]�"�lЅ�h���0�YE�
R�E���q�`���	����0�Z������<���T���˳��F
\b�&,m�.�B��-�Ԯ��5�}	�]�G�9O��qZUc5�l�ui����L(A�V@gҿʅ9�w�4�u��A]����W�HT��8�E5Ф ��Xf��zP�6A΋�
\HtCi͔�w5�a�մ�<'�h^w�[S'!*���ƍ8��轢M �j0�m�{�z�X�Pvr������FRB����gS� i;����م��u鎐z�
/�A,F��Dqs��i"5�G���b5�Ӂ8��\y=T�$���|�s�4z��.�0�Dp7S���L��vIˌ7z�^���F0BK� ��@v��Ϯ2�L�z0��$v ��@(P+q��i�]%�
3�!�qs�����800�6���0�\��jx,:�h��ȊT�y{�7�1�X��w!�����D��:���!V�e�k�TC�q�Jd����_���9y��jޮy�_�F�`�xY���_aY�`���!#��sL_���:�� �A��p+1�$b�E�>��8`U��ie��d	��P�!Ae*��BYv	�`	�TK0x�6��
����~��ǁ4qU�}��i��v}�`�pfH�r��Bx2gS4?�2�b" �@i�k&O��X�c���@� �0C�U	W������WuȁL�DÅx�A���e�[l$0�7�1&�xgB	�ݦy��7��x��� ~8�Ӈ� y���@��@��l�u ���� b�E��5��"+l��YO�	G�<� $���0�U� l��<.vid�hA�ƈ?�@
@	��D
prBԡ#��F���׉@`	U�2j�9��NY�G  �`@��!U�C-u�x@�@��R�xf�HǱ� _�"<ad��9�q,ap6�E�UK�%O|�e i#��� l���D�:��XU��]u��C��AK1X�a!R�!*ϔ���	'�i$�U ���~�7K���	 ��n�7��p��TA��@��X�D���d��'y��9A,4����'��R9 HOur0r�@ 7� d	kɐ��x�x� ��W4? ����eO� c���G�h�����)�1I@�}�p�(Hd~7�@�}� �(U��  /6���@� ���1�U�0��y��0և�$lJ#>u>��m1v�[��N� o�67	��6��@� ������ui�A��D�p�yc����N� �5�1hd�%W 0�H�� �� ��!��SD}�V  �9�~}T@~h1�� A�pUW���E�9���D���0v�)\u��DOnt ������fF��@��0�pog��C�����6��7��b� ���F�� �0(��D �xD�����4�H�+�y��?������l�xX� =D@�7�t[�`��<��X�p"�P�\�����w��2&*���%�D[���u	$_�y�e�i����K����@���@�0$��� � �Q	 *\�p%T�x�3ke�t�U���j0�Yh��v�'l��|?0�N�7�Ё��@� �$\�k��֊�� ��bwj���T�@u�"Z2e��p׈l��������g���@Zu"� x�xj���D}j@@y��ه��4�}hbzU cp	:��ˢ�a-^�ͳo
���f�������/��[ H�A�7��x\��@���D~ d��f@2��`���H����M ���{m�bc(c+ȋ�1X�SU�3��NG	�6A$� ��i@����4!�����{@��4��D4�8�$���i�ЇjpU�e��X�'p��p[�3Bl�g@�@bת oC��i@���@`f|��3���R	�IL}���K�OmG�$�|�&_�Ő�#�b+��y �v�'�y��E@}Ț}x���A�]A��|;1/��Fڪ�0��G�T�������s)�oF��*{��Z��'��
� � U�uFy��	H�
A�	 �8�(f����T�%Hk ��y�gj |�@���?�X�U@0X�$�7������A
�� ?@@�W�O52,���N+��#�)�6�D�Y� �	=� �Ԏpَ��jx�d���7� l���O�6@��2@}8@	+�,�'bg�ZAq��#1�{��`�b��K�l� l�z"�G� �#ͣN�z�j���	�� b$��i��� \F�Ն3�1��V[{W����`	K����{	�`X�ltr���#�I�
=LF^KYdK)�ꤜnI4G`X��f "D�cM���㟄����Q\��g	v:��iE��ixp���|*��x���Fp���dt���dwsV�>��^�U��rp���~:K4
p�� )� YfK��ZF������e�c�Ĥ�k��������~�e	��z�#ٳMڕv+���^$O�Iȡ�I 0��P��s�A���{�#=�z pYU��U�7s�^v�k<�K�>HA��>rnFWv�CrPq����lGU�7!-O��9�xr#HwU�8m��B`uD[���iB'}�w�KC�L��F�@�P�J���i 7�X� O�7��G@�!乖Ѝh��\4�lB�IF��p	Y|%�� �A�$�CB���^���e�D|PPK�UX���-#��|L4$�ޞ�vv˚�s���r@
̚�#�M�����t�5~�V�^�`B�lXET�*a�e�:��@Llb&f	rP�L��VUrcb$g)�r�Ϯ�X�A�t%�I����2�Xp�[�k	OL�Y6�pc�^�*�o���	�����%DL�m8$^DK~	 _\yA�<dCy��2IMKk*�I}7%D����XK�x�`?�A��>�}�����_%���G�h	_r =$.��	9�:e�	H�mO� 3�=R�7@�3�mU��e�p��RU�H��eĥF��5���{Y�;�fgraՄd���NLLԌ���3*�""�nL��EK�$H��F-C�� �M����TU�����]>�0bA�!-_b�v6ڹ��	�f*$����m�~dK���CU=-C�A� ��^Y��фAKLo�@"�r���e�Q$�%�3�%�H�VY5�J����9�M@u��`�1d��<lq!FL`�%"��c�A�DO.q}R�YƋ:r�%taA�8�)�F<)����E��a�e[SU=��J`7��?��Ar�o��Dkp�$_�%�hf%D4!�B�p:� ��EyQ�@���E�AB(}D2�����eIa{ ��<��P�!�#�{։�i�AL�@O��!��91lkB'!�@t�� �LU\-������Fp ����樺Uwe	�6lˁ5xbJ"�i@��B�3�0��� Ճ*?�+�EC�7�����a!�cс`�|��k9s�SB&�;���T�=����aI e( � �F�Y〡@p ,�5�����c��+�8� �`�) x�`k X�lK
*E���2,A���ĂhS�oM�	�&L���®���#��Cr�Qq�9ШҠV5�. q��cG�k�r`l
nZrP�&�"���H
�Z�BU,Y��� 9�������%�8��5����2����.ԫ
d��@�L��(T���Z� ���l��;@S�b]�����&���0&��i�_)��y	�����&ءCS U֛pa/��R��ɎX�&�Ԡ���r����P �:8@��J� ��h��%� ���piB��x���XÃ�İJ�hk!6R��`"�p�JЁ�'�d� �K �K`�� 54�D5�Z�9 �����d5�,	fȂ
Z�� ��.L�75f� �G��"+�]&�$"`�Z�0��%�4�<#��G�
����Μ�'��Ʋq�	� ��@:2�<�оzT�G���"�#\r���$(�5{�D���-�C�-ߜ�@�t)�JH���Q,� ��������@p �&��(���:K搣+ ��`&�飅8\C�,9��F[3��$Ӭ�Jf
X5�b�Ҩ�U�K�����aH��!H 9��!4"@v�45�1°,�+��XY��V�㴕�h�U�h���͆\m��� �̨�FL��f�˕PK��`�<��	�,�zb�'���'�Xt��RYR�)#&��B�����2&>�-	��4��Z��Ն:	����g��J	ݶ5�����/\,���ß"00�Ѡ�4���v�G:�6�6��v5#ȡ Д&[�̣:0����!�+�BuV�#�� m�7g߻�����i3��l� � ��,��`�d�*���S��ҮZ���.� ���JT���'?�KH��	��B��"�⠔��,0z��ҕ���,�R_L�ܭ!B?9ҫZ�#��@*bUa2� �
F�FF`5 �	� X"�T.3�l����"��D�t\j }�Ⴐ��ʒ.�����T�RÐDX��A�7#�O  �Jt�P1TB`�B����H(#*2���M�v�9�a�@�d��h&b4U%7����c�G%��N��c�XH�װ�@�Q��v��h.�aC�Yd8T����h�׉��Mm�i��4��@h�hT�005v����n8���E�sDX�R��UJ\�,���%@z1�ZTb	\��� �0��q(4 �R���H)Ӓj �N� �Ӡ\A<8*Iv{���Hhh#9�0�`4�H�d�66��4��(`
�bH�h����`�k�G0Б�R�*�(��.f��Q�D",*%�F�fA�++)��hg!�������^�$`��gF�:��0�@� 9�g��t-�BU��$P�G$�9?!��}(	?�3�a�F��Õ��U�H�صYeN$��KP
,�j��8^T��T?�`��$��h=o�j8A��.X����S:P�
8��R�^�K�G'&#�x  �V����qXܸ�RJ�N"��MeH��*���=�T�Ɂi-_H�����,�}ǁ�
#�'�rO����0�;&|^U~� 0t�)��7^���;���O:T�X��5Ӝ��y�߶4�2�� ���BO�I�'lr	٨��FԺr���=s��� ���G��E�˩#�X�Cy)��s�\�&fvt���_�����\ b�_k���T�*����j�"�T ���#�j�@�cr�j�E�Ty�杴P��`���I�jD7 ]���bP���-�s0,��9`�E�R�s`�dF�j�~�#��\�1�� �^t2� 0 ��9 q��2�Q?־���8����A<�$r\��	,�;�%&3呝x�$ULW��~����1���h�[š�Z�b��x�W�]����S��������(���-��ߤ�����6�����,�7���O�F�t�U��v�L�@��fkp^�>72 J&�!�o��>�������#�;R�Q%!q%���ԅzE��DS*�t�Bcl<����dig��R���61�R�Ș��PP�`4f��.���W����t`�A�0'I��QɎ`,�oQ���ЋW�)�@�E.i� s�Ӥ�+}ר���d7&IԹNBB�&�!q��J���5	lX�HB���$F�P��56X��`Ȕ'4��j�H�%dB]�b�#���Ʉ��ie0�(�*�*K����+{������ T8�4�W-K}Y�J~���p �`)H8+��[	9���������.��RQ0�������٪hA�c�6� ��!�q	�2�-�4�a�ƀ�9`>��Y�1�˺��Y��j��N��	��+i�.ʺ�9���P��(��P��������^qA%� H3'���`��$�0�y
�@�@rS��@�`��xѠ5H���s��Dj�%k��X��@�0�!?$4=-��h�Q���]x�2��،�p�Ǡבa��Ӌ�i�%2��6?X�35�o�����`�������x��y���@6�	�n�pђ��k�K$�SD�8�	�/9X�zc�T�� �����ж��5�]��-r���X6@���s���E�(�o�"ɿ�8��c���6	� ��=)�kA31�ػqz�H��ÚH(���	�f���1@�����>Ds+��3�.	Aj'���(����qt	i	��� ,������ ��]�G��y��P� �m9�1����Z9l���  ;      
   keineAufgabenmehr  �   B ��33      `   � � �         0Alle Aufgaben dieser Auswahl sind jetzt gel�st.    #Bitte den Button "Start" f�r eine   neue Aufgabenauswahl dr�cken! 
   Fehler  h         �� +          0 
     	       M� C          Fehler:    Erl�uterungen �E�p \on mouseUp
  show field "Erl�uterungen" with visual effect scroll left
hide me
end mouseUp
   ����33    �   i          	     
   Erl�uterungen  �   [on mouseUp
  hide me with visual effect reveal right
show btn "Erl�uterungen"
end mouseUp
  r ����ff  ������  ������  @@@@@@  `  � ��         2Funktionen des Buttons "Start der Bildzuordnung":        1 �Aus dem verborgenen Feld "Verzeichnis" , in dem im Moment 16 Bildnamen vorhanden sind, werden 12 Bilder ausgew�hlt und in die Variable "Bildnamen" plaziert. Dann wird von hier der Button "Verteilung" aufgerufen.            Custom Properties:        Jedes Objekt kann Inhalte in individuellen Variablen - den Custom Properties - speichern, die dann dauerhaft (bis zu einer gezielten Ver�nderung) mit dem Objekt verbunden bleiben. Diese objektgebundenen Variablen k�nnen u.a. im Property Dialog unter "Extras" definiert werden.  DDas ist auch bei den Bildern (den "images") dieser �bung geschehen:  �Jedes Bild hat eine Custom Property "Bildname", in dem die Kurzform des Image-Namens gespeichert ist, so z.B. "giraffe" (als Kurzform); die Langform des entsprechenden Bildes w�rde "Image "giraffe.gif"" lauten.    �Der Button "Verteilung" verteilt diese Kurzform in der Custom Property der ausgew�hlten Bilder auf die Namen der 12 Felder und schreibt sie zus�tzlich als Text in diese Felder hinein. Dann wird der Button "Aufgabe" aufgerufen.                          �   �Im Button "Aufgabe" wird jeweils 1 Bild ausgew�hlt und gezeigt, das nun mit gedr�ckter Maustaste auf das Feld mit dem zugeh�rigen Text gezogen werden mu�                    �   �Alle Bilder (images) haben ein einheitliches Skript, in dem �ber die Funktion "intersect" abgefragt wird, ob die Custom Property "Bildname" mit dem Namen des Feldes, zu dem das Bild gezogen worden ist, identisch ist                    �   �Die Buttons "Verteilung" und "Aufgabe" sind nur zur Veranschaulichung sichtbar dargestellt; da sie nicht direkt vom Nutzer aufgerufen werden m�ssen, sollten sie normalerweise unsichtbar bleiben.    L                                      (Dieses Feld mit Mausklick schlie�en)        K   badger.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  badger  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � H����*\Ȱ�Ç#J��Ёŋ-��qǏ7:	�G�kR�L���J+Y���2�8q��	� z�3hѢ?�]���Ӣ#i���"ɌWG�QCF��;qr-��׳^s�͙֫�Z�ZTs�.]���rM^q`ڴI��Ӯb��}�1���#�<9��˿��b����#}=���xci�%CB���ff�+7����̡M����jj�u_�,5%��~W�6�4橃q�,���+'׌	�����s���q�&����Q�F�QS�^�u����<���s��qW�L8ե]h(�7Uk�m��w���]���E�~ƇJ���!t�]�D �_�=�r�]U7�������y�)��X�c�'�H����`l(��R�3���l�aHc^$�h�%�e^���`���ZTx[b�$���e�p�8b�)ǉOn�\��EG҂�w#�s�ha�uf����B�%�t��Y���7^eS2g��09�^����h���v��}���-������~�
�c�E~:�jJh[�Iz6�dL�����f��jɨ��	{�M����n�u�]���Y�m��"~��d�O�:5�|򑻨�qv�,f��_f��TR�A��{���oK�>�+����(����z��SI�vI�j(�E������i���;�u���ou�dc�*o�����^��Q����[�3�Z������f����N��dZ�
gP�,[���ꑬ�|������;���UW�2QY���s�Yj҇�v��h:A��c~���Oq�M�������m-�:�%4�PKw�[OX��W��3���@�5�Y/K�����3�����A��y���Qa��;[��n��#�TP-=ll�nfp�w6/�e�-9�`=����V�L2�rf~� ��M=�8�O���Qke�7]k(�k�})�$���z����}�3]�t2�.�w�:��*W��C��}�'��'?��ʂ�2��x�9 ���pU���f�.f�a{;�y�C���x��3B�|u!iNP�b��l3�,ɏx;��ZH�Y'���=&��B`۠�n�A~��4=y���.�t�k��%�h"��$���,�G>Z"Z���'��%#\�"�ՙ�=~��&��m�9r��%,щ9�\5��/��個L�Wd+���G���:�'Y��}��5%C��w0��(S	���F��.���1H�y�$K1��cr���,�o�S�^�ڗCT*�@�ˬT�L>jH`f�`��G���t(0�,��An�	� @����Ě�89L���@����/}H�E�H�Ib�E[D�*���9�r�,��6=N��@��y�Qug��c����~*���ْ���g��U"�x�2�i���(��tg3���^����#��
:Ǚ}��+M��\�;A*����f�(9ڞ}B8������2���i�l�ַ6�G=��,�3�=�HIgi�Q�T�d�ӧ#� �*s:�
XifE�	�����.��+�0����bi����2�Z��S��',��O5��JQA�H��t�(Ǆ�G��K�=ҭ������z����KA�g���1S<jN�Y��VPl�gwZx\DY$@��6�N-�h��9�2�!��)�H�PZ���#� ��++����Ō/��!��)�l�X���u�s�}^�l��6�y�!��D$������H�������4���dZ�T�?k �����jv K�OH]䕍)J�tV����w,��=�d#�j8�42��(s�\*�_���1�Y^��P�<)�L;B���5�%�*�cv��D�"dc�bT�t�V�maUKÞ�F
x3$�&ܯ�c�z����p�dI�1��$3=yq�.�S��xR �$z���4�����Fѫ{G*���$؃\8������ !��?ic&R�ȫ�Vp�ާ��o:#mv`Uj��Q�DM-�$S��o�[���j;�
A�+���8jF��qP��dvNr�I��ͽj^1l"�[�J�>O?�+=�_�p{{N͡�o^�I"x`��՚�o���nƗd��b�V	��|1R;����Ps�� ԋ�`{V6�:X�n�à8F����JcBCE9��x�G���V=\m)ٜ�\e��>B�@]C%�תe;���F��2g�@Mj�UO��Vb����; /���3|9�@ur:��Ue|U���te׮��.����iU�]�!;	�⽷@��k1IZs?��\d�j.��d5WA���n�X:�*��[��L��q��& ��|�W'��Jc_ɐ5,��,���Q�R�<yM��h�n� @�+�$�"�d��4vQ]mG|;�<!MTuuy�a�n�f	F��M3��C�wɇmiaBеv�rG#���_�hǖneF'v �42�UAg=�?ԦReUs 4h��o̳Es�7 uE�t9g�@g��_��XDI�<g�s�+�R/�s$�evY"[������=�V@#zQjk�j("@T/36nXs�����#8k�B#�o!+ v��#SY0a6`�v78��6�/xY�&dX~�ay?�4�[~���?�3�Q��e�;B�E�!���K�'kE@��;��h�7eхFx?uh�&�8H�c)'}�1�,raq�d��z�+tq�iQt@�O��N��bn2K2SY��0a?>d:�_��;C�$�'�qc���&F���A�X	~�t��͸��(8s���#t��V�0=�0k�#�F�yQ���M�s��CK�7���X��1c6s�i����r��$Q፺ �2�om����h�8y�t#�1��c�2�Is�GGX4n���_�]�K�D5eEK5Wf�@Z�(r#2Dc34����07�KBArْ"5�v&<r��I'�c@�&΢�z�?�!]	&74:H	4k3̨T�q\��D���(>H'���`���j��h���(��z�Ho��q��gFU"�r5k`�-�	�k��IvŒ2��6gg�_H�tP�cg7��Q�����y|a�ʩ����ɚ�i=^y17���V@�q�9AZ|g"o���%���ҚhW��C�0�D<���qr�h�F0N�-!l�{��a������b�2���wC	::P�b�x	r��3��DO̕A���KR�*��%]0�7ԝ*��,�q!HzF�$fe�6ړ9�qe%�%�)�)�hWT[a ��-(P�AAk��`ӛl�Ac������uqG*�,JǑQ�ԧ�'QzRb�[��!qq�U5� 2�!�xFa1c89Ǚ�V����.�3V�2%�Ig&�:�Z$�OG�J'�w�qT�3�y���!^�w�B��_��E"%d%���q��B/t�o�`��>����q���Eة����2¬��N)\�#yպ�Ha�)C��@�Y���*���z'�?&��G�tꒇK��fu�s5$%�#=YBOsĎdIfR��@3V/xo�q1g>Ɗnd*ح�ZVH�u�4h��������-�
5Q�!-�>�!F�Qiq�闪3�2��N㑘���!yQ1o?�@<ˏ\A� +��wv�T�j�H�1G:�M86ˏ����`f�@P�vضCŇ��H�)4�(�h��ײ=���ӌ�x��xB{�����aB!#c��G���v����/|UH�g@�vv��C4W���;��I8I�|wm�sN��}��4����'�m!�����:�<�g��Y$�sXvWfăB�A��ó�I�v��d+��%���!�b��3{mt�������Xq�����zQK1:D�C4������)��^i�kDq�E�ڳԁ�Bs��'��k<aڌ�{�+f�TtP�#���E8��;��ŷŊy_Q����|�A⨨sz�[ ��_U��&��4��<?���Pۿ��e�i��:��Щ��ه�J=!�7λ��?ua�cFs��[xHջ�@6}�c�3۞&���{,G�E  ;         	cock.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  cock  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � �	� Aa^��p�B�&6�`��1^��1#ŏ�F�!ɓ(Q�ƫeˋ�0z���ǚ
qb�93d��=
��s��`G��DJ� ͒#S��ʋ�0L�0�ة&Q��{�'G�3�
4k�#ׁ]�2�HR�ɰ'y٥��e՗CB��S.ȸ���1-Q�3�nL|P"^�$y�\ə/L�
������&,Z�Y֯g��Q2S���^�g��.1���ěM%?�|#F�@9Ff���`�
E2$�23U�c�ǵ�U�ƍl�
}͔`ڶp5>wU���+A_
:��39�b��Zm������P���v��_e\`7�E�X��Di0yt�c�OVYu �)�wR�T����ǜ`:�hu�d'.��R�8�d�i��7���KVT���B�uh\{2�w�b:
DAP-�8]�u��Y^$Q�U��\�Pi0��b}��tg��V�b
C�������F*hHi
��~�դ5$j�U"Q��RuY5mH
�����h�i�%�J����K'-�g�uM����Fl��Ut�����p�Ƣ���j�}u7�_�]B�%Z�j�x���b�.�������Z��w��Y���WY�V�k��j�࿅�yjL-Ɣ㠝���ъ�.�,�;)���y�B����RG>vdt!5kn�ꪺ��U	s�U}�Y��M%kpYa	&c�%[���vQ��2��.Dz��g1��g��ʛ^���o�V,\xunt�k@��"�<��U)<�.H�+gz��U�}�v��Z���G�|����ͧ�綨�.�imԳNى'��!�s<ަڞiX-ޘD"�Z��ʱ�B��Um��(���U�n�Z-�s�N	����9�T�g��\q�;	�'c^��Ђ�J���&����N���H��}	H\�4h7n>|őxdЧCbzB%�袁����|yR��SN|I��C �=*�	%�����2���ZGF����N)���lŪUL+�Nޮ�	 "�B���	�S��v>�H$(����Әbq� ���.�Ų�o?�&0AЉ) J�$�[5���"цY0H�����$�kܤ���%b�sH����������Uq4��y�u���gt�M!u��*m��x1�6@!	� ��P�P{.�^��%VL�hC*	�3
)p%��
R$���uV�RV�H�$�� ����P{p��J�G�P����V��J��1>in�՛��mJ�[�� (���'���0=<1�)�B@8aZ���<�E���A��g�[$epۥ11N:@�zh�L��u�D F�d�A���>+����� ��Ll�(�1VJ'�
QOD4�I0�	L�NZ4��P�G|�3�<�ֳ0�.:����`�Ll�
Q:��`�:�9�$����U�U���R��j���31�Ka7%�V��PhgD�0� ����' �I�q��@�� ?:R}���,#��i��ωUf<�W�6����'4J
d����i 6
T��1���>�	��|�g��l\6�yQV�,gWI�w��@C��*�����F� T&�h�	8��L�U)���,nFL���C��	R�v�H,)�B�` ��m��;���6�|�"��l²��_���r5+na�C�KZd�W��5�@�[��
��E+mC�L�J�mo:����d-�*Q�TT6凡�l�H;$P��%�~�]RX�'  4�֍�s�s�#٠Y�-�T��W�y�7~U���Ld�c����;]�x��C�\�nWl��x�hͺ
w�[Q֨+Z�K/�F{�f�Z��l����Z�B�ã�n~�I����}�r%c�vYti�ӎW���ZE8E��U�;�5�A|'�aO�I&S��Ʃ���9'���(4��A��_�AK4c�$d%LV�ڮJ�J�v(��cc����ӫ�C	�Jej������!�@���8f��E��L�Tc:�J�K_Ҋ����DD�I�9�۹�j2K�g�8����a��X��o%�1m��E���#��7 6��}����r<��vn~�8�N�b߭%EX��\���m������f�kiQ��Ns[��F�j?>j{+��J>zt��#a4�o��x}$��'pI���X����
z �������J6�'�[��Ӷ��FF:qdĊ$O�H9�i���EdIRC-	��~=ٖ�/ē�
��� 5Z�l��&~���%Bn��g�z��
�Sa��An'�;_��2m�<ۣx��Ml~=����u�b��D����j��?��XԢ��
J ��=|z�������}>j%�_���Z��v�o47^�Z�U٦.��O�r�Z_�w�zaGZ�d8g`�	O6jibx�i�}'Ȱ{��GT�)�AF@�c9�GNt`_g_�g�Em+6Ox���j�Ve- �l��Z�a�M�F0�6N8x:x��e�{��x��Fe�Fj��O�;��5YvY؁H�dp��~��Y�}�a��|N�X�&{��x�j"�bw� c⥆l���T�URFd���Y����i`5}S6j��VeN�z��rs'^�� '�r?�I]����a�u�������eX�C{!ft��L�Xe��b�R��G�S�R�n�I�3�熁���&��QO&���l�%�ޕe�Rs7wwR|�A+�I�fivxz�7���� o��lE��dOS�iBuL�4^YֆYFX|T^a�yBd��p�������H�}��l�fls֑k��@ae���y���D�0��u�����Gx��to�5j8W`�]@Tw$x��o�؈O8F6KF�iz@���l3	vi�l� �q��b�F�zv}A �h���Gm�Gl��3�'sE�f��p� 	q��_n'@�}*f���Q�d`x�z&y�j�Gh����39[���H����Crāx��}V[f�q��]E��NP����IpYN5,d�ZO��q��v��(߇	1�l�#q�v`��]�ET��y�;m��巚iي�AD�Z��N��_�8��'��g�h��	Ja��R6Tb9hl�����I��	�$�/��PY�v��p��'��?יE7@��Q��G��̙�ƞ��mu5W�x�D���p�F��'�g�v`i�hUX g�ee���EJ'ɚ�n�U%���ix�v��O_gqN4tyj�F9aY��(f��F��i�-4�w�DN�i��s�E�D�}	q��8�T,�|�䅥��Fz�0d���/(u�96�_�J��&o٧��fl}HTC�*gq&h̉�fy���<'����hi=HZl&�wU�	�$oi5O:ǧ���mE�HI�i	�À4X�	�h�
���89X9ڕ��N*���&^ix�H�����_����S5�f�:�� �1���H�*q�h��z�%y���e*��"P]wxܚ����`�9�U�F�pcP�oaʜ(j�f6���
������uii�yQ 4w	u(����Gj��j�ږ�H�z �ʚ����niEq�����ɫfj�z��°T��+�&kx3����s��;[��rp��Ԯ۱���H_���	��氄�Z�X���%�O芮�R���i�fJ�뜬�Z�j�;��8���VZB����j[�����Z����}#�ӭ�*��E�#vF�A���N������*��i�Fj�մ�%�<��`�\�_����F��c�)g��cg*��GH��KiH��p�3d�sg�6�6:���Z�ʺ'q�e��t����|������y����ܪ�c9�	}�E���}�ص��u����D
cm��3�۹Pk�����e�X��˨�un�I�z��e�{��k��˻����� HA��j��
v��Z�v����:���i웞Ջ}뮀{��;��d���_g�u;x�e{�zQ
��K����;����	����+^�OE�U�k��5xu�{�>��`�|9�O��3;��{�������3���8�>k�K���8�<��WI0D����mu��Y��3��e~Dd�[��*�*h���D��S9�p��y�P;�C,�g{���;�1���ۄ��:�Z��\+������+̻l��CZ�����s :�uU���W��vJxt��������O <^��µ뷕ld#z��jl0'1�)8���WE�vK��X���8K����m��y�h�����Y����as��D�2:�8,�鿧�Zq�f�iY�3����J�㕆�vC��*�eW{Ɣɨ�]��^K��u�+<�E��N��eO`�����e�����όzȆܘ��|:��ȳ�ZIPkǤt�*�C��;P;�����l�}�#���Ȧ��5]��RZ��nq���<�|tЫYd���I�;0i�3��sx�[��wv�����li87��Y9�۷�hdI���[�)��F�a!>ȀO�%lgѭ5B̮�è��l��R�I�3��'	�F	�ǈ�q_*Sx���rټ[�d[�a�v��5*��W�f�3{�dYd��F� �JͧzY_���Pz�=��׃�̿A�Զ\�gy�v�;�|�ju�4�2}d�D�8}_ ��ު�Q�����>��>�N��c\~���DJ9�l�
D�]�oKZۃ���]��3�_v�z�I�͚n��om����ݽ��aL9n��68�nب��&]��dL�v��Ӥ�P�i�L��*V���oE��.�ohфs;�)��f����#�l�u�2��Qc�$+û���z�*���ʫ&�o�ƒs��֘��nzX���a"]+�ܙix<����[H��+oq����V��� �o��ɉcL��X�JG
���|L�ɗX�萕4��%�{<��A�j��g0?�sw�_V�vMw�piG偞����rN������׶��L����n�����;r-NZH���ݼ�,�<���c�K{Ԭ��j�-�;�h�S䴘}����F
�Ҙ�{�m�)���F�Sn�zP֖�o�|ɔ��*��(:�lG�)k�.��	lx��I>���
��;��;���A�ei8�.��Ysa�����J|����	n��wg[����_��[=���G���d��&&ay�M�R�vΧ2�Y�m��T]�������U�I�Xi8��
Rc�c����u��8��i�w1��8�\�<�s��ɝ�H�SM�Im���C>'�2�'�������[�˽��8��[��s	��'�N�����/69���5&Xk��K�B/�w�� o���o8��U~�8���D�����#�%l.��ϝ��u�x���؃8����z�)��D�/��E� ��O�2����L8�Hq��;ه��@���MZ��ɛ�`-Vô��|�d����V���;*8'h�)�~�8��ƨG���m9�Ir$�*79����4Gl������?����R��ҵ�W��1a_���\�����Q�I��I"g�6l�1���B��<uLX�K=	C��ӥN;!�D��O)M�� ��KR�Ť�ѢJ�3cjL�'����3Gϓ't� a3��S�QNF�ǉ�H�R�F�N��h�S̐-�n�y��G�('^�Ү��s<)U��I�I B���)Ā  ;         	lion.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  lion  2�GIF89ad x �  ���֌s�{֌k΄cƥ�Ɣ{��kޜ{ΌkƄc�{c�sR�cBֽ�ε�������޵�絔Ɣs�sZפּ�{Zޜs֔k�sRΌc{R9ƄZ�{R�ν����{cޭ�﵌��k��cΔkƌc�kJ�sJ�ƭֵ�έ�ƥ���{��s��kƜ{�sZ�kR�cJ�ssR9��Z֔ckJ1�c�έ޵�֭�Υ��Ɯ経��kΜs﵄�{��c�sRޥs֜k�kJ�s�{R�cBƌZޜc�sJ��R�kB֔Z{R1�c9kB!ν�����{k���kZJcRBB1!R9!)�ν����ֽ��{�ε�ƭ��sε�ƭ����{kZ�έ�ƥ��{޽�ֵ���k�Υ�Ɯ��{罔�sZ��s{cJ�Ɣｌ組ޭ{��ckR9�cBcJ1{Z9ZB)�kB�csR1�c9kJ)�c1R1��{罌�s�֭�Υ�Ɯ޽��Μ�Ɣ޵��kB����޽�ֵ�ƥֽ�ε��{c�����skZB�֜�ƌ�ƄsZ9kR1J9!cJ)�ֽƵ��֥�Μ�Ɣ޽�cR9B1����ƭ�����s�޵�Υ{kRscJZJ1ƽ��{kcZJ�Ɯ�ޥ�֜B9)�������޽�έν�ZRB��{�Μ91!cR1�����sskZkcRRJ9�ޥ�֌1)�������cZB�����skRZR91)�����ZR1���������ssk���RRJJJB��s{{kBB9ccRZZJ))!JJ9BB1!!))JR9ckZJRB19)9B1!!!{�{RZRJRJ9B9)1)JZJ1B9JZR9BB)11BRR9JJ)99BZc   ,    d x  � ߽sG��;t�C7�C��ʡ;G�:eە��;-ʂ�Ҳ%X�j�,N�%S�?�*���'�thd��ꕘb��C��,���I�f!^}�bS����pḯ�V��B��~���\2��nɝFt��m�3���fȀ���,;vf��d�%Q�o2�`�/�7+è��E��P�u�;׎\�s�Υd��B�Z�QK�%Yɺ)�	t�+�Y3BY GS�!�̰cc���X3�
CX62d��H:�������Zz�u�)��d���Cn�[�-�lQ�2w!4:Ġ4T Cu�Q�UW�D���YF]�F�)%�od����i㬃j��G�2�5X���j�D��,�͒��Ђ-Fvх2���,}�PAA�`�`8�@���a�~M�T��i��!r��0l��A_M��9g�'[���q�H`4��!C3�@�n�x�%J5�p�N5nb�A��@2Lg'�qh�+�	�����b����i��;-��j��6�:єa�bD �-!�f�}$A(6p"���%�b���:��b3|j�Mt���4
'���AG&�e��`�lR�&m���&t�C�V~����eD`�1␣�H��ه�x���}�Q ��RL(�p��*��J(��;æ�VP�ļ���Ifs�l�IU��KPz�08x�'�2դ�E�^����	5���
���좜��Ǫ#J1~��-��;��B�lDF\ w�V�(�B�����[�@t2�E{��!�1
� ��c�I,���D9��G����I1��BC���,�Т-Z��p'�ĦA��.�.T��g�Ʃ;�/���;�	��3F�Mf�pE�QlXh��7l`y��a�B���6�1q�i� �p�K5Ք<��I�p��REe��(�׉�%��m �`Kj�3�j��1 ��+�p���X(�n���"H!)�B �
���]��@Ѭ>��՘��B�&%�vP����U��ERʴ��@*�Y@�����?��D&�g�4��YxA�`�,@-��p�<�
�(�!
N"}� ��	Q�O~	�� ��U������ �`�j��U�M82Nrh��S�sȂYh^Q�+<@/��
�,�FX� �`F`���#$��h�9�A�]��E�F4� HPx�Y�KW��ӓ�M&*���fB�	�WiG���6�A� (C&l�3�3*C2!�Qh�p ���$����u���K�%'���&�b�(�`�B��P7� �߱!Vq��&	�
��/.H[�W�`��Dg@C
�A1�� fP�3�� T} �6p)@	h�4@#�S7��J�����sk�' ���'���f�9!���rzX�Cz�P/ �z��j`hȤ P���� ,Є%$ �Yla�L�	��Sy"!���e�V�%0 L��Ɗ��f݄��P,s(��dc�á,2�*OTt����T�h8�C� 1�!aX�Z�L�@-�*���?,a	P�'n� V.�6D�P��=�hjl�O\�A_ ч\ 	���g@�` ���2��=�l(D�lȆR�@l�&��VK��\,�Z@�j��Q�D���������@a� �B�|@�Li�{��P�Ё�3�C@F��A��}䷋�Z���Gj��R��@�v[6hB��
0�7dAuR�`�"$u	)�fP�
ԡ&@ �6��H\ �M��v���0/	`0
; 1)�P�Ar�d�T2XN�����S,�`�TO-}�
ܠ�1 #f��-�P��0!
T0A�J'a���H�! �'�w�p^&0!(`j��P�!L5B�v6D`��h�R��� Ax�ZD�c�!G������bp�,A��A0H�X�c5&,a�\F���%� �ĭ#�6?��}�� 	P8A�J����m!�D� �D�R,�@9l��@�1��t�A��pI�}�K� Uf�,��#�� K��cM�)(AFP_�0 a�-D �La["n4�I�fP
�{��܀	�/����� ��`Ǩ�-���2x3zRa��MH�)9w�C�_?��7����	�bA��	
 JD�n�
?��A�Q0-��qb� tP�9�LN�@���ؐ�4D�*W���T�,���,8����<�[�5ڶ�� �DP���0Z0���� �B1Hn�#$�� �.DA�Z�S!x[XO�� )"C!P�2�{���P��r� gޔI+�*0��eB�(F�R�}��& 
�TD B 	�� ^@���fx�z�bZ�P�	�p?�&�h/ ^��B"/@�R��4A�P
hS���h``�	�@x4�e���	5 >�P4@#�y��I���h�	r�G"	���0X 2����!�.�!�3 X��I�D���h;A=�#n,�
c=b (��0 �	,� b���(4����5�0��{`G@x 	�PY�a (�l$P=�f1p^f�>��	P��+�@\5��6�aʱz=�b$�z��PW P�P � 9�gP �/�-���#�b�M�� O"`b%B`y0B ^�R"V��1� 2�h/`v�-�Xr� } �h�	vP�0�`o�7r��1p u��z���APsX�'�WPN-0�;d R�*�`�J�G�yPB@
@�j��OQ� �v >` �zu�i0���	�{1�P
���3�&>�u��Wb1��4"WP=-���R��h �� [b@[@؏K : �p�&��� �؅9-&p#f�OS��v���!0�	�
� �h.�zu� #� �������@,P
0�xAb��� 1�4i@��2tH����	Dp�8�Y@�y� v� #��F/0NOS@.�]`��
{I��
��
dPi-������uP=�-�(�ɐr� �căe(0`,K�=}q;pa��y̕�Y% �p��j& �	$�4ڄb`P��`ҲC�"�@�� �p	�=�
>P1 xIr���#� ���@� �Ȁ��	�&Wpe���3O�N������)F%	zpkBp'���@`@ Pt�,�4�=��	Jx.�	d0cP��� �`	��
��1` ��=� �����@�PZz�r�^z�
S��X�� 50��Q�&P�@ vg�z��G���iP�i�cY���	n�%��0�0�n���	���r ��� ��b���쀥���0��`ކ�CZpȱXF!(80�O0Br0>�fm	����@ЬD` �p�pథ�!� 1r��	�@��0nf��ʠ�g r@1��� Wp�ᐣ݀���
�n!�����7L�H�N�P�7 O@�*��� 	� 	z���1Z"��@� ���p���� ���p	�Z �(J�`	J�R�����0i@,��	4�0�p��0����^ցJ��N 5`�p�w �78�̰��D�H����p��K&Qm2ƺ�u+�,`�U6��V�PJ��b���8=w��찯�Ȳ�2`K�8PD`�w 	 N	y�`
�p��	L�RP��e�� z!���^1P%p/,p	�U�c�JZ�,P�9�	1�nV�
Ơ4W��a:���r��,!+S9)��8�&0�f@ 	8��K�� �p��w�G�<�y!D��RD�0�\T
-��Ze>�=�fP
��3���`��Ɛ	�PA=��r�p��8ǐc�sβepNPFHp.z��z@j��Q�ڠ�����'�& 	}��������x(MS���;3�r����`��w�@iz_0	�� ����4lP� i�	�IkZc�P�<5��B	Bp�� %���Ӡ��c+p��_�m���b� |��0n-�/��=�d`�P hp�"� Ы0+[� iPE����^cA5�2( �8�L�&�K� &zB�IP��0��b�@@<@	Y��pKXҢ`R&h�
��Fz�G�,�	�L�� �� � (�s�b� f eī	P�m�#X���i��	�MPNp�E�P�_�y���������<��r`�@��=� �%#.���c��`	����J�P�t��d0N
���V�N��o�W`�p�a�,��C9Ap) �SHp\��fX����>�FL`���=թG���E�+���@
�����3@�{md�e�0�qd@J��mD��+Ȁ˪(13�@�'�Hp}o���hF@���H��
�f@d��3-�@M|ҲMۘ�����uM���� �W0,:�	�6�-s]j��^�P�C3�Q�y)`�\&�@�'�� V�{ ���
��
�R�"-�
g��R�/۩�=ו@
�P�R� �8ӳ0�!|�r[ѻ�c)��p|5� �zp{�y�݈L��p���
�\	-p ���H8t�ኩ*���s�����j0�m�m�(|����lb0�;��A�v�Qxf})pH`�6:��(@̻ 4��0	*��!+`v���v�M�P	c��	=��q~	+�6n���dn�mo�	�u�`�@e�8-0����p����H�ZaO�M�B��Op%��l-4�Rh�	���&:������p	66~	m�~;�@�@�0��0�9��O�E}'�� c� jJ��� �神O`MpM0�墛~�rp}0
�G�3pR�`��-H�
4�C �q�� �q�<��F����f��3,Ů��������
� ZP�"��=�`TH�����k�h_I0Pu�� U��
�Tm�u� � �`	נ��Y-��j���rN%�{��$�����
�>�0�p��8�OY�S'�"�v\$�{0� $p`�@JB?4���nf����׀���6�`�=j ��n��@YʥX f�k���0�P	�@��J
�}�0"�"��PKE�Q@�R{�%�I |�p
�O?HrP5���p	������ ��Yj�b�TR�Q���9��(+�,1gTT�Xi��a�|�C���If�$�\�`�ΝS����P�f�!$)H�(E(� D���f��##-��������.t�Tɲ��#4h�b9���)aY��GF���z���X\��TZ6l�
Rc&i����L,ۡN&ce�fAm�O�TH\t�ē �I���T1���V��g�]�e�x�L�X�52�W#T�z,z�렩T"^���M.,��2�HÓƨ��	�r.�)s�Nٹ���q��#��)t!!#����b�~�С��Q��f��+�Iő�rHD�X�id�"A#��`�,J�˒Qa��*�Epi��4ʙ	�q����Qf=UbSe)YNa�Af�@����PP�j�j��"w�SEm���T"AŒJ�8e�H�T��Z��d�3�0ÒK�s�1|!㒮*�D^j��%[��)w���Y8��� 
ᣘs��>��R.�1u�`L�g�Y&="�!FL"�9 �S qd�0�8��3�@�<-�d�z�S3�Ȅ�3.�0��1�y'Gtr�1�w�q��` ɪ�
��*>��Q"3�<t�2u@���QQcTN1%�Hy�H a�T i$dW�ӌ��i�gU� ,f��*a%�r�geos�'\�vgs�1GwvمU2�E�]��$�>��D�j�i&Kt�yGU@b��Tt9e�kA%�9��#S��H���H�x�4�(�=-!��6A#�r�A&\`A�W�{�1S�i�ѧ�yǝz�i�\u�ᄓU���?���s�q�s}�Q|�l�X�H��f��� �; 9"O<Q�������K!tY	pQC-��ЀAG�@f�n�v�p�q|q��1{bvQ��fЙ�%��J�z>��i>N�ēeR��j!��D��$v< ��<���|w	^��<PA)Đvd"���d���[�@���-w���#���8���0W=��B�N|�.�q
F,�q ��<x�~˃�K< fx�Z�'��� �	@ȄXv��u��P�^(:��qXa3�p��/|a��E��Ŏl����O$"�#��#�`$@� F+,ъV�,P�B`��hd�(�4��d���ȇ��UF�9-���\���J��͠#<�X���Uۣ�j����y�@ $�!`�� �/�HR��Lj��
>�	4�o�@.P:؈+s��1J�m/��c��ԩ�t�C�/�����4U@�w�]�`CO|"C��� �� &@ ��(��x�/�@5��ghA� �,�!A�C�1����*����5C�#�9�����c�s��� 1�G�@��.t���5@ F� �����5�C��-+X"4!�� $�N�1���[,�V���B:��s6a=n�Bx��٣�G|�"����6  �@ y��N �� x�+�`	R<�,f�0Q		,�> A�@#�p�k���8��P�ڛc:Fh˝�3�Ġ�(���uy� �p` �? f"3�&�����%Z0Z��m�A��!I`�,�׎��(G��[�Q3�#}.�%nm�[:�O��&�~�k��0�X"``x��� ��1��4h�r(-H@h"&�L�0�dP#&�%�8F�{����mmIם�u���^(D �! aw�2p`d ;� 0`���@"�P+��0h��� � 0X@	��� �@i����b�Ԅ���ZIS:ҕ�6�q^���wЄ>���O v���O�n ��1����"��W`A�uX���A!pAy߬Z��p�-W=�1��幮��+��ȸ�)Cr�@F��;D n0�x&��:  �����&
0�+|� �C^\ tpA�
 �j�6�`�Ω�w�2}�;�[��Rq�k�.f��܁�H�����d�p(� (`�b� ���h"Y�"���.`�Y�VЈ̢�hG��Z�q:-�4e�l�W��ф<
6:h� !�Ch���h"�&@�ЁI��V��Zr6�c�&�@f̀3P�� N��<2�>�23s�ѥ�d�\�ݢ�G�A  <�!��:0 8�����#��&�	�'�Zz���C�`YP��M���̤\Y���W~�Tyw).���F���-(0�t`P �   �ހ��1d�a@	+�A�I�b�PX 4hvl��2a��z�{�HCБ�9��[\Y	lɊ��#�6@��;0 � 8@�ȸ H�P ��g�>A�� �_h��0_��C�5p+/�h�!;����Uq��[w��{�'�eP�v�
���<�J�  �Z�h�%`� P����_�	��B_��_����B��*X�<�Y�� $�|��:���'�9U���?{렙8��B@�� 
� (�C� �� �� 8� *�_ ?�h�J�B*�B_ L��JT�Xp�hXhY�Q���@��܅�ȗ�Y�pq�F1�A>�� 0 Z8YX�'(�� ȃȀ`�P�` _PK�����B�P�M Q�PX�7P�YЂ1U�=؄�	�2��j�
-�����9$'��HC���- �(&���� @�'@P�	��"ȃE�� 0��7�����DL��� h����m8� X�L�t������MX U8Q�A �)�]H�h�� �8�  �K (�� ��"(�`��` gP��1��J �LD�J�LЋ1��00!�g��J؄��W��נ�:��
�P�h�ȄLX#��P���r B����Z���J�̪<�0 � 1�� �0gb�+��4�_�\(�r�\p�xI9s��Y��Hr�.��H�B �@C���`��- By�����q�� 0��
(ϫ,p���0`�h;�(ю�#��Hk���BI5E�x5��萃,�xP�Al\�3�$0 0�Ph㡆}t��Nʌ=���>O#� ((5X��cV�$��R�F_h�K�Be�*1��[��	�e�mІ�`�6�7p�����H�q�U8�H ��h�jH��v��؂L��v`�s�P92��q� P ��l2P�I� 2 �J��`��t���(K>�JPp�X�Qm�>8L�:`�W�p�ЃE�\��>؅����K�Wh��Y��[>h;��v������0 �,�c͂0��2�	0 	���$	Kx�IA�ƽ �3���=�^x�KE�`�4`��
��S�g�Q�K�7�x;�,`�P�5@=-�U>��@�7�Ut�L0�
�a��:-��4 x6( J0 7؁��L��_`�� `�V�F��F2p�M��:X 9��KEYt��MP4��,1���m��Ť�h��7(�@a�5X�4���xZ���-���>X��$M�ɍX9����50 �֑H˕5�C�9`��R��gІg�m��d��1�1� ��Hxo�Y��4��-�4�o�SX��x�4��M����`��oX�Y��́1��0�$8�
�,g�԰���p���o܎kĄ�m�WU���	g�^t��� :��x�,��]�4Xl��U�j��x :��_��e5��:@2u���x+�60�+��VZE�Wx 	( p���FmȾI��t�IB	��h�p�5���h�XpŤx 6x e��x�e�G��hX��V�_o�3��`Y��5��s��Є0�Nx�LX7�A�d�-����5���_�׎<��c_��70�X�5`��{�^��XXX�L �h?��.�m��t�NȢ�zo�o���d@>x�Ip��v���P,Hj��4�����%&�d�Q�&��8�JԄW��JpMh�Tvk9���\p�������� 2H�4(.�l aF���T��VX8�Y>HX1�E��Uy	�౗Y�|�z��tև{0`�0�Ic_p?��mz�-˰
6`�ꭄk��a����7�;P�4��`�?��\��j��.YFhN-�I��s�rH��}د2%z �sF�·}�y�+( >	��h�h`�,x�i`؄Wx�7 �kX�xZ^Y�4��vHM���Y�a��Th�7��[rp�v KV���F�s�|�kz���| �/�\ gp�3Єh��� ��7�	0���#h\XI�0���Jp�-�h����)��1�����P�|��oP�rh�r��o�[;绾����|��}��Ƈy��/��M� Lp�3x����-��(��\8#��Ձ�X�PXg`؅[��.a�#��:��4�eH0H䦆�8�YЂr �}P�s�m�}�5��m}�m~�~��.n�f;�L@O}��SL%لF`� p�:07(Um��SHXx��?�4��T�a:��b��m(��i��d@p��B���{`�&Givև~P细p~ ���,���p��hly�MP�
ȏQ 9(҂��!`�� wЂR���f@(؃U �4 �1�g��D��4Ղv �&ׇq���ir����(�rw�px�ؾ�+�~@P)��	P3d,r�4/�4�:��k��F��5�j`�KX�k�"8��L];@�18�ϭfF���5)2ʷ����y�m[Ki}���|��y�r����{�hc�;�]N��lP�l�x܄SPX��a��������t�kP'��@Np9gx1��?F�:x�6C��/} ��A�'�y�j�v��*��n��}(/P�i�΂{Os�
N�
�PQ1X�ܐh\��4h�]7�i E 0N>�/ �m`��t��7�K�	2*%oig�{�+������{�v�~�|�U8{>H{>�PH�h��lP@�>8�b8Rm��kp�^�x��x(fP��'�Fh?2����i��gp�Y�sk'#"�$f�y�/����irK{|��Vy�/�JQ�h�����}�TQЄ^`��ņE�xs��� �)؀# X`�T�h�l��^�5`�5P���Ё-Ho�v��y�|Hpl߯�m��&�����W�T��v��o�:`�PZXK �^ڴ���J�0XΩr�L�B�D:�#�.}����
��g�U�$f�;}���s�nܸy��͓WK}��\�Sg?���ͫf��`�v��UM�*Yװ���;b�X�t�Q���g�ڼ�I�3!B�0b��M�]���x6d%X��U���]>z���G�y��ᓗ^=x�~��78��s��q�J�]�j�2aZ˙�f)���Z%��|	4�C�L��eqS)֤,i�5S�F�S״a���6+�����b|��^���Oz�T�s���JwL��Z%
�M-�A�蔶K�`���iZH�8�X�<�Cu��43�@�,��G��A��@��0�\�HB�8��7��3Q��s�>����<�Xv=��c^?Ce��e��K5Z�"�#�,��)���
$�h��(�(�E�`�,U֑\�C���/h�	���	1`�.�x�4����$#=��38��t�b۽�c>�%j>���(����+-`�#����.�l���X�2�̀K/v=�3=�r�0GmhR��4��jT�B,�0rd`�Y�bN�:�d��%��<��N;�ȓ;��SN��@�$yP	$�$Җ1� �|��&(,	$"�H$�,��=�p�^�P�R����H,���E/�HC��qD��T2�-�����X�;�!&9ȈqE��_���pÍ1>`���8��0��R�&n`�B�@��2��B4hrA�n���
�h�Km��Z(�L+�,���$��t:R�4� �>��8�;W���1-[����c���1Έ#��bI,��q	.#�+��M3����&z�Q,r�bd���da�כ`Q=��ͫ�@*פ�,��R�7��#�>�y�7dL2�/���b�%g<��A��@
���
Ϩ�F,*��_����Z��͕�`��юX�B4�"����f��
�H�n�d|��XF`�G0��yF.1	^p�|�H!B2��� E&�BR�a�0�`�ZA{�S�/.q��M���}�9ȁ� �7&1	`cf`�V���!�@F<&5�w�"b�2��
�0"��&��KD�p�0�2�a�J(��1l���/���C����V�"f���/,�<R�0�g�p�/��K\��  /.�	W��up�%��[$�c��[2��:6�A���4��l�O� ��  �2 bi��
�g�v�{ch��� 2Ќ{2k9�0��p��a	2X�d ��� <N�f�6A��l��qb�#e+���4���-��$vc	o|�VL/#��-��8��'!�1|���G����
'  ;         	lynx.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � M  d x   	Bildname  lynx  nGIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � ٴac����/Q@&�A3!؆��H�"]��MǏ!�XFHD�gP�I��$B�M���2"�3!ۘ����AH��s�R�N�:j���G�uB:)�dѢ,o^�'M3&���s�Q�l"\��� Ͱو)G�"?��*բ&_��U���l��=�f�@Hgƶ�+��%a.��&l؂J/��s��A�,�<8��AL����ˤ;E�S&X6�.�4R��B�$a�h�v=�9Ѫ_�<[�亣*K����6{S�N�c�tP��P�s�/�yI�s��&i&vđ+m'�<��QfX y���N��H G�PԖ�x��g_}���a�1Y$�H�g%�`�wD �L,䘈5r��omP�V}#	�Z�Ho�UVWr���'�TFW`�ПiM�YaI(byG��SG���PL��L�ɴ�rRT�b�Ii��P�e��<HYR�Fw�Ŧ�,�d#d8�G\g2%�h��T�]D��Ԧ}�'�u��IUh�AD����j�����:�t%Z��.ȵ�T�-�F}�l�у�E��;Lyւ$� ��DlL0�i��,I�"dNE&q��*�]��Nnf����D]��mB�	֔�(��@J�߮Y�HEVJE�Y��Pm�떇�E�]9�[��R	�&�[wvG�t{��%|��)2Ѓa�Ф:�k�%X��%;���cTqš��VW.֌*�PP�`Q�4GT�S��U�˽7�%��f��@�ۗ�ji`�9mR�l��l<tו�Fw+���^��L�}$�㕶a}��Ѷ�iK)m6�E/�=��NOYX�f ���L �����AЬڽ-҆�D�a�O��rh����ik�����,A�v���~))8�Q � N ��Z�*Z�k�%�Ab�qkG���um�-��s�w�{�ߟ�sx�����=H�O<�C��ʠ���$,�+�|��N�vQȺ�1��a�P��<�]�P����VT"!|�+�S�&� to���;p����E�E�Ɏ,C�Y"CHb��#ac�;R�!��oz������Jp;��%���A��!�Ԩ�kQ� c!��V�Y��1�A4��U�����a�#]W� �)	Kk�!ʰ��;ء!�5�%)�H��E��P���@@H?f�@�T��H��QKI����A�uk�@%q؝0bU�a��6����R�)�,f�2���eӘ�m��eD��F �{D�Mh2��$�V���������E�2�Қ�ܦ7e�FZ��U�zᴮe*ڙA@H�� �Cu(`��3��Ƨ'��GZ&`��  @�PD��V�I�#�LcZP4V���+L�v@��x���E}��Lv�@�ND��<X)N-E����5D|<�H��4��j
��bu\���� 6�.Ck�(![��6]�5�	L�j�>�����i\ŬB�4����,�J����~!�O��ѬĬk1��-�PEZ~�޵�`	���k ��L���f����Lա��ɲ���S��SD@i���� ��r��DY��L��L����<�է{:�	W[��zt���X�:˖�׍	:� @�HՆ�;Y�~�=�BDZ	���ˡ�΍��Re+{	K��l��l����V��$/1��F�W�LKP'	���Pp�ӴV��� �Z��E'�;`"��?3���e\��z�;݉�����q&�!����� ;'h'�%��,�⢩�����
����_%�m[�ؙ ��z��a��p�x�<��Y^�u��p�wBG<�h��������f�CVu�4��$�@F�P�-���inT��djK�gxrřD��[\��Ի��L�YL�,i$+>��8����^�Y6�/�)�P�
��jVU��G��k��k�+ްV����0_�u�Vb@�Hm�@Ę��Cl}��������t_9��W�mbj�����:h����'wj=��I����b1�%M�U����\�2g��8ԁ�p�i�A�~k�]�����V�x��t����������x�R�.V�P�;�p�;F����[�c�,I����ܩ5fS�f0�.<A���D�v�i(Ln�T�:��p�#!G � ���L��G|�?Zz�1��]Q�Z�����m_bdm�{���NU7:��X�p��!�G@�%�1�������|�s+uK��V�J�e�	c�u�ǣ{�l��1F
8������v@�ߑ��z����#aC]X�O'&���ꕁO�Y�����kgn�PF��_[��pn5Qed}�w��
�]�G��7`�n��/�$&q�q��%f@VV")FJI�D�7`}�y�Vmu}��zH��}V�m
��d~�p 4�F��n�BL&-``.���e\�bD
�m�-�"AGz�A��r�Vl�w/x}��z&p�%K�Ie4`��M,�/`��D C0��M���DZ�D��>��-TJ	6r���r�}�WFr0`n�}A��(��EF�UI2�B�n@�B��{Cg�:H�C��@�WITڢp6�eU(UA��
���wx����}Vt�6� ���C��7*�";����E�%�B0ֆGZsA�ȨN��A�q-3EK�'�Ј�T[���9lp}��25L��n�����$-=0��5TW�"?���Q�|� ��G���x�:n�x��[�� PH 9
GI��>�d�� g���~ )��1�gz8���8����T	x�H ;�}�}�G��<���}B��W6I!ikӲ0��i$B-���s�E:�7�zv�D�U�V	ȸ�z��}A�J �w�'}�c4� ����}�`��C]�dN*�:�E���N"xJ���^e4��gi:9E��w�#�s}Ņ�7EX�A ���E�(��0�A*B@���!7!�1�`C�b�؍	Xf49B
h�m)���%�}ؗ����`1�*o�(C���1�������qG�)���>����9E�S�w��V�H?��z�� ���~
��H��r��_�q��	��bId��e~�c4�hEj	��{��w��[�zG� r���	Y�����0ßg ���5/m�~Y�y�eu$A� ����Bz�gx����юp �Y����d��<�ɗA<)8�9ZRJmPdѶyFTZ�w���
�Z0�AP!�����U`3�O�|]�Fa:>�s�Q�0rl�N��c!�3�qE���1:?ԥ�HH����4�r07�~7r@4�`�kp��H��#t�0_r:S�!�Y4}�"�ʪZ�o�&1lB�����q� 5�CY�zjq���I*+��0Lc�A��D����ʓjF��ɨ�&V�:���F=:�r �d�e��z�*�N&�"z�1Mr�'`p)��&?ԕ��;)p�	V�Z"��w�CJ�l���+��05��s%*�Lc�Bge�s )ϗ��إi����V���as@����jC3�9�g�#}G`�@0EV+(�7��(�R]�� 9�z�i�a�)1[h�6�0� ��b	x���D����z �II��z��!�"�Y�}�y h	%
�;� �ә���[H�`�X�� �!}��3���:}FLA� PG�Q04>m��f��`��>oG�E�[A�V�׎\؅�V_����Dj;��3�q]�<r�>�YRb�\aH]�;P�(6A4�D?7�_f���}��
����X
�fhfCet	�P�Uk]e�;�3�D�sO��O�J|�C;�@�qzHG��=`%K}긅�������UU�V]҈i!9��!D9}�$�7j@1ػ	V���T�EXD��E������8h�;�����w�14�tiÕ�,1���D������:VFeW����oZr�S',;�Y�X��=U�1�A�a	d������r`k�y� �@i�#�U��M�3K������}9�Gŕ5�l�0[c@0�bA�k0d0}Y�G�e�^��G��eŪ��zkS$K;� 4G=��%F�1T|�Ή��Ƴ�R
�>��[��v	;� 
@�#�0}���*+1G�Y.�R`�	�z;bQ;4:�ͱ��%�i��@7�p��j��,���<��^���\���a���������Z���ٌ5d\W;�3q��Ia�N^9���?Ƙ�n|`d�|�إ�(������M�� ���k�V`:1<�iE��h��W��d���� 冘�(dP�}�;k�fY�:�e]s�6h���	B���0xZY7�r�'�O}�j��&ܥ�<jPn�7k id4��ǅd���6��hC��ͺ���UB�4^1�x3�йK�:�X�קp�WZ�Y�=��-غ�bjq���ͼ̖ ���=�!���{Cre���C�,���V��AE;�����O8h�9����6�Q`s 7�,�(��S�I ��U6���S�c �븎@��`�zA�VwK?�}�X���
h�U������{�Y����f�&9��*sP5ѩFR��f\�D���8���&֚�j�	�!�-�X%67�R���U{i�p�d���E�
1�ƙ��ٺ��1��80�
���2���_k����=�@^D�oR�9|���7�ww�K���p�%ڒܣ]4����KM���RWe��l�>�a]b�͂&�FC��&��SD������U`�3�M���;�s���tI\H���a��5�!H���i	�`~���H��ĝ�R���nܼ�ݭ#qU�@{ֺ�-dn�K�Q�&��Ϥ�+�"J(x�%;9�n���C]p����H��F�F1�l�N�In潞���U��׸-�((��xW�����]�j	m Cg'�Tr<��$�����:e�i��v�h�i<����d`8�q������>ڇ�5B�&�2_�TT�*�_��K��̡�H�����̇0�@�-#��·���c�R��J���@��z����l4O�5?ں�i�]L�D�E���m�-婦�x7���	�/��Ci����a�2o�̎�O0����ƎP	>"A!J\C���F���#>ŗsU�{\�����8{�]J��aL���Aռ=�xǜM]���JG��<����I�����U�H�@0�beI�g1xD{����ͻW���'��_e�+(v/on$>�C����)d	�'���j@������:k�P��ʄ^�'/��g�D	 y5��4�e��1Q�C��+��V���R>�dY��viB~�����^��j�'�W��Ax1#� A��)�pH J� i"�!E���
�&X�P2c�G�"L�E2�.I�i�K"'t��Ȑz��)��;�$,h��S�f:��fD�+n4�1�L
C/e���%
�&x�(�͜.g�v�G��]�T��OͰ!�`��2Va�d!F��@��bD�#U�̨�gO��*g�@:'M�x�~֙Wd���L�vc3k/ΊU��ȿ3B�Y�%���nę�9M��s���iH�{���/B�m�&�M��WGĨ�$D�]#T����f�BE΅[�u�]��,$�X�@��d��<�kL�2S��� ی��ƚo8�؈Ĺ���ɿ�(�);Ԏ��z*é��0H<����%�j��l*)Cijo,�;m�{
p��L-(��� �
bТ	ò.uK�,�*�O�#A˹̒��ȝB�	��X������2숄�+�0�㒪G:�#�L��LuZ�N��t�4M�J:����IiBƅ��0����/;�L�13D4$/��U#��O��|�N�휤�R�� u����:̪�m�G�@\4�W]�5��c����V���T�7� b֩2�4T4YݵUGCtT,k��v;��TW+��m)�1O+j���l�'�lu��i�]bWU��V�Z�������:�Ҍ6>�d��)�vݽd�j�;3,#��n(������@� ��2�A)*;.9'�/�H"��oژ���HyY�I58iN�'��Չ��vxg����*�8c�#ᅗ����P�6��j#�v����	Ӣf�j����g�Zu����!�8Cr�_�d��uk�$�QD�F��o#Ǹ��6��3Vt���I�/��f�d�a� ���&	қ$p�?�e��Z��ZR�[�S�K #����#mr?��5�r�1�H��xHID����}�Ҝ'}�ɢ(XtI�|-Z�>�r��^� 8 Y/�P��R��Hge�j����b�n�y�y��.!*Ł�q�{]}���p7��[�BJ�MF�����}��bo�_�d.s)elK	���ג2PB�)���ǟ�i^!��L4�1�#*j!^���� f�12�E�
1&�K MLX����H43]��ƪ�0�[��ځĶ��cOIHl#�e�':�!�i>�F+.	S��O��:&E�U���*	,2E �y�:"����2!d�D����ER�a�ZA�([��'���P��E��M� ���ǀ#m^��B'j�MO���&u��	��<�@r��A)�3�C��C��woa`9��D(uUd&�����#�x`u�-)�!8IC"�,����.KF�}���2K  ;          marmot.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  marmot  GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � '\H��.�/%Dx�`C��
:L��SÊ-j�E�F�
�P�H�&Q���eB�#>��bE
�&r��sWF�;�q�И'(U�#ɥw6D�e��7��s+уz�	�P^c9z�T5gI�\=�+�"ͦM'V]�1"Ƞ;^����ٱ5ovb9��ˈLi�Q�L�i=6˶�W�b�-�Z��.f{��@�˚F��#P�?1�)QͶ�N��)�h
J�^��W�]�*�h{jK� Cj�
� X���2a�`�l�~��q��h��4Lll���n8fϢ��!��)Ė���� ��.�17a�U �t�eXX�Tv�f$���`E��s�4�y\B`��-x��f�p��eSG��4�|����r���s$V�Qr�"r�(N�4#�XҘdo�i�^t��#G���OvՒN��O �䜗��s�\�ezB��e_�G]X�J�����؃��[H�9���!8XD~҈ތZHua��l:�6�y_w����]i���ĜQ
d��L�����e�(L|�b��GFݶK0�<�ᩇrY-fj�zI��N�b�Z҉���)���-��jڴh�Wu��/��[,��]�+���`'F�I}��p�B�Q�>u(���搤Rp�.4��a��
��m���r�!pBv6PV�+c����������тK|���J�,���H�lTzk�rH0Њ�⊬-,��G�
[ܪ���k��h]/�E�N���H��ug�(%��k���1?�*���6-t��51�Zn��j�'�G���Q�L'PM�q���с7��ׁ:ܠ�B�l�;��^Ă!1�ϭ�����@^u�Ə{s��B�q�cㄬG����gW�ހH��NB,8�\"A昧tzN*<}Y8Sw��ڴ��է�v��Ѝ�H�41�*�%�E	'>
��(F�i�T�z ��B�v��������	�p��t7�P!1������k�[������r�k�O6�-9��8��#�(a/W��1p�k!�2�!}��P����>?VEk1(�ʐ D�!��#�ˎh�&E E�IW̞(8�q�h��b����i�+q��azPr���A��)��l�HM|����kA1��%�ued{��5�Ҹ�R��  X|!9Q�.�-^��-1����(Z�KL�S�[U�,NO_�`���lWq�c2H��Qܫ��ƶ3�U�y���m>�1.n��BѣfNi� ��A &V�V�mn����B藈������׌��xmvZ�7�>��Ґ%О�q6$�8�ӧ��>�I +���j�/��✀���F9��E�|g�X��(|�P��0�2[F�y�T0<Ѯ�I�ﱐc�ZLD&��"���1���i���\'2�v\�#�H�6I�G"x��5���kS����w���-�E���N!H��R�&	Hj�I������w����G�5��|G�h�&�2J@BU�:�D����s*W�4[D���b$�F����D߉H�v�Q�C�PX��tlH¥lj �M�pv�\��I�~U�!I�P�Y�ڵr���^17\�U
`��iJųƖ�3�L{�"�S}S3��lR��w���L��6\��1�N�iOG�3UQ^���}Ҳ��H�A�9%3��ى"��A�(�*U9C���=­�`G�1Ӓ�R���V+0���v��L$�����LM|���(��y�\�r+��r�׼C�~Q�&��NJ�ܡ�$��3�:���0�٫����[7K�iS�A����,����ږI��!�����)�_��Ԑ�F��f�$o)�����Rgu�uy�z &��7��$tD�=�w���`�'��2��B�2M4���U��"Z�K�f���Iޯ��d��I(I���l)�PKC�B�%��e��y��h��^��yW̭H���������B�Ϻ����@���'����2��-wD<�S�%s�r�J�#-bwLT����x�g[����`Ck՘*N��ƸĐ�*���H!�8-/�[��E�ʌ;a�(3t�冫d�Y�&�Vq�hy� �>Iq�-���C!��4Q�z�c���kD8#�E�%Af��pv���T*���zvR/�P��4�w�&L���V�<R�k�x$%"�,�n}��_䞾61���͗�; S�r�Ru�Dމ�Y�K�Q�*VAun���_��CJ�y��O7���-q�2@=e��Q�c�9�[]G,�t�?m×�f�g�����8z���J�jZO����wj���G��KyC�I�>�r��'/�_�i;�ݭZ����X`��I�b���-��N΂[4F�?��j%�k	6'׷S&�	
�\Hy�1#[i�0w1N�A�v(�vb<�'�li�brЀl��eK��!�4uӀQ�)�0R4=8�:�E�A&�=�ւ*�~�yK0=5RG�7Ed}�EX�'4�dClCLk�P��h�ws&0#�h("'m�x"��DWgD�5�AO�cN�$P\�x��i�Rl�o�67��7yj�\��҄<E�)�;-�*E6#8h�G@�6�D���mL8y�\x�~�'nj�f��N�?����E�T|�&-�>�"/�N0�8�O��N��(m�DPs�L�fL�'v#<s�vbo��v0ԁm�!�vs�uj��6y�h;��'Zg�k�fkF7T�ln��3n�n��Se���vs�8KO�f��]��f.��u�j��ys�Q��D��x<�6#C�VP�Tuژ-�$	�S��k�hhO��L�j!�+�-��<X������~t�� �O���ȏ�y�n�'�%�jb���Wv�B�3E0y�F�>>�WN�+��樍��n7ǀhH�ʕ��hX��t��/.�>��3�2�tsVz��j����W)����# �e@71N8��it3�*�qJ赗�( �h��us(���ҕ'h�d�"�a�t��dA���h[�ƘH��\j(y�h��'h9��j����	:�O1�l��1��GV��x��ؗ��؃�'h�f��Ȗ��Da�&�1������Mv/sU)s���i��8}��L�X)��c7G�}i;�$T�2#�R2�R*���WK�>��HP�N`����ǖf�֞I��*���$vCYq0���R,+E3�� �6�Z�븗b8y&�~�9�Ei���+AU��5Y�������5
�c��i8�(t��և���8�%z;Z����7��*}#,���K�)${&>�j���j,��,Ф�ŏt#�/�9�|[3m��(�P�tcr��+�4.���h��ܶ�*h?f�E���p�*�y��g{4R�E�8n9I�&:-"�����i�y�+8��%T��9�@T7J#:x��t�rc0q�i�f�0B0�����w�~�h�61Hv�C.��Z�Ք��:����+z� �oF0z��k:��x�����#DE��'�i��1����s��z^�J�s���0n[�� ���5X3�W���E13g)��1m�yI,�%	0�'�U�ts��:yz��J0g��7Y*:nm���.\(&���������"�1#��4ە�	��"%����Q��E3�@��E�WzCs3+���{xB1㱞z���@ov�͵��G4B��6Ȕ82��i������a�*'d+��g��*p��	ނK�G�@թ0�R�"��t?1 �(���r3r ʜ[�"Eu0�y�K;TPD�բ/���ȳ3$�\�]�jLS���;n�\�J�� t1x�~k�� �y��A?��<ϲ|�Oz)�����&�[Z�j��y
���aBu� �z��㖉W���8��WC�ٗ=�|�1'K�2s@p��$��0㷛��~�9��)��RD�zAL�! ��9G��CO���C ��y�)��ٙ�#�ѪZ��s�-y~�Sk�">MC�K���X�p�X˚H@
��	��2�@ �DO3�52��r�H�@��'�A�kY��P[���+�5,�9<C��r`Žr�郟�z)`� }#�g�>C�*��� a��7��w�N����4��-�^d���;�'V"����D�#���6wv �jM��9s�3>���l7C�1�|8A� 8a���;8�(�����c��{���p��f��˷9q�!u ��9�F |�������a���fy��S�47���-�c��CTr��kl�8H|��Tz/7"�h��Qxr�H��7�X�P��6��(��)2�*!5���؁o��""4��s�=d*'y���d���ýѨ�H%
�+yз4Z��*���/�cR��������H��+����]��C�oڗ/�'�s�2KD���k��x�rn%9��ȫ)�t�y�B���l!I�cY'�E%�"��#�0g��Wk��\��%���y^ܘ�nF�g:�۸���-�i5��I�l'��z�,���Uǵø��	�}�J��ƹ���=��vLE8�t*�̚�����C�^'�]
0�SPs)��"�4��(G �*v�5fE<��4H�d^��o���	�,��(���9���8�iGUFmP!p	��hl����e:�Q*��M�eXn�xr�
g)!�);���-�6I����-�mʚ�����ϙ����Âao�A�25٦�	nYu��B�A|��%�(R'� �q�~1��}�ղ.H�6B��t�¸{�͋���.��m*����	���~�9!!r�SĤװ�EJ���z"���*]�V�2E��x�i7	v��H�bE�0��p�"Jݴ<�;���,�{��y�/.��)���	FѼ|03�;c�	�1.�3NN�E��3�h�*��qi�ʅ�&n�|��S�iȑ	
��̿��E,��xN�C!(�K7T���]��S�p#��͑�݃�����3�<39�6++mٲ)���wy�%n�,ֳ���ؚ��-�)���(� um�#[5R-�¸�}n�O�\n�j���Z�y)��K��`|��+���&��lEY�Q��N@��
�.��ך����2gB��թE�JE/�q���`ނ�W��ނ�n�<���]䈐!T���3,����͍N���L�׼��䦾jrR��H�Ͽ
��K�	�\�I�{����028���~��[��w�׆��ݱ	)0k�4���*t |%��%+�34���1W��v�7[�M��
,���p����'���\����]���ys�Gz�T��܂��x�~}�+�����gʺ�Y��6Ç5��J�"Ά�ȍ�������~��.���V�0Z����`&���������nZ�
7�����4Э����\�-�'�w3  ;        ! orang-outang.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  orang-outang  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � �9p@����G
�HQ���%F\���D  9����4yr��� $��`68׬)1bŞAJ(���wA� }����N�>� ��B�=(��NA�Y�nU�!c³�8��	Ϗ"}"�Xɑ���)ȧ+�
,s�ׯ*[Nے�E�*ds-NH�b�����v>��*I�T�nu����2A`W��Ck٩@�,�"ǂ��D�&�ų��-A��݁ �K05��+):0{���`�c�;6a3���d��>�df~D�	��~v���A���D�WXmאl#����h��\oM���9P��	��Z�	��c�$$��}uWAMU�\n��#��1�O}x �^O<	��MT���W�N��O�ubR��TU���(�T����S��L��U_}�yYA@@DbP�ɇ�L��M��D�A�A-
dJ��ex#5�WO��������t��hb�r4�g[rt�G���A��Ie(X�\
��8�H�L �+�#�J��%:Ѝ��9"�{�q'�O:�����ĩ��Z�%h�@&&୩5�g����x>i�B� �sr��A͆
�����q@I��r�qq��AC�J	"��a��/�������*+%��:����|�*��;���q����Y	dʥu�*`S+�.���{���)2�)K�.�H}�q�lj�*�|pȌ$�M!ťj,U�b�j�(ݤ]M�+mԥ��d'�������w�Ĳ2�L�����U
4�ո�}D���k����9r�B��]�������}ށ�|��+���j�#�,��@f\�ٺE�{�s�y���K��w���Q��5��n=���.�:�v�Ha��E���+ʗ��쵡b�g�Q�z��HT��x����-�,}��N?����P �CY�G����~�.	/}��T���,��p�X7����f�������^�*V؜­cM�=AP[�&�1���I�;��ԯQ��Z�-��f�������%���GQI��)��r�a��"��OnPr����5�^z����:�]+or�!J�D�RE:k4���K]����U-0�m�Ø��U����e�
"²f	-F�&D��s"�1H+Z���ԥE4�n�q۝�#���p~��ʪGR%�p�'� �]Z�r�YUD���K��^YJ艮T�L߾J�'���(��	w�H�.�C�"`�_J���d%ø���R7|�娷J�Dk����K*�H>��N����ɺ&Ъšjk a�HC��eu:R~F��/�#R����$��R���*U��,.��������hB��D'z[('~����.��@1'ź8bNo�Hz$0��қ�|U��M��s ͎�_.4��ۡ�삗%S>.��p87l��~��E0�ā�M�&$���8H�e�+�U/�'�b)�#O�ˋ��ONB%��c�S�N_l�	鈰�šk/M�"�E�jb4��1�����y4(i�|c������^V��d�� Y$bus(�X+�6�ړc��b�&�>I�~�b��W�v���|����?φ��k����C_�������أډ�@M/,3�W�v-���O��s�Dek�X�X�:�N�iMY��^��&������Jק�{ I��E���$%��宏�'���#�f9N��؍�&K��P]է�z���;2�O�������\}�˹&kq,�V�]��~e87x��h�7F<�U������"U�>��^k]�����/���0M�7�R�����9�c&}9��/[w�,hJjd"���7���f��,	i��&�6j�����c�i������0fb�8iICן���FҮ�,d��L{�����5�j]g���ݛ]TK� ��j�\�2�Ȅ�":�,�ֵ�ٕ�w�C�)�� ����v�/�)��R��;���EW�̠9��0!8Nye:�Dr��_�!��������~���[6s6�A|ٍ�cme��*� ���I��#������%����^b�;yp=�g:��"�Hz���D��06��\P`��l+࡜�ڦ@:��8��q�7H�cu���"��^�&R\��cP���;�c'&@��w�'�xǍ�s�+���1����͓�]�r�\�c�dǷ�-�i�p��G�v�����t�I~���[�q�҅cr�QR�9�2NMu��������t���o9�}��<�<�oG��wX��xLJ��.\M?�7�	
C<	Ľߝ����-�Kd?�/ǵ�Y�v�s��"U��Z'���e=BQ�R,�M�N���ɳ��ܯ}��5u��v�w~�w{�<�Wy�r�*y`|�7Hde��>��)rDz2�7uږk�G�s�@4�}��{0yog	٧kwrxr�wa:veF�@sp`��t8f"��d|��7�l�@m��a��{�w{r�{���|J���/8�pU�4��r6�_�(c|�G��'r��k�<�kx��3���}#{j�� �.y <�wHu>5f���saG'�7rK�gqn��o'w	)h��7�xX�����\��g6�cs�)\�_�S"�e's|SX�u7y?:䣃��v���kx��ЉVh�K�v��cxp|�w���4�(��Tt_v�$�m8r��68�>(�w�mg��6u{��݇�S�����(��}�R|��N��e�!jrw~�+%�,s�{YT~X��	�ǆK~�#~~�t��es�1�e>�_����)}�iVu	��\��i��r#8u+�v�{�(��rS�w!至��'�7{��.k�a��,�pUG�dp	�d�'�޷� ���vI9�x��-����E<�82$r��gI{5�cSBz�Wu^��{*H)�����oG��ȋv�r�Wr6��s'����E��t��DJTa!a5������ى��{k'�-'�w�i�wRTxR{�Z(C����6��asDNt�?�v��x{x{��w��"i	Ř���)ʇ~����4�Tp�����?�y2�~(~t����vmI������w�LW������z��cH0Q%h}wi��R/eZ��yYD��٘�������(~������(���袞I>�trJt	3��� jp j�[� �c���'��g��ɝ�g�+w�����O�&�1�z3W9�Xw��W �;j k�@ ��u��i�w��}Ii�����9������.yp�9
�t��Ez:!U���z	�c��a��mo�v(y�Y��`����f:�5+zn:�e�I<c{�P�ģkP	���F�j0X�mhenI���	� �)�	��,�{$���ؐO�1z�;ۧ�9f}lWwK�Dk�q�m`a7
��{�hk��v�����	���LG���ps����x�N���w|�;��6ma�  �x��ʣu��e�Z���	����mֈ����T�.�2�h�����2�#c1)�Kv�U�x�/�q$9���vE����my@�y�D�Z�V�����R{=8� w/GB��
�:l@W��G z	s�<++�*9��|���%؋�)�0i�˺���&'N�Q���'a@�o7�kPq�҆��r�'����p��W���n��cIг��4�a�@к ��R$#@Pq�N�x�iN:�mg�ؖK�����y�~y��g�Ț�[y�?)A1;�%ر _�
�76l��U���Et��q�	I�	�(yl�tTi�[�������~:��/�8��('aQ�a����)g��v�ؔ�����ª���c�<����<HP���Q2AS��{��?0o\� `���iJg���m'Ni���tl�"��'��Z�={e�x���ܲG�&,q�F� �|��k'jw�k(����+'��������W�(�h�����R1G��7 ǒ0�v���/ؖ�K�Ԩ�����ʎV����tL��M�R��ę��<'j���bhy�ژnz�޷�!�t3i��٩�����$�-%����!�*\2��*ߩ�w�eJ����:��'�wK�ϻ����Z&�Xf,826Q�x�J��}Hr��r(��L�����.�{�+ry'�3�������-��a���<���*��pǒ�,����IY��{��W��X����H�YI��K!B���uGq0q�B��W�*umgt,����vW�tx�Yܼ(�/�O%�x1D1E������7{���G������ۏ��������z��ȢGpJ��I��~��00)�Z�2��m�K+��W������(����v�({�,�Y�,EE"�@�&�% ̜�@�V2)�\"�͸����ا��(�}�ҧ�K��(�s�����B�)d��R"
Xw��!�vO�~�H�)��~�tS8�)�y�'5͢ pZM�%�՚R�{i'rSI��o�80u�6r.hc#זn��������'�%�w�JX�Z& ,
֨ȗ�"�İ0˒��~d{��j���L�!H�2M�/������� �c�Ȭ=�)��v�G��K�]g��U���,�����{��=���]Tˈ�V|阌b�2���pG���K��.{����;��}|ݝ����1{YTw���V�3s�w��xS�ֺ���
<�e�fr�x�G�,]��m�4�4a��`�Y9�F�D��;'����}�E
��Hj�{(m߃ذ.)�<����6����|� �8��K�E��!�T'b�h�x{M풸ӗ�ǚ��A,aK��L�g\�7�8|�<k �̋ޔg�/�;���0طWX��������?ցN���ZI�f^�E�|� ����)�#W�	�eWE��t�����̀k�[�R�)D~�ӁSD@��s��1+���#gy
�(衚��H�#J�]�Ǧ>� �,�1����r�2Î|�oX�E��"������8N۠�t6��S�I ��fT@x�+ޡv���y��W�I��g�*G���t}���ǁ�z�8���)�%�h��͋Nw��Xy#n��xG�}ٛ-��]n��{)�b�j3����I��M�j}~��}�炸׋�����}o���|��,P�`XM���	����IZ��s�4�my����1m�?�ˎ��� `|9�d[9Px����lɋM�℥�����K���X����s�a�X�ԫ9y����.����&(�B���M�"�����<�Žh���t�:���lY���tx���ֹ�{
��x�M-��~ٺ���W�Y��<�1I���������4.�	n��#~�pn-�:����)I��k�U�-�����tZ����F�
ޒ����W��G߸������7���I�������4��׮��z���*�mvy��:u��)��Ns�a�0O�K�Q�D��a/
���"ā'\�s	����(di�b0
1c�����K.M ��9䬤�1�Ɂ��|x�)Ȥ��e씑�0d�Mx�$R�:M#˒�K�/eZ�%��w��D��Kwy������9y�
V�P�a�R�^ 5Ղ0aC���lY�3�Ƥ��G��6sv�+GBL�n-Z�3�kO#�4�����:v�y�A�f5
缒����W�I
{B�c0#Ғs0U����<a$���o�S��.�>�K�D߿�s������Tu��֪z6�K��&�+�h<�0*�#�..4�(�	�����"�x������A�vp)�B2�;���#�<搜.��B��
�=��f��b�d��,*����R�C�@�;�l��#-/�sD�%/˰%�<31���3i�FJ�FӃl�#��!�@j��3ڍ�߼�<���(���	��2�+Q�f�K���N�,�	���O'�����.d)8C��LE�::.G��ͱ��j#0ד�Mh�<��p7m��G9��3ߔZ�H�Ko��t
���J=���!`����܍F�l$�O��;T�`�LY���s������)6�@�����4BJ)<�A����N���[8C̉Hc1ʪҬ���_��@��9u��ss��T݌�&�	 ;        " owl.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � ^R d x   	Bildname  owl  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � )t�@a¥�,Q@h�S0K
&�D"ŉʉpɒ�-E�q�	r&p�(�ҥ��(t�Cs΄9iʹ�r���L�������yr(Q�9GFʳ�Ǐ;Q�4a#P�r ����'/��t��r(��I�̏��꬚6f��	v<z�`Ɓx�B�j��
i�|�&�8نM�P�Q	�<ub���ޔ<-��ڂQR��h܁-�8!O9y�B�(�0P�d�p�z2�V����.θ[Ҝ�e0�*��Ul��%�QR���"��/6���\��:%��w��E]"Qs��RV��A�B-�Tf�!��y��7����O=�Շ�ݗ�v�]�X��Sm�H�ي��U{-2x�.	4�I�U�q(�[n<ʑXnu�PIg��]d���Nsx��%�e��)^"�M}�PAS�D�e�R�P TL��A~���gd�eQ{�)�Q���u`�M���\1	�Z ^Sd�I�rmƁ`)IIT�;�#Jb���j9�$������ �D�������]Љ�0Q@B�@0��9sDb�4�R�q�՝�ٶh/�Չ%l�ņ����A�VD<���E ���?5��r�I�Y�V��ⷓvb��*�y}���q�䫎��'WF	1�m�,'��K�����҈-~4��z�G�Ne���tR01�Q���Hԣ�(��3�%A�"yT�NW��M ujN�m,_U�zϏ6JѕJz�%D��H%1�aW��$Pf+�t�f3J��G=��Aa��y��F8_FQG{V��2�Jqt��������6a��K�1��FV��y�G �0�--�T|k<T�2*�\�d�"-�Ѳ�Y�����c�v��{�|7��l_��B�Yn,l�[z{S�t�OR5��z�D�[#�q~za�Mk�6����R{�2m�y�K��4���OU��z����)�Y�,�ߡ%l��G�e, ��8�Xf���m�>��z8��Ď \�_��B_1
#��$��//��یǚf���"�
퐦���Tƒ�����m�����D-!Z�|��i(�Ȓ�C��%D{"iV!SDK��vkhVO,'?Y]��H2�����m�Ɋ���%�$eM�Q�HG���B�ɓ�n�_i��|�_9h��x�Ĥe$2�����I���#�A�L�r��eҽ�D!�!	�� ��
Ȱ!�<��0�)�T�׆t��Y�#@F&y�`�#f#�<�āLē�R� @Z ���D�.��ro��,r� �iC�DF0����X��$����8�BG#��X�B%�=�Y�iq#F�ґ3�����j"�Ls�
�(� ���nN��*/E��C4��� �9&��>H��s�Q�҈�� 1?F0�������1T"_��tԙ��y�A�P�%��`�$��y#X:*7���q�VP(8���*!\t�00�&�n�t�����:3���@>qB��H���*%�CmZ)�3��^�L���mi�2�M�2�AnV��T�װ�շ�u�h�a�Ne���] �иЎMu=c�X�2au� �KU�
F�� �[}��ˬ�;�X�g���`T�W����m��3^(�-� �LC$�17V��-au�0R���a�m%�85kN��
��I	φ�ٰL�0m��&��"�Y&������'@u�0z�'�L:(�̫h/P�
�7� @����hZ��o��qR3M]��cS�]��3��v�B%\�58�J�^�4+@_g�R-o��B���R�)R�*J����hѱ|���,IXK��u�I-��:6��g���˺�"#@��!�@O�/%AdH�xt�;m�qT��Zfq�Q���Z�:��%pG��r~%R���K�u�Y�º�x��L��~j�H�̦[�W��������	�$�lH�N+����$�¨% �]ڽfq° ��s����YN(��P
�v�����ti,m�V��t>�� fn��uk&�I��ݶ��&C���qlJɌ^��'l����+��Y�n��&@f�'ʖ<l���0��G�96�$i�Ցfj������%�3�HQ �I�EA���Kڕ&D+�2��h��c �(F�d-�� ���G�z^��;qqS�m�c���Yݷ��PWC� G��S�LR6��Ф 3u�P���&�e�xj��2IRoL��6'։Ŝ�z��!^ ��K���e�j�`�@C��dK��D=�����l���$/%��<A@"�@�?�'��O-B���WP]$�������Yq�u�O��T�b*޷{	mot,�q%h��-m�MlaN��>��"1+;�aS�a�l�Rq�1!7.V!n'P�5r4ft?ay���>�2֧d�7��k�:��h��<x�Yu#~":�1G%���1<5z@TF�eT"!�h�ql!$� � M�dkGn��H��i���&X�3c�ԃ�2PgDc��Kc	�u	��#��x��CbRhS`�\�-sp�r���8�,�% 8��O336� 3z�TB�;�%�Iq||�"/Av��pcJ��l��\"���WJ5 x���B1?��aUy13Ch*��4�m��Ppe�d�S�U}�u	.X��Wx~l!#(�"��8L�t����6n�F19nx�2�wy�}o�\�.o
�Q�VEq�:MU���,��r\�#�N�3&�X��	.�4qXC0����I�x}�<��u�.�?�z��UX����_� �@;�*1�z�"Vf�Tf�%�Hp�ק-rp�u��#(�H+����_uUܡq�30yg�"�����f_�82���-RBH gs0���zAp�(�s�s��σ6	Yx
M�67���ژ#�KhC~�93��@v?)� W�8��zrH ��s��s�d!�PՇ�bAY.�e�R7!�IS?1!�Fk�����y��v%���>W�(���A@��P����W���8W�.L���bF��(lg	�  �ƅ��Є	�W�<A��t��SnA+�wŌA���u}�9YF ����Jѕ"WF�������ҁ%�7Y؈�IvV�k�g��R;�!��,�S���P?�d7�0�3��M'u.a0�l�gkS�� �nǸ_o���G���#.��)�  ��9��:M�$;Rޖl�(��0|6��s0Y�����d�t�c����3�y�֘�֑;1)s��2�n1���X}��8.nJe�A`�ǉH N@�3O;e,xy�gIH��	Hp��2�%��-i���C���L���%�A{�D
��h��W-(��Ʌ:���v��Yb�HZ���W�Wҁ	���Ri�oxA�pVj,3�"9c+;נ7��\���	H�[���<�7��f��ʅ�����8֨ ��3�� ��A;m�(Fq|�h�_.wd��6%P�`��y����G0��	l�����8���&�v�k!��P?��?_r�%��	��&�"��%H��[�O����E���j�{��@(�ݶ��H+����g*��o"�J��������%&p�z`�s���8q�T>�Es�	s@vm0uX"��i�b[��Lf�����m�[Ɉ5;0l�W{�Ƙm���趗ɘ-���Z4˖�K���ykj1�E!���3�֕�S3qq;k\xK�O`�N@uk�A�����%���m�m��u�u����j�f+�%L�Q�Έ�×@�h��y����x�-g�6k��+���	�Pu{�Ks���[��A�۷J1a7���5n7!�B�r�E��	��t{�s����{���{-�;��J(��A\�| +���2a![�=aM��l� r8(6
��x����ś�x�Zg�pjZ���1�t�r {���%��69�W�TA�z��p�����ʨ�y�u˘q��ˣi)�%0���9�Q�R���k��#U�ꌎ7.����0He�z��9����@����:���H�;7kyQ��8��(��v�R¨C�`��9.�a�[ȳn����N��s�{ui]����b����"_2��\)t�&(/S)��W��ik-MA,�7|��{����5���%m@�Zt�h�v����%s�ΨQ!X��ǈ�[�Y���ml��>=Lvﰖ�
���;���!f��q q��7�vE��'eķi�";w��ǣ=����Op�[�gy��h�, �(i���%���0�C
��*E�q0sU�%;��kW8a[8�Y"�t�B�[�cg��k�i��g4!�{u��A v��?�13�S�9(.��VX���7z��7��K���!� (�7c9%3A@���6���lG~b�wC�z;�f}���]��⻨ᆱ�w�U���7���L�i���rM�"?!�a����sw�a�ϲ�fm��qȤ�Ϸ�_��t�l�<��ָ���ͷ}��V<��5��i��5�}W�B9u�c�&`�Mͨ~�XXb�{��|�������" V�qJ1�x��8ٷ/Z��Da�������M���˅g)��I�7۫�����ῶ������-��6���-�K}�����]�AP��5�6J}��b���+�3.��h���#�#ŶS7�@
Hp ��z �`+�K��l���f-�	�J�L��N�K����2uR�� �x������Ͼ����σ�y����> Z�a�,CA�s=������w�M�#���l^��L�n˞k��K�-��9�ґE	x�h�
��q6�e�+�wj��	y�K}�o�AplZh�����z�8�=�6b��s����4�81!��5"[�	��EZt���˅�:��K�l����H�S-������#����v�?��-���\�En -���k�MM��n;��v�
P�a�#��8���\b�6��c�-3�衪-��jb�\;��:�� P�$�ݔ�P��,��"�4.V;���R_�"G��=R�%k!�.QB��I{��r��	���9�c��(�H�@v ���2�<.�4 s`��w���%�\+�.LJ|���*]��[��G��\3��K���a��퇹�%�k;My��B�tY�g�(�T.����K�"�KO��x�;��nB��O�<��]o�K��o�nd��k�?���]q��R�BR�a������A�������0���������c۽y�:*,��i�5w %�QW胏���Aձ� ᳃?��P��jI��Σ�. �~˿;ʙ��b.!vI�5rZ��P΄�G 9�F!
�&D��Q��9�,]�aN0d/	��� 1�dx�fͻ � �yDᑜ9ټ�)g%��8r���r.��ԉe�K'�T���	�aS��6�v�(��Nۘ��I�� �q	�%�l�|�M�H�B���;������%F�V!@�й��5��z�A��	�F�48��,���l���8xgz'���!\�"P5w>~)��id X���K.�L���ӃK�i�����K�82�0�9��2G�F	�E.xhv�i/���Ī`��J�N8� �<�,��SO�`J��K�(�C	�2h�.�G6�M����"�
tȸ5�#��8B*���OA�.HP�#"���	�����"`�3�&�Ҡ8���8����һD0a,ꈪ�0��
*��h'�d
b��d��i ���0�(p a�����0�"8��8L��+;� ˆ �c5K��.�������h�M�`���w<��#����9؂�#/�d3dR"1��H�r8�$�#.)�H!� ����H�$t+�Zg򀸗H�������9�0��
�jZ ���y hp5,ܨ��6���A��JD�&�c���Ř�2�Y���Y�0������*���.�Ū��B悩�qm�6�t��-�ȇ^kϫ��b���؀D �������E��ۭ'$��C6�rR��/9R>�1��N��ɤ!(oe��@�4�f�!�n,k�K����7��)�4�́����^rji�R]%0�GI��&sO���'�L�q�:��C���?��Ȭs%��&�i8����8�����:­������[���$G5w�e��
��5�w=���iq����7�c����� ��U��sSd��"9�@�+���*D��В�h�|�̟t`�g��9�N�!K�p�z5E(�"zW��vO@D;\K˞e��d��i��(�<�*��Q�d�8�O�����@���M��KPr���vP�T���(C�V�LX����[s���4W�D�|����@dP�&�[�c=�@�t��\Y�Cax�^|
v.`˭�?�9qnD,��Ds�H�d���d}��u%��0/�	E���ԱS��'U�L��;�ns�7y:�\T����qdC�:h4.�^2_Od�7��id"\GR�)�L���"���	�A��TY4E�e3�z�k4��%ym���& ��|+1�sP%9h+�
�֐NT +��C�H�P	Q���Y�<�C��f�T( ����v"�T��F�X�J�%�������f�O�}��Q�SO�\�;�<I��5�Ŕ�L�Tl4u�	Qd[��B��(}�9���x}~2�S��X����+&1�%Ff		�G2�9�%S�Ea<�l�[�D^ؐ� A/�ËSr◜8��}s��P�.���[�s�ʢ����#�RU�R�N<����J3ah6/�P�����u�l��Ӿ��yq�x��԰&m��%�<�tR$�1H����g�s��ˀ­й� ��rc�9v��"���]��[l�ߗ(D�;��Xy��8���p$�>���py �@x�����P��E���Hr�'9���A��'	�@8��,��wY"'1�_����`�9�_t�:��$�-�M� �9�;�p��  ;        & polar bear.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  � � d x   	Bildname  
polar bear  (yGIF89ad x �  �������������ֽ��{����������ֵ�޵������ޭ�Δ����������������ν�Ƶ��祥��������ֽ�ε�ƭ��ֵ���ֵ������޵�Υ�Ɯ����ޭ�֥�Μ�ƔZZB������!!����֥�������ƌ��c��s�Ɯ�έs{ZksRRZ9�������ֽ�ε�����{ksZckRRZBJR9��kBJ1��{��s{�Z���ZcJ�����s��k������ckZBJ9kkk�����Δ��������JRB��{k{ZcsR)1! ����έ�ƥ������{�ks�c���ZcR9B1s�c�ֽ���csZ��ƽε���{�ss�kk{cZkRRcJ9J1��{���{�ss�k�����������ֽƽckc�ƵRZR{�{k{kcsc������ZkZ)1)RcRs�sJZJ!)!!  ���s�{k�s������{����޵ƽ1B9!��֭��cskJZR)91��ƽ��Zkc���k�{���c{s��Μ��{��ZskRkcs��Rsk���������kss��ޭ�����������������cssZkk��Υ��s�����c{{BRR!))������{��Zsss��9JJRkkJcc!!k��)99!111JJ!!!JJ ������{��Z����Ƶ�ޔ��k��c��Rs{9ZcZs{Rks9RZ1JR)BJ19���{��BZcc��!9Bk��Zks9JR1BJ)1!)Z{�Rs�)9B!JcsR{�)BRc��{��1BR!)!1B!ks�   ,    d x  � ɹ�N���$׬`3����n�ŉ����H0�G�߉�I��Dy��y"a�4X��A�6#�|Ȑ���1
%�1c��*��"4h[����U�&I���&��<q����ţh�*sƈ-�F��x�b�w�����$8�B���9f̚}E�qnF��&�՗I�3f� ��LG��i1cE�wQ��:�g��9��4�X��`7�M�#es�Xy��q*�h!�1i�Q��n��i�8_�d���ý#�G6�;h�q�P<� @qtBG�K��� �uZT{eŒX�%hA����b%�y�(�#�`QE{���|�go8"ZPEa����5�u%�g�	J��Q����'5w�!��P|DvXߑ�A�@��~ �VV�#Q4EP�4�;]!v؍J�3��&X1�<0� �'�|F�7��pF#�I�"R�U]EW�d�i&�N:>�co�1c�����u��^�v0 6"Ma�m$�>%�D�v�G�Y�!��C��e+b�y#���������8��G����ܨS����X��V�;<�f�ai}�k�GYh�@�A�$��~���t�W��̭���۵bKj�V��>��[���!Pp  �¹���i쐛�W$|`�2�=��hB��2t %\�b;���4gq�P8Ì;�XAd����.��fߦ���[��2'J����:�W��'������@ ��� �g� �Z��o
B`�&n���XD��q)3W0>)�V�\Xy��	�A��%�b��М�����E�@d0@�B	�����I$rUf�dP"ޠR�1�L  p �R$Tg@�C��V�����"@R�h�h\_x����HeњܻG0�\�W�� �f s�*��BHX��& �)+T��8�6���8�;��i r����;��P8C0�!�fPh.�!�X��F�	o@�!:�d�b� ��% d�b����(�D$#
�8�1�a�[@ X[��u�
!
Qpą�B���L��=��@0��?d*|� =��aH��S ܠ�aQ8�" ��@;8���1�M  ����АL�K�pD&e�A3D�10�D�!�!;�6��-|�C+���
T��0"<AJA"BG��^�.c�S��2�3`a�(z��^��~x� ҨF`T�p��ь�,� zx�'p�Y؂e D$�g`�X��0�����	� p�TS8���7 �R6���j�0J���^'�
B�@zt�'��4'<@z��`�Vh��(`��P���\�16�	  �@(�]	ՔǔFGZ�cX
�hc0FP��PE*���h
�������	}8�&.�>�"���0�a�Q���@D'��	E�h�� 2�:+`� !��Q:��b`Iѧp�%��Lc����
��� �#�'D`T�&�)fjz��D/��_����E6�Qb#�H"T�
5��
X����=��>� �A���. 
���0k��l�@"8Q�W^����%���]�
i��1�t�C�)�Wk��(E*lzSEt"��(�*��^���`! @��@��BC[��	q}%
b���5����/(�>�r��,z�s�#ɀ<F!�YT�PF/J���f���8 JPB`��& �%��pB�H� $`�8qB�F$��K`�R3�C��`= ���eXc�x����e|��8F0�dt�� F5|��^�"Žk(��$�ˣ�)lYT�W����%��	0�	b` �rF[N��%&
�2gv��[���D���*cנ�3�Cd|�� ��Ց�O#�2,���Y^��$Q�\�
`��0� 6�7x}mЄ
�dĞb��!�G��,~�S< oz�)�at�#�iq8���n���0�ʥ��N ��o�AxP�:����(PQ�@�u`����,d�
5�����Cޯ�#1�����D�'���Ѓ���'���0�5�A�d$���8���T���Py�D�Ai��� �@B��$1�8���Ȃ�p�,\�V� lP��(  rAHQ��"�V��������'Ğհ�5��z�#��F1T��_����1z��d bd�� �2�@�$��	A���C���;ܡy���p��y��$@A����K�Ɔ�T P�y#��	���`�w� |�
��� &��0� j�m@	��� �	�PWw�p0c`~uP?`a`W�_0#�6�'` R�	rq�:��^��J��ܠ�{��U�pS��U�P
&W
�
� P���e>P���	� S�d� ����W��Wv`j`fK�6`)� .�+�	Zg/�!�ϥ1�'e
հ֠v�p��Ȑ�X\��ruW��z5k e@	eP��l�2�W�k ��W����u@n`e`K��508F��s�C�1P}T�Jz@(�	ڠ{��x��n�r�
����	��/�� �@#�� ��`� 	��f�x� p(	��gX�`x�@W�j�o`��$����6f�; 0$@��۠��p���	.��
��w��W��W}'g��i����	���4�Fr��7� 	�Gxqu yx�h����0��F��@m����{民��d�`D� C�W2�FW�8������rxTVS� � ��q��Hx�hx�hsI	m 8��pu�p�aL=�@eG  ���P강R��un�5\.�it�s0r � � 	�@�x
�p�2�n�����q��p�0��8	�@��V����2N�� x�	�@�Y[���������U�rƍi�OX��x%��y�%Y��@�;�xx9�(��u�@� 	Jy� ���E�# ���`'�@��{[���߆�6\y�W��f��)CP
�X�ry�wE�x�x 
��y��xs�菄��A��I�@	?�)6�i���0����@��v� �@����Q��P��	"�E�d�nxW��Fh�h4���	�����xq������P	/8���(�	E�j X��W0	�@([Q� i�m��Н/י� X��s ZZ�U�y5�W��h�M3�Fq �o��	� 	2���� Ȉ 	j �W�U�b!��E�p�v����Wzš�j�����w}�r�J���x�X��J�� 	j��8g���bQ  *;@�@�e]��j!�����Gvp瀝�w}u�UJ��t�/�}.�n��wE�,��ȏ� 	�0����D���;p
��O`K��
���Z��pd(�X���������4��=Uj���F�� ��c���@��
�qа#h�@��X `j`�@�:P�F����� ��v� jz���j��j�s�|��wU���z�fz�a���y�����xP	E�䀘�`� yP`�>p���p�	!� ��� w�@�y�`jˡ�z�[ʡBP�k��nY�4y�hd�vI�8v�^p	��	�Kp��W xP;�b 	�@�0��@��p����D\�W�j�[Z�gI�گn)�\C˩)��c��E�>��� �Y  � #�Y`~V`b t��	�p)�	�+Aͫ�
����|gٯ_�BP�_Y�9��Zd��D{����{�*8�X�XDb yp > c@��	��+䥐̀Q��f���8ٛOB����h�
T���uW��xi�����{	�a�0�4@Npc�L �@h@I��� � Π��Y�s��h�[�B ğ�i��f c�
pYS޸`��M�:�Cŵ�Ё#\@ �a6/8Z@	I@dg<#�0���W��wh�x<B@����1ے�W��ĉ|�]ʺ滓 �	C�� �sN Y�����a`�05M�+9�ܘ�h;C0\�>�EV��l��0�r��X��r �v��3)ZQr��u` �NPn�qprZ��c���;C�P���i���\�@����7~��/g�8���`A{���M2��b�	��W��E_k�L7�A�����W=������˲,�X��<h���
���a*j�zԂ��$=�aB]��A� Kbp7pZ�3-�:�@S.g�/g���Fr�JP����D�E�w�+�c����n9�a��C������>PkY0M��[�*�J@ֲxe���lm��kf���L�u]~\�B�c�����`e=�f	�}��n�-���C p�L0Lp@�[�JP�[�x�@	nP���g
�*�������A]��ȵ�x�9
�n`
�Q��6ե�@�p?4R�d~c�Zp*���C��r����Ђ��Gm��I�Q`ڧ��]�r`�3َ��2T�"�M��)��� 0'�d#�L�MpZ�ĭ����<qp>w��)�:�F	��3k��|��I�F(J��y����i�m=��P?*Mv�� $M��d08�2M�*�CPC�q�:	��ܰ\��C����h��M�����L�J�r��kl4�� �ɒ)[D�L@? �70�Jp�9 �EP� ��7.��	��gp?^�n��L�x%������x�����`��<DE+@H��w@J`�.�����,Mb��B��D���9g0�n>�.�n(�xq �� \$�M'�w�M&y�X���qNmV�D@D@o ����a>�~t@4���ڭ����i�Ǎ��gN��ЕZ��*�3Dޛ��� 
@07���J�u���>����p�~�E����n�b�C�Ͱ׏��8^�%�`��p�#=�hD�� "p4@4����/���a��E��gP�$��@+��nN�?�{,�u���rp�d˹F�MGM����x�T� &4P:�H�1���>�E�S\��p����ή�Q E��E0ڰ\��]��m䀐F���i�`i��`�`Z$�k$p��Ap���E�����.��_�\��������o����J�����h����𠿒��Z�f�w~nD��r��)�%z� 0pH��d�B�E�&`>�RO�g�������`�����O�/��;�͏��\5��J�@C"�$�� C�	p� !� !c�MT2'�%X�D)r��C0Z�H�2g7a�"�J�?��RtNɒs̘)i&T�T�%3�J�B��d�k(E�T�� Q�(p��9P�����\h�dt�_#OG��!��(��s�]�t0�P�R14t5AD^2�d�k'D�sQ�� `�a�7�QQth�"Q���E٢���5:38�b3�P:�،��r�<6c(r)]�:!�jp ���q��),E�(��D1b��c��!�W��{F�M���I���[*���99�h09�d�T��0�NT�l �B��!�8�N,�LS �Ra>N
�"������7�r�b�� �B3"�1�l0BC�;(�\R�E��B$�)+#oD��Q��*:�V@�#�h��,j܄�/O�8g���D��Xc9���� C�n9D�0I�2�L�\�y��d���QKE�4@ ��;!d�(J8"����%�z�鐛�	&�$����=��1���P^��nBUt�.`2�R*��2Y*�S�@�:r�֪�$p8��s�b&Of���E��c�[��B�A������B���*UR	�`�	gY-�i6Yi͛����`���!#b�� B�U�`I�3�=dNe<�
x� ��[�X�^�6��DCH�Pt�L����)Y`0�g��v�N8} �8��� b�&n�.��ʍ�3t{u�`��Đ��Py��uCx�[H���L�d�,6�d�)�hv��d�f��c~fS2��
1�����@	�]$�6�K>$β�Q�A��7�`�z�[(��_��9D�T:a�	N��N��D�L��,����#�;иc�1����x9��H��<��c
J$&�c�8�_3�5�53�jvw�R9��߱�����0�7``��~�10��	 ����]6M �`Nr���|%_0���$������ �+k���V?�(4W!�*�Ӊf� 1�v`���3��fx�w�@� 7��@���s/�E��3��~�RL"Y�C�A�!����jhy�_����d���3�!�A��w��3�H �;�@ڠ��P��#� ���'�J�&�q�f`"Y����P�B"x�#'�����mx|Je���I�����0�AHw����G2�IH*����"�;\!px_"�	 �k0�O��c�A�e<�<:Q�I@B����($�A�b��e.5�KuC�塏w�c�p�B�d2�� �2����j�����V�R�"Dv�������1�HP�
v D!*Q�H$�I'|��<�QC��E("u�5P�P�9I�f&T�RehB�	Qr�`V`����@�p�����RF��8b3����ڬi*!	N�;��JTz�Gq�*� F;��L��|b;�j��
](U+0�LH����H�1�@�"���#�T�\$0&q	0\�uHD!@��RH&*�؆�b�A�Ӕd>�юg�ñ�@�8(@ǎC�jDm ����DhQ�HHB��I:W�~0q�+eF'^�0�3v�� 
I@�~�
+�Ӭ� +�8�D呎�:Wf���`v�C��p���0�cx�h��I���PE)�f�CLDqE�a��WX����I�u��(F�*d�b(�dC)�H�^���+l�|<�o݀��Ł�z�xG��*V/ݪX<�Z����r�QIE)��c}��XGҌ������8%��)]�
���0�;�!�G�#�X�������.N'A��:�d�(s3V:(  ��Բ<ZG�;=�P��,̂u�����d'zH�2c�N�B-������8G2F�-4�Arq�p"*�I�"�8_�Wk�fH! 0�ENP�,4�}p��~�����w��0�1�w�êǼ*C(YEb���xr8�}o4�
S���� R�����E'HD��Pu�p������-�	;��Ǻ�2���{'p�N&u!h�:����8$|p
}jG�6��a<ܡGȂ"�� F����  ��'$x�|�p<�aO��aT��7r��nFDq^Մ���m�;|��v���NF�1v544�c���p&0��0%K�х �SX ��1'�^��e*)I	R��4C���s�Ot��6υq�#���h����rMC�����@�>VDF���VOF T�	M���x�y��YE�F?�w��~��?r�lQr�c�H�8ؑ-Ѐ�;Btp&4�	��*n�(B$,� 8 V��8�@� ����ÛH���i����;�
?�(��#8r@�8�舫�0P�M Qbw��~� `�8�0�0��ٚ{������ �f�|?��c�BG;�2ճ��j�}�4 �O�� ���0� lK�QX�I�'�U[ �X @`(��i-��-�ޒ5�y)���**����˹w�f82��@H ����m��UXc��C���h WtŴ0�&@�?���%�I��C�Iy��(�*�s4F�B�;2c�9�z�@�0 ��5��QЇd�_v����Vd qD�X"�E2��*��rp ^T�p(2�z�ӫ���(d8�#�,t&G�s�M � ���� 	`�K���V("�;H;����=\@��1;cGd@z�y�g`&{�B���+�~�B�S=��5rp�N(4x�=H7(�2��I��R��c�EЃ  �� �����#8�7�I�Q� {GpH�J�G��<K/��.�&)�;/<K,��asOX0 B��H(�c8IP�s�R�dh�C�A.q>8 �����˂@��_س_��b z(Iz%�2K}<2`6j��gJ��g�G�TK�;�tHe`C�_P ��SI(�\Ph��'����0��Q�0 �;/m,�o��n�Lp�z�E_S����:Ɖ�;����ac�t�e��s�p8&O8�Ґ��8������,J��SX��o �o����<v��zM��It���G<F���Ä�P6U("ubF�h�e �Mh�4(=x�4C(P8T�JV �=PxL��Kr����L��z*��ɛ�*gB�}���fp��g@-O(��ĉ�H�(x�R��'��HQ��˔7xD�w�EeK6v(��Rҳ�~�&�|$��q��"�y��+�BI�4=�휪8�>&J/33QOHT��H�s(��ˑd�$B$�DO�Tj����ӋR.�;�|HUvh�Hl���T�.�{�d�R�Z-$�7yQ}xVPGJӑL��D�%ڷI�BO}�#e$=e$Ⱥ��z,�bUe.���T-T=�9Ք,W��W�Y�Z�|��uhWӅ\X]���f�T', �i*��i��P)#U��,�V�B,km�SU��vx���=�ӻv�.X��=��V��Y�XY�|���[�Z8YH�`�"Cj�c`��(gM�j�.Ǣր�(L@�hu,U=U�K�|x&�b.���KU٣�=x[�Rp�K�/�[����^�����HB%i���B��u��UE��.�z�êX�5,yp.���S0�{�=EZqx�]0	{�M��O�>؃�u�r5ٓ%�I��H��2ȅ�8��[�Z՗�YЃO�u����;�lu۵mˣ�\��	c�km��%s2��0U��J8R��>�>�*Ѓ��Y�Xb�T�|Z�X��[XW��[�XS WZ�Y�c�z�ٶm[�K�֕�؃=q@Z�e$����k�:��PI��'� *��>�Z �Q0J�3U�\0X�t�W؄r}W؄�b��K�Z��Z5]�m�&�����0��Sم���0�k�&��6E�3����� �}�K����Fd�@@8�N���K�Zc�[�R��[ȃ�o��a�m� n�n�0>-�T�]�e��-�
�0�M8��``��=��M��QP�$҇!ʵpHU|��J�*��M�ޓ�Wx[�H����pp,�a�S����Sڈe����G�=�b�kS
���  ;        ' roe.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � M  d x   	Bildname  roe  qGIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � wQ��k��]"M���.H�
�k"A

N����r䂑&q`��''�@��D�+v�p���W�b����$'�+x�ஈM��%�c�Kv��DuB��$'LXJ!��yQ���D�v� ,��]�F%x��7�j�:$�V�.�0B͘P``��f$
	"�ŗj	NI�Ɍ���p���	||���Hl���f͝�]b)��Љ"I��)Qr�2$�p����w��8�tR�/�yI|aUԖ�����Ǹ���PRk���62�H�$FH����9����hT�����F
��K7�c���Q5y��Qt�7q�YDc�@QwLI$]�C��tR$(��P,]hIM��%$�ŵԄ(!T�X�Q��BT�$�!5VL����X�EuStCi�O<at�.V�XN�E;�C�u�QFQi�єU�t�Qg�u�	�}���՞j�u��E`����o	�a�T���q�V�Qh�����Cu��YY}�(iY�Z^e���@�8�T�D�*j��zh����FD��L�W��nX-B����%��X��`^E��ZH5��AEug��x�h�D���!A0�|��sѡIvz$Zf �	�4̇�R	bDTK|BV瓁y	��TXWBr�VN�f�T.�cIpe~c��\0��w�!R�MV����)����b�m�l���
]%�}����@����SA��Ky^}
�T��:Q�o�e��Ю�B�����@ Y�,ݡi���Cc_�8��^��A����������r�B���CHM Ll�q��9�+7�n�)/�^�o���70T š��>`Wc��ic5)n�9�8���*.�t^U�Tc��tP���X�@*nT��ft��b�X+�[&�2G�G����}�v��F��4� �+;���`( �U�U�� F.���i�"� ���&^��c�'����nk�ڔ�b�A`�N'�� �1��V�PBo�D���I|:t:!e9����"�?�H�t ����� n$8�@�� �H Mk�F,���1�"�	y03K�IP'�
�TĬ���)	\C�:q��D�{I
�nB��a l�"�X��(�N�9��蒴��"��\E�%��=N�ʕt�@���I�����u��Gy�>,|Rk�I �� �M�����B�q9"����h���G��&Z�E��Uq����&�G0�>Uy�*�#n��Ԩ�!��M$�S���� ��t2���zؗ��"e�:C�澐0˨�Pq%Rn�*u%L�In,Q��M�T�aB2���L���z踆Y�t!|�%<q�NtbT�C'>�#��:%x4�o�Q����b�8��d�t�]TT����n#���%ꑃ��У
M;�	���s�)�P���r��@d��dNnl�v�Ō-G<�	��b#�a�A�:5Lܴ��d%��9���,]b�y�)k��[�.0�H�IF�H�Tψ	!�N�0������)ni���4h-�4Q1�9*{Ȫx����F�(���va:�E�c�H���6( �u@m�t	a�F�c��e�kY$!q�q�7����3�@rI��9xf�/i�V��N�/X�\����N�R���e�09Px�B׊ڕ�N �yI�� l$mJKt$��^QO����%^�=�tDZ/n-�O9(2@�Y�c��A���$�	�1����P�}O��+W޶"�Y�ҕ`�!;^�e+�$�����qLbHԆ4��\sPc��e�0���I�=�q�O:��7�����-lȀ(�`�Vزku��$��DDQQI������B�i��á[��`ma�fИ��@�A��t� �
G	��@$�	`H~H-��$4�5�-�lVr)�pJ#Ό�xƦ�H#�f#��ʁ��c�S��N�mMH�ɥB�IJi�W�VL���Τ�M"-l   �W�n�{iRXH�����PᬧPl(dA&�o��7�'#Rm�2(�4fG�	��1 �y�Αc�&� B_����!!�Q�N�a!��J�y�e��X���+��	F00@����Ay�uD��l���/�W��w��A��"�H����~5�<�7H����n�D�����ʃ@�؏$I�.p�6	�����̾��|1�̜v���H�GjHRUM �� �C$'�\b(��%�0�&u�IO{� ��u�>\rQ�Ba@%������-�B�����D2k9�9�Cfݫ6b)���������9�WKK0om���V�)����`���z�a�"h7��°�LqR+�h1X�(Gd$m�#�P�4�eC��e��uj�#��;���+�sP0�eV�[��[Q�W�fb�%#�#jR A�<�B: ۇxP�DF�0+��) ���G�@$-' ��h Y����	� �
s'!R�"
�1�Vw4�{�v+�g�r8��XH� 0�@	�1.q	��
�	��^kp��[��^�0=X���!� '��P1�!A K���t!� O�� 
����@<:m?�ǄF�	����	�H�0>&��S���c�Ej �i;�5��P��p�  �WwG�6 �у�0�\��)��>�g~��j�����m��cG��Yb�"S��S"
�j�+1��tM����rS'ӕ���0�!
AZ�K#�����H4Mp�#�)@Trg�1��&J���t@�$��6$�+>�z8!�� C������&�%K�3�ㄒ%=��X	���N�{���̷R�|�1#S�kK�M�hS� _�[��L0M��/f�^4E_��%��(X��Q#,("�C���,V�e1��+���� Y^�T�S_���-��r�?4�^굘��9R	��t�W�?��a��toqG �*0����+]$�Ck�`i^_��S^)'M85YT1�qQJ�%������
�5 �R���a.r�CQI��I+����{�  �y��� ���&MQHS-uz��k�0��A��Vn�63B�Vxv&���$��0�F���٘��h����jY:���X��h;�fP)��$)�A�V0"�<�u61r!�F��  1޴�����S�芌�c��^��)�Y�n31��k�џ���:�Y6R!��
�s:`9~]Aʕ��h�Օ4�G;%Y��Gm���a&���G��Fpb�7��ms	������5����0!��k�5�@j�����HH ��Q��*z:���}y�4b��������	�t�� ����z4M��8�$�@�ml��p�Z�1X"+�̗ؔOA�&��@wM��,C��	59=`%�8� #q��VfeA�1ځ5e 	�g��BA�`�!�@�� 
�N$�ta��l��.�	K�@
�K�
_Y#~�o8%B�
O��>�1Jv-�2T�B�d u1�V������8	JMת�􁸵���o�$�41�7�V��*'!8?�L��#Q�xp}�_,��ۊ�pP�%�t�����Z˝$״7a�c�Sr�*7}!#�Y�p��| a'�T�_�Hr�^y�0�O7��X�t��@Ī���YC;��2�!�z��AaKWr�i5q�����Xm����"0�ĕJ���t� <Z!5`kH0C��uC�@` �oK�"�o�X����Ȩ�h��������ouG�Og�a�7vS�%�l` �*@x�m��Ƃ)�Z'�4Ѩ%٦;��M��`�B���t�Jr�@��:ٻ ���66��\�hv��AUl?q���?s� [�K���`P��{ۉ��hm�Mc�R@IfA c������K,Q�A)��.H�����;����k�M�%��j�����c�
���"�S�s!5�6���Zw�rWw�Z��5Q�.�4Z��Z	̻;V�m�^�5����6'�V#qq�t�5�Z�0r�U�O7�!ɪ�L�L���Q����6M�3�n��Aж�CK2:\�Z�'l	�pLɺ<��H��t[��݀��M#��%�zW�W�B��9�V'jR� x�+�ڂ�\�`i$ɨv ���N�oȪ�ƨ>!��hb�kuv�HX���{!s>�<Rqi��B�k��H���t�(��Kɛ��#Q���{��V<|FA�[��J\�/��7��u�����/;�LlR\���t1�y���˻9U�eV��p!���qL�-�r<�V�/Y#|�t�̯/���|�7��Z[�6�j�����f1'S1omw!�	��0�q0����`|q��t�Yw�\���@���>Q���&y��e�L�0"�g9�2����*�p�|�F�{����|���t�Z�4� �  #q�G�8�S#7W��d�p�|�����2q������K�����4=�ޜ���ciP��Vs�� ! �v+�����י�`��;���t��e�i�8B�u��7�7M���v:|��9��%�Kr �+��Z��m�S���u���t���� \�άmk�M�,/�#y5�5M��Am�4��;�����`�,1r�+�4n�%I�8M���k0Ѫr�nw�'7����!{Q��M&��\�.�ӊ�

��M��DC�1a
��o�{���>���C	w"�M�\�®�ߐh�_� ���%��Q}�����c5�w��<Ʌ��_���Z#�i���-�����t^w
B�9!�,ǆ
�|���c�&B�s�A��A�בA҈?A���-⑻(~�>႐8�i\Ĺ̪|���H�{*��iUfFMs��ML�O!�X�m�ϗ��.~"��/H�7�/N�� �������Dl�Vmp&��x�Tz�L�p-��s� ��5���;+�*٘|������l�	Ī�Vy�i�#�ޯL&-?��%x�ۭK�_#bh ���,�TQ��k�H�S�S���;�g��Y���OwGڑ�����|�5MpZ��������Y�V÷�bF���W��3���;a*ҤF��z�����pW7�q�F��DB��?l��H0�(BG�~N>1Ё��,�6�%j���	� A�ur ���9�$XfH�7��� �1j���t���KW�aL"������q��V��Р��7&=;�B��e�YH�fx"�Zt�O��'��j��ю� I�8������Ry�M;$8��� Ap�lŶ@9�LսK#:Z��<!�rռ�/��
�aH]+Ā@C��(kHQ�0K�(\� �R�9A�	Qɑ$r$P�EN�K6�b��,�Ba�&�paW�vAj)!!���#�@^�h�\��(��aK�u���6�9��wH"D� ,�ϡ2wI �aץ��&��I�܄K~��"�`7
T1�#7N ծ��dz�gÇ�;��k��D�dO"q@�m�KK+6h7�_�7��l�"k$'�r��P�
���ͥ�#-����ҋc%����Қ�l�R`���M 
v$�?w�`�6H��$�p�<豊 �D�=�=�Dcʢ`.�A�.a���P+�<�^b����+1�c�&H�jI� �` �cn*�0��0��
)�z3�,fA��n��[oK؈@���cj�	&��Drx��` ��&��J�*�Ʃq��b*��r�+���h!�^���(a(���#"�k�Z�$ǂ
�co<�Z�m ���� qj�ِ�`�
�:���n��:��:�.=�rTʒ`���.	n�-}j�'K$t��)˾�"[��&Ps���T*�δ�0��t����ź�j�`O��ŷ�:{�]�ej��f0d�̺)9M)e�b�&�8K����+*�6b#W�tͷls	J_/Y� ����ʠ��LMA����6���^��A�JQo���{�&a\��؁���˗4Ơ�� �E�O�T�H���JSz�@븺i3t�qe	)��޳JO�zc�^8��n�̦n��OmVMo	B����)�P_�覿"�$�v����b��j)��u���<��2����/�e�ЀC��mӉ�V�b�y������$v^�$j�&0s�iE���B[� JvS�����1�$E��4��^��0!62S��b)s��I��?m ϕ%�p�hb��~�����������q�H|�.���4�>�L9�qh�1+d0Tk��(p��|�p��V�~�?$*M�� `�l]���P�l1
Dbz)Q�X�M`!㘗��"'�X"z5M��v���'����$@{t�HJZx�􌲢	�1�SXMS�fM� ;Zub�3&K�˙>G,���Jn�P�,��Vw\�]<DՌ.+c��2-�9DO�[�Ӹ��8�E�҃���]�T���$���'!�9�K#�Y�X\���@�9�?�y�(㔵�<,:�AH0��)1�1�{$$5��00Y�רJt��o|�
TCdI��y�?KiVx���b3���]��F�<�slQ(�(�$Q'��9 �9��Zzږ���wÉ�*�0��)^�(2yJ��c���g�Ȝރ��IY���c�@����O��CG��&8�U, )��0sqc |R��l�H�#h2�΅�(��#���BY�Ru�@�3�k�=�*�(@K�ҥLqQ�@G=���r���dDӼ�J�C���R��q����;b�,Q��^�iZ�r��J�� �Q�}��o\ĒL.�im>�A)����(����\���=j	�)�Љ�UR��O����"��n'~����u�/ZlBCL@  ;        ( 
skunk.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  skunk  (�GIF89ad x �  ���!!!�������{{skkkcc���RJJ������������JBB�{{����ss{kkB99��ε��scc911���έ�1))ƥ�����kk{cc)!!�{{cJJ9))sRR1!!J11B)))JJJ絭ޭ�Μ����罵޵�Ɯ�����ZR�ƽΥ����ֵ�έ��������{s{ZR�ƽƥ��cZޥ�cB9�sc���ֽ�ε�ƭ�����������sk�kc�Ƶｭ絥sZR֥�kRJΜ�Ɣ���{�{kR91B)!ccc����ƽ��{����ZJ9!�ν�ƵΥ���{�����s答ƌs�{s������cRJ�scJ91Μ�ޥ�B1)sRB���{kc��{��sޭ��kZ�cR��s9)!kJ9�����{罥Ɯ�Δs111����ֽ�{k��{sZJ��k�sZBBB������޽�����kZ�έ{cR�{ccJ9{ZB9!�ֽ��s��k�sZ�kRsR9�ֵ�sR����{sB91kZJcRBsZBJ9)sssRJB�޽91)��{�sZ{cJRB1JB9�sZ���ZJ1RB)cZJ������{scZRB�sRRJ9JB1cZB���kcJRJ1���{sRRRR������sskZZRccZJJB���BB9991RRB))!BB1!!RR9BB)RZBckZkscZcRZcZcscZkZRcRcskkssckkRZZZccJRRBJJcss199Zkk)11c{{Rkk!!Zkscs{Rk{c{�{��ZckZk{!)���cksJRZk{�cs�!)1RZc19Bcs�s{����{{�kksZZcBBJ{{�RRccZc)!)kZccJR   ,    d x  � [����V	�bv�W+^#D+�1Tʄ1c��Y�V=>���-g�v��2�G��Ru,(R`A��U��gl<�!$�(A`��1�1ح�P��z�,�F`�	3��f�D�୲ ;6�V�%�V��[�hU~:v�_�d���׫`�\�M{����"=�$����`�$�lF�YfΞG������y��śԡ_���#��o��+;"��k)D�b�v%����ͪ@�(-ۼ�K���/�h��nܳ;�{���$���_���8��D�B��9��Hi��U޽J��?ٕ\4�8��rl%w�j�P�Vq�5�L3��90�q�_�0��b�{��7���]0�#41ZW�5x9ӌ��u]�U8X`3^�˅�@Ca�Kz�/�h#�z�1�������d�^����=�h]�Ĩf��4H�Xc�g�e@�yQ#!�L�ɋ4I�x6�DϡS�8M{��"��j�	�ģ�5k��f�kv㩧mZ�5ݐZ*�g�)jum^(��JN(�t=��5���7�c"3�  {�aؓ{}�sk��Ωi��t�S�����:ݜC�9U�����`��H��<�I�]���7+��M�R�"{$*��{��s�rzηm�Ip�_k��׮c��خ�����cj٬'���Ï7p���7�e��by�@��Upk�7�����,�pç.�s�2V��O�i3/7�X�?X�?}4 ��R7�!a����װw�5�l͝b�i�6�}m7+�����x>�h/���M�� P�1}��?��20�`F_��5�'d���d���áV>v��n��:�:���$x~�5��;��7�p���<m��� ��c@0�̆������d�I6�e'���T/N�݄~���pȗcX�U�5`�1?�g�Ox u�sL��C�Up�0�!7������%�g����q�f�a��_��V ��gh��>  ����^78��o���?FF����h@x!� ��ymҖ�Ρ0�.{�����p�z���1��3%�H	�	���C}}(F���d`(F2 �l"L� (�R<���CZ!�C���[C�2�z���GJ�Kd�"2`x���72�E�mm�b�2`	B��@�я�����$*N`�B�
��ʣ��ҎB�T���`���<C/Ȅg4���$? ���Q�5�@P�`I`L� +�� g�!
a`L.a;[��EH���$$��49Q���P4ȿd|l �0VI����&�Q `(��2\�76!�a����Ks3b�m��e��a\j�m@$0�����$1�!a��# @<aH3��a8@2p���EB�Q��7�Ǎt�-[��m��,E��x&t�@�E�����1���1�������C����w�������F �<�8��ls:<�<���m�#���8.+��]K��`��,ȗC�؄0�8�,������&8*�h������p��! ��<ҵ�1�3�;�cf�!�j������1�kc ~��_�Q� � �O{�;B���v��fz T�/�����p#���_NЀx\��uq����>׳�Es�`So��rhx�#�|�}����>X y�$F�BCbH�w�m���,A0\�~%`^�-�=ֱ�7��;{���)T�*<��ψ�� n#W+��vn(��81�f��b���`�0_��������Q�����5 �B�*�/5�a]t��Ta�+-61/d��|K��O�Ə��Ĳ��&�(�30	� ���J	cV�5�|��H9�>u0� Ǣ�գ�1}HtA�@U��r�;n�+d�n{-0�4cR�L@� �
�ᚭ��>D �E'�q�}�C�,�F�X�6���rXǠpǇlm"&4 &�Ǹ�-�o���C��� X6 ��&��D�sl����f�r#�6�ᎊ��o��al�c�#2޻���c�~�(BP�k�r�iNs, �e��ࠞ�4�
'"8I^�Ѡr���G;��t���4��S�㵖�?��2�?�WӨ�YӰ���읠����`L���0�l�8���&#�5�q�z���_�<�x���DY"��V�\���3q9Yx-�w��CE6&��"��9�f�tg"41��N���Xz�����c=#��V��c�(��XƾJӪ4�(�C�� ����Q��=}F,��	'��P5@���ރ��5�;.�����B��3Pe-
?�>}%���5 �	$�#�!0<���"P�5[��DQ��cTn�P�#]��N�H
��ܒdQu%d�VI�T��a}�	c�Ii�gpi���Lp��i�S�P�W�!��U��j�\�f?�\�]��)�"�&w��Z��I#�<b��GvM�
h�H���f��@S��$t�@m�)�DD��=Fn��9�K�#]�B(��R�`>��e�gh8
}
�D"�sP�����	i<�lo�6[�
�U����z�K�$n'�,�3#eڂ{��n ;&y����5U����?!��	l L�0�_�@o��(�p]�@�R*�=��6�`n�&�AQ'.��S=�%�k��uĀ��I�C�DN��W�
 �
�3�Gp�0ӄ���1�@�� O*��)��)Z57�!.ʐH�`� ��� �`�g�>Ecw�W���3���vNul��xBH�.���@D�CDE�����qt3�֓-�`Kt��`t2Up���p�\�{#@U]Xy1�aτW�o��T5N@8`f�u�P̠.M鐮(Fd=�r�77|).E�Y�C9#�`%�{�@8��F���fҤS1�>xE8 ���
��y��h�o��!3ÊGtDA��{���i�.Ѐ�eU@erq�;�7bg@?�^��EeY�0�Fi�����L�J�0
.�C��@�UO�CK���\�P=l��R+�@�SƠEW��1
#FȰ	1Ăw�X6�	����@�	���0
�H ��Gz�-3.�.M����G��i�ޑ1��%������iO6Ug@�5PԤ>��>��>&� o�o��Y�
H�-��YAiK�".|r�P��̕G�6q��0�UE
�Rݵ5P�' �
d��0��t�e�i^��N���M
���@�AC(Z�*�@H�`t�c=E-�s$��� B@%P��S`|�D���XF�����ii�9
&�<�X�-�ID�)Ci�B�9"(�pD�P^���|%?��`>�W��I%t�e[P	�
>��d�pSP �` �Y=E�=��Cy�e��pׂ�@�7��pY5,ST�uB̐�$��� �x��Kc�e�4��4��^�`I�zw�Y�zY
{�� 
k=
���]Gq��~�D�����4
=���	\P}�ZF������L�6
i@b8�yp�<�d-�\�'�0{�~�7�K��3�5{��
PE� �)��kee5� b�L�c�[�u�5bMcT��q<:�eY�u�p[��׳���<�C��`�3J�0J��� Fv�8:�
+8����V�+��� M:� �p9�ز=��{�C�Y���@�$| ��`���A�z��a5!�L�W8�� �u�d���2Y��`K�R*�=�&nI�c�{Y��\���ڢ0tQ��)5c�rm:ee�B_�addU6
�pbɇPܐ�W�/"���j6�J�(gKjnåG+u��`���j�b�-C���P8+{P �� �5&�5�Q��IӴ&�$��% �j5s#�w�9�`\�qV:�D�&GBm� 8�S�wa��^Fc�dB��;\C�aU��PL�"]��=�<w�3�@n��6:�$,]�I�$#ry�P3I Dc�
@�Q��a!f�D�� �p/�u�@)��'�����C6�������U]�LZ`��.��=�r��5N�lbI#�U�"��a�JM �I��_���C����0(6�c	S�2q9V=Rh�Wtq!��$�xC<�I��?��e;\;)"2�"�$�jUTr,-�(��%Z��7C0��6�Ť��~��[%�x�U��(*2ede%M�����W�5?�DM�AMü_���X�_-%炠�@n� {V��0l�zm��KnS�RЀZ�4��)FM5D���i��Uy	E,�:5��-����-���m�6�B��j9�)ib��e=I:0#���_&����I_,��-",��&C5��Ƹ�"�P��6$ܝKJX��A*z�']���5�sנ<��hS3Ml-�I��XV5,}S"��_��]FC���"rڧε�׃6K�w���Pnݰ�oK{�~͵@c=/s�?Ӕ"�e�]F"�Qt|%T�P��&SF���&9�bm�G�� ۳Mn��س�ԕc�c@�63�}�}����RSF�C���A=M�L2	�����걡�����{�Mj"`�Mų�9��3�c���P���i��"Yr�#�� C�"ڊ@Rc�Vυ �۩@�E]��0Pg�`pv��@6`�UB)��Q�5�4���t=ݎRE�{�� R$5�^!N)ʲ��`�$�ܭ�c��6�2~O[pg�1�%��=2}�4?�"�$�e�1C��PYb2���%F�?�`)�
�ct�5��e�@z�<�qk{� ��a��^��eT�Z��dQF��"5G�xT�8$"E�a �@�@^��x靁�G
K{�6� ق�0s$][��S`�_�<,�E2����{1P<�
@ �3?�u�ғ�z����,������eR��!��;}�G�S���D�u�Cr%�*P � y@W� 0�@ lf2Q2㺽�dY��@$��@� 
8��yh3&q�^���dT���=�;�㨇\��,yp � �~�4� 
Bp "�q��$߲�C��G�
�%G2.�/�`�,�C��
������AIǿ��P<�P�pW�5�+�n`.`~0� �aW(���cӃK���(�zg�2)�uMӍb&����;C�;p���e �	@�:P�`�`f���R� � ���P:�D��e��mR ������gF)(�i���P��I�&��j�8I$��� P�4P��]@����`�`n���30`���A��q=6`�"�1��;<��[RYC$��G�I�E�` s�M�	з��� E�:`e`�p������ e�(a�� @ˆ��j�@}e͚={�$�2�� 0`�� �U�@�`4�$�3' E0l���B.D�I�C� 
�`)�����\�r��WU_���r��L����!'/h#V4`��:j��	�D@Sj�n�kE2X3�D�&U�á6�B�A�y.0X�@<E��r��!�4X��Z�V��Us5��!Qe�ȸ�
�`kuS��m[�j*+(���
8pxS�K���:��f( #0P�C.Z���B�W(���ch�UUV���5���Wb�D*��
�e�o���@�i&�_*����	晐�I��R���3nB	�
���� Z0c,UQ�
7T1�Ul�ŖӪ����T��FUVt�F+h���L<�� *���_x�&i�a��_@��U�%��0��.���c)88�2X �0���NĊ��N��O��pL�����+Tq�CT� &�'j�Ig���_
��J�"Є�*��2؀v��".ȃ��Ȅ�SࢌCb��FԲ�/�g�%ȫ����:@	x@�<���*h4I,-@%��T
�R@H�M!Z��vЀ�T�P��f��3l}�GUX�
G~������#�`�	hj ��Bq�h��o���bP�@)k���Z�$n��x@��ZP9��h(u
v-�Ym�Q[��S�oue#�D���ej�^�!����B&N���i�ɇz��"{,��-{��"�H�dP��j��f��.ĺ�n�u��G��Xr�����B$(�� �	x��p`���z�ɜ��s{�YǢ}�Z�M�(l��ƫA��i���Dj�[�C^хέ����� ß�
A`y����y2@��_����E�|�Q�z�q� ��ʈ w@gqā�}v�a���!�X�]��e@[�%Ԫ=��.p&#��_�?��|���X�N6Qbd@��H�-F`�
&��ȇ��qBwx� ��=���|�PR� m)H�T  ���S�t�
$�舯��Ut� ��[�@�!�`�� 7Q�c# CPq	P����HX���cC��:�qv��Ї8�
( �{Aڼ��C>A( �a@�ʀ�]V\���b�	$F	X`&��bLITd`����l���^�ը1�%��9�q:>����� ��	�!2؃��,(h�� �?\B��X�%D�D��53�ir��,�`��!a�Ġ'16�bla	�`�&�!�h(9#�#���`�� ��FCO�B��X
��#�����R�Q �ArC���5�`���D+Q�h6�����eN��Y�l�A/�@E�5�B�(z�
$i�D��*��#��H��Q/x
2h�
R�� Ox����%$A����l!ARa����N18A@����N��a�� �	."`8���T&4�9� 4��c�G��"���'� Pp�G{����X �W_��'�A``�0\d���	��(F���"�_\����Y��0�@� | @� q�
Yq
0&����#�
E��h@C)&��# ��m}A"^ 9�@Mx �  ci@���,$
k8�0hD+sBRjp�)hA�Ol���bs��\���A���N��'q�
4Y�8��yQ
J ��- ш8��aȂd �,dA
a�:q
Tܔ�l�D1�ar���]�'|bL���Ea4LpXa���~� 	/@Bt��OY� �P#��N��L��(A4`���*��!a ����%'bS@�0�Xd4�F������B�J��p�_Zl�L�BP�>(&����J�"���� 4`�#���;�1�y��o�����X��t�D�]�Eb���� �0|aax)�fa�� Ű@(ΐ�-P��TBꦄ&@!
?��#|0
;lb>��'3`�P$��� ���PĢ���p�M @Z'��@�����)� nBĜ��B%`�4$9�7���|Q����1
b��8@R`.� _p����˻���5*P��"@��I:4{#Ags��$g�#�xCB���Nh��n߻mh4����D�������<�1F0b� C�d����)�F���`�0P�a����E��;�3��	��e(2rB��������N<��{����=�F́��B"a�b4�`l|��
,�F� F��@tb�?F
��>���}`M?������"�����~�T��
'��Nh�ӂ�34Jh̂(�B�S 7#��������@a��f@ 9�#`H�O*?��c��� 8�>~؄�ɸP 0�b�X�ߛ=��q w8#dNA`�;�S�E#��:��I��-0��b�Q0:dA��1,`0�4P�Q��2x��۩M@�cH�T?Г���b@%�J�����؂� h8!EܐfХ#T�Z�4@p;�hB�:��9X�N� oP?Q��B� h��9�Vp<j<� <� �A"�>� n@E��(ˀ��X� �Ȁk`�f#�k�3B%dS��N�O��C�D����1ZCQ$CQ�>o>l��#���pA�� �� �~H� �0�>0�P�M��U���Mജ�h ���P�.�h�>3/i|�G��Gx-`4-�HNd/�ڄ�����\�1�7W�2��3���K��b��� 0��7a��x�v�B����ʚ�
0��3�'l�k>O�m�DAh�X��>$n��bP,ch�4T@�{BZ@e@����̀e���23�<��6��Q����K�ˀ �>i!.����ؐ�b���RBż,iT��F�cE{����Np��Q$`�@�.e�c��L����N�Z@����Y�XPZ�C�L1�GTh��j�����
(/E�EN�� N0L:(N&4EhD#�Y��Y?GX�N�R����NpD��A�YH%��\�Y�2��Y`Z@�d�Y��c���>`P��H��� PP��i[�h$��AK$ �B48���/�R���9���D�I��z��<0�T�Z�P���T �]�d�]�Q�R�;;��c0�d�� ��ؐɔ$�3OqM8�i#��
��j/$�N?�M,�E�ⴿ'U�"��|NA���V(�T@�[��R�άF؅��3��O�+�lI����X J& �Sp�< ����*�b�
N>[�FMN��NT>:P;Fe�7��f�0]�a�VP�Em�]0�[(O&H/&��ZhUV�6X�Bɠ+�d8�R�ߤ�L��"`-d� c)N�D:x�'ԂMl���1�R;$��[x�l�=�C c��V��*�[PNH�L��AO��%�dP�l{�X��h���@]z�f@��@�@�R�Dgd��zB�́d�NSP����<@���x�i&��cE���y
�V�T�;e�[�=4`�Z$p�a������m�N�8FW� ����X-`�d]VeU��48�#pF#<f��H�1e	��km�P0=e@%�Cb@�T�VpB�$�ʒ؅R(F@��E�� � �[P��i��b�TV�L�'<��30��C fX�n��g��s��0C�V��9D6��M�GW��b��}[4����]��z@�C���Y���TL��]�UVV�Ε�X�x���V��n�׃�\PMZP�7�JVT�XS�4�4��</Y��I@4��]0�VP��]㐻`8B�UBSȁ��6������LN)�}	��\V��@��e�NХޯc�2%@P�[0�7=\:@O�4�G��yUD�;!�]H�����g�A��;p��Uצ�Ne�7��4�h�78�*NA�aeX�S8V8��J�%3-��O�^���Z�[���ŅT0�gP�7"��� �1N=G`����;��ߦ/��T�U�iA2@M�����te�c֤Q�$�YpHTO4ȃ#��-�̬��[�j6�؇}��K��`0/$l�N��BV�jtJ>���7@X/�8�@ت>S׼��Z�a[^9e�N�D��\X#>�o�J1��o�,�u��  ;      
  , Verzeichnis2  �!`      6 K�         image "badger.gif"  image "cock.gif"  image "cow.gif"  image "crocodile.gif"  image "fox.gif"  image "heron.gif"  image "horse.gif"  image "lion.gif"  image "lynx.gif"  image "marmot.gif"  image "orang-outang.gif"  image "owl.gif"  image "peacock.gif"  image "pig.gif"  image "pigeon.gif"  image "polar_bear.gif"  image "roe.gif"  image "skunk.gif"  image "tiger.gif"  image "turtle.gif"  image "wolf.gif"   -    `    @ p  � 
  /   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ������  �  � � m    Uebersetzung  Kamel	Bildname  camelSprache  englisch          
  0   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ������  � H � o    Uebersetzung  Zebra	Bildname  zebraSprache  englisch          
  1   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ������  � � � l    Uebersetzung  Schwein	Bildname  pigSprache  englisch          
  2   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 � X � n    Uebersetzung  Koalab�r	Bildname  koalaSprache  englisch          
  3   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 �  �3 n    Uebersetzung  Elefant	Bildname  elephantSprache  englisch          
  4   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 � F2 n    Uebersetzung  Eichh�rnchen	Bildname  squirrelSprache  englisch          
  5   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 � �3 n    Uebersetzung  Hase	Bildname  hareSprache  englisch          
  6   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 � Y4 n    Uebersetzung  Tiger	Bildname  tigerSprache  englisch          
  7   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 �  �� n    Uebersetzung  Pferd	Bildname  horseSprache  englisch          
  8   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 � D� o    Uebersetzung  
Orang-Utan	Bildname  orang-outangSprache  englisch          
  9   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 � �� n    Uebersetzung  Krokodil	Bildname  	crocodileSprache  englisch          
  :   +   on mouseUp
set the effectrate to 1000
  hide me with visual effect reveal up #barn door close #shrink from center
  if the Sprache of  me is "englisch" then
    put the Uebersetzung of me into me
    #set the backcolor of me to "Salmon1"
    set the Sprache of me to "deutsch"
  else if the Sprache of me is "deutsch" then
    put the Bildname of me into me
    set the Sprache of me to "englisch"
    #set the backcolor of me to 153,255,153
  end if
  show me with visual effect scroll down #barn door open #stretch from center
end mouseUp
   ����XX Salmon1 � Y� m    Uebersetzung  B�r	Bildname  bearSprache  englisch            ; 	wolf.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � � � d x   	Bildname  wolf  )GIF89ad x �  �������{s�{s��{�{s�sk�kc�kc��{�kZ�skkZR�sc����kZ�����{�{c�������{k�sZ�kR���{cR��k�sZ�cJ��ƭ������{k�sc����{csZBJ9)��������{�ƭ��sε�ƭ����{kZscR��s��k�sZ��sZJ9�kR{cJ�{ZkR9�kJ�cB9)J1�ƽ��{�kB������ν�����ƥε�ƭ��{c�����{��ckZB�sR�kJ{cBsZ9kR1J9!�ֽƵ���{�sZcR9B1�ε�ƭ��������s{kRscJZJ1RB)��Υ���{k��ƽ�����{scν�Ƶ������{91!kZ9ZJ)�Ƶ�����sskZkcRJB1���ƽ�����{c����ֽ�ε�ƭ�����������s{sZZR9RJ1����έ�ƥ�����Υ��������ssk���kkc�Ƶ������ZZR������JJB�ֽ�ε�ƭ���{{kssc�έ11)ccRRRBJJ9ccJBB1ZZB99)�ֽ�ε������ckZ���������s{kkscRZJJRB��֜��ZcR��֌�������ε��������������s{s{�{ksk���RZRZcZJRJBJB9B9191)1)BRB!)!������RcZ1B9��֭��������k{scskJZR���Zkc9JBJcZ��ֽ�ε��s��Zsk�����Υ����������ֽ�ε�ƭ�����������������BJJ���{����ƥ��s�����199������ZkkBRR!))��Μ��������k{����   ,    d x  � �}�6.��q*�M�Ç��A�Q��o�a�8Ι�q�j˸��ȓ&$�q�C�-�4HSa�[56ɑ�O�#6�i�9 ���k�QdC��4J�(u�˘?��kW��֭�jҼes�З�iqhH��V�
EcS5oU\�Ro¦2�IQ۶��ik��Ё4#+�
�bşA�J)\(&06�H�M��q�.48R`T�e�*|z���øg�=�aI�h-����8UK���QD(�v�RtkB��mf�����5��J<���j�%�f�0#L��O�U\�95D$ �K�@g�`�T#Nv�a$�v�83�-�@�oO��n�=��e�}�|;�4Uq-S�&.���� �
(�0ʀ4�Q�u�lwK^�u��3@)�w4iS�yU�6�ETQA�DXk���2>,�c8�K>��BK�  gX^�y!NC�)$N�y8�D���WJ���O�5Cy��3ȀB��&����!|a�c��`w;n���	i�2���ќEV�R9�0�N9���OW�=��fNYA����T��h/����&�1��m��I"���79�yS��i�8�hd�T���6���M>��SNb{ºgy���N�,cB(!P���x��"�hB�	/X��V�����vDдCڲ��t�̐;�^FL�۪�y6�b\����ൌ/$@��,���8��q��� V,���f��)*��H�2���DO�����j�^��*fO
$�v�y2Bql����% ����|p(�XG��xA�-���\|���	��6�c���x���"��d{V4�2�2��l��c(2���A�~�@��$8��]��4��;��3���M��i�CT�:u��r����f&K�В�-|�
�,��$2�$��^,�����^�Q�L;sq�N��a����;��nW�
�I��(XA�!�MD p@E�p=3�n��H�(�:ey��L�A!1� �*L�>V.�0�O"ϭ�s�^�"�Oxb�D �9 �p�����%�"�;�n��49y#p-QK⨆�V�Jx(��W���j$���� M�b4�Є ��2$����	�'A"z!�(GT��mH)��L���Q�\Z\�W�b�q��k�B� x��% ��7`"�~å&(��y��pR�V
N5��JE�D.w�J]#�	%��c�����	M�A�D]&	OB`t��z�='d�{��FFZ2%�d�AjO��.r5Y���*_��[��`I��>��C���h�� x�2`�!L@ f֢�̦*�#�V�������L�p�AHh%4�
PXr	rX@� M1���j��*��g�9��\]E'j�V��.�8&C���e�,b	0i41��1`��"��=�`�0�%�@>H��dy�?��H�i�8DFT��2D!T�U@��9� 	E`�΀ 9d�K8�&����}�������^DV�_�-A��Lf�����O�鵷�bX�V0��8�T* ��b��DP+�brp�YC�1����efF�?�Hɋ���O�!�|����u���o��0`��0���@ |���� �5� �8C� �9�"���>��x���a�m�]��#�<W9�W�j�c�XD����)� @j���aRC��� �5����&���`>X�9���]&�2��a�ժv��U�C����*���:��eul�0�)��
` Ѐ�2x�[hA��`sF%�1|`��<�x�I��REX����c��8Ǖ}}�C�pG=֡n�#@pT(���,��=� `�%��n��`��@*��$61Q0�.��w �<[1P6�%Oy���?���t�C�pG<�яiLC��j�9Ѐ7����� � x 0)*P�?�����T������ �I�BS3tD�Z������9�~��шF8�!��Kc�V/�~1�^���c` (l�n|�T�@ ,�*��}�h@0A�p��z�sc@�V��tD�2�a�|��Z�L��P�:.݋x����/�a�i�K'���9�Q��Ѐ�M$ ��j�@�� 	����C�6��!X4:�`0��`2t����؅:���_0b� �/|1�M C �p��VЁl�*P@?��쉀,�c���P�#�@�:�y�
���l����G��!�@?�_�}��2y�(��F�!s���@�A��`C	�P�4A�	0�u 4
g� !�^��'P��s�
V,�7`f����rDU�}�A�@ n�0��/��0���q0��x�=�
t�Q`]P6�r'	@*` /�R.�\/p \�0
t0
;8ŢxY�O��5%�!��P)���q
��/r�9,�
� 
�0�]Ѐ��V0���`0m@�2���U�  � p � 
�@
��	u!}�r�g�&��VG�6���� 0���`� ��0�o�x�0��
x�U�]���2%P_%0n@$ �A�2P0V #� 
t�	��	��q�8�x�p�`��!�EA�Z�����k��0��І��ox�\��
��	���u�$``P3� n�0k0�_00 2@��0j�(	�@�pY�>�xp��`5/���ށ6�
^�� �	2�
�g`r؂o�g��	~u�� A��_ ��`  P�{��s1� 5P8���	�0Dl։>�$�����x�#Db�0�Џ7�	r0`rPR�`C:v�
�������` �K�AX5 2`�UP�G����@��VRt����`2H�Ɔ��'@b�Q	�P��
�06`q0=�)
��Wf�BtG8�O�B��K0�m�T��S] �V
�D-��r(oH	��	r Z�� ��U(�'q��	� 	�	���s(
�0
xPx�Vx0m�:@_�G�N�=sK0�@K�\V s��0�k�pV�@`S�w��ڥ�	$�$�	�)	�P	�(��؂����W�(S�&��5�^�|K���U��.`/p�S���9�W#g��B�S�5`v_���� �c4F�� ��PR��
⹞4�����V�.pGޓ:9�Op)��}��
g�v� 2r�8uVDW�SxY7*(�q@	��T	 ����9��-{�� 
�@
���x��0�7tYBt��yـ6�N�`�Vy8VK�t@��;��W{x6�$�%Pa0bx w� � 	!pb�r;��	��
�p���	�؂���8
WY�/�-JA:P�O �0
B���`����u�.!0F�KX�3
{�'q�
�@� Rz;E*y1rh��xO�� � ���Y/ �U@6�9�P�(��/ 4� 	sY:� �*0�9cu�'�5p5�\ �`/� ��P�5� 7�7�������k�I{+�W����s�B8�9�9�]�2
�@S p�8g {qP·�W��  ���7\�x(�c�@(��0㐠%���W�9�p~E�.��]P��M@����W�/q@�c0
��\�xP{] I��x500�(�K0 0�!a�:�Fc���
r�<� 
�f�w����B��)Lp�[�^\P^�x��A�3/ �"�r�G0# ��6
 6P�0C�   w�	�@�@(�c���A#���(�	j�AJ�����Ћx8V5pM�_�60\`�p^0
� #/ *��( xx /0�8��@�0�p<T��/�\���0��� {�I�G��z�x��;�\�����L ��{��� u�����{���� 0M'@s�@p�0�g@�� {Q
B����0������j��*DfA�L`$���[0U�C�\@�}w���<�6�uF-�.pq �mCP��!P;c�0�{ˁ�]䠍<�c�*� bs����� �N �G�:LG�q��S�� ��'�7p3@	@A;0
Ɛ��%1P�<�*�M�Q�;��E�`��P�l��)D��g�c��v����-�j@\�/�#}g[(0C�3�F��H��Q�i�V0A��s ��	� �|!"Y�(�l면�s�y	� �9!{�$�\�\� [p�� \��f0\ j�j I��7�sF0[D ^��`6��
i�
�e!0-� ��0�wl�B*�H|x���@�Lp#���|\�C�9 # �T��j@c�0�� H�jf_0D8��!4��#�Q���7��B��<m��'J�2pJ05�!0[���p�}�m�k@C���G �"01�G�B}6 �e2D�������9Q��%}|-�O��/��p$۔1��5�}Gs���*{-� p�3S0�"�] ���f���5pM5�=��&��@��T��c.{E{a����1�� x6������{jc�wP�IT�Z0��x\p�0k��#��Ԁ�9 ���
�;1H�����s:����g��|�Q����{x��	c�ҁ�}F	ǲ@ ;�p�H-&������x�!�U�j$`�u4PK�
��X�'Q�ꉴw��ںa�|���2#`6{�`�/@	�f��� )w�*pS G-.Gp[0���o���Ο=J����EL!��J�sz��Ǿ ����!+�.@��@��yb`�	t���[  `�O|�v�'P�C�{э�P��5�w$P�,V��<qd[��ʲp޺*@�.��� ��M�d���0����8�F���Sm��}�|���S`�I. �p*��K��y�R�G��'��}�W�v�f�h{�\`o<�� T�Z�	9��xx�l�b��w�,J��|`X`S`b�ᾖ��B����cՀ��#Y�}�D�W�|ݶ���/˿<��px�a�DW����wp!`��
�~�`[ C��U {�v`Z��T� ۼb�� B� 0V�
@�z2{�x�
 �D_�W0"�T �<k[=�(�Ɖ���E��@t}��|��e } z`�|0"P��l�@�PSi]f�*	Hd5�+���u�Y���b\� 1�ʝ?((�@gӫT��1s�ϖ>B��G�?>��S菟7�0a�c�N�X���CI5j<����/5T �"��Y沕�V�]�v���8F��3W_�(�xB��Re�\P��cf�M�RQ,c;p�x"�>{��ᓅ^;+ߐ�$�N!"b(y����64���O�����vNܶ���9}��<��Α��*TP�{�g�	h�Or4-�c���?}��E�'O=x��䃩��G��!#%�5Jjذ���f�� ���N��K�t�S�^�*��x���T��; A�;b�b�@Έ@�PBy��΀ 1���>�0̎79L�:X��>�0#a�2����F�a4�@���c�3�c���qRK�*�؎�����t�#r�#5�$�9��d�J�����C
=�p����Lޠ�UJ!���� �$$K	#�H!R�줒a��^N��*� �!��
��A��-�a"J>�0Mƈ�LN@ѹ=��d�>�̒K��$2.�T�$�F�DȄ�"!X, y�R��,u�i���!g9@�D��P�J�n�"���mp?�@�8fK%��P8c1"��-3�;2�L.������L(I��G�#;�,�:�C�0(IRI���ժA��9� ��8��<s�1�
!�8�@ ζ@�䅅?`��"�8�D%;��$eL2��I)��F�x��G��œ^V	#��#�nKވD�N�a��d�9���m�mS�3�8�
<*���q���8��� A�#$.u�C���`��%��'�$YT9��D��Dz	��b	�C���Uxf�c�G�Pc�1� �
\�����7�]���/Bp<��+ŀ�2;�oeۣ�LTY�_���_0��`�.v�a���A5������`�5�[���K��Ї�.�T(� ��!h:��b�*��L���Px�>@@KI��p�Ci��E/|ыx�#�P���iL���+�]$��4z�ghg����E���`8ė>�������;\	}��<�*l�0��7��P���% �EL���r|�ը4�ы_Xc�F*(aP���88�8���^F@p@��BWZՕ�`%@�����`@Ta[�@B3d�e�Q�`�	HD�X/,p�c���8��W�B���.X�x<��$�Qs�Ԉ.:҈2*�\�KxP����Q	�[��
��P�}`��p	L�����0j�H(b@X:̑r����Ȥ8�i�g���(�ʹ!F3"���"%���^Hb�/�C(��*@�Řj��0.h!F\� 2����!�i�# �
H�"�8i,o��z"Nߠ�6�IO�}C������}`���P*�
*0�
����T@S&Ǟ%Z؂� �L��|0�% ��\��`J\9XF�rPgr�klq��WvΩw �
L`\�"*�Ra~�3#G�|��S��<`>����C2�H���0�*T	��õb��&�*��r�����[�Wm��b��q����' ����X����_���a�Z��,��D`��[E.t����欧J7�Ӹ��s�)]���祴����`�h��:���047'�B���Q�Vwh�(�鈁3�.V��D�B�(K3iW������隍o�9v��MǑF9�N�����H��\`nD�����Va����?��-��C0aT�n��Ƈ��e�j��3m�kW��9�0&u+���?L��w� �GC㲚�T���`-�{b8��Q ��$� ;U����[���6�ҕe��}���3�z�iF3�������j��h����	�
Q�����C�0�c��p@�U��"~��'�1�m�j�8�ڞ����A`$�CtR}�T���
V��pa�f�1*(��ILB��V"P��G`qR��:X[�?/�	/3\]�<lo[��^��aT�1�dO�  bF� 8k�g.�f��\3	J��W��"t�^H���:X�<��W����+9�W���C�1��ư)0�a΁�HNp/~�	����0���a��|�#���7�1�i�R�P�A��^Y����L�����6l�p�Z@�L�:�\W"���QF���E,����!*��X�>X
�6��)�(�Nw��X�]�ڀ@"��	T��S�����-h�b@�� ��� ��&�I@�c�I�k�k��`��J`v`wp;��9wq��
܆|ؙ�1j���_��M���,�ȣ�)��7���s8�&?��2HE��Z8"k�a��`��k �aD�w@��+����'��Xھ���2�51:1�>��X<:��z�B��B?(C���+�>��IX�^�La�`�"b(B*��4�v0�W���J)�)��>Xj)\�1�C�=	��(
�)��/�B9����DT�+˝9dj�ST%j��b��a�C��)��Y:�ԃ-D�C�3D)�8�1{��Hç3���DL<�Ъ1z��zST�T�"�ab�CU�4B$��X��2b�{J=ת@�C�u��
��1��z8�>.D:��(pT |�D8HJ��F ��<$b8Ev��m�Cf�u�2��*<�C�E�{+�zBآ9�|CPt�3���78��LHI,��8�ib0��F�>d�Td�iX�}`�
� v��C�W�4t�>4�ŮB� ���2h��D����LIO�����8%j(�b�FTT%t@d���䇓��v�Dę(��0� 1ھtl�1�zS!1� ԁ ����96��A������Q9 �Ca��"�>Ubl�Fd0Hd`�/���9��H��)�v����>�{r-*�M �8��?0��H9���ܿLXO\��\�1��`�9²��S��DBi��sP�ʩ���Ԡ�t4�*ܾ�X�2@�/�?1�?XIH3�O��4�Z>X>k��#��`�f�L�4N��Iؚ�1��Ը'�Цؙ{���T����K^>��8�)�EHK�IX3X�8;]FXl�����裆�x�@@�@r�2͇.##.#����OY�]1�;��h*Ci�- �>Ȅ4���F4����M���J0B�<Q�D�ax���} �g�H|ڙwxl�wh���u�M��?? �`,��h�����1���SJ��Tؕ�4_p���,�O���`���C�ɩ���.{�Km
7�ѧ�����?ط���S84?@��B<E����qU3 ���@u���R��k4�Q�o� �Ȝ9�Ne
6�Q��
N�Q� �`��C��@�H��4�0�3�*Jp�k4�@1@ $dk8Q�$N_}�x 3����K����B���4��m�h��Ë��D�����78p���3�5>HUJH�Ix$L�t5ų�b�Un8�¹�C=3چC�$Nҩ1�T(|�|����N0�#�L�逸�l<�>�w\LJpG�K����tU%��CP0BwE�g��h����/js-��E�h�y4��N R��=I5;8p�K�;�`�8X�csR"Z��X��k �#�Lhx6�+�R�+s����4���l�/|�"��� �����,`=p�<�xd9IPѹ-Z�˱DT���tx���9�{Qۻ�3=�3Y�ĮL@$�I�dy�B؃,0�B(C�?��KԘ�Y��J1Є;<@{(Zj0HP(QH�a��i@�m���e��c��˻j�4l�@���UN������!��LH�D(TxM���Yx���SݱtEj��tx;����:c3��^�D��s2؃�z������ZNxN؃�ł�ЪK��H �D�M؜T�[k��N���HZX8B{8`�{���6rX3՝���H�A͜	�
�������:��=Г���c���;M8�7��D@k�`�X��J��Wdu�27:�ù���s$���'���S��7����b;�N�J�{�=�3q�G%Z4�W �J���1�����s�X�z6r$�մ�N��@�X��L�K؈�0��7Dl���]!Ox�i�PI�XX �I&2&cj�tȇ3*�J�Zħ�G�R��r���PE�29K�8X�8腸H�MȊ��$D�ip�P2�Yx�O��I��1%i8��3�B�c�TL�fm��  ;        D Erl�uterungen �e�0 ^on mouseUp
  show field "Erl�uterungen" with visual effect scroll left
  hide me
end mouseUp
   ����33    � �  !Informationen zur Programmierung          	     
  F   	h          S aGz        @ 2Erl�uterungen zur �bung (auf der n�chsten Seite):     	           @Nach Anklicken der Taste "Start" erscheinen ein Tierbild und englische Tiernamen in den 12 Feldern rechts daneben. Die Tiernamen verteilen sich "zuf�llig" auf die Felder, d.h. bei jedem Anklicken der Taste "Start" erscheint eine andere Auswahl von Tiernamen, die sich jedesmal in anderer Weise auf die Felder verteilen.                       �Wenn man die Tiernamen in den Feldern anklickt, dreht sich das Feld und die �bersetzung erscheint. Bei erneutem Anklicken des Tiernamens wird wieder der englische Name gezeigt.   ,Das Tierbild links mu� mit gedr�ckter Maustaste auf das Feld mit dem zugeh�rigen Namen gezogen werden. Hat man das Bild auf das richtige Feld gezogen, f�gt sich das Bild beim Loslassen der Maustaste in das Feld ein, ist das gew�hlte Feld falsch, bewegt sich das Bild auf seinen Ausgangspunkt zur�ck.  �Bei richtiger Zuordnung erscheint unter dem Bild dann wieder der englische Tiername, der wie die Namen in den Feldern durch Anklicken in seine �bersetzung verwandelt werden kann. Gleichzeitig erscheint ein neues Tierbild.    fSind alle 12 Bilder richtig zugeordnet, kann mit der Taste "Start" eine neue �bung ausgew�hlt werden.  �Die n�chste Version dieses Programms wird eine "Fehlerschleife" enthalten, bei der der Lerner die falsch zugeordneten Bilder gezielt nacharbeiten kann.       I Verzeichnis �e�pcon mouseUp
  Global Bildnamen, Verzeichnis, AufgabenRichtig
  put empty into Bildnamen
  put 0 into AufgabenRichtig
  repeat with i = 1 to 37
    hide image i
  end repeat
  put the number of lines of Verzeichnis into Anzahl
  if Anzahl <> 0  and Anzahl < 12 then
    put 12 - Anzahl into Differenz
    put fld "Verzeichnis" into AuffuellVar
    repeat with i = 1 to Differenz
      put line i of Verzeichnis into Abgleich
      put lineoffset(Abgleich,AuffuellVar) into Zeile
      delete line Zeile of AuffuellVar
    end repeat
  end if
  repeat with i = 1 to Differenz
    put the number of lines of AuffuellVar into Anzahl
    put random(Anzahl) into Zufall
    put Return&line Zufall of AuffuellVar after last line of Verzeichnis
    delete line Zufall of AuffuellVar
  end repeat
  repeat with i = 1 to 12
    put the number of lines of Verzeichnis into Anzahl
    put random(Anzahl) into Zufall
    put line Zufall of Verzeichnis into line i of Bildnamen
    delete line Zufall of Verzeichnis
  end repeat
  if Verzeichnis is empty then show fld "letzterDurchgang"
  send "mouseup" to btn "Verteilung"
end mouseUp
        + = u  weiter          	     
  J letzterDurchgang  #`      4  �          letzter Durchgang 
  L Verzeichnis  �!`      � 
*�         image "bear.gif",B�r  image "camel.gif",Kamel  (image "chipmunk.gif",Streifen- h�rnchen  image "elephant.gif",Elefant  image "goose.gif",Gans  image "gorilla.gif",Gorilla  image "hare.gif",Hase  image "kangaroo.gif",K�nguru  image "koala.gif",Koalab�r  image "ostrich.gif",Strau�  image "rhino.gif",Rhinozeros  $image "squirrel.gif",Eich- h�rnchen  image "leopard.gif",Leopard  image "zebra.gif",Zebra  image "gibbon.gif",Gibbon  !image "tortoise.gif",Schildkr�te  image "cock.gif",Hahn  image "cow.gif",Kuh  image "crocodile.gif",Krokodil  image "fox.gif",Fuchs  image "heron.gif",Reiher  image "horse.gif",Pferd  image "lion.gif",L�we  image "lynx.gif",Luchs  image "marmot.gif",Murmeltier  $image "orang-outang.gif",Orang-Utan  image "owl.gif",Eule  image "peacock.gif",Pfau  image "pig.gif",Schwein  image "pigeon.gif",Taube  image "polar bear.gif",Eisb�r  image "roe.gif",Reh  image "skunk.gif",Stinktier  image "tiger.gif",Tiger  image "turkey.gif",Truthahn  image "wolf.gif",Wolf  image "badger.gif",Dachs   M    	`    @ �  �   O image scripts �E�p �on mouseUp
  put the number of images into Anzahl
  repeat with i = 2 to Anzahl
    set the script of image i to the script of image 1
  end repeat
  
end mouseUp
        �� n          	     
  P 
Abdeckung  !`          ������    �����%             
goose.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  goose  UGIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � /\l ���!���6 ��.D��qc
��`ĉ ���˗-&f��Ca'��XQ�D�%�X����#%x�(D� �fl��K���lX!hW
V����W�?An�pI�%K�<�E�P$U��a8J��Ћ���6"`� �~UL�1�	ײ�Љ�%9��i6�3�G�.]�������v�Ja���LA� Q�d
�y��or�w�L��d].d���Ȧd	��vlF����&���ύ��	"�e��L 9R��5B�-�"��E��9]�����v�!C2h�Of���]��esT��Od��s �%6}��%apV�aW�V\Q��j]MP�k	=D_(�KCX҉O�sG �GO䑇����j)] �$��_RCIi�Y��E�0�U�4�e�u��C"n�Qv	p�T���y�d' ��WLb�f�L��6�j2�dK|DVIF-D�^B�ɖlHp�r�qds\҉R��\� 0�Rc*��W@���V�Leb�wzQ�[�ZzI[�z҉t~zD�jg�s~eI��V���&ӊ��'ZI����������t6혬��R)Rq�ڊbF95��KiDש������M�祝\Ka!�hc����A��.�NkU&=Z31�ؓ�B0����剬1�.q��B��vTHMD�N�H+�ha֤Q���
Y�h	W\s����^wlDg��-�TTC9��0P��vAЀq��Y�R��f��Z\��(��8��cE�:"�v5��"Y6�6�6W�GFPϔM&i�|q���Kig`�7g���e��pwU8�gSmt�k?&̧qI:wVSYT2Gю�T�~�JqdT�]IW�N0�V�?���y*��qaŗ��p7�<�����"�{dP�$<Ʃ�=��V��(1���mk���Z�hW)�RZ`��rQVk[W&��]�$!�Wvnֳ���>�J�f6����*��ܵ�u�c��j5G*����oѮ>�x�_6�����^��t2���!���b��j�J�3ʧ���K��z
�
�U��,k�	m:x��8D}�!Y�GF>�S��D^g��pk G }r��}�0�:N�Ƌ�+b�ҚD����&����%6�"@]���?B�A�@61Z�2���!�)*�e����Lz��U�D�-��$>���t�8�	��-��D�N�K��8/�_֐"�q��q�)��� �p�KZj84]��t�L� m��X& R��#gZ	�9�¯��s{�FS�.=dr����%����g9�[B�I=��F�\JhOO"�}��CZ�-L�D.�Ձ*r ��^#y��r>P����� . <�iRFQD,0��/A� ����[f��L��o���� �>��r1�	Q:�)9�s�ے${
1fBE.uY�:7�ڤmp��q6�D
D@�t@e����˼�������E]t�UCZ���)p�uHxr��m�:aJ+���	%+*�D
�O]
�)}�D"y qy�6�.f�9}}��b��ٟ�ex, =�������%"`՜F �g��4�v�?���� v�t�3��s[�mղ/��R�l�*wV��l�g*痰�Ԃ��IX���.Q��� pu�-u���·g�l�O��JV��Z�'�4˺DG���Oc8Q����T�]���lP����cNd`��-cý�{2���l�;�:%H�u��0%�E�pE�|���v�
$me.ņ5�AD�3GkL?1�ݤ#<gb���r�+���+K��H� ��x.vN��R������=�K|{��Vu��ZR܆��4Vp�I�쉳1J΅��HB�xt�#�l�:P	t���� ����5ڥ �j(1j��{W���LLT��Xyg����`��÷�0�~2�|H�([EB�V��a��Ll�;	�܇'KE���i��i]8"Z��2�G����hq�7����U�E���9$J������#挢Ƽ���I^.d,&AZ��M`���[���n2P��ޤew�v� Y=#ι_�	���Cͦnڞ_�.��K\�7�v�Z]T;*��_&�Q��tã�`�ډہ��W��ַ6L�IDEi�uRbm��m]������ԯi�\:�)N�=\Ji��A�я�]�L	ˍ�f!) =��*�x�R��/�xɼ��u���L�e�@��"���N���e�g�$��"��N�9��R�r�x����ϓ�4cv9��C��v\<:���ܽ��qc		|���~ǆ�	h��.k����}B�i0��qv	_��}�LRpQ�~5���vr(�}qw++�2!Har��}��I-�n�l<@ NMPt�9dC��v�%Yj�V�D;1�$QD�jp1��o�a~p.r&Er�"��?�3&��p!�1N�����1JFhv��q�uj�%��7��t/HQ�V5+!="����E��&����|�p���(�qe4�`�1�8Rzqf<�d���W�(�d�������|�p0 ֲ~�w��{�2b��R���$2=�rBx2c�X�������}x��A�a={'��O�k�4��l��A�!���
 N�pZZ� ��k��p�X�y���#�%��*�3OH ^Ҍ�� 둇�M�
�� g	�t&�eH�uy�C1E1��j-�i�or00��M�B�� �f~�������v႑v1�72�9D�m�b ��"I5e�/�)�!Ms	y�qb�s��T��[�>�u�w&�*�W>�A�9��1��8xO�	��:��.Ɂ ȇ�p?'b�!+m�7 TÆV4{��q��R��4�1j:�or0)S��8�갅&t�((�8{�����(4�]�g���r3F�){q	l�B)�2�2�N; pK�,x���,�(-3o&r9�X�Xg�4?"�B�p�:�xh��؏y2rU���e�%i�Eo|Ar�D;7a�?B;��:�l�����ٸS�.T�·�c�BTdC �	��f8;�F8����f�: v������fh�p�qyl�#>�`�5Z�D���ĕ��F|�$<gO#L�rcf�b	�N���Y�F��y6�!��J�Y� $b�3r���/�p��b	B$B$�1�`	�iD��A�-ݔ&G;m���Z�����s,t�_@���q��f��78c�Yb5gֳ�D%9�0c�G=5��� ����"rDR$�� s@\�����ǜ(��ԍ��}�9���$�yTb5�T��&���-�P\��|N��Dr hr�"�����g���#$l��*!���X��9�8� 2i���
^E�jvL�C�r��O��C�t ��l���Щ�/��W'��Q)Ė�I)�^�*!�Rd�:l3[b>�hxs�/,�)�Q ����EAj�_'�4s`��z�ER7��;��c�J��"�3�Y�z�XR�2�	%1��=ԧr\�$�~�l H �t;��O"��k������(4�5F�&�T��]��x2&nu 8�+S���  +��7732/�Y�jk�fhA� ���0��!07���/B��"�a	Aа6	��^PK�ۑ;�Jg�0J�,(D8`	G��P$�� �[�&.�:�%!`.>U�o�p2�b�n�oS�ĈEów�-4�-��d7HG`�Zɳ���}*�F,�O��)>�+�6)�_#�(�#xvZ�ol�4@�Ûr� ��P�Ǵ��&�������ڋ���4��+="l�ֱo�ұٍ���47o���!~���VG��P;�!(��Y�[�k� � k ~�'���!~�� k�M�hy���d��&k$$m u��!��!�@�hJlNv����U���| 2<����+$��43�߂P�g�'�����E$
c����aB)�{��KP��| <�k ���l��!�@)�@��*���t��ً��� |�	c�m���/>Il��� �|�K�|�^�Ŋ���"v�mazCb��ÄвH���;�E���3O�9$�!�LlBpf���A���Ȯ�`�����������u�C�aN�(:�H\�◿�)�"m`���B���e���{�K��k��>k��+l�j�d�$�;\�+0E���A)���.������ܪ1l�p�H���V��F�A Ю,ȤFh�!���3)s ��!�L)��|�AK��K�Pm@��'2$=���<ĭ|�����ۜ�l ��4�s��4@���� PKďz�L�E+lm�m��Hl|ܲD��}�Լ�˺��,��@)?�/0xB)����������!�X�Hm��(S�)�|��L��ȼ�Ӱ*�� �6����y�2�[)O��>���'*�Г60�ͨ��<n^����W-ԧ�Sr���R����$`��f��m�g;�*$�7��'!���!�{���	��@~�ɝܲ�Lj-[�PM|r�r8��m��aZ�e+�f&B`��N�@B���3g5�U���L��(:��a�D��r���FJ{B��Ӱ}08�4�a�)�G0��[�iħIc�h��}�n�О�|�	n�(�m*0�����'r���Ƹѡ$s�~�ds`)�'�����X�=��(���zos�.ѥ<�nK��:�Nc��:\m
��,���'�@�.����d�M�b��D;7y�����#`}�ު%c�@kz%���&�D����#�xҲ�b�|\�J*la�����ьIf��v#li� :���+6X�(z��=�z���'ʦp�И��&M��o�>�Pݲ���t��Ɩҡl���j���)(j���4������6ަj�4�'�)}��n�k �R�?��K6j���	�� l����d���Ժ��� -��>��>���n��1��)�A����Oj�~���Ȟٵ�۞���d:��y0���o^m
�>'���qҰv2�૑���u�˽�}-��k���b�:�Nc��������o�?����8'�`',d|�}�mz\�����OA����:��i�^.�v.{�:�9Y�-@���.���!�E�l���-:��̻�,�r���B�r)ⷌmA�!z�-�
��+�_!��	���n�	�jBr��,�+lݶ��z̝>��Kh��~�lZ��}�\J�D������p�1ؔ2�Z��nB\��M���P+c��Vy)ʄ-��"�5��』�@/O����B���	�h����{��^� ��ܽl�M���_�O�۱x��u��8���:�����џ��:��
���)Æ�H �a#�`�K	.dA�$�ȉ@�C6G�Tr񝇋���T���N�$ʹ��S�q��M�C2�4a!K�oB)3cA�AV^�0Ǧƣ3;&�Qȑ�6�������G�\��SV�,/I\��Ȝ��t�8�-�5b����dgF$qJ$�w�тl��D���܋G<���	e�9H���2Ϝ���	������*&X�o錋s��{4�N�;V�r���[���a/�-�23�w�GG\c� ��B�h��� �_W�w����ܺ&��sT_�+'�
�.q �H�`<;����k��� 	
~:
����0��$�D��
�l��ܒl��
º�.�+;ְ��`C�R������w���E��P)2�8i��^c� �:�i9���� ��舺�C���"b�	"����-�0�$�`�ii'��Q#���4*/Q�oA�^��&; �� 5,���(�r�5�8�,���$��BϲT%��� X�ȃ���� ���6:��=ժ.�� ;        $ pig.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � � � d x   	Bildname  pig  (,GIF89ad x �  ���)!�cRZ1!�J1�sZ�ZB�J1R1!)!�sZcB1�R9J)c1Z) 1!c9!sJ1kB)�R1Z1R)1Z9!{J)sB!cB)R1J)R)B91cRBsZBJ9)B1!!R9!1 ޽�1)!罔ZJ9RB1Ɯs��k��c֥s�kJΜk�{R��ZZB)��RJ11!�Z)Z9R19!ƜkƔZ�{J�Z)BBB�Ɯ޽�޵�֭{��cΥs��Z��c�{R֥k�sJ��Z��R�kB�c9�sB�k9sR)kJ!cBZ9��k�{Z�ƌ�sR罄�kJ޵{֭sΥkƜcsZ9��ZJ9!R9J1�Μ�Ɣ޽�ֵ�ƥscR9��k��c��Z��R�sB�c1B1sR!cB�޵�ֽ֭�ƭ�{kRscJ��k�{RZJ1�{�sJ�kBRB)sZ1cJ!9)R91!cZJ��{�ޥ�֜B9)�Δ�ƌֵ{��Zƥk{c9ZB!�絔�cε��{Z�sR�ޜ��s{kJ��k91!scB��ZkZ9ZJ)�k9J9cJB19)RJ9�ޥJB1�֜��R1))!����筭�s��k��c�{Rsc9kZ1cR)RBJ9�{JB9!JJJ��{sZskRkcJZR9RJ1JB)sc191)!���筄{ZcZ9��skJkcBZR1RJ)911){sJ)))sskkkcccZRRJ11)ZZJJJ9!!99)kkJ11!ccBZZ9BB)))99!JJ)!!11 ckBJR)19)191BJJ9BB      ,    d x  � ���o?w��H�p��$�J��gp`A�3b�x��F�?4�M۸IH�O%˕+��w�_|� �"%� ��	w/ɶ$6�!u�tiӚ7�F����Ԫ��6Lܸm��L��س҆%բ� =z��
t��ړ��E���
Lx�_��D2��qt�- �r�Ȓ+[�w�Ւ�N�=mX�*]ݶ5�׮��N�n߸a��]���!ewz/@�x�RGF���u�^�6�/��؝b�n]����o+��q	�f��.p.�=T�z�݊Z��I��͠S�L!��MGĚMP�t�l�Əm��c� 5�;=`\��Ӄ�m���Q8�Z �0b�-Ubn�:ɆOB��cV5H�b�m�O>�� �H��e��{ݴA�������Wh=��� ��R
-�TП�b��օ=��B$j��6�裏6@�R�:1�q=Ԡ�I�t��u���
�`9�N��+�Ģ9df�MMW�
���Z�v>H�8c=��X�}��dN$fCW֔�;���̘�c�̰C3´�2s SM2�0#\8\a�ZJ
�(eA%؃ĸڤt�B�V\�	w�U��*�A�C�	���N)��[J)̔�N,��L:'<r�+?T�@l��;��ҐJ�`	�|��X*�'�{��tM�yk�u	@�9������"���$���@�9�D����B�: O\l��TMm��A5��mp��� I	Z�@45h�sF�CKѓLB�0�$#C"�(����TSM4�b��1�<�̘���:����CJ!&V���sY|^\Z�zo����L�f^�$����(c2@W��1�LCM�Ѱ�1?����8 �J��jE6@\��5@q�F�]V�S���k��i���P��4'Ts� ԼN���4'L� �7�	:K�I�B8>^*R�V��#��uk�r��6��Z��s��;@�aT�����5�Ec�0*�1�l�b�2���bC�2Ԧ
��E8qOf0T��;r�;6�����h&7�E0��F*�>A�b|��� 
P�¨E�	�C
��X⻰8�O%���ǚm4/Lϋ��h!� �f��W�:e$�n'�� \g
S�"UE6�B��\-���.�qՅr!1o�!�Ӳ$ �m΀F������P�e)�Cn9Z5P�(�T ��)�SP��p�<��t�Cf|ՅZ�!uMn8:V�ՌM�b��b3�H,Z(c��0�`:k0�vC�/M��`�����,��8X"N��<$ƴm�O�
Q�B��I�� T;'��MoBOs�(`+[��_��)(X"
��Bȳn�@�Q�	B��a�,$�[8�����тf�%-�A�Z��c��IKR�#�@W'��&���fX���`%6��9�O1���U�5,"KDA/Q�R����$n�i��7�'�U��.��+2�: B-�L����0B�T%�ͫVV�� +a��"�zXC"���e b	T��"|�j�Mx��l�@�g8�x��D��Ԣ*0r\袑PFJ��S�΅�AY.�Rs��(-Z�YV
C�TF"|�&��n��*q*8�Q�C�)������$�p�VT@�P��@<��]����0?Ʌ��܊�F�Y���AF���x���e�
��e��i���(,�� �3�'�r�%�)	7���p���?�T�Bذ�h��p�s�D��P�^�Z�VPon��1FWIF��Ѓ�:E�
D��mp	2��'���X \��7�����$(A	7#ƜP)D�Y�X�X��p�	d�`-Y�FqK�K��IL�[mW����@� 1;W��A�B�#	�E���q�)� ��2�	J����@�� �p��a�;��A�L�ʙq���6����}�Xڢ��ʫfVժƆ�ٙ�5 �
�P�|��~��B��p<� D��`	@��٨�*���g�B�E������L���!q! : ��:� �꙱�ꌆ6�H�0� 
Ol�>h�FЊ!t�m8�N!:����&jp�/@�إkYp�D��,��ػ��&���[�5�B�	>q���[mUG4��w�F�װ�U��8�&B�V��hE*� 
R���F�C� B|�H�z��^�@;�R�/��o�l8�5	�}�_N0�B�4���9W���k�8�~_�T	��C���`
0��� �~�]|�Ȱ�5v����@�5k2�DH!w�Cc���>'��R8��v_�e��I�
���,�
#� ����ѐ��d@�p	��dE�0k�,޷��,���
���@ �n��¡�p!%�.9!�]�1p?p�&~'�l�
��,t(C��RT��`�b`��PHXV��� �|�,�[p��
�A -�~/h�3"��?6�-�'f跃��f�&Z"�;�Pt i��O���ٰ�W��q�SI��|�;�]P���Ue�n����(�@?I�I8=��;�����8�F�� ,�# �*074��	�@���H`�	�xE�qE�
 ����,�\����'U �/�"
T�shUՒ;w��^z�Ѹ��
��p����b�`>� `p		���	�0�0�T����	��
����)�Q-$nhH�P/`P����ZT1�$̀�u�{�8�^��( ׇ;@b#K����	�0�@����p=�PsP�����7���P��V�ij�)  �@{����q!&�J�U�����X�>�, z;�!�$�6����@`@
��������P)����W�
���pf2{� hH-:�`�To����̐{ӊ�~n��|�;�
� 7K�� �0
��� �` �0tT
�
�c�!��鲍:тX)�5 �Q1#Mp��J�犎�f���"(����v���)0I���@�@ �`Pc'`�@q��� .����-x��c&�2"F	�8� + s�`wh� ?�z�k z���v��!`��s��<�Pdpd ��( 2�
���	 ��@����j-;�v@1��!��3 ����R-
�k�|w�"�g�!�
z�'p���p(0
(`�	� �0'�8*Rf 
�P*Vi-U�X	�������ndFJ�-��n�W-ơ�����mr��;�=�3� � �0
� 
`�o:
�pE'Pl*�e-�+�I~2e�9r�Q�1�C�D�(2's�jwx���qm9��(v��8vSԀ
�

����	mZE��	� �
	v��0PC���r�*���q�1�!�2�&V�E���S�����#�|�,�����PR��AdpE���py�dE` O7��+�>��z���i~"� ��~�?vq�UÚ�C����o*�m|�|�r�
ݣ�D1��>c>�d
� 
�9w��0PKh���)�3�23�a##���.����i�>����0�и�%FV$��'�,�@��Hd0
.�Q�z�_�;A-��� ���;�j�R*bI��SY� �V-@s�6�X�����p�,9�K��:g�D�0�p����@	O 
�p_V����Ү�i-��$�H�bI<r=�<��n;�o����o_�'b�n�f8�}�PH�0s�a'dP����@����t �� O�`��i/��+����(ڀ��B8�wÃQ�a���ӫ��Ё5i�kp �,`�`
v3m p�@`����c`	��
V&���Q�W��q4� ��w�T��9�Q��� ���{>�>������w���Z;Pi��� @N � P@*��SU�ě�Û�%��&���N}�8%s�dw
lf�+��
�R��8�E���
�`��
��  L�	qNg	a`	T�
�0���F�H-���R��Q��5��e� _��Q��J�����7b$F�#��G�ooIz'v�A` 0T@
 OP	c���ed�
SE��;��Xñ�* �`CA]��4]B�nd�0�-��pwL�f�wq�E���}������ 	� 
	` �OePQ�Qp��Wv�v�Se���K��� ��;��e]��= 1U���;XcK�m�
[�o�+t� ӿ�� ��` 
p�pM`UPv����j�;����Չ�,�y��Cjb�C��U��J0ğKbA8�7���
��
� �m��  �<Z�j`� N0u0�1iI��B-(����P��G�A]+`���vJV�����`f��o���zpj��
���C�\0@�P��v@W RP��]F��B ����-��*H-����Z8�dJW�9����ό t�pq�������z`�m�-0q�
��<�	Qp���0�皮3,�*R�X���E��%�&C҉���x���h�oi���j���0��E�
"@�F�
F�	[���
�9�*����-SۮX����G�����D#Ã-���k-�X ���it��o|G���
� �͠��Bgx,�	�����P!��` +�;�΍%���Xi�	�%��>@%�����J�Z��W��$�
Cp��-`x5�
����PzK���0p^�����= �n*�e�5��fJ��ReUS�&mU�Z����g���
-�ώ�֍���\��g���P)�����B�\-\���G-�s%�fN[J�!�Se���2���8��" ���ޱ�m�A��y����Ȱ	�A�i�ؓY��J�v!�p���=/�+��M+�7��V%�S�j�ix���&v�8���
m�I��l�ڇ���
�p"q����]�p~��rG5���"��5��r�-��G�A��>����=u�q"p���u�l7� A��&/�q���*�OK �2SA��=1epQj2�{�}��7o}A�y������^��K�,�p�P}�rG�'nI`�����C6�#@Ծm2���-g�{i����;������a'���w#����9A���e(d8��BenI���(�C]*�4!F9�Ԣj��n�D���k1��x�
��
��o�D�-�� �`.1p�`��S��p� �2�U���(�t�q�2
�%=�o�vPx྄Kxw$�q��`�fK�@f�_FY�+6��`��6	�ѐ ���/�E~�𫰢��f���H�݀�H�Y3G�����ǈV8�8��Ñ#Fz��a�H���R�1��G�+��i�M	k�`U ©T:pw�쀑��Y�o]��"�j��nE�
Th�C&3�|�2DϏ0e���*k��i�*�����@���V7U�z7 �����Zz��=��0�nݏ�h�zg{�6w�H�C�kߡ�X�hU�Q0�9reX�j�~�Г�Z:a�2�;�.�����h@��Y��;����������]�j�g��,2����M�aD�vء�:p����F�Aj�5�Yc;a�I&����"�ʊo6�< ���Ak |��(=���*�*XM-ϰZ��qFJ�Ftޱ
�Zv��U�!�V~�����ZiL��F��H>����
����x���H"�.�J�O�๏3w��m���qg��D��Zt�DR�r�`�����ab�F�9h��<�N�OQ�� ���{jD]�(�B7��Z�jfܙ�Z�1�5�jYG�
zUv7IL�Rf*(�Z����R&Qf�d��ˡh��[r��Y�F{�KX|,�>���xXA�R̩�k)�`7��sh��������3oO|zؖ�RTP��W�&��ꡀ-�MS�r\2�t���tZ�7H!��YH�ݍ�^��6xji�Xsla�k������G�Qao��E� �j�,t@�38<�T��m�!����룬�*ݔ�yg�ut�'�M<�՜R��D��*=*h .����GKF�5&I��<{���\ ��NCgM53y���']y�y����
�E{p�%�Gs��5g��4S��^釸j��ۉE�����B�o[R-lKJ{�q�*4'��h�#-Y�?Rt�h!�A��|e�7~��K��[k$c�:��6��?�KB�Ӳ�E�@?~��k���X_��Y���0p�#4� ��altI4��
-�!o}l��;~5]Yp|��8Б65Y�k�A�Xt��%�8(I�Y��xj��T�R�#�c�2ю�M��p�&hCo%"�h�te�7��N�KqbV$Au�fQqK8����&ut1�R���@7�s�A�e��+q����1	v�#ʈ�;䑼]���q����G ���Srt�)g�Lk���(��$���g�����~��(;>��)D4��0R��5N�A
�Gp&,l*4r�;�����t���r���$�3��Br�Z�҃:�q�7.�*N��$$�Z|2y!Qd��ȯB��R�˾��w`[�;����+]9�\ƣ�X5�3�Yݽ6���Lq <T���_B&ߚ��F���: L�������x�W���@�M��{>*'�����_�d�Q,�|R_��n���j7>]�8$j'�ox�[Qg'�n|�5�In>���*r\�Ȓ*"���G)&��)4�z���¸Z��X�H��4We���R�G���c� �#�����,$cz2�$t|�I�����s��4�w4��U�����%M�S�6�&�YG�ka��M���5�9��]Q�Gy� ����jWNZm�f��o89��=R]�eoy㨳z9�f͐�n�+Ǻ�����;=��CO.�-t�E��z�)�W�[����*Ń[���H���_}����j�̽���J����'H��[�V�[wh��:�G֚<�4��3��ְ�D�M�o�K�T(�oG�9tC,��(���"���f-+J�>J�o�U�ߞ-h�Dq-��f�S�4�b�^8Z��XĚ��U��
8v7��fj�K���s�yg��r��V�!��<�F_��Zƫ�
V�[�e���9lm�����&�����,���$0��Zx7����Č7�� q֯��R�j�95�n�7Z�B~�&��m}�e�"����J'��g4+�@G�1	�i��I���Xb����wSC��ȯ���:�#���?8Ja�]�c���Ց�a�U�x��$vC�#�/4c�}l�f{���+yS����D����nJ)�ñA�	��e��,�c��;�]�77t�3��v��&�V�}h~�J�"�xc�+����κ�cF[ǽ�C����V���ݨ�Y
e���>'&{F�(�0/V�w3V�/H ���
�H��ȃ�0�	b�
(?��V�l�w������a�.E�u��XJ�"1'1?bf]~�{A,�p�+��c98�z��޷�uug�G)~Y��K���쨽�ź�@�#��<ֈ�n��i���ՀuLp�P��T��y45��;�g4}㸆!�g���SZp����1�+���Z��I��9�R���@�c��=t�=��Rhǂ��9=��7��h��X�S6�c�f``�Ի2��7��FH�H��Y���'
Ěn�+��S6��X r8���P0?�u�=y���������5��h�D��4���o��I(��H��@���I��pB��a@?�S:&�:얏(7�u���7]k.�B�Ӛ���6���D@�R�B��3Ab����a(���I�PB��W��T
e(��CH�uP��@(�8��<q���'b"�/|�XH�W Dv`�I�c8�W��ϻ��xşS=����[�pL?��i|Eep���������d D'D�I\��7f�t��>��/|NJ���$��F�3i��Zi��@N��a��H��p(Bi�H��X�� ���a`0�	��D�$l��n9DH|�ϋ�-DH�W(�Wx�W(�d��a�gJ�d�Q|JoI�oY��
Y=heЃǨI�h�6H� H���H�^0� �4H28�]@�L��40S�I_L��H����DN�C�Kw�/|�BX�*IǤ�D��DXfX�V���^@2 �L�˸�^�L� �_��Kp��Rp'��&�9 �'��&�;���'���:xi|d�Gd(I��Wx��Gi���T�B�k�j Kk� S�]�R�H�/\�B@B818�C�Q�(�'�'�O ( R�M9 ;��&�ڔ�'���"��(��*�;�#�#�:������DdH���y�D��d�FXT�Q�)�:p( R�;�@+x Q��h�' ;�P��(�P" U�'��#�P4��R5(�U�(@�<8�)-�3x4�#@"0U�<�P;��挅HN�PdP��T�xJ[T��:��@�Q#h�(�"�#�� �MT#�+�,�x,%+���"��(HT��*(�(�;051�TL8TU�R�:��S��0�t8�9}�98^���d�d��B(T��;ȁ*(�*�U"P�'xJ�TD%�30}�2x�:��:�9��;@T��0�=�MU�:xW	��6��SU4x�& �M"� N[�Y�U��Je�Pj��ˈS@<�0�&�D�[��*W:P���W4P�[�� �VS=�S�'�;�%=ԊUM�J��(�q�+��D�Q�K�@jL�}ʧ�d(����X���_�Z��'X�W5+h'8,�U��*@�38�(��k�X#�V�ME�:h�i=�D��P}U��=�!�)��+@p�(�GLN���ZViL��L�_@Q�X���+��P��;�|��i�VL ۊ���d�P}��S]R
-]�[Z=԰}�ȁ:��'���4)��-�+@Q��Y�����H�B�'�S���́T���3�����10S�S�=R"�Z��I%Uzń��T�xm��=��%��gE�:� �S�'vT��F��9��4O(��̵]#��̥\��M"�U��8ND��D]�%�V[M�ʥڷ%: W;�Q�*��I-["�+��R�� ��:��&hL@?�3�}<#�����C8�T�'8YI�<��,��<�6�a"��Eл��*��ʭ�	�P�T+@��PES�-W1�bM�P���ߤ��%��  ;        � 
koala.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � �  d x   	Bildname  koala  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � 8�*\Ȱ�Â 0��I2a��!�81X�N�B�<HҠ�J���r�˖0_ʌIs�A�+Z�HAX���*�D��2�^`�&XR�5�ڔJujR�~R�t�g������xQdĤ�֤�h��۶p���b'�d�Z���(Rk(@�I� �y&G�ǘda�;n��0�'gF*��W
_=z�(L����4
&�Hf��2�y�oC�l�ź������[^��s�O���N
+Kl,��e�Tq��?(��M�/8���0�̻�����!�Df� x��Uf�`���\�u2�%��єF`�U!ida �O�mg�bK7H z!E�,�Ġ%BxTIM��O�t�0��LufAU�o+}h�A�A��fGvw��H ��h�P ڃD�GW]s���t��7ـ(xVM�}W�J�x0F�%h8�'�UNp�M^�x�'�}5]Xu�[� F�gQ2j$��h��Z�NA��VR �ADM4F;5�X s�e�k���z������y��jɊY�h�Q@���Z��ߍv�W!^��XA����L����:ES�J�x^0�j��S�XP�]z���QY�O>�4��F�g�<�ʁ'.Zy-�).��
 �[�`X�ժÝH�喤�5і�v��Yo�g	J_'yN������3b00Qs{�iŦ+�,"�UG�V�#E]y<��-^���Ur��*L�y�.h��|�%�¦f+�#Y��\a�ףF-��o(;�G��i	�:�0ӐzĢ����;���� ��\�ZF���lEF�6�
έ��K��I�+_�+����|��騯��}�}m�����wY�O�i�g���
�6A�����W�L�(����~zqP�R�U��,��yh��
�D�CgǦ�����g�u�ܯ޺���az�#�?����}+�sX�����%$���4��t�'�)�G�E�OUIT�
`��w�8D�o��ۿ�ǉ��V�+��ũ�x�.^���<��hi}�)���+��#��Z��`t:�qpmĻ��^�,PG)�Җ��,.iHl7
��D�KxBq��/(��
tK���s����~}CbGƷ)1o�h�/�/9Hq�,��\D����#�A���b��M G�0Ԝ��:
BI(��� P�4��zk�ە" ��Ie��߯�U@Na:��W�@e�R��{���>�)X���8���s��(��6n�S�R��@���,K�˱|R��X�{�̂��ʻL�o�[� ��4^�tr��%�����N%���8�ԽV�N�!�~6��Š*ڣz
�Ǿ�S����W�:r2Kw�'��T%}�ѝXZ������'4��"�C�i�}�,%*���MVot͋@�20jj�O�SNը�«Bd\`���,�UnJ��cC������y�#�w`"�N ��^�":R�{��Q���V�3>q՜��B��GX��JHG�9 �S���Du's��{%�Y��4��tȊ����A}	��J�W�7�`�L����arRA(��8���JkY��'9Q�4��.�F���	�ja:�9�v����&�Y\R���ջS�t��JGDё���)$�������Z�
5KYPjbY9�  ���<�!0Q�![�e�N�)�k$�Z(g�;��bL$�m�'TK��U��'��[:u��0&:�k	^Bi�"���_Z=�Bq-�0����Ta�
 J�@��.�R�縵_a��F8��	ONB O�:���:����Ql`�Y�N�U/��FA-��(uPvu�ϻ�-�}o�V?92u2x�y�R�V]��h���~�lU�
ζ ��[U^�!�T㌭�"��W��Kc{�`�u���8��f5�*]�(,k��h ��#����J�R `��&���B `��䬑�)t�J]䲒	��`�3�*+�D4B
�#�Ց�&0㬌�O�e���w:"n���u��5�V��Z����8�3�p)k�1e�n-�JK ���K_ �3��$�� #��CD�R�0 �*nɺ��]7�n~���6eA�`��0}���>�h�'7�kkd�� ?�Ԁ띞��<���
F�
��
E[���N�8��t ��9^m=ľ $8�Qb�.�KΏ�j�R���5�=�Җpԉ98;�Z��uv^�ߧ���h�5P��F����P��͵_����?E�fE�j�[1m�W��ZZ�\����u�-�Å�XtO�� ��O��>-6�/=`�
'3���"9ʑVMƮ��W3YL��	�s�ĵ_#S\�w�*���H�*Yy��N.�m�_�Ce��:9�$l��T��& ��WO��9y	?�>��vJ^E\�
Js�8Ƨ~|�~��"/�0Y�'ֱ 'J?=�&Er�~�|��[R/xR@,V;pCR�9�&�ˇ|�D<��$�."1u�wÄf���uZ��\��K��=��ZS/O��Y,zw�p}�ti�0�"����	�Ii�y�R+N`	�Gy�q<}��0�3��"��7� o���NӣDR�/%�$JAdq�W��Auv"��4�fWvYrc�76<�b��_�rN�Rk�����F~R�d,1�+.���7LF�I�%��r�9�2y N��D��p��'�RW��@PZ�P.��1�����(2rn�y�X}�a	�/�w|ȇ|�I=�.�}f�=�u4J�zv2�ԍ�f[f�Q��U�sa�gD>6%���%�S�]hH6tB�E3�D<f�~��Nu�7��#�!W<�w��7|�C2��N�@<�d	�x|�T;9���U%�/��|�e5��Ȥ�-� �p�91c�:��I��"S�~WR��B� ��,1E���cV��b�HI��V@�L�l�7rE�fd�C<l`N,�,��g��TL�d�s@U?yOX�7�s���$E=�.s1��9����lБ�Ïfy| >sqC�I��'�H_�d��i��ijt��L(qb $�[��1�#t�WDi_g5x��`_>6�JxGȖB�Ċ�Ș�wN�P4�!��62�O+ґ� Xf��F��#��8Z�[gI�}S4G�%E�Iw�5\dY�[�%��� ���@&m0:�ّ��O"	��Y٤ ���O����H�9�^Hڧj#<r�)����!w����9:����;�{�����!��OXR'zT;9,eq[{0F����F_Uq���Q�W2O)��	�@{*����'$s�t�t�F��C��"qh�٣zb�H�22��W�3��~��l� ��Ex�	�Y^����*C�G�F��].����h�`������F�q	������l����� �'E(Z^��B(}��Ǵ|�r��U�wq�Ш�$�=!+%���颙r�������#����[�4s��{CG9{,hK;�!G��P�Mz	����0�=�qY#�I<�H*c	tX�C�=���Hl(8���ƕWGi�%�cc��f�!�Y������sYs���j���� �'	8��7\}ɒ�xN��a���#bC	R^�3����*!A�����:���\G�i	���W�R�	#~� ��ZXXl�O�I%��~*CQ1���y���8��u�j��L��o[�'�T���m�7��u,����=B��p	Ǵ걨�ڨ:�-��7U߸9U�b9T��w�2E�#s���;��,�ч	wH��'M����T-���^U����{�::��1,F[�E���fV^�#��(C�#d������l��� ����Q�u8x�7yTD��	MQ�HS�=�"��;��w;d&��%s	���9�������cNt��SX=c��Hf�h<EW�q�Q>�!�B�۸-b� 	�)��� P�F��3L��<s1��|��O=��J��ˁ�D ��򐐠[ԉ�$��ܳQ�rJ�,0�>�eFWIEؒ�|ٙlcRc�C�h&��!� 	�+��� <�cJ�����O�¿�b2��X��7���KX9�QRF��[������*Ӻ�uH%;��vVz4���)��]��X|9V��Y�"a�!�����[��&�9�0�N�)���tB���D��<��X.L���*9!)f;P(P��8�	�D�����Bǘ�F��QP�-g��(<�E�S� ��w�[�h�aª�j�[�s@�sR@�V�j\<v�3�B�t�jzy�<DK���K"$8ܦ�z�� �[�Ɋ;�b��	V#����j�C+��"]�,�J���B�Y��CA�:9J'�L�Ǽ3���%��=���|�kH3W#�ҹ"��]!U{��au�!��R�������yy	Ǭ��H�	���hQ�G��S{�Blxľ�ϭ2AP�#a��>�R��{�ӊ3cz.�U��D|v��� }�5}be٢5P�7sDã14�	;�U�IaK�A�����~�ҢLE�	,g��|<�L��j���4� \!4��Bnk;�UN��
��U[���%�ƻ t<�[�ZcsJ8YA
x�Q��c;���$}�0F$Z�P�_��u��g�t-v2�Q�2T1}� �wc��6����@� p ؛��Y��?K���~z-�*�ӧ���+mЄ,�ͩ8Н1>bca� gݱ��-rA�9{��d���«7"�>Q:�-y��������R/�1 �`�}�y		��眚ԹK��u��J�6l��շ9D8�{�D�9:�Rca#�4���B� b�^x��D<$��n�Y��c�_�-�M�Vb��ę��e��&MK�r�kptj0w�\�k	� �{��lV�BNU�UqX�����7��H2+��1CY��f����H��$��h�I
#����Q�TP����=b��jMq99e��}(�.�;4�;����hZ��ڑ󜹈�<�5a,�-ցǳKW����4�'}K'�خ���+O�K�r�Y���h2]�X�&�:r�Se�m-B5l����h�y��)O����D<ٛ�d�OL��-�g2�w�zr9o�'�F��d��e��#�p���"[�l��������~]�ugp�����'��X��3�x<�˪
'�rؕ:2��	O��^T��"����K5�p�p�اG�2�Y��;�P8�Q�a:�Ԥ��E��m�E�+�a��V*��TN���{���2z���}�*��:�0��j�+=��ښ�i����S�]�,�89+ԩ�7�x�1����(5B0�q�J���l�bA�&���-G_��� Is��h�e�Phζ��q�A�������A��DJh�N��E&4�UT�f;��3҇��`��z1+M�$&<Bק�zr�vȉ�	Z@��)��yɏEK!^�R�b(e�7|)�ڤ��L*�zc�R���q��t ȁ��9kʑ���	*L�pi�E��:�LX'�!)t�$��GO�����0/X�t��N�6����`�0�(���8�h)����6���B��X$	q�K5;���$NOc/tBVa�Xd� S�]4G�v)BI�AUN؈AŠLv�0��K>ehuaA9�"�J��Ja�fI�L�%\���b 0sWE�k�p��U���'E���F�T<�Clf��qk��I�>�l��RvTi�%ݻ#�u�$L�A�<2<G�D-���2�#�����I<J���p�N��<AƓ`�r���`j-/�~���K|�(4������6�n����*��"�h���jh>�(��k��<b˥����
��"�"@�#r<R
'�&xr��~�(��z���
�"�� ʓC��K�)-��q%�rHr��鉜��+i�^�"�&P,J༂,��
"�F��Q]"�Glt��H��#d.`-& ȱ��y`�/^�R�ӣ���E
&�"�2�*2���ё��#�:��,��)�I��-I�t�O�#�.ȡ����ZҨ�PQ���8��S4\bIr/��$��<d�M'+@Fӗ��],!�Ӻ*jCɻص��#!K�1��+׾�pͬ>]y�Q�
�<���H�C||	�����Kx�˦`�#��p��L����J���Ԥc�I���ټ`����5a,!P%`�Y�N0==�ʰ8���Yk^�8n�1�z1�|D��qdhg7�ԙ,X��@ҷ:��(+'�z8�p�ZW(9Z���;�κ�J�5Q��:4rv��5�:��	�S��E�dt$���O2����P��-��-�:d(��ގ>�	O׳3�^�6�`��t��7� ��3�o���R"�8M�9��N:�#�*����:�	 ;         
rhino.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � ^  d x   	Bildname  rhino  (�GIF89ad x �  ������sss���������{ss�{{skkkccZRRRJJ������JBB�{{�ss���ZZZ�������sk���)))�������{sJ91έ���{�������{k�sc������cJ9έ�ƥ���s����{scZR����{kkZJ�{ccRBsZBR9!���{skskcZRJ���RJB��{��sƭ����91)��{ֵ�έ�1)!ƥ��sZ��kRB1ZB)J1��{kcZJB9޽�ֵ�έ�ν�ֽ�ε�ƭ������s�sRJ9!J1�sZ�����s��kֽ�ε�scJZJ1�{kcZJ���ν�Ƶ����ZRB�����{��s��k�{Z�����sskZkcRRJ9JB1ccc�֭�Υ�ƜƵ������{��sƽ����ν���s��kskRkcJRJ1��{�{Z���ƽ���s��k��c�����{��Z�֥111������{{s��{sskkkcccZRRJ������JJB��s{{k991���11)��{ccR��sZZJ��kRRB))!������ssZ��sJJ9kkR�����{BB1��sZZB!!��{��c11!))!!��s��k��s��kksZBJ1)1!)���s{kkscRZJJRB)1!ZcRJJJk{c{{{s{sRZRZcZJRJBJB)1)RcR9J9!JZR9JBJRRBJJ9BB199Zkk)11RccBRR!))1BB!!)99!11Zkss�����{����������Ɯ�Ƅ��������{��s�����Zck������!)���cks)19{����Ɣ��RZc������������BBJ!!)  ���   ,    d x  � ���'����*4Ȱ���Jl�p�Z��ݵ�=��&�d5v'IV[ɲ�7o񼹔/�˘0o��w&M�9_�D�s%P�0c�:���qPۍ�ڎ�UqX�a�*��V�`ˉK��ٳhӪ=+��9s��ʕ;.]�p�΅����s���Cw�]����Gn��Ą�>G�e���|ٲ伃GF'�1e�����fn�t���N*m�~��uǻ�������,��q���}c���s���ݻ'��ص�׶u�w��u�{�*�vy�߻[��>}Ԫ����~}��򃫗�������~�ԃρꃏ�����
ֳ΂�3�>�<���NXσ(�$��K=������� ����<6�x��<�2��?��Y��>�X��I٤�G���8�#I�B@\nI��� �cf@&
�� 
���(0���n�ɀo��&�r�g�u�ɀ�kFp案6 f+4��BJ��z`)L0)�0���~j��:j�"����Z�����
+��N�駷�:AD�k����â�A�JꧬN�*�"8�,�"�jê�V[��t����z��������6���r~�.��l�dpm��R�����|�Xp�ˁ,�� Cp��>k����j��� SP/��z��S�r��zˁW{Eîάm�Ւ{�o�)� c�ж]4�d�@��kɡvjC������j�W���o���B��A�d�/�C�]t��F�@#2�]@g����f����:�
��w�W,��&O ���r�As��d�[�
(,-�#2��f�B���{���j�[Iݚ=�ɨ���� ۊ{ېw�y�����]t��f�H�дШ˪5ւúB`�-���ݶ�X����sJ����<�����Bw^@#��/�&S+��ªF28� ��r�p����6��Lk���H�7��QGs��ƶzX�Z�f��#<��@/V��Gt m[��4�{K֧xwC�Y�d��
U�V5Ǖ�ox�D0%��d�;�
�pG@���b5 ы#� �ڛ�4aC16�R	��V75��-V��cD���A׮����k���
:�80��H�1$ы5��ջ`��?��jkV�����g}m�6�� �G8bb�D��İ�}y ���3��dD"����%n��{&�	��� a���0V���c��p�^��%�A	J��n���g7K��t ��hp�h`�� 6�y�ә:���ú�Jh>����<� N�a����g``�|��@щ��	���ʉ�K`�k��<`'��N� EU��'8!��(?eӖvs��|���R��4aH�� �u`kH�/�P(hS�O�(J@Qd��OA�0�p�}iFŪ����)-+Z��Vh����#FyT�t�v�Y9�V��4�$|!�g<�P�&U�JQ�R�>��<���4�gը6��v��g=�g���fse��&zV�jt�eu�-_I+������(	f85�:��b��lrs��&(�@���u�Z��R�F����v��<x��u)K�
]��6����r��h�p �[�.6�c����س�`�D��Su�V�l��Z��n�\ͥ&�R�j���}�JQ�1�`�� �
����X�~���D��V�3��fK��Ҫ��@>+_��\��x�%�I7|�0D6�|-+�=PKY��&�o�b(��1�BU��Ty�Ms����f�>9�W(s> �Rt�c/LS>�@�L�TGT^ުHI��S�;h4��a6���*�l6up(1�|fsc+�s �%(4����V�aOe?P-���]F-�����n���]��ǜ�BϓƢ~,�3���j�@1�]�����3����_�e؁	���-<��[����a�X�BF���m�4X�,����l�s�t�5(zk�Ba&���LQ<���B�#�؅�;�h@�I�]�&����2������-�ޝ�G��nU��J�%��	luiY�za��v�����#|�	��@����=B��`	�n�y>]>{�Տ8�uJ�0���9?�n���\�n�:[���?�Nx��]�@O�0�� .��J�{��*98�OGs�?��-���Og�K����J���������	=�``����0��p�u�_�}A�>���|���� 
�8>�4��c���e�~���Ӂ��:��S�������`�_�� ���
}�(���5~��"2�
/|�t m(�|�n�[��F�VnO A�pc����xn
��wn@WnK�h�\�|�Z:�"`V v%s= l@��; b���I�	԰-(mA(m�6�EIH�Q��(?�L�(fm?��Z��LH�K�}� 9P,� �!���"i5�}�=�o �L�J��	>�I yAP�Q�u��Ȉ�������O(�L.�b �S��T����^E���8�I�
<`	7h8D�u����T�X 
��Ӱ
! E���hF(�Ψ����H��E�Op��X��hm;�9��G� )pkP7@?�ʐ �H4�*�
f�PP\��X�!���	�x*pA0�x�Y�
��ʸ���y��A�g�Vp�V�Qhm��X@P@t� &Y ��*�Ԡ ^�e��H�l`~�:�_��8�P�v0vp�iA���6�� 9�8Pe�B } Q�& n"�3�T��k�^�@yI�4�4�_�~�X�2�'�3`	��	@0�� �mNi���y��ܕZ�U�,P!��9��9�g�+�0I8�Z/�X`���^^4�D�G�	ø	 
�` ) �4 �^�!@}@*�l@�0��I 	����#�0���I���,��� k`�y��2���]EE^�G`P�$��#������`����4�~�ω��� �@	�	Ȑ���d�cp�����8��5���=�)�c��U�Þ��� �	����  	�0���p *� 48��U�
֙I��Y����P�"� %Z7^D@��E!	0� 2p�cH��I�")@) ��	4	�0�0�`���
 BJ�8P�^ 	�*�N֙��4�!��O���(�P � 2P����9�2`��xj�p'ڞ�y�Ֆ� @�(X4  
�`	Ͱ � Jڠ3@�{93Y�0	���| ���ڬ�`� �Ъ����Ep cڥ�i��� `p�Ej�$�`��P�o93` 4�N����P��� 4� ^Ы^��m�q��
y�̪��ʍ(&b�Z@�j��U7I_dZ�$��/d���=��^�:��^I�*_�` �)	����� �@��l��5@5�	H� J�	V��٬�*��ʥy�=k�@�風x�%���^) �(@`�3�0�Щ	 թ �������_@��	j���[��J�˅A۩$��Z��ɭ�i�&Z�#ɱoY�$��Z��	G� G��u:		�N*��`�_�*�	A�	�Y+ж���VZ��{�=yԥ�@ﵷA+�|[�#��@��i�oi�qJ��ʰ�p�N����HP7 	����	��˗����Xd��F���F���:@�Z��x�y������i��		�� ��KH����5������ I`	M����+��tP":��Z�w���y��Z@��4����#i��y	Tk��jE	p	2 	�9	 	�:n��_
�� �`	�	d ��u�|O�
9��:��d���;��y��۱0��)p�����)�� pp@�3��~X_p�0�p4� ��	l8\�z��x  ��p�p	���y�2��_�陞_Z��L��Ȱ�z	�z	AL�-{0	� 	�X���4 4@hk	�`	
 	�
pK@�8p:�� 	�P��ʦ��?���Ÿ)�H�����^`�m���*�l �X � 	� ���z�3� �d�ɀp� �@`�uĉu�`��:����y����ι�TX����U[��	��3�
�	�,	�������p��Ӑʀ��<м��dł	������@�n� E���š��\�4`�U�	�J����^3 �)����GpԀ��������
=�0
 �0	��O�~�G��� rJ�s�̎����ќ��z�3ݫU�ǆ;���Q�^S+��j ����@�}%� �	�P��0��p Ð;�ƪ)-�H��)P��Z��
%��g��3�T�To�̦�)��*@�;�W�I�����pm��l�P�P�����	a�~��`��	���X�\���֪����Ӄۺ/tTS<�&4���k��ź���p��0	��D�|ؒ ���'��g �-����^���E� ����¼2�T�u��"�t /��K������:[	� ���(����	� � 	|�|
��M0����	�	p���[���� ����:]�&-��
EL~�H^�ej��)��ܫ�l�����)	�0�
 �3�Ж�H�d�W�W X��-X6	�p��k�9ݮ���^���q���i�"���HN�����X�ͼ�}�� � �JV�N����@�p��n�
��K��,�����|�p	���1�[Q<�/���h �]��=٣�S�pY7[[�� 	�`	]	�0P�麪 �pȰ��銰|�ߢ�����������>~�������f=�QlJ�}����y�Pӎ� � �����^{�0������� n0r0Z���}ܑ`Ky.X��Ϭ�	�l�Y�H��S�B���5�����aM�X	Ͼ�� ���p�@�p�@��E� Ҡ��n�s������p�킕��]�������^ ��灅�ʍ��թ�]���� �:�7���Ԑ	jބ�����^z ��W����o�qz�z�1-�����*�>�SL���ʐp���*ώװ֠Ԡ����������{ e`8�̮���NѮ�X	H �É\��3 �X�����ަ��	�>�a߮�Z����u��@�0�m?�?��,�{�9LQr��"�Nɰ��,�-[�7ڠ�	�����?��|��^z�������6��0k��e{g��6y	�e���߅�5��:t�A	�H�"�Ap��H�$E���LI3!�J@$3$�)A�H3z��I�f̀T�$�H�p��Ai��u��o�È	1RS���4e�t���ɘCw��	�$�1����hQ�WQҸI#�LIȐ@2�i��S��,y2f׃��DO[d�l�l���PQٰiÔm��g���R	ڻw�ʽ���6��a�4��<YR�P�L�`�$�H{H���2��d��8�bjk��-��~��76�Sg�!bd.���c�N�s��:�hB���d��,�p���ڋ+d��nj�Q�j*���J����[ō���;#�CA���#����G㊒�1�����nT�$�����zT���d��i�yg,�,�&�.`O�Rl��E:�0�(fDD	~tG	��	��3r��$�įH$�p/�bB⯜ͫ��C+Jm����hQB�"�:�@�D���C�t�c�S 	��F8���X��(U�	�)#S`0���E�)H��@�&�.G�����<H�c�1�Ì(�D�D����T�9f�f�QF��2L5QE#�5�8#�UV����&�"M�!j(�2��P#O#Y�xBl�c: �V��M�@���I��s��U5�r�8���j�4C�:F�k$�D��2-�I�-�DI[Ô��H�␐�آR<��gΕ@�i��&U���F�Tî�f���9�aʖ�l���+	d�R�L㧬��:g�\/��D�ǰ#�:��-�TH��d>�M�,O�&�dD�9�;�*�u��+d���j5��hZ_�+b�!��IO㒼�6��AIE��i�'vc<�h�~4e��!k��F�h�7���G�������ҬQ�Xi0��k��١�<��F�<z�͐Ơ�W0N�e��]�\i��i��c����>�V����X���1���-�s�X �Vu�ׄ(a�2���>khd� �tC�:��K�(R�����G��@���%�8$��Z����up��>Bd��d0s���IQĄC����O��P�H�:���u��f�:ї�n�.˚�>��G�4��}�H���U����_#/0��Qj=��C�X<p�!3\� �0����@H�."��(kYꐣ���Rc#;��<���y�f"MEF�GM�	�[�2�@�W �Ox"f��W����@�P��]-!�h�2.�����܈�@�m��Q�pTB�E�[�e^��%������$�i
A\��@"~�
S���4�B'�a����zԸ�+R0�y�ni��"���,Da�5&(Q� �c�Xk.p��XDK�4Z0<a8�	��(4��Kr��(C,!��1�C�&� 
�lc� 7���\��jS6�3e�M��	XZ0��Ol��Ϻ�CV(�W��|�(j�
��B�h ��>a	$#R�,`�ft��x�����/L�t�7E��c!k�J�2lJ�/lc��;�%�E,��$+L�
@�B��'XAU��W��%Z�iDd_P jp���mKw[�,K��o[%�A���:j��j�6����&�#̱`P����hT�rB��&�PA��WCb�fq�0X�,����dQL��]O�K3�4��d��*��]|B�( �0��
--�X.T��3����-laX�B���D�鲛%Y��0oY�X0�T4@B.d!
ݵgKf��5Ҽ�q�²��%<�	@$�� �Dq�����(�{	�W@��X�'^��,�B^ �(
Z����ǈR��X�LMPE!p0�Sp$�[�(d�`�"��T�v��Ĉ���E-d�3x ��*?P�b �B��)4QZ؂j��x�6�l���E-Kx� �aD!`Al@p��D)0
P� �hC ��,	,���B����V��>�J�� {�e�@��P�U��4�7M�P�G��K�l,F�
U��g+�0�i� � � A4��lz��`#�8�29\��,�q���nZ`<ޚ��TA�3¶�XÔlf�EP+K��#Tؠ��+qU���;ç��A B��C�>�f��X�RQS��^0oDFd�e�B�! ����b|`E*������X�x�"�l������$-zJvX�!g�!���
g 6�Jm��* 7!��p@���X��y��!���ܿo�k��'�]Nt"e�	l�X~���p� �+�nC|�g�B`q��݃8C��H��Q\F3V�S3����A2�C(jC��`�*�`
N�ñ�N�VЄHx�A"j���;�mBU�<4`C��B 4@:��1��<��2�5؄+飏��X �2SX��Q8K(�d�3�Q0�v#,H@� U��2��p8*V�iH�>�"1[�M @�+��2x3�OA�A����8�2������} �Mh 7��-3�:0c��XZ�I�@� l7, ����Á�+S��IX�*� _��&� Q�[軒Â��0��'8�T�51�(� �f�e��§NC >D8�<@�N`	Z����=h7ƹ�3聈�� �,�� `@����i�8��H�M�>P8,84�A��D8���/:��O�-:��& �+��R�SXNH�(�+@�(d��j�i($��<��� �H3�2���/J,A�8��!�m8�b�(Z�l�M0�Bȃ3H?A,��8DP�&��k���#�T���6`����	�UķT�4(3��R�^��~$3�9A�<3(�1@=�,`�����љ}X�(�,��L�Cй��=`�ȃHB��+�=(!D�P�KP������ 5�@b$H;�-}d�j�%;vc-K��1��p�AB� @(@��K�����y�i@c�c@(Z�_pb�7��>0O`7��N�L0��@X���;˼���\JG��RAlIñ /�|��\��o��,��/�,�=H�+p� ,��IX��q�� 1��2�Kp1N0��� �P�MT�G0���=� �� ����H��������6��k�iX�NP��ℸ�;���aL�=(��,O O�	��y��M	H�^�L�[h�<��[ \0O��K�\��5ȁ5X�R(��ذЄ^H�y�d��GH�f�5�Dv{:@���`8ؙe��J(�̃o3�7�=,(I,(P����	Sk�c� mX_���>0��\�$�I��^�_ gc�AN�����Ä ��j��h	�����؃6 I��X!1�>�xc�=���� SȂ=p���#X�a�����p�:�\  Lp�Np�_ REI_�a�\@L��5`�5 OAQ�*��I�@X�@x�T�6pdX8P�`�0����44WA��3��> �,�;O�UN�� I	<m�fXB�Rd�a�V��x�H@`p	d�_�w9Ml-H $L�dX*M� �I@LO�M�(�M�$X0@S> L��=����D\��=���ENPTc5O�fH�Ƞ�x�8�d b�_hd�KАch�����V�����H��Y\hg����P �hL�3���,���\���C�>Ȃ,� �� N@�xu��G��W��#��0x�ÅH�K�d��IH�P�f����H���=$P�I��0�d����ڼ�HP e@��Ȁ@�X�� �L�O��5 �_��>4�2M��f�VG�L 0��#H0�J����_��ט�P�x�h+a��R�I���p��/�5��9�I��`�ET@�K@TIP�O�L@T_8R(A���3MЄG�υa�K`�K�0p�}V6�O��a0_��HH��؄c8�J��MH�`@M!U�K��#h�qL(]P ��8 �R>`�P��XI��TT`��d�^���c؃5�Q�L�Jx�lń&&��P(KA�V_�Vb8�68�OxL��G`Y=��_h@ PPM�#8/XI8�� >�K��K�h�5�/���_`�^P f`ep$ )�f���  ;         elephant.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  elephant  !;GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � /H���`*\���B�Bd��ŋ f��0�ƅCb#�(S��1�q�(���&���Z�YӦ.�6��
F+��G�� �l��	;Rf��J(\ �CMM�~��U�.K��(p��	*���5O�̜���党Buu��[�q��:"�fY2ov���02c��àkW.t�����G.5da�����r���K0٣G��5K�J����<5�U�?uv�ے®q�|Y%伐9KW�Ñ. �&�<����z��!��05c���<����j���㐁�#[G-5q�T7,��V���M��M"��KN��uӆ�8��W����d��C�@�Wd(��k2i��_ ^���1KB�`.1�MLG�E����2�U�P%�S�D�����LI
%gVuC�#��Bt��7#i�7y��R0l�t����F.�8�_.wQ�Md@E7?Q M�<g��5�Al�M/5
Xx�5�T�z��?�D��-���8+���#����C%��ˢ�ɔ��89�f9���];W���:��K70�k0�B�(��a]F�R�W.����~*���9tq��G-�<r)b�7L���j w�Lfog�d�,d:)�W����#�!�,ts�NN&�#Jc@�M%��z982t���Y��"�2=�7�D�#R)����Y�S"�ӕm�b�;�� C�U�<��8�D0�jCeɘ.�䔋9y�K5�� �j 2�#-9\O� :(�;��LD9���O�e	k%��6�in�(����b���@��#�^00�X		M�h� ���Q"�=B�5�(�A��E�s�l�S��ץ�0:Ts�8�����X��8�T9���7���H��R5�8��J�k^�Z~K�=�L� 0cm0�B0� ��#��J��1݄�H��ȫ�HV��'�̏&9���!���Y������<g �2�����ḧ́*�BX^�b*]���P��f#�-����L$����*���QtA��Тm����㜣l(Q������Zpۭ E���nlJĭ���4�%�YM0
ؠTB?�ґf���Q��Lh�S�J�a�:J0��[e-KyA9~`�dk0z�Ws���1��bHi�A���O+zN��r���YG��b4��$Zcrֈ� E@� 9�"$j��]K�!��tT�&�E%���<b�A�JV3�0KҌ��������f���q �� �t恁�y�!=�E0���&x��3��O���� ̰�h�iTT�� ��'��0�P�����Q�ԐX�%ȁ ������������;2���Le�	\��.-�I�QMٴiD���F3���i�#$���*�@ ���� =��h=$:U�6���8�WsA'���Q@�{�%k��G������4\LI��w��
8��p!Je��p  V�H= `��`l�� �J�*6 P�˸��YL/�	���5��~�ԅ#V��ܐfE���M��x� K�m  ��B@r`��W���e�a�p !���y�"���S-yD8�H�i?�QI���oE(We��z ���.�����6s�@R���2��-p� ��!��=�ْ	``�d���H��sE�M[Um.��&���+*�	�X��V�0p���a~M*r��K�!�o\KP � �"��.�	O�׎D���@Hѧ8���w.p��^���x��-�%�`	K�8���p	_bs�D�o��5��HĘ*�K|f��pJƔS�tg5�C�k���zp��X�?b|��A���JcS��s����$�p�.a`:���m� �!#�Ъ/V�c��d��ޏW8�z����e�  �H��ą,~;AmK��%0��O[;�sxu���#�(& T� ��9���.�A	�T�����js�o~� bWV r�X�*�e@.�`�W_����.�`\"��C��0qطky���1#��#N2:�qғ�S�9���'�,��ïx���\�VW51����K@��ZF':�mWk��m�����J�ԤA�k�1��*�Î ��p�h!;�{�+S%jX;|��OW������t;� ��!ɛ�%�	O����LU�{e��,ؾ�8�9��%(��A\�y��W�[�:�����`�쟈��U�i#��C���hL�t�K� �!���%�����Ɲ�1�cuع��1������p����;�e�<�9�f,�l �ŭd��K�d�6zd��_��*°������
��^Yz�j@m��	l�W��[|ss�� �L1�H�B2�fA�im� 3�pv�c��[�~�||���ݧp�\�|av	�'���g_k �a��301�Ԃ�w`	�yJ�?�6f5f	�j���p7\�y
7\��W�|g�[k0�%r��[
�_r��  VS8J( 6y��~ �"hAZ��9&�ovm�~�|ƷW3���W �&nPrU'Y�ub9�[�U^�e%q����_\��fJ�	�.�i`�yS!��\�ca�l�vc��k�ml@!�l�����c#!K��M��pS� V�	��z�e	7��11�0�i�6��]�	wf0֌/�[�f	��i?�~!g���)�l�� �n�@N p%�X	%� xȠ_ht�j�'�瘀V������U�c*ri�lu���[))�cd�bmq��8X�%Y�U	�Pp\�HXApTi��(fc��p!8"�+o�� �0�j8&��&X�8�winGPf8���h	��[yc�YP�  ��WG�z� ��ŅOxwK��, ��W��j��Tw}8&�)�[ ���08��8|0Ic��~f�X �[���Wze��5�q78�t�J�1��� |�\�c7���&|���8|n��Yc*z��l������UX��XQ	����#ȗ�!����>V��&�F�s�j��W�[)H��SǕ��p�Y%����\ѓ�Yi]��4֕0��y"�?m��Y���RfekOx	�\��(�	G�:��%�ǒe�yv�w�|Մ��[���|5��!��6�?����jZ�זq��Gd��t'xt�Wf���I���c�F�������br��o��\��(�jz��Gɍ��	��K�KIgO8�� |Ggq�	���m,�| �Ki�J��ي(�q�c�*���8�Z�b�������g�V|7��.�[�i�����<��W��mq �\p����oȡ����Y��?Ԇ��i�(ȞX�����)�o���y5Ƥg���qFG�mFf�蟒�[�	��&����oD�t�7�f�
u�����p�.!� �f�������j���|k�/��q!Gc�fe���w��h��������Y����i��pt�P�5��.q�C)�gq��h�����fc�7�������ÇG#����uWw%�kZ�m��� �s�E��l`�z�������謬6u�:�	�pc'�0��, ���t舫�f�X�@����zmK��·����9fɒ����Ya.eqb*�(ډm��]Xwޖ��9渝8����ft�y`�t�K����H�f��o��Xx�	�����h�o�ov���|y�����	��I�>eK�p�YflʒK��(���j�Fz���qؖ/˯��N1zy�����:���|�f��8���9v�s�t]��fj0	
0N@�t]h����7Q��6���k���6��'|<*�76�rW�	����i��[.q0i�����pe6�Ӻ�k��ڠSK�"+�f:��Vc�f��m`���h�q	�e�l� !
{���GѺ�Ժ|�����K��u��w���Y��W��{����x�j�\@����> ���p���\��*�����Z�yKq�܅%q%����+�`َw��0�{Օ	�(	r��g��/<�SH��/9&��&�L���k�����~���h�_f`X���9�j�T�ħ��}�ʂ[��l	!���
�+���e6������y��e��8K9��Z��N����ä<�Ī˯f�(ä+��u�����	����_
 8�% �j,9����*��,� �p�p��p��x	���� �[a��P��(�>f	��oଛ0��u�p_�0�Vk�
��	|�֠p%��𣄜��3:���P�.�	��j�@� �f���S�j�p���Kʗ�l��[ �8[��Ya	��p�{�,�4*��� ��(Kو��� iZ�*	?
	�/�ؘ�:�3j������i��e]�L�A�ή��C� �+X�Nՠ�ԅM9|p ʐɑe)|�rG�rw�u�.��ˣ&|�y,��}���jĊ�Y���c��	��Xfq֍-��⩼�C�S��ܠ��
�yy��j�/qVq!x��m��(|G��������Zxcd6'�8�j�wخ�¼�ɨ���MߴM�#��hq�X�x)(��g��[�F�j̫�|w ������S8��l��ɱ������ļ;��ם��؈��uwC�j�(�#��|��](�K�RL��x(�Y� ���+���q�Bf�m�9|�خ���C;��%~���,�E^�X�g�`�Ҽ�J���\�f�QI|������d���+�1�pR��R�=���k�cKÄ��Jȣ@�^�R�j�GW���d�­��)�Z����,~����ǳ�ॼ�k�]9��G�~h�:��C�6ʍ������	��˗&΍�<�:ˈS�9���X�hg�����G�*�M�
1�������I7;��z���� q�N���ޑk������l"��`�cˆǻK��n�wȈj��ۚ�9AZ��[�f�~E��s.]�� �v{�X.�e^��~�e
�D�����X�z���=���F	�r� N���[���HX���˭�~���Z�A������{����J�FW� ��\��z�c�� (��ٺ�����Gh�,��*R�����)K7YPi!��zz��}�zo�ѵ��G~��M���|���,|/������z�v��WIE��ox���9I�\����.�$����IÇ�Y�A��`X��v\f�W� �������������ѻ�䬸�R�����J|�U���T��v����Kz����j���>�u��{�����x	�mv \AX3�A�"@ � �
&�p�⅊1`�`i�F���H�Rċ�����e��"V�,�%���S)�d�N&<��qE'D�U��.��,YRH!cJ��.��Q녕�Fz
zi�ʐ[�t��dM9��V�D�"�]��FPC�Q�	�.��U��=���"Z��N� �*ؒ�"tR��b[�����@�����z�Y1�`�:=R �G�B�[1§k�\���)o]/w
4���J]�'�	r�J�`�"���i�u�D�?r����G��>�3u5�,V����NR.��\"'��H� !�:�`0�j�@,��iʢm
L�J��E�5z�(��.���`2��&̚�����	�`
���ڥ.a������ ��0��!	���
f��j�+J,��vk��N2�ƗZ �Š��"rz\m04R6
*�Y�'�L���h��B$�ŌFb�	*��	���"a&�S92���/�Ը���ȁzp�'2~ �� �W_uU�WP�z0z�Ė ��_�{ /`�$�|)�~�4�ZR'�L�$�@�_٥&Kx+c�D�s��G�(� 2\=�h��rF2-Zt���	v��*
�Ʋ�\	Z�+s����Z~i� i�ت`t���w�E��A��c�-�d�	��|�a���$:/ �F]+Fx�y¨#��P�	h!ֵ)���g���eZ��E��.Z��=��,1�������Q�^3뤣,k�����]��'���刵��,ѵn�"�x����Z*]$�h"
ò�pH�F�?�Ē�Z�%س�,alH܈;�(C�W��1K�r��)��-r�\��W�-���-Bf(�������������@����6ǈ�� ��W����q8��W�`����s�υ�����K$t�0Ћ9�����Ha.ã�p����%��P�&���Ƹ�-f@���� w�S�N�	8�vT���"u<�n���b �o-k5���e"���!��Mn׭B� 
8�C��z@ R�)�%�  �!D� B�����t,d�f1]H6��9��4ZL(�K�Q8"�_A��n?���h��"BQ!B`M�2��%k��Z0g��q�2AE�e1�5'_�(Zy�5���k%��,`3S�%	��~pA2�Jpxf�?2rb�<�="�<!x� ,�uo���j��/���\ٗ�$0�z��"�C�bL#�`�A���`=�c��@"�c�c~f��H���EL�	a@ ^G��"���HfI�D%�(�D�m��K'f��HE�oG��F̂��]�!�<ZE&4L%r/�D.��x� 
�D.0�����b���y�"b@F����k%�H-h'H|f<@�I B��5�Q�#�����$k�X.��\��\-�p8��@x����"a���!��B�$%IQ�	S�զR D�zL0����i�cA��uBp�Z��<��^��i ݪ�@�XwAK[��>�z-�Ha�&��`HƎ���I.r	����$��pV��T����<0�R��U��`L);1]A'F� W�w�Z�R| �x"����*���@@���j�w�a����{�"!.a"2 pZ�� �����z��,��`� �\ĥ�9�S�z���0�e����9@�"&1B�����s'��J�!�}��U����)8�R>a[=`	b]�MqJIC:�D�y�@9�}��nO,��()E"@DЪ��}�u \�+��[��d��X�
*�;�)(��R>��6��U�?4�e�!�U#I:�� �˲)��H�ha���Z	�0N�$�vW�"�K�!�SW��0�B�@Ә��.	9&X�ABOʋ��P�2��
�G��T�tb��WF2W� (��)���$%)B� ����vAH��Jү�X�!:�^��|�	����0���a3�6-/C t����I���zԣ�
��pj��'Dyf�FB���BL!�˩ó qǔ��� ���[�X�FKX� K)dȒ�b����w2�rPQ�D�Ҝ�I�Z�����@^Q�SV\=D6���C!����#��ptI3�_���MΠ��Bջ�.xw�m$�1y�V��$���&����!��4��B���s�N�����6��b�S��-�v0m�#s��H$�L�yi�`h>���T3�H��qn��0#i;�uү�X~)>l�H*�ɫENp7�0�Ý"��T �/�Z$   ;         cow.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � ^R d x   	Bildname  cow  ,GIF89ad x �  ���ƌZޜc�{B�s9�c1�k1�Z!�J�{s��ƽs1�sZƜs֥s�{�sޥk֜c�kΔZ�cƌR��J֔RΌJƄB{R)�s9�Z)sJ!�R!B)sBs9 �{Μc�{BޜRc9ֵ��֥��k֥k��Z�k��J�c1�k1{R!cB�ƌ�Ƅ��RJ9!�{B�s9R9J1�R�ֽ�{J�k9����ΌZJ1�{�sJRB)ΥcsZ1֥RR9B) ��{�ֵ֜{��Z��Z�k1���scB޽{cR1ZJ)B1 �����ֽ{޽kcR)RBJ9ƽ��֌cR!�εkcJ��{RJ1sc1911)RB)!cZ9B9��Δ�kskJJB!ƭJ91B91)��Z{sJ��{��{kc9Ƶc��ZJB91ƵRcZ)��k��Z��JJB��s��c��R��B�{)��k��)�����s))!ssZ11!��c))��c��ZBB!11!!{{9��9RR!BB11ZZ))RR ��B��)��k��ss{1ck)JRBJ��BRZ!��9��1��!��Z��R��R��J��B��1s�!9B��B��B��1Zk��R��Z��J��9��1JZBR��J��B��R��J��B��1��)��!s�Jc ��k��Z��R��J��B��1��)s�!{�!s���R��J{�1��)Jcs�k�c{1s�1s�!c�s�)c�k�Bs�9k�1k�)Z�c�c�)��{s{k19)c{JRk9Jc1ZsBRs9BZ1RkB9R)9J11B)BZ99R1JRJ9J9BZB9R91BB)9B!Jc9RkBRk   ,    d x  � �	��u��K�aCu�h�����5�\Gm[��ȑ�Ԩ�VF[8K-ѢE�ZpQH5Q� H��@f�AQ�>����ȅ�ڹ[�\�F�^4�p+����«�H����c�V-�(�514$ХK�h2�o!@Jf���b�!B�"Uڢ�
f�Hr�;w	��
7p��_��	N����ީV-��?M�̠$�H� A�o�KR,Ybx��%F)d0as
&40_8��T��f�ڢW�������aǐ�إ~O^�7�|@X�`���)T��@(� ��	r4d� d�T���\Et�;��Sw�Vh��#�Z�S�%wYRFxl�>�P���\sL �<�XAm��7BQ�%FÃ�HA��a��H��3;cTx�|^>��3"<.�KE8@0��lB`�y�H A�o�e`�o6G���lp�X �rXx�:j��O�iU=�\�ex]�#�;�4d�!zZ@	*�Ѐ�,@�
T� P��H@���^0��j0�Z�_mP@ �P��`@�A���jy�iX[^�-����z�J�P@M4��=P@7ARw�Y��{A	�r���2��@%��Z[�T���="�E%UW��i����E���D�`A	>l�a��\B ��P�*	�P@] l ��Z�5Ā�X Jl��%�{{��\vj����0`��.��F1 �@��[l��0(��`��K���⊿�Cp�.�C/��A;#i,�����B��a���c�=d��G_�@ =4Q�u�F6��IPaDd�6��`��F�P��~�������2x�C&�Sk��3���$�:�M�U���s����+\�a*0��Unp((�q��|U�8oq�r^�^�y�,z���мn�2H�j�Q�НO5��e@��x�//LG:�8��>�x�,��	h��� E��
p��H��`�b6A
Vz���w��@zS��p����P��z�Ӿ��aE�0��}T"J��<��&(��l`��AHt$ �����t�@>� j��)�Mf9��=�7#DQq�4$W���H�e�Qՙ�|�S!HHQ�@ �	��A�v!h�(p�$A)�B �(�H�9��(���up�����2@�<��m gF�2�� �s��@O� $��P{䡏W�P���8X�d�C�T Y� x�f��E,�Ed��p�"��9��#r #b� 2�@�J���3��"n`�~z��0��,�)�<`8�츃�`����$ A9��h�����c����+xA�������:��� 	��,hBrP�(� V1��l �-Z�=� ����yy� �z�1�~�C�`G;F�&$�
��$*Q	3�M!8A�B�<� ���2y��F�C���3���!��6 �#�0
,�S A̐�8`F� �@��:��\�8 -f*LID?��#[���� �3�!�@���@�u^F��?*�<��"΁�ED��j�dt1��:��J0�ā���8�p�{�h`�
�@q  .�8����=R����c`A��4��
��l:l�H��00�Q�Ѐkz��耦�a��9AG-X�{ӑ�-�b(o%(�YG��
�B�ވ�� A%�@�Mq`,�@|�H�>_9"�=��ΐ�J��
���y��$���y��0����m��M<  A���(����D@@	38�9p@��@Tnx /�A�z�4�)#+�'Y�h�	T�D������8�#�����'��ImB�aA �&p�P�|��# aH[�8>%���!�u�t��/R��@;H�B���i�6,
��|�9��Р���@�F��dBs 'l�eH�� ��@S��$7C�Ѓ7�M����,����p iġm��4�G3�ތp�eHB�� aOp6ٕH�V0xy�v��)"�2`<0�)D�3��g@C8 h�r��m�qoQ=�\�� �]�-�1x�τCG<⛁�B"�.vf���40�.�Q� �7�A��D�=0��4AT��0"́䣶A�=�J��6��m��	$����0c�� �Ї��a$~�� �+�`��!���< �0�Q��%�=\͌�Ax>xC뉀	�����=D�n�'�$0�7���> O<�{ ��|�|�����
h�����7hs��>��E��ad@�$j��.�q�6�j �u0��C!e��{��{d`{Pf��\`�����|I8G�|�Ѐ
��3!	�WS��`o �[��~.'���?��C�Fd�~��uA`TP[�:�@A��z�r����{|���yF��|�HHGȀ���O�|�8t�`���p��P`P�j ���2J�c8���D���uH0�7A���W�@��6�j=����.�Àx��|5���Ht3!t3a	� �p0�pD�����rx700��r.��D@	��oV�<8	� ~�;��;���x�o0F�h�p|Cw��7t��x����@��x�0
���tg �q {�=�84|� �q���	�Њ�ă �����8�<ƃ̵�S����	��W6��H�|�|ʇ�5��`	��`	��q_ב��>�"P;6�o��Њo0��F��:��`j:؇D�ca�M��~���S���7Yt� t�Gt?Y�s9t��"-r�k�:�7=020f;��f�	A��o��ƕ:hf����c{�7+y��Iz�F�X867	�p��=�����@�C���	T���k�S�}��ٗ�y�S�	iI2��Yj�T�zs�������ר�.����|O�x����y�Ͱ���o��ؘ�(c��o0�ؘ�j(�\i��V�����w��ȃ:8�d��D0��)�I�PH�>Y�	��׀�`��GiS 60>0.G�����	�w�Si¹�'��4���8	}9���ݹpi�uـ�Y�@y|z�C'����g�@/>��SY�J�ꉢ6�����;���8��H����ީ�qɟt95Q���<9����� (��{`vo���6�|鎳��i�6�k���}�7��!:���j2���f�0t�Pt�xYʨZڟ�t6i���\�\�`vS�=�?5��$:��ڝ����%�7;֗j�.��A��z�<�x�٨�� ��7����`��If7w�sr�^���k �ӊ	90�_ɡ��yZ�y:	i�$:	;��I�rYtΐ�sy�C'��
��I
]�i7[ =�yZD��~�(���\`����k ���ڪ�Z�&��IAt�7�qy�Հx������{�����{XN�rN��}9�i�9�r`�/{�fp��z�x��_�M�Z�����k�������|�X�3]�{���=��S!Ŝ�9�UP�)�;��
����$�Y'�%j�y�{E������j��ʱ�p��0X�x����\sGvܣ�!�VX�k0��
�I��y��Z�O�H���JU0� ���Dg�FK��`�ʷ�}K���	:��o�}9�N>PIhx�5[�q���pj�I�[�ʃc۝��	r�![ )����[��P�	��k���~�T�2p72�E�c���֑6 �Q�����	�� ���+�/��q��U`����`��P������[	��tk�r��0
��{j`9�$&kF 9�����U��/���)��
��U�
�9��)|������်���������|�:���`h�7Q�!�z�@����:�z/ۻ���U��	&\�
�S��{�~r0
��t�@�rY��Pǥ;��*�[�r9��y�g���35�%�5 k+�u.��gP��),�7;��Y��緼�KǠ��p�M�`��x�9,�P�69� 2���1p�� ���K��^g�g�ɞE	Y��+�5�|Б!읔��E��z��
��,ޜ����)�6���	e� b�*, B� �Ju7�^s0����ܗg��a|�`L����ʻT�����lßk�t�Q �������hPSR�3�K������3�VX���ϻ9\	;\H*��0K��
r�	��3�!+���n\t@y��
�W�r=��J�����=C�Ө�f�	�ϑ�n+L	4=\��^�+�/{�0�rq�qxE�ʠ;��@��`�Ԑ|�<���@
>�R�6�?Q0��Âd�s����b=h5Kj��|0����l-�����Q�������ڨ�9���|�cp	8�26	u� �6�y�b@QP�ǜ�-jʬrs�	�}�a��n��r �ɾ����4���+�s9����Jtp��
�)�|�ruPWu�����rQ� m����	�lc������F����M�9�8�B������Y�EGtH��[�����3�:��'�u�K��Q@o��6����1=�֔�s��������0�9���{ލ�հz<� ��
<�``3d�2�g�e0	~�o�n@|��i lsP����i�6~���=�՝�6�N�F^����Y:�i��0�(�ΰ�p	N0x0���;F�"e���FxPA0�i�c6���Ϛи5K�n��N����q�Ku.����J�=[X*�� �P������Pⶬ"��x�Q��h6���Lӳi�}�3ݜ}�D �� @\��|��� �E�����
��0�
���te`�0�:��	��	�h�v^.�����7N٤��I�f`c�N��I8���ul�����|��n��G�`�	x �r ] $�|P�ս���Y-n����,ꦮ��Lਞ	k�������0�p��������J���� �� �E��@
~������,���ȭp
�㬸^������4������EmрM/�,�u,�C�� ��P���`C'�� eP��>_�{@��h�G�i��UP����=O�r`�֑o���� ހ�6����Fl�����?l�-�AW�� ��2,T��	Oق��ocGɍ������=o��+�o0����@�Pް���/�	x�F���OǇ���_�"��T|���	��6���u��}��s�̙ÇOA>k2ŉ#��N۠q[�سg�4z����f!w9Ӹm�7o�̑+7Ne9n��U۶-�%42��2'�V�9h��+�����iS3kExP '��!B4�CN�q�V̙�gܞqԨ��jެm�f����Xr�kN�7q�h�BåN�-U
��㔩��J�T"�5��*D&�\y�ք�of�#�Y�fh��Eiҙ�� e�7&_��u��8ܨM\|�1��O�=q<�9��(R����*ǫՂ��l����9{J�AYmuƚ������v����-M�_qzW�ܶ�Y�Mr0�-� A8���4�L�5�"�;��ڌ���Zc�=&���� țr8:�f�ifq�g�]h�o����r0bk=s�ن����	0� Ï.�Q�lÂ6�P�J�B���2��xC*�H�$��'�q�g����hTè����9k-o�!��.6 ���l�A�
�$�.��:��̫8"�0�L��d�3<I��m�3/�f�{+fv9��oƑe��4�,�vɈ;/D�آ�kr2��"�����X,��52�tÆ��29J�ۦ��8:k�j�Iqf�*���i�f�ju�a��h��
��*����7�U�83�
iU4Y疓j+�H�9O<1�j�9�<�C��Ԝ�ݳ���hda��V5�����7�3b�*i�O��*�����BGuP�����.<�4���P�H��c�-�4��ڊ�c��tfbRq��Z���j� ~���_c�U����nY��{N���Ӛa�jo��֞i�]^Ry&�ތ1�z�`h)L�9����8��D�>c.J%��N +���YHC#��4H���i��%�ک����w&��Q&a����2:���9|z��ɮ�h�Ϥ4�JG��ɹ+��X*0�D��Q�����`~f�p�a>v�i���xa0��k����*x�
�x��dV�L��P�̆����|T���������8ַ�N=#�c����_��d� ,�Ǽ`k�2�A<����HRt@��aP�k��$-�4hY�����A9`"X��%��4���ʈD.n�a#��!�Ƙ���c�Z�2��1ԌB{HB��3,��g�N2��dPP��g8ȇJe�R�x�$$9�������I$#� F,�e����!��GaL�~�{�kbA�R$�6 &!�ɨn�g�hH&��	V�Zڎ�8h*�T�%��;Z pc��26������� IH��e�!���0Pv�b���2Fq%�H��ˢY�~�,�����j֠�q0�o@�PQ
L`�pC����Nrkq���+�!@��B�XF.�!�A��(�S1�Q]�"Ը@ "������Lwd6l�����E9�!o��/���Rd"��Vx�_l���p\+X��Em���!��p�.-�H�a	Rt����@p*
�����U��q�"	�NRƇ=��π�8�1�XDLqW���Q�V�8�.R1`x���Ee1�Vk��x�5�eLtJ�)�SP�t�h�/��
[X��8Ԇ$9-�͢��'Z�ѩ�.�Uވ�ɔ���}�#�؅-��
X�vژ�T�k�VV�h*�����A���'OJPN���@�-��Y�aC{(��p�
X��c)�G���1�xdOF���B[�E�wz�"b�j׏�bؐD��nʐ_��|��`��z��y�"����+L1��t�X���%�Q�1����!��Xt��h��NƋD|}��*�a6�Bθ��hx2`�¥�@K2�q��
�l2K����V����,t�
a���4Hf�Y�g�X.$	B�Nx�'l1�4���̰�f����\��t�R36�@D�=䁳�s-n1g)�a��5n!f�b�݅,��B�bԱN�f!����� ���Mx��x�+WS
�ۃ��" �L�-Ѓ$�^�b[��x�dp0<!2��+j�
A�lA� �H�]����.^��a,����A�	xwr§������['�@!Rs��Zh� �@��$�=�Q�Ѕp����<A`��$�w
[H�۩�hƉ`���,��T���XƏq%C�Ac�x�$�<H���OH�x����@�$X�
J�� z0D*�p�:�Alp�G�«�0�&�3Ay��@�<eZ�Tx������8���$z����/�؀���$@ ��A� (���#@
�� 7�Vp�$LG�6BFA��	�g��%�����D5Z��qR�������`�ae;�0�)��aDB���P��F��C��
��`����x��'ph4�>��/"x�M0�⑟B���L�"M0N��`(�X��≅���ѩ�C�_����d�:V �f�Ї~�~`LI� 0  8�>x�٪x�؁{c��2�A�_H�Y�dX#^h�[[�?3p�9�R���f�V �a�5MЄ���I�R�#�5
j�R��~؇J\�3H$����� #x �-� � �'�#&�;�.�C�*X�!V�X���x�D����	��o�C�نe��`�L�>��`ȓ\ȳ_`23��vH�}�y�E�(��� � �" �=� ��� �Ip �0�I��X�ň����c33Є�8�t�ȄY�[8��]XmqV�AM��9(�Ha*Khz"�n#�mІm`\p�I�G�S�0 �� p���0�h �0��-X��>��R��C6�o`��Z�Mp�s Jp�I��Ć���_�]�m�J�C�MX�I�AX�gP�EĿ9Y��j��M��QHY��I(�������.��.�>�@0Y�:�b�0lp)"k�2z�t� H����M�cHn �\�`˛����
�$a�.$����v���zP8B؂�� �����X5�����G��S0�3Up�5�̕z�LH�JGH��$��	ch�R����+3 R�c(��Jd����U(���lX�Ox*؂7�*0�P�� 0�$"P�5(CH�Ȥ0X�7U�Pc��b ��g@�t G�Fx�y�\P��q�q@�r��T�yH���t�x ��h6c]؅<	�ŉc8�UP^XiXL��.x��,��.��x>@)��UX�vٱ]�NU`�g`3n�/"MO�HȄJІd�o�o�����m@�8�S�tXm(�g��5��b`�X xY�3��ĉ�K0"������/!L "@��8`C�J]��(6z����N@Q�T&H*�1n�l��n0�n�` �Z�S��y0�jpg�h��os�X���yҹ��@#*x���� y� 7P4����;0�X��O��Op��KV �1R�a����dJ�$?T�rhr�l8�g���H/m�:�SF@QG�p8�g��Y�i�m�2K�o�x�0@<�*� `�Q|"����. �����;@I���{C8�O(�H�e@p�8`�� ?R�������V�o��J�ZB5�������K���Z��X)Cp�j��C�.��-�����2A��R*@�p)�,X�]���u�/XD(K��:p7�1X� X�)�p�j(� �#Srd8����QM��b#r�`0%p`w:�O�To��� (	��L���=�.� Ѐx   h�p^ X�X��)�<��Ńs��  _�%L(?�p()P��mh�9�SJ��a �V��S�@�H���ܜ�X �Mx��=����*}���V/y���`
�����	�  h�-��-�^*�"8W*����L�m��PP��H�Tx�Kۅ΢`�P��G����<`�C�W���'� � (��.���V�3��	�	H�X��9��/^��FP5�*�5v�(�5 :&�I``* �  �I�LH�#�LU�a^`�X TXH������j���h������x�)%^|y��;�� ����兀%P� �읂(PZ�c5�5�y��(��:h�_�e{Є:�c�c؅D8�a�p(R���*�W�$�bA؀��X�,`ރ�}ȁ-�8e�h9p9����)�� o��Z��s���Y�c1��ʭ�(h �:X�1�OU �K�@�_p��Fԡ���K@�@� �(؂=�Rsf`����S���`���P�~����Z�e1�c^�c5�^78h<(m�5��[J���U���0�X(��ڄ؂48�5�+P�:����-(������x�`�y��
�(�7�`�Ec�%�s=׽�P������\����SИ\�a��o8����	\(���f���U"18�.ȁ70�s�� �\��`)��� 
�������F�6>W&lR}e�eZ�cv�匂2��K�X�,j0�n�g��op�gh�9!�?@<�"8�7�J7���H��b
�m � '��*$�p�3a%���%�  �^��Z~e5 Us-�)�R�����,Cv�r�WCx<A|�5�F��]ҧ5�� e�9�#��s�p���#��P�V�r,r6�6_��aP� �c5���`P�t	=��i��k��� ��H��)�Qλ ؾ (~�p����6a	_:&mR��oc���r<W9�\5�+��̓o��g}�_ �j���'�C��_��80������ ��+�/���`@20�<7o���=&p�&tREp��[2��崇�>�a��c�lH>�.��YH�<� .Ȅ1�L��p":�c�h� � ���� ��(��� �W���`�u��6��?��[]���<�  ;         
heron.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � KR d x   	Bildname  heron  3�GIF89ad x �  ���{sZ��k�ޔ�޵kkR�Μ{{Z�֜�����c���kkJ��k�Ό�֌��R��ZRR1cc9RR)��s��s�ｌ�c��k�����ks{RksJRZ1Zc9���ksRckJRZ9BJ){�cZcBBRksZckRRZBJR9��cBJ1k{Js�RZk9{�kZcJ��s��kk{RcsJRc9BR))9{�c9J!��{���kscRZJJRB�ޭk{ZcsRJZ9k�RBR1)9������{�kZkJRcB9J)c{RBZ1���ZsJJc99R)1J!)BcsZBR9Js1c�RJk9Bc1���ZkRRcJ9J11B)Z{J)9!RsBc�R��{!9{�ss�kRkJJcB9R11J))B!c�ZBc9!Bs�kk�cZ{Rc�ZJkB9Z1k�cZ�Rc�ZJsBR�J������������s�sk{kcscZkZc{cZsZRkRJcJZ{ZBZBJkJ1J1JsJ9Z91R11c�ks�{c�kRsZ1R9�νs�{k�sRkZ1J9���c{kBZJ���9RBBRJk�{JkZ{��Zkc���Z{k1RB���JcZ���c{s��Μ��{��Zsk���Rkc9RJ��ޥƽ���!B9��έ�Ɯ��������s��k��Z{sRskJkc�������֭��s��k����ޥ��������������{����������ތ�����������{��s����电����k����֥�ν����{����甽�Zsss�����c��Jccs��BZZRssZ��9ZZ1ZZ�����֔��s��������s��k��c��JksBck1RZ{��Z{�{��{�����{��   ,    d x  � E0�r博1WC銔'WT�x��J�u�!bdJ�.OJ��'F�a��K�Qc��	j2�b%�2>u�bŐ!>��K�/s�P�Sxɇ A�FY�	ݽ�S�DYS�� �>�iq F�XIt1�%7FICDM�D_Ҡ��FDL��p��L�(P@�+^|�!�ǡMI1�`b(-'N�\a�
�ST��h�2h� __�6Y��N�7[}���6v�42�������01�d� �iW"d�5KB��0���!r~@Q��#D����B�쏃���\,s�`��!Yq�Il"��+�}u�j�!��|�_4�%��A�	V<�'�Q�H#�\A�
Wtq�"v\��&ؠuH�D"| A�W��BbC`��P�G�X��(��+�Rm�Y!� ]�P R�l��/���j��_|�	_TĆvjDA]R&�D�v8�N]� �S�� 7��D"x@�>���2�$��Q�A
(l5���'�`bH
H�6Jl]��C����%��Z�LL�ɄW|�VBTAW"ia�!�`��\���o\q�K0Q�*@7��� ��_Ō&�."PVB Nv!�:�$;�K���]���U��Ij����e�q�.F�"W����&���W8�*F!��/�p�%D6�1�	D�`�)pp��)**�(��!�Y�:�+��B+�+�![8�`4��l,bH"R�sy�!�L�e�	F(��
��pd^/0P-���al3��(� ��`��!蠒*�� ��+�R�*��
K�R�h��\��"ǩq�"�����zz#��(�6��Ƚ�����O|���,6q�#��C,�B	(A�Q��" ��R�!�"+*�h��*�h��圯�%�����m�Q�#[ۡ��Ty����"�kh��`�!1WАhb<�$x�: 5�	�c�C�0�@	K��Ҁ�.��sE)1��]b� �5ħQ��8��(T�|�	��a�"��5h��Z�מ��;-����v�`
���0�� %T��B�+�	_$B�p�F��	4���C"��j ��^TC�XZ3�a�j���?�HU����q�5��vxL#�:TI�1+ B��@�!�������L�	j C�����
I�Ґ�B\]����XAP�:@�_|#�&4ь@ ��`F>摏~�C櫆��'�akH�!�g�4��
�s��F,B��0�x��E��,�I	��)�>�j���IB�C��.a�Xi���/v�S4����Ǐlȃ���*��Y��	[���0�44BBs�D��CLs���,.A	�a	Q�!rd�̄
{�xՄ/��7�(D!D�F�D��Q�b���5�!
@\e?�D3��y�#��=ʱk4AM2�����D(�R ��J   x,deq�ExAC�N�0��h�RH��s�4KC� Q�%�a7H��& �AB��`,ZA�Y�6�̐�<�	x���(���9"!m\r�`�| <�A'l�p���HFd7��I�!��@@GH�!h�b8��.�a��B�kS���(��I�"�m�%�4�K�#>)=���bk����BX�G�AN`��B$&Q�^���/d/�	�@ۂ��Ј'Pa&���F�+��NV�@LP�����D JA�C�`) ��$@���F9�P�s[�B�sU�/4���@g� 	}xE.r��w�� �3 ��@�����
��*̈Fx�х:�e3�bBP4	B��E(
HD��؄(@KT�E9zQ��"���M��"�  ��D 3@B%lq�[�"堇7���A @ ��ސ�)4b
�F �4�7Q`�P��p�ۦ�X��6Q
XL���E5���?��>�3@�HU���f�5ġ
KL�h@�  L`p���R`�� �+�@a	U�B��4 능��W��t�@�$/Q�
P�:!o��	�iLл������
Wb+�t�*�A�q�B�,�5@1-har�ԏ0�P@UHA ��Mlbh>5:(�q��w �����5<�,� �ב3
A
7(A$@D/^����I���jhQ��6N���~h����<�1�f�v[�����%$B�@��ٷ	��N��!j� �`C�"��S����)8�HdB��`.����D"&!
�����/>J�V}Ć�G�]a�F&�F����w#� %pM��C#lsY��
��p��� �110U0�-Aq�U8�n"@d& �1P]��Ph�	�P� ��
�
��� 
�P�`�puڐH�P�`0�|:�l ޡ�2�3ݢ���L ����  ����EZ0;@#7`;S�=b�f�l$@�5i`nW
�`p��
<�	�pH��������S��� 7 6@"����s;��Q�N�5 K	$����� π� #O �F#0�HS@�"� �*� ��o :`���P��	��
0h	�1>N������@p�@��P7�z <�8PS�;p� �7��WUY$*�@�
��b�`E�uPS R�FtF�1 .p8@1]vPt`���	���P�`��4�@�R��� ��pC�P���c�n&P�3e�5P ��P�8[#-$3)@������� o�U��C2F�,�0p �CL�kP4�h@C�[�R�����f���P
�0C���P��o�z�vD�E�`T�F V�E��ر}�$ &���]� ��c�d�'��,��b�gaX"3Q�/g`����pQP#7f���0�P�P
�
�P���0L�S0N@B@7��Db�@�%�@��R����(���D�׀�(AW�de&�0<�x] ���U�r`
��������V�������y�05P�('���	��L �M�1rS�L����006�`op.SPO�5`�Li ��Q@`��	�p	����N�`�	�E�'� a��G�
�P��Š�%��U�+�+X���Q08�J�+ ��	�`������#F4m0#$�T"��A_`r���0fT�:��i� 	���@�L�M���@�p���� & }�C�]�D@�c�h%�Fd:�?�+�	�0������/��" �KЋ.�& -�s����	�Dr@��M��M��P���Ђ��M�0�`nj`�#r@<�R�D �&��1��+�,���@�P
�P[��3;�$�7�"�p��	�`
�
�`��C�0ڐ� )�z�@� �}u�:�s����T`-F�N�h"C�D� ! :�������аTWo@�o`�9�"	@�	��	�p�PTC�	����pH��
��+[�������p
�0aZ�X�0�E|�Q00uJ�2{ꡙt>?p������	)Zp:��h(�"ZK�"C�����vJQT]@��� �̠\�p
&������t�!;z�hF`�iD�dC�s�!i�mP;e-2�&�gɠ���b��m�D20Z�uT%`��2>��f
��	����0�5\� ${	���֠M����Z�M�0��F`F�6T�3@GB���,k ]S���G��b��@	�7&�JRtT��/���%��Po��u@	���� l��0
�@�@������5�
�S��kмP��B���+�6���	_�� �� ��:�Xlơ�1#`�L�h��@j��b� 
� �����0�����Ф���i 5
z�'1�Ee�nM��D ��.*<j��	����0��7P&�,P��Ї4#��w�� 	��� �@	����ѐ���{� ��0�,z�	�3�z Ub�5#��Y]�9P*��!!Eo�@PX��
����`�W@�i\`'8P�8�6�wi����	8��1̓��P��ذ��@���,�ؐR���`t�f���{�}993��a�` ,�"
�Jip��İ��@1�D#�-������0	��	�pB�p:������Э�p��к�P�8��۪��Б���,�T�5�UR0n D2M���ê4#-"W�	������K3�>`"گ��0 {�Ж_3'� ##�m�G�@�������
倠�P�-���	��CwyO۬�rDD��5b�^��l`--�*_�N�����`:K`�1�Ue3"� �p"�Pj`O�u��0�`�������P����$�������--f "�5b�G��+mP��u�5iP�2�N�p�� ��@	�1�$C3l �K�}�UT��:��s�ԇ��a�P��
��םW������ 
�0s*``��"�#�i�%�M KU��\R�m�!�&�C����ɀ��ֲ�&��ӹ�5��	��,�RX�\
��P�P����09� �p
�}� ��p	����j8�;b�!0Z���g��Ws�R�,�+dQ�@�;h� h��QpF�e]l@	|l���ϒ��0
evH�U$�	�0g�k~�pW����#
�fm��&�s$L��%P���5m�o Ln<�- ?��0� ^����n�!~s�Ke�@I�����u0~��pH�8
�0	�0
}����0՝u
y�`T�0�̋9����@-��P��%+P3t��	����u��E�7��w���P
���
��@����� �;������ �0k��@�po�P��G�	�B$`(0lC;3J`��q�6��ď������
�d-.�!G�l�	���?�[STkP��@z�P�Q�p
}@�`��0�����	#pM�#p04��v7_ �R�O�D
�0_�"����
�����p3"�}�{`@	�P�PYMB�;��
�0�a��J�	@֨
�����p	7�;N���8�p�\�;;ЎR�DQ��_�F�1���H����X�	%1��wi�Na�	5�@`�;�	��	�`��F݌�T� �ZU'Η5U������1b�!���;L�0B剋SٱÆ͢F`�|YSG�=oU��2 �2�x�F�6֠tTgΜDl|�`���D�2U�?k�0�"�*R f�x����8~�,h'D��iq&6:�A�H"��yӨ�IJ)�\!\�F�µKv�. i���d�#�_%��(��/����c��E�Pi�6n?W��%I-Z�,Y�$��qm��a��#���xrc��4�1�0a��2�i��Q�7v�hQTJ�;g�  S�	�FODD��HMKF��ċ4<!�h��Zf��|Z�WJQ�MN��BId�~��'�Be&B��
)�p��nH��&Rd�0Giđ��[Î:�0�:���pB�L!�'� b�ad�+�����vH �+2�M�j��W6A���q�M�G[��=���xb�*v��	�� �	#�h��7xl�
�`��7�x�-��%�n�)U�Q׸%E�jD
�Y##: �����КC8eq�EM\�?�&�yhi�@T�H8�����L�a�i�<W�c��+�xB)Vx"�D`��i*�O�L�P�G���{�jB"���?)i`��O��Kbq��PTQŕ;�9%�f0�f��,!$IF��&Zh�5�h���l#�`��7
��IS��D���L�ߘ�n(� k2Y�+b5n���&�H��D��b����_*�d��`QŐCD�%�h�Y�~����@ۅ�X�	*n>p��BÙ]�x\�%#��	)2]�Z�Ǧ�  ��D� �+�`D c��N�
+F(�XZC6��P6�P �8U8	��f���X��	"vhA*rA�p��&"b���xdG0$5B�7����.�hDmw��L2YA�Q�8����9� �� �`/ba�KpB7�a��,�
Z����D�B,��H #H�fP<��E��^�0,�iLx��P-���D6��O�Gs�hX&Dep��jDF%�� �h�	��E���3�d���rk3,�A�/�� �5��C8���쁡EyCR�p�ŭᆌ���`)���*c����Ȅ
,���%�\VH�� �LX�@�xvC�|��G9v�	B���(&��Pa28�p3�U��B� 1x�
���J��/�=[`�� &��W|��H��e�Ӯ��D��P|P���Ȅ'<1
U0�Ͱ?�1_��`�)Na�R�b6�A���u=AD1��3�AQsC:]x*6��u��z���7�@	��6�� V�8���x5�A��Y'��C0b4����Z�2�#�P��,�EKb��B�J6�'\�2(��p8��7��"��:���:ixC��),!	L�6�jLÛ���+M#)
1x"h���Ap���&DQ�UCe�G6x�Q����b�Jւx�FX��&���D2_ԧ#<!c���)Aj0D.��p�C��𔒄 \�!;�\#�P+��d�؍%��/6C�Q/,��3�Q���!
�*��G0�a����`
54C�q�j�@��
���au��F��	V� 8�A�xׯ P�(���5t�) ��0
X��L�K���y��D��K�B������F�F!J!xB�� �lOi���%��	iЂ
iMA
arD+�c�}�TR�#��\yC�dЂL�b�؄'T��||��T�(�I�*��*q�1a�laA�E�pkh�t��1�p{(_�P�!��Ȇ4��i赯�<. �q��0��L[D�0q�O�b�ا(�Q^���(�&�0@�!�H�� B#��������53f� ;ذJ؃�P�Hk��:�!$�l��Ek9�F��G�ǯ�8��@ $���%vSkh� �&0�	5JBB� �Fl�5B�%�VR���Ӑ�5��
upQy�1��	��An ݀���F���w[���Є'<7*�z!� �8�Q���!V,�"9XA�+�U"�a!B:�(
�TTQ갃'dA�mINM�C�a��F6ٍN=2��*�� a����!@�h����DS�]DB�@����~�b^�P!A�[����"e��RU0���,���b����4��`�8�apl#����Lw�	�3M7�PE9象n%�pV$6!4������@����i�t W�H�E��&�"h������0�e;�	�^�7����*>.�p�[��O���Q8:z�ɢs��P �H�r���52���	my������/��x������"h;��1��0`��"�9�B���a�w�9�⫽�)�I�3LP�|��x��jh�M��HPI8�?���P���d����%x'0�"�	�{�U���*��B��(h�&(�&�.(W�o���5@HB�f�T(�l؇~�BW Q�K�QL�N����ʺ."�'(2P�{i=�
�A�0�[�h��;�C'8^��z��x��g�+�PB�z7�ɅX(�y�xȇqh�Q(�KЄK@^�1@��8E�)���Ё�"�ɋ�/���-���&>�G�CAL�(HP����o��kh�g,�hLep���+y��q�x��jP�>?��Q(�Sh�s4<N��z��H)H�.x��t�50��2)@9��&&�4h�!H�&��D��[��ӆo�5���dp��,>́�D�j0�MȬ>��Q@�S`Q��(�1�I�̪{Q�%X���w4����kz�����(`4+X�wdpc.V�oIU�k����ʬ$>�z�x��t��qh�@�N��?8�V(��u�V��uj3' x�5x�'Q!0�'���T��;6�A"�CπC!)Ḣ����EH�H��j��r��z��,��g�F���ixx�	c��?��C�A�V�P`3]p���+�t�/��4��-lb�)�'�X��%X���;����D�YЅHP�Q�i�4c������Ͼ�m@#��fp�
Q肃K&���!�+p�(XC;l��"�+��|��[�p�D��(P&,f��S�^��ooj�+�ZB�
��h1�2Q U�sh�M��A�Oh/�&�6D�u����G���� h��FP�1ؙ�Z�N�<&0B �UH�	�\�`����N�R���$$> X1ڵY�U��?(�Q@@Mb5H���'�#l��@��8�� �CZT�:A\��*�N�pT�Mp�j��|��j�]��m �n����d��& L�>8��Z��Q�)bL�|�b�7@�(���/��@�7X;#�� 7dL�"�d�,�x�\2-QA�h�O�U��V o�,�+�|c���T_؄h�m0k���)@ �9��Q�(p�5�:t��������:��� ��"��C-�9��#c"?  �85�A�i@�g�lPm����[ `�Rj�g��q�Th�V�oІ_�Z �C Q 6��MZt�e���( ��ҰA24�%�p��%�; �؂2&�Y��+�]�Lg��lh�K���S�i�al��g�L���lꄅr�L��a��cL�J�4����c*��'��F`& FX��x����L���z���tʌD]�8�\���n qp��j\��[��\�M��/Mx��r��U�A��B�U ��.Ѓ.��:P��zC��j˦%���������t�̂;��\&�E&C��Y�ih�~�\hP�VW��S�\��c�$�J���_P�4��4J�((ty&p��ڃ ��N"U����& В޵�2�7@�9����H&?+�.��A8�[����^����f��;�<�h���MB� ]�^�Q �K��%��(Ȃ;�7؃0H�0�'�+�X�!��U�8��a�0�ʂ�=�5�Z�$�P�A�Ps�i�]�P|�p�3IB�?�l�,��.��цV�����8�=/΂$:�k�=0�1x!`.�|�%�1��e=���0���.�9��3��h�j�qp����ҵ�S �+2�@�M��S�[���` �g��t�A�))�f%��- �=Ѓ<��Lyx��W���!X��b�"Ⱥ4���xGMN�H��_6�.�/@@�^��k���+� �M�K�^+ĢNj@�Y`�d��d OZ��.�������I�H��,ȏ���#�1hC"����<4#^���k���.� ���X(j���`�A��B6�A(A(�I�YH���jex[�3�4�4�(�6H�;Ѓ;hd2��2%�)p�aܻ���Aȩ��Ĕ�.�2V�X�8�!�aHk���؀(��.8jC(�]��`SB�Yx�`�O�[���/Ж,��M<0��ރn�"0b�����%� R5�bE]λ�K!(�(��!@�.( �`�_@�� � +�+X�I4��CP�`�	Y�? �sT�>t9yk~�-�<(���j�pÖ��%P����)ʇ�8���D���4�[`�O�2�(��FL wH�B.0�?ІB�"�!�aX�gxZ�R 8B��0��-�<p�1��, 2�CbB�m���D|k��D_:,�J�,���e�� S^P �n���+(��@B0 8��3�H�]��aR �S��<�>�s9��:؃)��;ȃ���LŜ?>�K�x^)0�޵A!�Uͽ#7xbH�OG7ݖ�( E�98I��Ihu�ńK� hDZP�H�[��YxQ��4�%����9�=��
:��1����8]2du��iޭI��,`&؃9p�c\�(��S�%�i���98�&�4��H�B�wK�U�I��HxB�\�s.��C9�W(b�Fc���0PSV�4X��pd'��e7E�ICpZ�e�D�ޟК��B @�/ ��@�2��[�I@�I8M�I�I ��X ��H���B� �9�ɗd�_�.Ȃ_V�.�b�%Mҭ��C�^9�-M��au��]�H�a��B,�@��n�iD��3��S�B^�C�I�uC�X�H�H��Q���߃8�=�(8
�8
��#�3�<+�2���4�:p�7��?�]����4@��2D@�T���T�%�B��2����P�$����T$I�D�R4�/H�&):s�ɒ.iܸ�&��,u޸��$c�4L�b��M�%2�,I�F��Fs͑#���@da�D� ^!"dH�!C]���aE*"9qe���&I�xE"TJR�K���IեKs ����9t��Cg�F}�D��$��9�����I!B�XQ�%#7��L��Ռ^0.�r�С�7�v�jeȡ�%�e�$+�K
D(��4���4i�$9s�8a���9�݄y�Is5w�\j�J�.Q"T'"�_�t�IP�A]����+jT����� �ȁ�e���g�lR
,��V!Dxa����ԅnD�Cz��!a$	�En��$r�I ��"�g�DB�W�|� �`��%��(I�m2
'\AB�$��c!���%��Q�(�Dr�$G���7��2�!@,!��D!�t�RN$��sh��Q���k0�^��12�fi�FT�(��!j z�i��G�Z�U�!� i$���(���J$\XI+��r	,�D�M5���Ix��x�${�Bd��V,!�	c��R��F}��c0��"��q�e�&{aBLE_�-e"�(�	&�\�T!��uX����%�)TJ(��/�����Er�$���Z8��GN��&0�mF���2�xd�#'�v](�LLe2"> ^Tiv�H!���ggX� �h�I�e��-�$		$�����$��1�B�1s
��B�1G>]]��z8{�MZ\���W<��Q ��FX��������)&��F	L|Q�� ��p��$�e	�+�T9�%�L�i$�c{���iD���atQ��u��KG��zn0������C4��"������#;%b�ȋ����1��Z�F(g��o�x��%�@K��!�t���x�јFL!�GY�����A�uġ��8fkX���,���� ��D�1s�H�p+x�>^��� A�aW0�p����HS�a>=��1�IC� �Aա3�I�@wA��agpC� x�7iPC���^yA� B
�Ѕ��uS{�
���%��
B(��9$�b�h��"�B\�NQK��:�$LXC�\@�.d�j`�`�X�:�aW�+��p�3OQ0�!��!"Y��p�+��a��.8 a5��3E9,e�I��ׅ��.�NpX�49$�iHD&���1��3�Oֿ *LC�B�0�:��.�$�����:0f�W��@�XZ!�qB2B!,%<�WA���
>��!��U�c!��D"�YN���d�#���h��A��c��� �%b'rHO��0+d�ap�� �%`�%�K	JP��0D�g�d4bzh��|�
W0��H�$� ˅B�HDg��)Q;O�	a�p�4��ôG�P5<>�	S���"���0/,L����%С�IT�"b$����� ;
PPV���%Z1�IЁ<�ܝ4҅IH�MS��P�=�!B��]dH	Ƒ�}9"��"k6�	P ��J���C4D����;���" a	D ���*�k#F��<�	  ;        # peacock.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � � � d x   	Bildname  peacock  �GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � )L(�҄�)�$��.]�.)T�B�`���Q���?"L����.U��q�I]
�Q�����rZ"(p�I�vM�pcŌ���iҎEBe9��ʓ)H|J�`.`M)�z�RO�QV�PAcϊ��j���.׍��]��%_�"'���q��Ht�Z�8��?��1�д�u[ykO���<���ԁ|׎�v����'<;+��;=�EM���lw� �i��!�N���#���K�.��-7�<E�����%�#I���4A㺫���gާ���v�� 顰�՘���ʅ��S��V|���@	�$�m��n�M�y�Mh�G!u�gEM�We,iw�@HHd���t�i7�J�YBKP�	�[�h9g[?�W����r��gM�}l�&���efє!M�\_X��%�}�Wf�I�����s��f���%ї���g�%�l���|djw�%2�]Y &_���Qd8~�$`g�&�S�q�N{��eb��A��2�������Wr"N������y`m�!}z��^����P�u�a�\��ї���g�~xR�2�hy+N9Q�ٵbHJ��.�q��|wPE�%J���6fuU1�$hE��oK�8R0�d�E�4d�
�L�T�S�)7�@D�fð��o����f��Ao$�`똙���LT9�����\�]��keE�~�U�hR�/�77�Kv2R�s�@�h����
p�՜IWN�h��	��Y$�LN��ky�D���.?�����e�,P��lm��S^��әlp^�f5����-�[������G��SV�ݿ��|��0�e���q�/|�&��6C'�ZiM��|V�0",�_�o7�R4�W6`Y�t���u�F�K�^����ΛյBA┒��^�B�����ǹiL�U�q����l�|-�,c�ܛ�o�%s4�>�8=�4�MJD�,�	�m�����G��9IN�D,��A	�QtXu��J}s�oH�	�$L�ZSf~�)�da	B���3��j-	|�~"���g�GA��l٩`@�]RD(;BOY&�N2(��
�^������'��W^�5�@�H4�ױ�Û��om�S�Cr���J�ꈡ�s����I��Z��)MHC�i��T�(ԉ�@��$�R��N;+�]�ժ&�k@?ʘ!{�=��J��Z�r=Ҹ,F�����>��G����E ?i/�x�\�FRN�hz|��`�K�|Ǒ����053L!YҤL��E>%JS#$��#�� E�(����G�HD�L��8Y5k��OO�Z��Z��C%�((��N<ujG�	P�r׾¡�4�ړ@"�M�Y�2g:&�����t97���9�)}NM��RN�%HD��l�C�{�i���:!u:V�˛��N�BSHs�'R��I�����fK�&��b˓E!`x�W�z�`e��V9@ 7$)P6J�KQu�/|!Nvr���Qp�J=��%��/�V�C" e4�ҬDH���؇f$��@%V,=9G&�	Ig�F ��-��B�R�.����ISǹ�l��Q�eg�%=�&�!ͨ~����1��yi`�����k괯NBL4�
P $@�Nu`�؊���?��`��*��4V���	�0���
�$ó(+��$<ɔf��B	O�P׵�t�C6�$9U #u���)�����.��G��׬H`CCQ��?��K*�4H����v��-���>$�H�9�"��r@�������^�u'@�)G)�rI�䐽��GBIQO6��V�D,{�.�����+8��#
��@	&p���� Ur{kqi���(+���1bI��Z��Y�>7�l�Y���49i�L"�$@ B� l)W�弴���@%���t+)��������ʑ��� ��@� H(���W�"�# !e�4���i�DF���h�L�ξ��M�ɎKY��l$�>�XXT���	M��!7�7e�X�D���&�0!�Vz�L���#=~�G��d���_1�.j��5������ ,�ٛi撖�Vn�'��@�Yn�RH8�"x�f��b���'�E��`�CL?��<�X	庼Cu$�mbZ<Y(
X+Mn�]%qպ��.����D�
��m2W6/m1F��`�p˺�h\	ZD0��Z��]�R�	��e���L	^F���;�H^��>�k-����$ä�@��3���ɔ���F7�yH yb"��ܽC�ֱ�)�j=�<��*ڑ;\�@+�K�9$���H��tu)s�m�G<""�]C2��2�x���(�WN�+ѵ%��3#Ӝ0�;B�p� ���\�	`��Yt�1®j����j(����jSɺ
@�<�bg"�-ɥXc*s�0���&.eP	d�� ���"mv�P�_	v8 	B��\ɕb�_����f�: f�:�f2�P����	�Je	����M��`�Qj�et!���"�cbG�\"l�Te }; M�e���[�c�����P	�Pak� �TN�yl�QFgj�2�$�[#���!p!e�eЄe�A����j�?0��
�u��Pj1�/�e;���v'9	;��8ճ�p}�"p�&})xh��� �� \�t�!vDڷcFf�Q�ut6�y-7�Gg����clf�!H�fP0}	`Q��i1(�A_(��n�e�as��oZWJ�w8�o���mv}� ���aP	y�l�kk@�� �r8��c<G>�U�#um�Fd�h��A�.ExA�2��	�a��"SA�;� F�A`�@��
�et�hH�R>H�ruB$e	�ut�'l�SG6��� b��8&��e�V�YJXkP���V�3t��cGP�bi�x�bi���R�E~�C~7r�1�Ǖ &u���h}P��1q��?� ��c��ue:!{h)^�q6Ȉ�p�h{�QB��1S�����f�{zhGn(� 9@�5��q8z�ba7�'du�/�u�6�v�'f��$I،�:0}{��V%��k �An� �x �����/�΄��0�� ���Yǈ�Hy䷈���G@�Q*	ݖk�U)|��;p ����.u �P��sB"�Sa2{'�Ѧ0G�|7��hBuu �6�ep[�V5���RH��InW�"������!)4�-��R�i�7ZZ7A�Ǟ:�&&3e�b��ɔ$y :���jÑo0� � �,'RxD&f��Gpe�gɈ�h=����GQf		/Ʉ�(<�YPLJ���`�&*Б]�����%,hg�����pHp���(�Y�aH~l���є�)}���ɤ˩�����c�)lO���`{T���p%p��hh%�h���@��@���i]��Px ��z���&*���{zn5Aŕ|ix�-p0^XlP�����I2u`!<Ci=��E*�$��I� :p t�t��t�geb�㍰:��!���M@ �djce*��q0if���!l�	����)�����ɧ^��`�j�h	��r�#���P� dД���C��9Sj)�D�`�)p ��	s�k�9�^�0�a1yXf&l����n�)���u4�OT �}�gU������		����l��d�����ÁQ}4����X���z�9����tfs����.��_@�{�kP��@�b�'K�a�����|��_8Dn�{��.���8�$W)�Ph�r�����_�Ԫת�PGW)6���~Y�L�X\R[C�y�~�8�g{c�+��)��������{ d`{|���An�VJ�J��5V�	>+r��j�U�eKIefn[�ft 7�A�s�@ �q��()����z��pt��~� d� ��\�lp[fں�eX�xH�k]j����9���k��I������j��B�n�nXmTz �������%Ypd� ��J�����o;�˺�)��r���x�ꈲ����cM׍p ���cdw�6R�7h���6X��酠Z�ֵ�P��H|:k����%�a�g��s���gfcH@?at�uč�A���
p`�F��{��K���������6Y)�F�W+Z��VC�#AGQ|곙A�Ĉ�w c_����{x ;0�e�컿��Z�h(p�w@\�G�pjD4IW=q_�
U�5M��q[�'}
PN��^� �F\�|��{
��"��l#��m�::EQ7
m��-�F~
���*�7(��Дs:�$�M���L�`�w���� J����3�@��9��-�r�J��_ǻ�"�*���k�k��\�����*��/��g�C7���<�"�bU�o�L�YNr 9p�͔o�@��;��t�W��� ��h{J˳
 �l8� �%��l�bf�����kP�e��{�{�	�zKh���x�@]�LU[H{[��]�tft���'as�熏� j�|��UmH*fb�Ն�h:�ň��|�A� \WjR�a!��+�|�p���Mq��!�fƿ���w��������̢m9ye�sÚ�Sُk�"�2 ����mx�e�@� V����ɬ=kb�
�؊6(���� �9`�� H<����0��@�9
�}���ʈ����<`��:��|ʩ̈�����xVG,,Q��V�@~4�}Xb�&���b�! �`���@�pK��̧ί�Mnw}�uҏ��o�I�]�3!pvrnꚙ�~�it�p�}	0���ց�j�)�a�����K�eLy@�
a�Pe�������^�V��cf{MA����ȧ��`=ϋ��;Z[+~�"����n����Y]X��2���)L(m|���	j ���[����_�O�ʣ2y������c�!�`��Y�֕k�����l�4���~��ҳ�n�ѳ�g�ᶮ�Qt&4�0�7�������F�
P�iKtVu1{"��Hܞ6b����:�W�ŇӯM�����@o�؂+�!Z�۔�;���Y������4�摹$�
�ϬӶ����c��!"V�5`���f���LQg%�n�q����Ы�G?���ӽ��.����ٖu�$Mҡ=fN�춊쪖�x!��	.r�7�//`8�h��\�̳6�^�n6�oQn�ew��&�B��4�#lO��6�^yM��ݺ��.�\��O��;*{[��A��'ԅj��� C͉���l�{fɿ3���)`��#_벎��i���	�Q�_o����7�\���k7Z���2^���.e=����/�������h���	u=�!~[�X	��-��I����ۺ^�l���b�@�<�Ь�Q�������~�ĺ��a{bV�^n�����&�R]iA�6�p�$a¯��&��8P0� ?&6rdI��vEؘ���	1	F�5���G <�	-�:׬)�S-K�$��a̤� I�T�M�	�"$���׮%?�%;eֱ '\����%6N��O�u����v!Y�ϢH��bhi���$�ʑfM�<{R�؄�P-Q��ֱM��a�Z'��������T	�n���*$��,Eb����	1bƌ�l�(����R˖.Y�I�g\Ѻr��a��Gʬ�)��]�er͗9�j���Y�Û���>2�9β�����`��.�n4��k-�Y"�Ò����26T�� P�.�Ȱ�גʅ�	��N����n�]�����:���4�1�0���Y�-���k6Jt@*�؀@��X�L����B��#l����;�Rk:�J;�3]�$�����1���	�@+	��J�0��� @�?�#�;H$���j������MN�R��3��
ԅΚ�:�:䶓�ː����H ���iC1��;%o��RA-�LOK�Ӂd*�c(YL���7.���"�^]
�' ;         fox.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � L � d x   	Bildname  fox  2IGIF89ad x �  ����kJ�kBƭ��{c�sR{cB��Z�sB�c1ƭ���k��c�sJkR)��Z{c9{Z!Ƶ������k��cֽ���k��cscB��ZkZ9��R�k9sZ)B1�֭�Υ�Ɯν�Ƶ������c�{R{kBsc9J9ν���c�����s�Μ�ƔkcJ�֜��{��sZR9��Zƽ���kcZ9B9�޵���ƽ���s��k��c��s{sRskJ�{RkcBZR1RJ)JB!91B91)����Υ�Ɯ��{��k��Z{sJZR)RJ!JB911) ���ޭ�Μ�{J�έ�����k{{c��{ssZ��skkR��cccJ{{ZZZBssRkkJccBJJ1ZZ9kkBRR199!JJ)RR)BB!!!JJ!99BB1199!!11 ��kksJ19Zc99B�����kBJ)!)���{�c��������ss{cksZckRRZBJR9BJ119!JZ)!)Zk9{�k9B)!s�Zk{RcsJBR)1B!1ZkBJc)ckZ!)���kscRZJ��sk{Zs�ZRk9Jc1BZ)1J!1ZkJRcB1B!{�sZcR9B1!Jk11Rc{RBZ1ZsJRkBJc99R)1J!)B1csZBR9Bk)Jk9Bc1)J!BRcJ9J1Z{J)9!9Z)1R!!Bk1s�c9R1)B!1)Bc9c�ZRsJJkB9Z1)J!911 k{k191ZkZRcRBRB9J91B1BZB!)9)9R9!1!)B)))J)!B!!)1)1  )!RcZZkcBZR     ,    d x  � ᩒg�޴x��%c'(P� UО6aȨ͓�޻n�ر{��ٳn��}�׭�<y���KI��*f{ީ#��=vѸ	�-3����7m�SzӠ�K���*P�f1�7Oۼi���chO+I�T��ƍصk��m�����%A>+�Ҥ�y�ڥ#y�<f�z���L�<v�������=yI�1�\o޽{۸5��.<P��i�)M��!�ɓd�ҹd�@���Z4��̝�L�$O~=Mv������v>|�oo?U�֓�^�]�|�͚u8[6P�;ϓ�U۹t�-����Kf���|Ȋ�%I�ĳ�/J�3K<����;�tS]�\�I���4�DO]��D�G�8��<���1���
[�,�N/۬�M;�H�M:���#>$h�;)��L�3K/��R	y�h��e/����	�L��Ӎ<���<QɓL:��#���4XI�h�?�c2���+��b�=�h͋ۀ�H���zu��*���
Y�%I%�$�4�1J�`?`&C)<��dX�Ґ�SӀ"	I�;5f�,���W��5�5Θ��&���=���1��_RG��#G�y���%�:�$�i7��"�C�J4ɨa��
AmV�JN�D��a2�TדƕՌ-��R�/�lCO��d�M6�`�xQ]2�:(dO��j�a�Î:�F!7���p��̂���e8���J��I{qI��
-�pRL-�pS�;�*��)|��?�C����V[��H4�0$�9��u�ʜ�{��diCʳΐ�y��J��L�r��D^H�ܒ
�����61jc,6a���k�A����V��X���h�A��s�������D�H*����<���N/Zᣊ�=��M�2󕵹��I/G��6���06����;�4��[m�λ[�ˍ��s4�@�,����3�c�3�v3(]�C�$�b�߆�2X�4�2��A�'�����/�A�8��pĒr�G��0���K,qP����H�<�ӭi\FAԱ_Z��Li,먃$!iD�92��q��p�'�[J�:�A��'�F4���o�cC���<����̃�Жز�=����Zg��	�6yƧ���J��X���&x܃��Hށ��*X̘�4�"t�� G�"Օtl�%S��4f|4�o�Ļ,��~Lh_*1�=T��EA��r�;d�1~�Ñλ���5���d��E/�Vt�_�$q�s��/�G:f�)N�1�؆G�D����ab���:=1�+��ÑN��8�qN�}$uɼ�ˇ�����0!~|c�qd�j�����@�=r3��w�&�P����T&ٗ�<��h~�$��IC�	����hG;�Q>��C��4��G4h�H�<ٱf��s0�|䑤{�Br�#�$�������B��Ym��S�l�ʎu�8�H<��v`eЀF4���x��鰔9���q���`';@����FNI�,�b	i����$a�9,IQ$M<
b&W�����Y��g�Y��p�A�5�;�X[�b�x�b�X�L�Z`<D$��E:�X���I7���� 	Q��c��i�� I�G:ʱ��LC(ۘƉ������+kR;��ȸ�İ![J$P���?E�VD�+��G2�P4�_�
��� 
>��X�a�AkT�ـ�K�Q�y�N� �6���f���F;L��(%� �yVm��s�G8F��C�@�!���h���T�i��)�Z!j�@ٟ���(4��Z{���S%v��b,#��<�q`��"	�7�c���b�`śy!�dĂ�������J|�3P��1�f�6G)7��Lxx>,o�� ��rD�� G6t�m0��5�Q�]`����(L�+ѬE�za�d(���1�F<��P��n~��^\ckP�d3YBӑ���U��Ѓ�� 35���}���8L�qt�V'֍G��A�� f�hD2�@ ��Xm]Aܟ�������ξd���O-e�3��1�	R;����N�h�^����<s��ȑG��20��+��H;��
4��cp��0Q,b�`�����w7z����(��A�BJ�NX�L�]I�`��Ҩ�#���f�TG�d�����Vہ������0�V,��XD}�Ѯ�F#���\+
a�:��.���B�})!�H��]�<��cF?3Q���j(CԑUc@B�@����,=@q�2P�rE,V_G8Byf���֦��R^��2P���q#�E�fu��S�F�U'y����l5�1�� �T?��=X����H�p�-���O���hD�ao�2�=�[:F�"x� F؃=b�A>���/.�%?�m��;,��A� ��
��������`��
� 2���o��P	��m��16� 
.�)�(0w�
����l�W�%�&��%�6���;Ui)wn}Q�@��L��2�P	�P
�P�p��	��c����ɰ����XCa�`` � @w`�$A���[0qd�q.�F�B,!�C����*����
\�\ǀ��	��h���kx#��H�trʔ�� �hp�A��F����{5�F�R1��N%%,�{�]�Q����Ѱ�@	�0����va��(��
�s��m�S��������� �� Cp�0
��1
���%��p-�8K�rQ��ޤa��� ʗ���@	�p� � �'h7���p
�P	�3�8�p���d� �)0a����`	��^��$-�q�`:RʡNZ�%��D�P� �@
a�	�Pƀa@
� }���	�P��6��V�$2I	.P(`5` h ���S	@x�p�#\ȑ9��<���I�.���A,�b� �`
� �2�p� �@gp��0	P���_�qN��Y� S0G`�E�� ����g0�6� �a4q��g�c7&a�����P�"{��
֐�����d�a ���plp
�@j�
4�ݖL�P`n p�@9p� �i�`c�@@�"6�>��G1�@>�a����!]�z������p
� �p	��	g���	c�	��
���@z��9�Q��`�z	FP  @`

��c f�o0.��
�".�D�47��1&qAB�p�㒳����@���`�I
��	�P�f ��	��� L�����S��}@nP��DP�eऎ��PHP@���9+�A�TN�`O2�?>d��P	�
b���@�pd�? � ��d0�}p
�p��nz@Vq���CP��U�@)�:PS`��G0K����W�\�a)�-�
R	+�pG�@� ���@
� Ѱ��� }��`����dp	���P���ذ��_�Ƀ^�RP��H@�(P &��G�q�C�i�g�W[�*܁��6%����0� ^���
ذˠȐ	�P`�
+�`���0���
�w\f,��_�`	B D@f�70�	'� pS�y�d`f �\!CI7U��.n3ơ���`�`
��
��� g���@�@�p	ep	�`�� _�4�0��e��4B{зQ�w�5�((  � ��u�@ eprd���@@%A��!���`χ��>Pa��l����`��ʀ��	���f��`�*e�� bGpP�uPw@(�*� `B�yp� f i�
�@�@&	��t\�ua?!� �a�
����l ��0�PÐ"��	ǚ
��������� ʐ�@#� ?p D  @D�D0dP� 	pB����1�H@ՁC$�P;�`�bp�p�p��
{���N+���
���,��Ðʰ�&J3ā���@@л0 @[PPj h�f�r`5D0�e�~�p%��VGi
h7�3�� k��0
��
���P��\<<� ��"p꧋l��0�ː��!H(� ��,`@ E0epc�d�^ P0n�΍��p%?ᒋ'Z��P�P
��k���#�0|���� �p4�@� �8���P����@�^���лv� �I;c��P�d >U�1�j� ����*I6?�1J"� �@	e�j0
���� ��{d��o�4���0�py�Ѵ�@�0�� �۶���1�0�:IP�,��k��n'0�� @�j�8�`P-���"o0L�� �����P���b����P|P٤�
]�^��<���b���@�ClĀ� L��� 	>p` W|-��������0e��D B�3;1P1����Ӆ�f@.���y6
��_�j0{�0��-��-��ͳ��ѩ0�!�9n�Đ�]m���3� \� %�Ap���O�0
� � 	�P	k���ʷ�,j��Z9mP�P�O .�����0Wh0�c`�=��L _ �h {�����M���#4N���՝�
Ea�p7�\p� 	�����PLɀ宧h0~]�C�B090`^E � > ?��@	cp�a��Ú1�f�d�l���m�W
��"�ҩ�"�a�
��՞	��9�.��
k�
s��t��l�C`�-�<m� C` ��{�>�`�10
؝�ú��]� �.c a��W���i~J3�Ȁ!4���0���� ��W�$�,_H�0��P~��  ?�����P?`��.sg�.09��8�nak��a<h�Օ�8��p�F[M�04����Rߑ0�u�"*��N���`1p�D���nj�D�pD� P�|;�^p�p�ٝ��J���ep�d4��c�d���
�P����"�B�@�|
��Аa�"t6��E� �P�h��`�L~�F z�~_ .�ᚚ.~����B��
�e@�c@sj�a�N�8��� py�'��Ȓ
�ۧ�F��Uof,�`,LC�.� ��`�CA `F  �RPB�&`P�f�-��7�vٍď��=�_P�l����E��b���
�������Ǽ�."��K�J#�0�@	��v1�>O@�G�Aa&C�"*�b�3a�|	cFQ4aР!��E�/_�Cr�1hb�13De�2�i�֋[�]ٸM[�j�]��)��V�^˲!]֎�l�ډ�+���`\P��"J!C��P���!~Thh�˘2c(��H��C�gА!󅌗0��4�k&�3BЌa���m�-��+/^�x�ҵ��U���mζ�W4��ȍ�F	�3^�t䇐2!�B�?~<d̨՘Qq�x��3f��B�m�0)C�h��Cc�*�k1b�z�ZӋ�J�v��zU�ҽ@�^7�[�D���%"2 "���"����!0 #0��p�E(!`�b��kn�2Έk�����K��e�٤�Gv���6yC�J���$%�W�)GXDE1\`3(`+
"
؂��Xb�����������򈯎\���(#!�p�!�$�: 1?xA�^*)2QM���VZ9E?PꙦ�h��&NaA�J��"â@a�(
�B1!b��D�"l/�0#�����!����.T�"��@ëY""�
�iL��D�J�H�Izy��JI�i���i*��k�%�E>Y��
��zSu1��tA��Za�&����8��B(��\�(�	�3ˋ�(F��f� ��^���A0d�;@a��Mp�,P����#��q��FQab!�(���b�4��5�2a��Q��˻E
�'jB�2� �,,> � ���JK^�?�(c�d�cFVi�^,a�V��e�d�!gq�A�034�g4��B1��b�3Fqdq�5��� �p)��*�NI�E�JZI���2X�Ej8q�V��;ziD�bvi��G�6;g�9�ߩ�2cY0c�mLˈ�0(��Q(�k2a��/�4B�	IZ��@qD�D| �aPx�E^h�G̀��R�^ �d��+nq�d�����(��3P-XTb�t/�#�_��ap��5��!�2�w�5��a�8^/�"H8"^�:v]���X0�Q	�����(��@_c� :�AA}0bg?��@   Wj(��Tt�	Q�}j�����;!1B`c#D� ���K9,1�dC�X4��2���+*�=<���4����b��)l��c�c`L�|��	�AK@�ѐ��'}	�"!E�ai��)K�����*���\qi�C�	;���0�}��&�u
^TB�`4N�u�b�(-N�V�p��d�'���Ԡ�$푽T�'b�F0��KF� �!d�1�#JD;-��p�6�!��lc��0D'xQ�[ܢH�� N�L=Bm'+F3rq_���,���B
dh�Ԡ���b��XD��Ggg�*p=3`i1bJL@�S8��D�.|�i����*4��SB���E'��<�2����2X�Na�Go`2���sPE^�̈́x�#\����9d��Ƣ�h�`�J|$
�HP��AscPD&�Й�-c�(�441_�bnE��nQ�L���K�-v�(l�P�4��1t�� �'���&h(B�B�V§� o,�ʈG,b�`� [z��Q�;�8N&.�	]S�x�#P1n�b��C*R�
Vd�İ�o���]|��P<���\���C�2�	�A��f5��\�8�"q�sT���'��E�̙ (`����Wc-�
%^f��1�Z�E�B�H�2���j,cd��툱]����&�{�5�A@��!�d�b�K��A���h(�!AY���4#�1�DL 
&�	��x��8p�D$4��J��P���1w�6� �6D��Ll�<� 
+��l���A57Q�M��]0�HckМ#�I�a���,`l�ĆC�Ї7�@U`��M0K30b���<�
9 r���� M ��h;�=f?L��� 
/6�R^���L�[ъ5{�� ��GAx�H$��$�!z�C,�av���8G:G�X�����`< �
����	?�"�(/��8lb~�k/� ����7�A�0����.��������.���8�a��Fa�d(�90B.�@@���9����Cp��
�((�'���0�U��pЄV�V,a
�w/F�^����[/��c���w6J��W��4� D&�+�7 ��p&�����xC�0x@A��G?��~�����9�a�t�b� �O������:-V��p�C���
��c5Q�.�8�[H�༔"xa	Ub��D&4NE��5(L`�KȄ[p�d8�QX��@ 0�!��{�gx~P~�u{p>PH�  �(�ـP6�8C8�+7X9�5�Nx6��t�x`V �HX_8:���N�K�MȉKKd�eh�7��s���W��:8M0Pj�(�h 8�3`>~x�nx�+R6,�"�t0�-� )ȁ`�5X�7�x�B�'M`A�A��vx�v�fp7�ZH�h�&^���`�C��I�ZP�S�Mp�[��dh�s[�WXP��-� C!X�n�U�@U��w�_L�9`�#����J��I$0�M�18G��u��\h\+ ?���hІWXE@KhWx�M��lЅTPZMhG�HHIp�\�h�^�h��/H�@�@�Z��SU�K���ĿM؃�\�� �<���r�A�N�5�ȅk�\�G�p�?G�-N�MHP�V��N�=���uȆQ�Wp�c�P��u�����@�G��� �� G��Y�HK�JK�f����I P �Jh	��#��p��z�+��*p�V�W��Jp�s �W 6� ��d�mhTp�_�/��ux������j���G`mx�m8�x `p�� �L4��U�J���=�^`���s��E@<����p��s68�5��0�:xM{�H8���A��A��x���G^(\�W``h�W���Z���:h@��i�h��t��G "0�H��HGtDU��^$��ԏ:�q �!� �#06�k��;x9�!��{�n�{HG�5Ȗߑ�`�\P��p�ih�ȅ����[�e脮T�^��ǀ�ߑ)�����d�J�d�=���"�Ih�s F ���RH19؃3xP̣��GP�n�������+�J� �hQGІk�bӆl�T��$܃wx\��rq�	K00�X�#Bp�YX�Y����[��9@
K(�;q9#؂����欖;��((�~x{xE��H0�Y�ip ゆ]���,����A*'V�`�VH;E��-�i "��`��<ҽayxI��W�B��9��s��2����(H ��%���LU��K�J8�g��w��4L���B�[��+�Te؅&�k���� ]��:�GX7Tq�eB �a�w��i��u����Y �	`�x � 
p�L�PCs 5t�yM�~h����W�K��h�^X

#�Kх\�M��c��rp�J��F�Fا�) >R�A��2RUxͯ\�F��^�P��9�/X�� 0"�I �w��n8�H5T�T�[{���A�5؄��W�̛�]P_`�v��\�2V�?�8́�A@���5U!W"�YP����^`Mi�D��Y��oP�9 �qŀx� X��T�wpC�5s�T��w��&�;ئ&4�h�$G�mȼ]��y�-�@
i��s��h8��=�1` �(�w��մ��m�ux�D�>�T�Q_��Ѐ� 0�=@J|�S `P��^���K3eȆ�en��mz��"��	���d������l ��@�08 Fs�S`�+��G8`H�Qb�G����3x� 8 � )xf`�jMUT�@{�]UmG(��d؄W�V��Ұz` ��n�$n��'�ixP�Jn�?}��i��<��
x 
X 0��j�aq�<��;'�X���= �'8�8�h b]⹳{pHUH�!ſ�˖*c_Дz��y`U�U��hxy�T8+m(�iX'y�	_@:S�?��0Y�Y���ZK�A8�'�������_0P��� h�Ё�D8������$b{�J+�5�"�+Ɔi�$`�����hp{��c���je KІb��W�5��8NH30�u�)��{ ,`�f,x�P�'��A�{���P����5� �F`�3h��{Tx�5ȅG�L���WKbhn�th{ Bi�$P8c�-�m��Λ"��E7 �'����|���q�3�x�,0�&2��<�"���  �!� �@�2��7�3p80�����7P؆��{�������p)�u2�ݻ�ld���h�(�X�
@��5R�|�؁&(������P؃:� ��ƀ0�)����X��C\�FX!��f��YH�EM���n�mX'zH���y�7�H�%�V嬟y`�"�M(a���2�Gv��= 02� (>P�1<GX�����(p�$xMI(2�,F`A#p��6�W(?����d��{^�ՏxXTGezP�J�V�i�ZȮ�=�pK ��"X � ��F0�c�J�.P��:�Au�!(" �(�> (�)@7�
H��Qp�0��OМ5`&ܦ�d�YOv�mh���դz �i�' v`�Tz18|cx�=0�` 0�4�I@>�P��F�1 ( XP�n �$�Ȁ)� @ `�" 0�C,��o�B��|s5K�hevX���xp��Կ�On�IhP�dixiVH�� ؀7��J^N�C�'�;����,��]*��P�0)�9"�# X�t��J85ߜn�i��1:m�y`|h6G��蛆
����ARi؄sO��,c6� ��
X�=���^�Bڤ�=���pv����pPG��"��7��(� x�
p�NJH����W �� �l�ȼuje{�s��f��nyP�Lvp�Y��Y�B��X !��= �<0ۋS9нJp�����ȧ@����H��)��F7��;�����d�7(�J ?@� �^H��v`~��w�G]�����_sj6{0���89��=(�~:�50:0�t��� '�8x�Gx?����(@�(X�4��+�<��:x��y�F0d�np��6���+Z��ޕx��Y(ou��w�;�DJ�c�h�(��Pm.c�tK�R��3.p�&�/Ёk��,߄�3p�1�$�89p48����D�J����Ê!V��m5M�x�����4v��ɓ����Y���#	�f\"�:UU��t'O�;w���K!Iy$��4gΠGwzY���͠Mqr�ΚAh�|�3g�����쑔В�Yh��cƬc�i���z���;UsX��$�&+�8@�H�=�d�%�`�<�,�K�'��5�*A�ͬ9~YA�� 7��=7J#7�zAj䈌B�v[��krڵ�v��W��Y�Xm�D�d�OX,�������k	T�Y��"��M%Glά������~��
�$��d}l\,�|�#iHa��H�%��s(��!(�L��<�5�˄���Iy�C$D1�<�PT��!����$<��rD�4���2���{��4�%C-�:�#�8�K,���Fd,��n��¡$���B�Ĝ~��Ix<w+w$�L �d��WuޏB�RQe���76Ȏ9��qG���Q��֋$�3N�߀���|��w�T(a/�Y"�,i�!+�ȑ� r�
p�!�l��Gp��Nu���8ɨ\s�aM��R�9�$�$Y�h�w�2G85�ߜ�X:�6	�#�x����$
�&Z�HS\O���&x�v�)����rr�H�@��͑�$uT�(���r耄5��o��ʁ���,�H+��k<kI#�
7o2Y��_�i�u��H��rP�CSȑD41j�97�m2������G�򙐎�P�(��3K���#�q�$��C����S��qxP~�L��Bw���&u��G�:� �Gؑ�V(�FT\a�?β���8F�rqG��Cr��� n�!G���,�%�9AFa���0��4��R�#f��f�:�"RQwx��v;�]�vpTa9h�D�cy�Y�
VP]IQZ�GN�6HY����%w���� �4�a�H�X���*����U��U�� X�����S&�I�b��:P���-l���Ǣ�����a1�P�3���Yl�k �b�fP�AC��J���y��Q%��H'\������q�#��80�X����0�PA	V(�� �A�j���@��t�!��ڍ ���'�Ҟ�tB �h�]	(� �B��k�b a�-�!鸃#�"$P��7yH�%��g�� ���*L��ɚE�P�`��G7��T%C9� ����"A9�! ;         squirrel.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  squirrel  +�GIF89ad x �  ���)!!!  1 sB1! Z1!���ν��c!J ���בֿ֔sΌkƄc�sRB9Δsƌk����{�s1!�sR֌c�kJ�J)ֽ�｜��{sZJΜ{Ɣs���פּ�{ZޜsΌc�kB�R1c11s1) �νޭ����﵌cJ9��cƌc�kJ�{R�kBk1�ε�ƭ��{Ɯ{�Ɯ�cJޥ{�{Z��Z�Z9�{JR1c9֭�Υ���sޭ���k��cƔk��Z�{R�sJ�kB�c9sJ)�R)kB!sBZ1������ν�Ƶ������ƌ{k�{csZBB1!R9!!!!�������Ƶ���ƭ��ֵ{kZ�֭�Υƥ��Ɯ��{罔�sZ޵���k{cJ��cΥ{�{Zޭ{�sR�ƌ��ckR9�kJ��Z�cB�{RcJ1�sJsR1kJ)cB!B)���JB9)!�޵�{R{Z1��ƭ��ֽ�ε���kkZB�{ZZB!J19! ) �sZcR9B1��έ�k��cRB)ƽ�cZJ��B9)!�����ƽ����Υ�s��c�sR�ν�Ƶ������RJ91)�����Ƅ{c)))��޵�������{{sZskRkcJ)!{sR�{R�����޵��ccZ�����������{��s{{kBB9ssc991������kkZ11)��{ccR��s��kRRB))!��sJJ9��cccJBB1ZZB!!11!))99!{�k��{ckZBJ9s{kkscRZJJRBs�c{�sZcR��{s�k{�{kskRZRBJB{�{9B9191ZkZ)1)JZJ9J91B9Zkc!))!!)JBJ   ,    d x  � ���CI%!M�4������+H�"���&!��v�PZER%<�6\���;
���0_T}���%���zS�M0<%�h�g�&�XXɄ��
$�Re��-�H�)I�I0�T����ذ-�$���mXI7��BF���<�(P X�R�f%���J�S~d�d,��?[�e��י��NBI&=>�=��߿47�]OH��-2Q���TI��l�mJ:{���Q���=JW��4�կo�����`��O��F�[9y�ԕ�XO�	L&PwgUB�=�T�E'T��I>('OGQ��Q~uG�B��~豊��qBCmRHQ-�U#�P|�U�X#�G�L�m5`~��f�Z��
%��VZc	aD�⁐\r���>�'�#�(��$�����QS���כf]�g]Oi	��$���֒Q�$�䣏O��c�+��|��Xr$\9T�W�q&}�m%#Ubqw`�i!�Қ/uצ�r<8��I*Ԝ\�e�^I�7_V(zG���ǖ-�gA}��H{��BQ�[�pg�*�!������]�O��g���'���qG��6D-�:�᪻m�'���])A�ki���g3yԖ�^���Z�+�#܁U�J�����`0�[�'VY~ē*�k�g��#g+���R5.�!�����Q�� .F�DY��g���*���Ӻ�x�ӳ-:��k /��nLLK�/vj�>�|G�*�b�� ������C�3V���$�����J|���C#w(W��zb����p��F���h'����׽516	�R1�2���В��Jr�V���i�%nd��y L9o����nx*j?ٛ�k}ob�wwC]��.������J���;��^ӨOK�N����-��p�=o� �}�}t��kٶ�����#���N�ֺ�t_�A�fNi�o��3BA�z��@�D扄4����,�?�ubx�g�;��Lx�ߺ���e�r���H���M]�V�
���C�':�����A��'���{I�a�dt�4��
!��e�i�KȀ����9ڒE(���*�"��ⱍv���G�׬���K?�DPĩ�dC(tcK�*�� ,(�ɧ�S�1ʅ$
�����n����$���+��ꡌƅ���G�/���N���C�P�:��!ANG�IЌ�ȴ��;5�Q��'������͇#4�r��54>���6��-5I>t�i6�!El�:v�N�e�WιL� �F�kӔ ��Ƈ��X��ke��`�$�M a�&��!|��(�Q�T/u1� s�,{A�',��5�b0��*��_�b�DhZ4��T�@s����ء�H��E�@�v6�ks�I#'�@ 6�� ��6|bo"B���1�db��E6v�tl�G�*��9�q�p��C���? 5>�'|�"�e6*��\�?^�L2M�ŕ?���iY�/v�OpC��6�� �q�v�:QJ,#5��D��Z�>�	+a��扦9!0�	2Xa�!2KH� � d0Ȫ%2��pxC�`F=��OLÄ��?<�g%�m�m�K�S����iM��,'@ �\B$)ר�.w*�t�sl�#U�b� �5�Qh�������{� ��!�Ɉem�,;`�?�|kʋ�Ę* �2��aU�6lQ���	̭(�,j�U��� C7�Q~(��脱�2,�կ�H:�_�i�&<A�x�oM�pS_�� ��`<�[�ɹ���9�kY��u�3�� �! d�n*�����,-�Tlf�$�Jd���*�_H��	&����-P0�`���!��O#��J�A� �5�Q� �r�B^2a@���K�T����G$�|5�h(bL�z �l���Z� ~���p�	�fj���r�����>�A�oh���΄qtkId#C��'�&!��vp�fW����0(ѣ���a��9��n��`C����?$A�(�<6.�z@�d� ,�r�	&��sU�4$�
��䖟R�Jdr�����pSA�� 5�!}�ʴ������RE����I���P�<�!�V��H�Д����5��+SwDEs�L�߾ �AT���ʻ��ʞ2����8fY��IL=��>�A�ZXc�h��4o��Ip�-ܝ�@�oX�����]c��R��\�৙��XƧ��%��{>Ё���� �7F�6bIđz ��}a_��$���_�����toZ����Ew��r1�P�ȅ3��3?��F.�у��ȠF���Vt���@;�эn �C�a$`N���pӰ��Ѐ�� ߷���7�xrS|ǧ
�G;�G��p�@~� (���p(~���p����0�x����@d��@��	��D��QL�0�p���'���0VW��p���PH���J�X�#8�Y�j��0mh��`�����@Sw��:��P�  ���0ٗ}٠��G	��/Ȅ��]�Z���H�]8����'��/8~#��f؄sUx�p8'���@Ұ��Ð� �@x>8 �0ˠ��������5p�8� ����������a؈j��@�Ȩ~��8�0�Ȅ$H�h��� �ZH�jx��� �zX�`���@Z�0Hɧ֧�A��������Ӱ�����/h��`���,(t���@�#�����+ȅMx��`���8�� �P���ʀ�ˠ��p� ʐ�p���Mt@>J�����ِ|�p]p�O�
�χ�ӐX�����(Z����`���p�栒��������7ȓ����_@;v�%Lp���7ꀈ��}y\p�8J��΀��~�ׅ�x�� �j�d��I��p��0M8�P��P�P�w�x�@{�������@r�
_p;[p
�p���˰�9�PI��0����p��؈L���s��0�X�&9&I�p�КV�Vh�`àq��x	������������И:A���x�Р$x����(�Q(�`�Pz0����(i�mI�$J�丞�m��琢� |��3��@w)S����T�q�G��������� ���`��;�<	ǐ�ؠɰ�ŏӰ�'z�`����ٚ�0�P�f���i�$)�z��@�ܰ��p���)���@�@��i�j(�؜␖�@��i�ΐ�Ȑd�J�����h�`�f���0��i���$ٚðꈞ����@��+�ɐ�������7� J����ؠz�@ˠ~�Д����@ZH�� ���
̀�Z�%ɪ�@�i����P��8��`�陮�h�
�`��`��@��<��P��ٜM��8�ڀ����h�$�����@�@��@'	�-�j��0:��ښ銞�jÀ��9{���xY�$I�0��P�{�P�@���0�-j가5h���%X%8��P����ŀ��fz�庖`��yڊ���S���ɇ��;�04Jɐ����*��q���P�6�ϰ�Ԡ����p�Ky���@�ǂ��8��ʱlٱ{��鉚z��k��0�p�����ʖ7ٖ�h���qq�ˀ�H�0����
��
�p
������gH��Z�ﰭ�ٴX���
���������Àzj|�����p����
�� xǗ����I���#Ȅ�P����� 
� ���зE��������k�|�线y���x�� �h���J{�k��0� 
�@Ԁ��S�q� Ԑ�6����P���� ¸���`�B+����*Y�+9Wz����ˇ���h;�����g�*�0�͠���� � �@���0���ѻ��з�۰B{���M8��0�`�U��c���P��*�"��6����:
������w�p�t���`
����@TG� ڐ�8[�l����&�砼�`ڪ��i���8� ���kúy�����:�+[+���@���`
�pg֐�@uT�p�:\� 
�k�P��z�z*|*������ 
����0{x�9Ȯ��*;�yz�9Hu���im{�ˀ� �`������Pz���а���T�mi��qڲ�IƠ�
�ˀ����ɋh���7��[��8�'ɱ|��`�S'���{���� ���鰫�I{���0��j�虖�@�۲3���P�$h������y8���̐�� m����0{S�|��<�YK���������
����Ȁ�� �*��
Muq��UX��@�,I��G����R����@͵ד��i�g:��Y{�<������������ֻ��� *���:�� �,�������=�W:`��@��s�;���`�!k��ٸ������']q��;zJ���0d��l�9X�ЊAMn���*x{�ڔ-x��ɪ�)
�}�8�� x���� nSW{3[{\+�Ux��x�H��ʀ���@څ7��������p��в� �
��7���3���p�,y�7{����韉 u��ڥ�0���{<�ܴ�\�/+� ������t�@�m	�P�u(z���в���K>�;iǰ��Ñ}���T��O��L�젣\{��̟;ړl�3�Ѐ� ��̒���Ҁ���m��;������������{��	�^:������� ��m�c^g� �=���V}�z�鐼�Ц�Z�ϐ��lI��J�u:�p���簛���|����`��X��˼�g���b����Fg� u{i��皃����P��(؀sF��^4z䐇�p�TxɎ]��\�T���0�����=��-�����nx`x�PԜ�!��{������� ��|� �� ��m��� ��������ɟ����{~79��
nWg�0��@d=_=I�|��;�[=���`�p���0
���� @�����gߐ��L���*�|�ښ<�.߼�����6���;o���+�yx�흧ϐ��p\�� �� �	������p��r�Ҵ�ѻ�����萢���@,�,N`�]8����=���ؔ=������0���ӛ ��	�P
������ׄ������
��F=�s-�/�-+�	���:أ�������V).��*څ����o
��  �P �;P�p���*&��9{��C��;t���'/�<|���C�n�9z��=��,]:fʘՃV�Z-o�Z���V k��ܣo;{�c����t�;��"W
Μ��T^�PC�Y4t��Ńg6������.�ن�6�C�n�9e��I+Qb=z�����L&3�۬A{�� �8�Cx��s�챃HΜ�c�����C`�v���mT_1�R�ڥ˶�t��)��۞<���y6���gD�TY��{��C��aޜ�n�Y\�,9��LHy��c��}|v��`���O'��I$Iʖ
�I|��K76Ξ)�c�1H#��	l0Ơ	)�e�q���E�m��&:��.vұgtV<�r6;�s؉Gvp�y� ��D���A`�e{~�'����h���gs�Yǘd�I��Pl%e��Sp�l)őS�)h���.8���(�x�<ws�fС�i�aGfF�eJ䰄_��fx,���M�H2�䩇�����&���f�!g�S��`�1�`89�tc�'�0�H@r8�B	�a�Nl��fl��6nA 1�&�#�8ç���e�N�|�YƜu�!�gHb��t�Y�eʑ�P���`x���̀��eҩǹ��	�_{ҡG��Nf�܆���f�U$!$ ��9@hC$t��'���S�d��9�F�"2n�jZ�Vp��2JA�V[9� :a%�"QS��� lZ,�M>�Dڀ Í$"!	��%,8A�r#�}2�'�{$DWb�i�y&��R�,���]K�b�`F3����S�a������z;2�P�m!$UBH"���`�"< b
@V�#!VؠI�V��Dyә"tG�,˽����8#��� ^Yq$a38��V\�9et�.u}&��k�'�mh��H"I�$�@x��j������@	d�����FFʔ��F%�
�g���u��'� gD�c����U8A9���|�����qiܣd�N-� 20���&� �H�@��(�:�A>X�"~p�E��2�� >I)���=��/gUdh���l���<A#�� �R��,t� [�1�@F1���}=k��6��nHc���`C�!=PE`�	 4�	8�@R��\Q����ʁƐܬ"���7�c()IW�aD����+E0��S��f(� �i�C�X�#�$HrC���&�0�>�B���&��^�a�8 A��n
�x�	�>9K8Ӊ�?$�3��Ã樑��'G���@�TX4�a�g����W8��x7���GfSd���*R�
^�a�D�n�\H��pC� 	U B~�g�dz�85�Y����Y�^?a�:BX#
�����c�x���� F3^��i<��D5���QTC�Ȅ/���0��sA��  Bۜ��hA��fc���>bt�'��0�aFn�rS��!�X�uXdؑ�L3��W�͈F3H��PTC�J�F9��H��B��.��	X���,&�ڤ����*�!D8)G�څ��������A���.�!��P��!"=p���eHã@����E��,���6��]�U�؅4��8m�_��ظ�l����������W���9�(�9�3T�NpB�(�1`
gx%�xd�L�e�J�`�� vhe`I��5F�HiT�Ϙni�
Z��`C�"���cX8{R:�B�Lvh� ���bB���0p+΀�q��Ġ&~YlViL� �: ����1줕�tH?�X�qhs\d9�r֓],�q�"YP9�*E=c�d�> �WP#�MƊg��j����o-�D�y��	@�\M(���7����" �8���/ݤ����r�{�t7X�������ud��f6�մ��kUD ��3��m����9l?,�9����%J���t�de#�h�<�O ��I{CK�1�  "�8����� �cr��`�k\���wn�^ݏ�����H���*�,��XղѱE5D�!�����Tc���\�D
�)J�I��յn֮ӳ�՝�Y�'9��"�a�d��3��G�܂�jl�'AGvC�K3n#,��B(�4W���.�O"�m ,�`�z�=��ZQxV�M6%��:�4g�c�%��a����Ȣ��"g��2��{�b��(2ܒ4��9�q��׭g�W}ݷ��]6��5�1��'x$ej�_|��[�#|��"���Ð_:����Q��+!�aH^r܋\�Rǽ�qb{��
͒7��\ۄR�HB����`�X�X��.Yvp/Us:�Q�x5�K?���u�5��	�۵ݣ�s��wX�}0�&i�����x#8b�Ua�'������8��ZZ�'������+��������C��@=K7��0�4�x�x��i|���#�)�x���s��i��؇!��%Wi	�:$\< ��~x���=��= ~`<E�19"w($b�هe@�Z��ELX�i� �0�f+�vI	��gІ�k��~���[�o�o�v0��K7�A7o��k��&�oPDc�c���h�L9�Z�x8��7��V	���%���B���z{�a�� !9$�3h�O�O����oЀQ� sX��hD0�c0l�Z 2.+!x�k�!g���h��H�(�eH�j��g�E��!�o�/8�.0�`h�PЀm8 Ѐp0Io   ȕR��o��Z��\X�b��C;�gX�/�n�U �]��i�m���X��[�n8� ���F�@�����Љ�[<��~�E��/h�R8�\p�k��]�  @�0��]X h[`[X$�6��5�F��ʒ]�U�0< �7P%p:��k��/��-M� p[�A۸z��g��k��x��D��GE� �o��^�W����R�]@XHZ��T���<�8X��)�7��Lмm�&�^����%�$�6X�=h�ȃ$H$`�$`�Z�_h�$ЃK��.(�X����VC	t �Vxt�u�C�9�/Ioл�H1�/�"��!0�X�"P�)�!8���#�U<�P��T�%��F �0+X�)��*��?�B 9X;�$�>X �l@؁X18 h��z���Tt@-��h0gX�o�K�L$�0XLI��e��X��m��I �:�+�!�X�!�;��U�,x�L� �$8��B�=��N�Jh�U@�:���� @�-�?%h�x� �M�k0k8�+�ڂ. �PX�T@�6x�
8@ <�I��>���Z�$�l�0N 
�� 	Pқ"Lx@�M�@�x'?�: *��F��@��(� �E'x) ;���$�+( F��4��I�؄X�(^pb��B�f0�.P�0H�k��L�\H�҄L��0�I����n��:0,�%�8��exl�^��F�KJ�� �H�@0�%P '�%��6`�X�!��!P�>�AHF`�&`�@�Yp���mh- �{X�B��s��d�^Ѐk�Z�: ::X�O��hpM�]�X؅/ A08M��n��G*   X@8$x4��'X� � � 'h�;�>���P�$h?�IA�BЃ&0���ЃP�<�k��X�p�MЅg��k�-Xh\#�0x<`ȌL�JȄTX��.A�U�����e�m��>P�NH_%�8�K%p8�!Ȁ%��@�Aȁ"wJx"(Z�TX)9�C����(�%H���_�hPE�t@�\gȅQЄ1 =�7�?�& �&Ѓ0]ݡ;��	=��\�X�4�d�H���?�>��*�)��+�x�; AH>h����C�:��O(J0 00�?`�8�Z!�A�4��Q^0[X��\��Hx���&(�O��G0�0?P�:hT5�7@ �k؅>؄L����Lެ�6� ��0�H�(���*8"M�U<�:�.xU�1h�0(;`�J��TqU�����k�g��k�2�a�!��4v���]XJ��OAhX��֕1��e�^ .^�_��%`�8��Tj�*Z�����$PFh"! � �@�A�͍��d�@ %@�7�9p�i���^n9����I���ln c;0�C��IPJ�UH7p�I�c! U�G�{Ń)@�<� �Jn�hQ`��h�U��U��&�Ch�XY�6@Q���8�=AP+d�i(�I�]_�]�Rg��j�ɴJ�8��j��XH�H�Q�-�%���=�6�#��M&W"h *0�&�6؁%@��p7�+:��)x�� jQH )X!h% _X��^x\xO_x�5@^x`n�l�P��l���҅�l+K(\&� '�)`����C @�$ȁ K��]ЄO0 �b�]�?�'`F@]&��/��O��#(�p�"��,��8��' %X�J�e�:X�L ܼYip�kX��Q%��mo�:X�6�<� (O�^U��}�I��&x��R�Mh��`�&����Ѓ���& ���x� �F`�x� ��JЖ��]A�N9x�(�0����0�&�P��:�HP�.��C���%�B�b `�0�_��ᩀ�0�	(�� #�l�@�x `���x���ξㅝKA�t0����`&X�kXp�Z �6��=�mx�/����A�l;������Ã��U���  ;        	 
camel.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � ^R d x   	Bildname  camel  IGIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � uMHp���*L�p�ÆJ�8�A`1^�ȱbG�':Ԩ�a�	7���Q�I�Z�h�f̛0-�9Pϖ�P^�9�R̔BcZړ%̦"2e*p*J��%t����QH�jV��~�b��*J�n��Mk��/K!��ͫp�N�B��ќx�>M�6���!s��H�'��5=�Xg۱q�lv�٬�k��/̙�&��K�O�nk��i�4[�g+���o����&a�~P�p�ѩ+����o�~��z����끅b=�:}\���Ok%]�w�jX��gu�Q��`\�	�݂�a5��$^Y�X�w����~���tu�W_`衕_c�u�z�G�ʆ`r��x��l������8�\D`	^����S(���m1y��WE�]V�UrUv���ɖ�\XW��CF�hB(}�]y ���aT�9"�"y�]�I0�pI�L��Hȁ��A��@�ݏ�Pu�o�m܏�Y�0Y9����u	�\ {:(NZh��r�*(�X�)�D�e����f��z�yq�1�Q$WU�k�:��x�щ0�`0m0��(�s�:ǷݺJkl�%�Ag���w��!�T�}���CvBA0�^0m����m�����%�.*��z\V�lc��.�\�l�K�Ƽ��艌�N[��:��,ˆ����Ϝ.Ws�����u�F�*[3�>�e^W�V��L��̱%�,�1p��J9$a9��S��	- ^�=�['`\����h���0�b`-2����%|��/��MA�rde����lļ��h�V%A�?g<�W��[Iܫ��	)T��0�"3��r�al�Q[}���J�8�ES�Ѻ-,q��Y'G���!�am��y	�x3m72|�u�Q��Iʃ�}�d*+�W�Bޓ��+N�lH̷;$��j�}�O�	2��>z'P�r��0�龕2.=�LB�@ք���Qlqf3^��+{́,��jc��H�_�N��s/��*o^���'
x��)p�.nu����d�.w	�J�����d��-`mX'��@J�l���a���/Vݚ�h�5�]k�N{�����D��pB*�#ę%�O����D�$�L���F����Y\Y'<�	cq�y~� 2Pե9D �à�V��,y�Ʌu����h��z�I��.��
W�e�~�_��"�0`��p� ##���HK��e^�^rj%�&�"`�F���!}��ٜ�9���	�"E�
���kO��@Cg��Q�Sˢ�R6�IB�ep�߮7���b�c� C9�w�{'ͨ���p���Ȳ��T��9��K�όcT'���*��K4�tA�!�� .M��G��� (3�.�q�[�*�y�3�{���.D��[{�޵앜��Q�ۂ�%F�Ё���*�@xŘ5r�F�h���rb@_%㛱�)<2�P���b��խn+QS��n��H��@U� 5�u��z���: H4t��V�T�E�]�P�"��w�`��(~�&�#t§T��?�A���-��s+Į�~.�["I��
�m{X��0�Y��,���S��$�HQ��X��-�韾>��Ajd�00n�ʶ-����xBa��K �h��9�-)���l�BK@/�R���0��4
�:tċv�)5Au�����h޴�+���_XY��}��O�e-É�=U�n ���ZEH�R���{��a�_�̗�̉��b���c���uȩ�կ(%���iK�����28FA7�g4$8�Fe��N@,�U6TnM�n�"�>:${VB�$+�910� �GHi�]FL�W��_���~/��&*���[#��ńv)�LFK-!N����q��I�M�_��_���,P�/���LJ[�5Y{��:EV�-y��ܒ"kIe��m�i�U]���b��F5V��g=0wɠE���V\©sZQ�5�_O0o� x��xS���e��m1;\-s��;ݒ�Z�BNV��F(�
�gP����-W*?\��۵z]zJ�k�6Vqd�������6��;��.��GJ�Z��'���_KlV�l�Ϥ�y�뎃f?K,a�췔�����˿�ui��Rn��dm/�����C�<&!uێ�T���ʲm�u�*t���VO�_6�#!ix�B��~G|n���ia��I����n�6��nr ;���59P�����ϯN�n�@�fN�!��P[^ 1@����E1���2B�`ֳ;�Z�c0:-�xo�=Y*0g,V._��=��C]��}��E�v�Ռ+�Zt���C���k��V�V�
�O&M�	�(�m��F|�A�\��Y�p\ ��;O��oS4�-�B.	Y_N��/p���*�4U��*>��we�.�0����K;ti��sWM�VXd=�42��}5-��5�2-LCQ��4��v��(l`/�9t4ro���Y�s	��7ǀz�4�D:}�	U�H��r6�Y��2T�4}"@�c&9�C�$b�gap�l0c?atr4dSY�	��G�'+(k542�vU��T۴cP}#7{+��'�$If}Q�K��M�ea�Ņ��[X؇跃}"d\�~5X�$�_�'PB�&og�p`�B8�R�&&IF��o7A���8:@��0:~hm�FUL���(I� �'��	�&I��/�.�H��f�v�R�28dY,�%J3-}ȅ�Y�0�Wx�0�<�E:���l$�W+��C�!&��o�%�dwn��&��V�{��E{3UU4���G����J'Tz��Q���b���$"��yG�(�V(03j���R�B�B�0�T�\����J��Jfߘ�j��k�g�"�fG�v�8Xc��'���vj=�60cd?+�/�?�[|�7�Ǌ�H�'�c�����8�t߂w�֐A����Q$��W2�X-�g-�r=Iy���m2�z��b��v6(/(eol&�%0�L�42�7�Xx�'tD����F�����E9id$;$�HL���R�^D�'�s	Г�x��d�m���H��y�j7��)���N)(��C[�m�(l�oQ�-�f�јLQhS�K��)������1Su�H5�(��2Sܴ����m����P����F�IH�c)����&�2�ct(N9*�.74~�GT�LUTz�b*����I��)���m�����O�bO5#�m�2p�K�M/�~׉7$#����y�l������dN@(�$I���C"I�A�'��X�$h���S�y�D)�J)&Fv��k�*��e<�(9�7l�d0�y��:�wV��0������X�9�ph���b�GX�'g�fP)�7�Vu)F0�c^���3J�7J���n��ۆ��JX	6(˳��Wug�M�'C�]b�؛U���9�(q�K�k�y(����Z�õ%l��Ǡ��:0�E6Y�$�m����J���k�H�X:$WE�9�>���U(.4\U=�5s)zh��%XH7"�t
�݉�q�k6J��-�Z��'���ۗE��?d*HR�/�4�������k嚍��a��z���-��'�ɩ�&+�Ngs/x?X�I��b�(�K��y��
�����-s��v�*�L��?EFZ�7�"��GEW�k�"��J����(�I�x��(�A[����*��'1�e�38�{.�?�sh��X(b!�2�&[�#[	*K�������%(���B(s0\Y�[[����J�9��䭦R}QH;iiK���&Y�Z���Nn�+��A}b��J��B�V=�f/{���I� ۴JK�Ew�6*$�(u�'�t����nY(1�r�u�K2������\F�G��j+��{��XMd"���g/�u��:��2�B(�*l�z�4�^���d	*��$˴��E+&.�Le�����[M������B����Y�y��es���w-�趪�����AL�2��;LP�Q��[-J�Z���'n�?�S�e�p��w|�D�$K��v�l�c�N�|դ�!�'[�'��	؛-�U���U���F�P#~8o�������붧j�n+&!cC�J ��:*��� �2��.�J��U(�����{X7-.�Q`���ڶ�=�������Q����B���@���7(n��>c�R�-RXC�v-4H1l�F9�F)*��u��������s���b��NЋbH5G��ǧP����Yɐ�j��'��Q44*�VC��\u�z���!�*S�P��į�S@@�'���a�iD��ý��B���4���g����:�'��hs�@�K.t	Z󸵬�QJ&�����E��B_<�X4Bj�ۢ��2�R�g����z���J��'�(�oK��E��5�/;�7�4xW8����GX4ԩ���.4o����9*�%���$C%�ڣ�y���-ЅS��5��N6����Y�u�laC�M�K�C���C��ɿ��~�B��P�%qq��`�-F�Y�.�$��f@���{(a,��p�#�����2�C��4�T3�������{���r5[��a���\2+�p��N�dՅ�Ccz�Ηs�6�ˎ$5�J7��p�rYN�tK]~�f�zhm;؇�|�J�2(!qL�����7��Kp�|c*�'Y\�zO�F5�u�PCل��0X�u5��'9�TE�?�<Ȇ�P�N��g�N�y]�H�&����'H�����~�zC��/�t�>��ڣ��t*R(�p$��G��L:�T`�R̲	z��	��\�
LH=�p���3�Hwh�QT�Þ�Y��H(рy	���&l��Bz��nvp��TcPc���|�%�=�l�Y'���d�����?�yc,��C-��ᖍ��RF�2/�ɨB����~l?������%�zF6��Tq�YB������.W���Ez��EC[D�[�����'J�C��(4�'�3��k��<�٦C�������x[�2c�g�|/.J��|�3�C|	�=q��7��4�t���bz�}�����%����K��ǳ��r���1t/��=�d��}eCM����x^�ׇ�X��6o�9՟u|@�\���4����Tq~|I%�Tx1ħ��c��sًǗ����l��^w=�G�b��5�n�s<q�(�X�5VY�˅[>H���+�����V2�wKxV@N#H&��%$d�k�J��(�}<�*X��]\@��N��F�x*/3�k�g:S8���T���vE(��[�9.�%I�l,x:T�y�^�\�~}Y��fB1v�(�qN�h,�R�E5ڿ%���-��|��?a=oM�B- =SH��&���J�^u��i��7��w*s�:��a%@��j���S�P��V�Pg��{�G?�ΌԱ0����{Ǉr7��kO+1nN�G�f�Jn�N��5:ҨMb����&ɽ@�Ev��=��Y3IDe��߄f����_�4]�^�Y��҈�'��/���E>�C�6���D֋�*:E`hBާ��=-��4v���4�1�%�gI��9t�T�tD�-��g��J���1^-�E:� ��]�3GN�Nu� l�N�""� 2�*,�A΄N.M�T2aD��aiP�r�dy�`A66W�y��K�1
��I�B99���X��'��:a� 0���:-=铂�K_'$�IӉ�)���	K$9	Ρ{s�N��Z�H*Qd�R ٴS�`�Q���dB�/I����]�+��+1�����ʝ#A��s�!c-̓�E�a�p�B�Aq{j(U�H��^&�K2�L�lVF��VN��%��M���݃�-����u����ؚ��N����T�$��"�@נR��cN���|��ˏ,6*J�(=���9�@b)��O+�$���^j�2��Z跹�0��$Z����:q�� �����h;l�&�t��$9��K"�#�,���X�I}��Ǻ)%�B{���8�F�x��'�|*�>�RzI"�:!s�K�H˽6�;���E<��:᯦�<�I��l�ND��x*���:���C����G�FzO$��kl�K��.��ͥ�#��:�#   ;         kangaroo.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  �Q d x   	Bildname  kangaroo  GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � -E�di͑5�&@X!B�5k�@p��	0f�H���
B��WOA���xP����F�HP��5".��BD@s��@�B��e��'Ĉ������	�B ��ÿ
<���Ú 
�u �`�	D�9�����aWѣ��.d���¤0^,���ѫ(D�(��$]��P/偔k�ZV������:w�e��I�k�.�����С��V-:6�X`B�Qi��ɐ�=��Ӯt�I�:D�r9[�d���U��6�v�д[۾�&F�1EKr��Ź<�K ��DV�q[\֐����>9��JΖ�[�AE�`�aD�c�gT}�u�F�e�TlA=​��q�k*��Jr�V��@��K!q�]:@ؑ���h�_#G�EYdT~x�.�ȗk|)�B=�Nj�Tr��Q�������M��a�wA0N �Fe��Eu$bOA�H�a��S���N>DW�BAPw:tIT��WՈj9�_�!��L��%7Pn�*���=�Pj:�T�a��z�Cl�&�U�-IYR�bd��WIu�b�%	ѯ�E`A�d{X{]��ޭ�Z"�@�a=�vآ�U��qG��b'2�+T;�T�� O$\5l	$�:�m���:jR�������qu�U	59�ql!P���QQU�|���r�g+3���Vd�B�ى�{Z]��8�!4�s��[�V캢F�F������oS�!��
��P{GV�iS��F�.�c���P�+�ĐH��CF�Q��}]�2�.�\�lɑH�=��ws�a�{�����Pk �����pO�!i:Ŵ2>n�C����eL�5��Jn��Y�q�E�����-�r��xOp�}�ĝ�����R�P���<nR��A�	$r��F��;�H=v�Z�L7ay���;O}ֻ׬}n�������7>牯s�����;�-
e�`Lo�f3���[�kX�t���0Px �<���Hv
_݊E;�!lٲ�[���Ea�]8�����N���*^!�	G����$&i]�c�Y��A�-�J�4��
���{��6F��p�rca�R�"!IG4���H��Ќ��s_��v����Jp��z'Fa=L&#����P	qh�Ӊ���"N,�o ��4$#��bV�0�a�{)��hb��02T-LR
G�B"��zC��S<b9�N��P���]�\��V�dV̄�R���@Rh���xs��H��*[aR����%a:{:��N� �*��"լ��;���[��hIJ"f����P4b��Yᒡ q�)+�
F6�J	��N�$ ��VD6X��|��b�GD�1!�Zy�i�j��C%�J������[/a��7>ϛb���r�$�&��G�"Ә�Siq�"�9O��?Oka�GEc��F��LꓤJi��-��P����E��0��Js�P<L!�6�dZ$S�YVC���
Ge��.�&�Q������QcFR�K>QI�{������I��R�&S%��S���3[�siQ ���P�J�"`o鍇�#��If��5�oo�Z�Q��U3m-j�Q��1�M���)պ�pHm���@jİ��
�*���'��=��,�H����7�-4�g��&�[���R함�M@��Bi����6����<�j�c�����/~�=ƥY,(��f����X/1-ʆ���}�2O�LRVD���0}���d���	����\y��H��u��a�UX�-K]2���6n(����X� 6�dv�@�V��7k!�6<�}�M�����Y��(�#��pF�C`��x�^e�zx��)l��#V��ܛ)%뿡��R�2�D�õ�cݪ�U_��,V��Wv�J���]ѹ��Y�6X�M�Q�JB4����7k�����;)�P��Li�s��I�ȗ�����c���b�*%
����-5d�L"1���׮2*/�F��.�r�~�x��`��K�u ����:��	�۬�<V��9]��)�hD�EE��툯�KW�Н5s��"t�O]��"����$���\<�&2����}iͼQ<*��a��0v�"xZd|�����e�^�CU�nϗjt3�t-�նiIĊ�)���I��H0ș1PU�jaYA����b�=-f�T �H)"�d39��c��@d�=��:Vw��f�w̄]8N����]��� �[8B"���&�	�Y^�B���u��z��`)Ny#b���,g��4�1n��?1x���<3�Y�f�%�y�3�-*uH�@s�����a�.!E�/yɝ����|%G)"S��s�x�4�o����%���b��WAIpR$;Ȯ��������d]]v�CBv{xE�gM�vCѓBA5ɗ���~��j~&{ه>�1*Ya^e�"%�]|��j�&�F�>,�'R�1p�6+��TuS(�2�a6��2Mbr�o��l1GkxF�ܒ���4m{�D��a�B"W� l�z7hW�Vk�5��jg�8vtf�d�^6a��!r1)�b�F]�v5��y~�|u.T�o�w8C1�\G���a�"g�wq-7��&3�Ã��En�`��u�ń �/�P/�E�pNBE�H�4:�dpc�w�Bp��X�sYvCpIr��`�H,,r�XCa,��fƱN�����B�`Q���BBT�|J�"��n�wA��d�xy~gCi�Xb�L_v�A5szWB�u�(�� k�= 3��L�p�MϘP��x��s4�R�$���26<qF�Yr�"M{�m��P+_��uzt�Q�[��(�ŏ�"2�"��̢�A~$�L��{wi$�m'*N&H�H4��c�|Q-rh�+чT�}%���p�Dbp�($�Z&]_6JO�,QU+�1[�;�s��d��n/�ZӷhXQ��N;�Y��Y�� d !�U�C"6��+	��n�5hp�����v"�$*��P�u�p�]�'�tj��)@@ c�l�8���7�2:�^��yp�Z�T1tX�Xv�d��xA�I�{C�Ri���m��c_/�k�`JOav	�gr��d #d�/26a>��)��h�C�ҘLwQq"��XũE� �tZq 22#��/5�&Ry6��)nB��kA�^�N��4�QDt��Ϙx�j #
��&�]Q���9B�9AQ0�k�(m碙�5�=��4�R�vs,�79�]0��@��l����>�++��+���W0�f`zH*Guq9�;���r�R���\���-�+	"�N1pxx���*{�L������@��1-�᧏�9{r!I��2�"\�5jq;q	��&8��qk��N��o�J�S4V:�W��¦d0q��yq�W�H,օ_�n׸��Q��R�虰�Z��8ò(." b�gR��x�I��K1-�T]�(���w��JpWl �䧆����)�I:o��$��*ʩ���J/��$�S�-
Sy���.鄬@+z�pj%8w� �2���m�S��j��hǲ���0�XD�(�ʦg2|�����$|a/{��&�m�eC�Z�Z]�10EQ\�E0�d��� ?���y�9vw��ac�.V{���1e�Q����,�
*rZ+%����0�It��[��%��1����4r�jВ�aQk�!Ѫ�Ѱ(%;A��3	��N��\B0���1+�G%SP����*�����/�q�YTS�/��;�JD�N�֛���!+�J��ep� � ",Ur�F�ġ=�R1�^{��7{����y!�hV�a/ň����!Q�Yq�EQ2k��(��P�2i�l�,���(�T�%Z��� �J��C;�E~��]�b�[�	�-�oP��VK�ljKe�a/���X	�#@��6|@=�T�*���2�t�u�˳/���XR���KŸ�&���Y��3eԚ
�
P¿Ɣ��k]����1t{jR\"�u��à��a>�A�V����@�N2LQQ�X�'��O�p�X�[�h�٫�
`��X�e�B��e��7jm�Dt�EL<a���3b�Q���Y� �A�XSn�C| ��np�%t:�ej�u���*ܚd�6�[���F���%C��nPq�V7�P.�P��pN�c9��,��[d�]��:�n�K�|�{�l5�n��EO%��v����Q҈�P� 9p �ш��aQvp��d��tk�V]�E�S!Ř���H�(�m��l�%W�[~�X��%d@����q�a05N��L�K��LG�?��������jQ�D<��̧�����wK(��o"E1��;��%B_�$����I�������2F{j�E�a����(�ʿ����ץ(|Zj�k�&Sjkf������d`hx�� BZ
�%��+�eW5���Әk�֋1��%�1��p �`/�|��������Ô!�U���}/���	|X�ш�#� =�,������e��L,oj���T�uVM)Ջ�]�H'A��a�`��,���M�)�����w[�{NX��R��,$M��bf�9������9��|�1]ȍ�ksVl�1��Z�H�K2���[f*:����@2�9�3��-�A�_�VO5S�&��Ҍ�Zfs�a�%��4�r�	|ߝ-ã
�P���}ĞAX�}elW���"&�4Q����7��a��YJ��pq,LdP+�E�LEQk�]�k�%L9iPK^��h����p L�2X^��dIb4����ʗ�ѷK�2,��o5t����R�S�����!���)c��{�4N�O�k���*��ݎ��1�1��+��τ-���Ķf>�- �f�\V��Z�1�|*���j��E>ȇ�1�4���ͽ��'��ԤN�*�N<��J~FN�;k�m��dĎ�]TB�Ȋ]�Q����ۢ�f>m{'��ym��p</u�\%���������[0�~�i�VJ�/O��!�������z�S�<�+��fe,3��.S�}��g�³,馆�>�k���D�J�2�<�*lNo����  ;         
horse.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � M  d x   	Bildname  horse  ,aGIF89ad x �  ���!1 ֌B֜Z֔J�s9֜RƌBkJ!ƔRޥZ�{9�k1�s1�c)J19! cR9��R�s�kޭc֥Z�k9ΜRƔJB1{Z)��9sR!kJ�ƄZJ1�kBRB)ƜZsZ1��JΜJ�{9�s1��9�k)�c!J1ֵ{��Z޵k��RΥZ�{BƜR��J�s9��9�c){Z!!�{Z��k�Ƅ��Zֵs��R�{J��{cR1��s��Z�sBZJ)��R�k9��JRB!��B{c1ƜJ�{9sZ)�s1J9�k)cJB1R9cB 1!  ε{ƭs�֌�΄��c��{��Z޽s��R)!��BkRcJ��c�֔�{Rֽ{��k�sJεs�ք��{sc9��R��JkZ1cR){c)�k)J9B1cJƵ��ޔ�΄εkƭc�sBB9!kZ)cR!�s){c!J9! ��RJ1��c�ތ��RJB)��Z��{ֽk��Zsc1911)ZJRB)!��sƵs��ZB9ZJ����skJ�Ƅ��cZR1RJ)cZ191B91)��k��ZR)��J��9sc��Z��R�{Bsk9kc1RJB9 ��Zsk1�����R��Bkc!sk!ZRcZRJ��9��)��){s��Ƅ�R��R��J{{9ZZ)��J��B{{1��9��1ZZ!ss)��1��)��)ss!cc!!JJ))99    ��)��9��1s{){�)��)ks!{�!ks{���BZcRZJRBJ ��!{�)s�!{�!k{s�9B{�1k{)k{!s�{�s�!c{c{s�k�)c�   ,    d x  � �M7������QS8m���\��D�=h�	��n\A��V���"n<l)3 �6JM歳�+Z�;x�� ��T<H1�AW�ε3���9��F-���r�
7.���~�󤎂'L�8��\��
��v�V�Q۶�7e��!ҒM�:KK�1�a1�(* �H� Rx�>eZn*�r�B_�����ԤmzҁƉ3��6�CZ!sӤ3'��-lZhq���� �[N�%�Z:,�L@��A��T�`��W���[��`�ϟ�}�^�r9zEMM�(4lب�_�&'8Q�B�E�4�TB	&)� 1}!��6�@��<�7@]v,x�,�F4Ӵ3z,�M+�HC�C\mE�|�2�!�5֓N��7LQ�.������Ó-'ar�l��-�,Aly|	����UK�Y�y-���7\e�G���$LL���`�dQ���8�%���";T�	&e�$��<�WZha�O,�ħ���DO@Ёք�b��)����X��"{!��|s�E�$t�p*�h�|*ŧ�̃�5-UR	*eTR�{ q�@�X�qֱ���9d �gDc+G�&�N����7�H��q�ۑ��lB4��C
*8E�Hс
�a��������)�HPɵ�h�h%�4�DI$a�Od�k+/q�%ϼ���X����K�h�uD��\y#I.�p�LPG�<!E�
�A� WX,��LI �pb���\�� �%
��)kN+ ��H㳭)6�������8�,uwG��C�7�l��QPg���`Br��D��`�҈T���)��cM=�PщO|@H�akۡ�%р3�߁ˬ&h�y�<�O�7�,sY7��4k�(`!VX !�6a�#HA� ;`�����,z�!�2D��h��xkI��#�7�����u�ʻ��;x p|ӝϜ�]�!_U�� B|�	t`��Ѐ�i	H���L�G���A�P!�D�8�o��LM���!���/N���U;܁@��ifsi�!+Le�� �(6%�  H��
��)�$!��B,�@	6PB	���(�@�pA4�'8�y�^~D`�xw�
���aK؁S��� ʐN8@�p $H�M@���:D�$��@��l 6@A	���*��e.92�����{H�7!����7�*�u2�"f��,��IK����#0��,a�Xaؠ~N �� rx�3t�Gz�>��gG��@$����7��	\�J !6ڤ�n@/�&C`W��Z� U�	l��'(���g=�ˠ!�#��!��� �(T�A���'܀	6����Eٜ�0HK�t �D��4Ц���4��B��gT��e.��u���!iL��@"��F��C�A(y�7fq'�b�Nhp� ��j�G,�LȀ��gxC� k.��G��R��G>h��&�㠇2�a
��J�^J`�P�?�\  J�0�al(��
U�!� l��l�1��`�C0�ސ�0�����R�,�'>w�#��=���߽���G3��	��#X[ t�f���jP���HD����&��@.�h�?C��j�d`�����X��]������G>���֐���!�!�q�#��%a
Y�{&�j��k�Q��JOxB�C�?��za�e�r�{� A���.0+i\6Ļ�g�=����Y��Xo�alq��ˤ%��	7�!	�[�F�'%l �HNlLe'��Vp,� � ��,�]h��U�YY:83���`�>��xT��D=�1�f��͐54*�(D,�dT0A�~�%,`��t�����R��~p��8X�?
SA�P��!\xE�{�����>�Q
ᬂ��wQe�wϕPD FA
ԡ�I���\�� N���,�fC��p� ����3�b̚�ŝ�o�Z����:�ء�l��zH��{�B�(�5!�s`¦A����`Ͻ���	\=ʌP.��`hw8h�wh��]��]�:Mv��5�;��9�ݡTpB|eȆ ���"{�7�qJd�	r��OSC���tD>��O�
r���/h�H�B5��d��j�8��~{����6L� LT��4w%D�kE
@Y@�u�fx�`� � ��ʪhv�=a3ڀ�d���h8c<���Xri�4���¸?:���t���@� ��lDK0_� *��He��(¨�"� E�2�AT{�(��
gtħ`�c�I7�{}t�bAj$�G��]ۇ���@�@��۠��	�2~�p
�P��gr׀	W`�S=E�WQ@p 2���pŵpNFm^�_ X4�g�7�b�4|47*�]���@���	�0
��M0�W��� H�V~� ׀
�#!TQ��I]$M} �K�GeQ�_�pH�����3�L�Hw3<�$S��@%wz��:�Cp
z`C t0�# I@	;���0Jph4J�tЊ�4t�PVtG�Ζ`^��!@����� ���Tl�CG�����P���@Ԙ&@s��@R v�, �@	�Ao��X�gHG�|H�=�d|�t_?t��@Z� ��� ��U�ЏOAZ>ӈ���)��� ��0@ 7�M��3;$P	;P��	u�L0j ���Sm�lT�dF�|/�xj�~A x�.�p� ��P�V�^��3�"��7�e h �B0 �1g8��8��0"�	�-�0	4���LB�[D_@\U�p����|^��A�Hp2�������p�?y��p� /��g�
�s@�W�ISQM#K���-v`I�ـ
�p	H
��%0E_$0��t�p�	G|5
�dpM�^����9Z�(���Cٓ��KE�N�4ә��)��'�SEPv`�Z0C�`�`�42�N�t'��&|�0t~ ��w �p�Ř�ُ���Y�J��$�9�5"������8�02"�z�j�4 EQ^D2�����h �t��0�b�m��R��^�IZ�y�i@=j+��%48�C 40�&�)\�ov@$@R0� �4x�]$m�o9���lS�^00B�G(��~Ɍ��N�a׏�EQS0���EH�¤�#��0�u�M@H w���0���~P�C��m�gx��l�*��i	���p��;v�^�Փ����7�`4y���(��)���Z��HRC pبV���H�������p���5�o �H������SȌ�ُSh��ڟ�ُ�<�������::�9�`��8(X{�V9\�f�'e��t��o @��MR`��7��Sh@ˌ����^�a��Zٙx�)�ʝ��0�Z�B���4(�XN a�t��h;���	j ��IєU�ДS����:����z�Ks�:E��6&P3c%{��<��8�J�
vxc+��V���	�
��L K�����
�BKZ�ړ8zQ�Ӊ�N ����)�)5X[���r�Q����K�N Ch�aj�S�	��o�t��^��"�� ����
��9�~�N��J�&�r�&0���3�R��2�F��3�G�zxR�.9�?��Y7� G�[ė��^2�7w�;�:���I�+X���2	�j�	��4�H�(� �%R'�o�AA`|���7��V�U���� 0@G��p�݊��7���U�)C�U�\)���oE��#[&��	��� `1�{ �`^ЬL�փ��W]�I;�xP�H��K��;���40�]�=�5��8M,xp50pP�1`�J�Q��͊��|�Eec�Pc� �B�Ek@�9��%$}Kf��^�4��#�Z�9��V�	\ ^q0�W1�l����0�R�Ɩ܃��ap01`�uG@g`��%���ǆ$ZD��),^��40���:�+�&�D��:.���@�? ��d^�`�%��i\S��
�3`	p03�E:�����;Z�y΂)��T* U@�4C��Ll�&0�`H�mT�)Zp	]�_`0c�2L�І��Wt� � 0��>`=�0�El@���� ]��&�7�Y��o�u�iȨ��p��zٰ��mD��M����`�J��	�\F�b0	z`
�Д��0�Pm^��ўw�]QaA]B�^4���Ҏ�40-�P" -�2�0q`��Q�`~�`j m�F|��!� pa������@�P�R�� ����y���]�&S�x@�L0#����OC`	��u@]zf~���Gq��W���)�Nm�u1 
� -������i�V�Z� ����P���� ݴ�4�E4@��eO,*� � ��@y�zZ�,Z� A�,Ɲ���z�|H�1p� ��Bڀ͐ju�i�V���`^͝�͍�:��Ă������e�B� E�9�@�P
�q��t`F`q ��G��wm\�x�100p	Z�vِ�����3������A�TO�4�ؙH n�_F���)'��=u�
u�	��n@��lɿ��j��oɞ�hx!
�E �������iEV���@@����@��������D�H��Ls	X+I@� e\���r a@��+��.ޞϦ?	�0C�,�����C16{Sc|.]�&���@��K#�R��n��=���C�T>IP	��
�J 
����b�cP�^��!�!�p��yZ 
� �NVє���&]�����!����
n0�.8!.�����p�q�\�w@A��1�Ov�N���G�|�-X@|��0���>�����76����!R��B@����Q���,�@jR�+%a���Apߖe���!����d�%0�h�|������C�`��|�U���U!d�4�Ǩg�4�>��B@�_�#Z�#@NR fPA������L\f����+n� m \P�m`� ����� �"#1��]E@;�^t����S����K���H$\Mp��4�"'P`c���ap߰����q��R��/���lp�j� #����a/{3�� �/�����#�H��
��Sp��L �"G�N���xҐ����2&�5f���%��/!Cp쓈c�HJJDb3�M�Ɓ��m��q�rޔ6N�4gA��'���)�<A�	Q�8�U��ZC��yb�N�:u���D
J0Ĩ�(6��ib/_8z	��ǛrÄ�ц����p�ԙ��Og?%����74t')�V:Ii��9&�L�b�Ɯ;L�HaF�Z@��K�8q��	��w�0A� :aC�3Jv7_;ŋ���)�(�i>����YZG,y27CF�N6�)K7�t 1��0@�0@A�����/�� ����/^�C�.X��n�fxB���C���Ū�N�q�9J$�X�<7�č5�q�2XB���HbN0�2����h��D �2
�?���.%��1�C�0��������'�sD��x��q�q�y'Oãa$�©J�o�%��;���<� 	+�x���@aJ*g��6&������-�`C�<РNp�<�y�y�'�8���p�֞=Y'�@ct���b�@&1A�A�`D*I�2���'�46�����"��#8v�È+ð!�<�����yp�'�{
&�_~'�j���N<}d�)$�04QD3xb9K�l�:@hB��P�|[�a�1��"8"&���8~`���`9_'�@X�=�G�����]�X�|�ǝ�m-�3�A�C�Rj	PkT��51�����R��}�a��`�v�˫$���#�fXAntzᣓ�u�]��Xq�Gja��1Y��hd�d�+9�L��!D��	�8@��EaÖf�$��J�ēO�X���M�20���V����y\�ȉr���!���x�A�F����J1��!�@��N2p�u��A�
��Da�q�E�>|�}��p:���g�E8',�L�@���!9�U#��X�*6!�!�����#Ո@ [%�@�I�a
����� (�8�
O��}�@ @�!��p�@@n8�.���j���(�vA�|�z��G<��Y����$��ALb�(	�P	AP�	�����,| 	*x�
Np�� ���C`���	RI�
R �(Ѐ�Q� ,Q�!���")�Q�7�RX���a�}��Kؚ�,�� j&�A1J�P����h�`A`p�X% f_�Ef�&�!�T���lJ�U ��r�`��"��w�	�S=�r�<�y�VB���Ȣc�+)��	PA(C)� 
X�P��� �-�_`C	p�p*aQ��20'@�<x����
R��r�G���x�2��P
T�I!Ё��B�WzY�Jp���Bq�Q����>�Lo6�5(�l�38��d�&S��($�K�����!�bpQ��A���iF+�cU��V�@�f5��Lˎ'8@E ��X% ���P�	��BE)=������Z� Z�8ŖD�8mg[�sl��3#T�B����A 6f�L [�D9p
 �����"�@*���ތ8O�&L^��B> �]|N���h���;#b�m�0[9�y��`) �rV���X�H���	�'�@�=^B`�@'L`�'l�L�l
&	��A��b��GBh8D-�`�:̢�=�>�qcӶ�3��^��4��2|���I�"`
P�
� & Rh!��F �Ae*�t�%�O�B���>!� �Ѓ,�ڎȮ���]C�Ny����&p�@��J�'vp� B��'ˉ&�B�">���L�i��&��@ �#��� �fx&��lX�8�����s���L�=�fƲnXt C�+�<h�t؆)&P�$�Q���%|Љ%P`k�̀k��!� ͞PE��TU��C	�p	L���͠Ǎ��NR۝�P�G)������8� \!�bH�&��l\c��V��m�Bk��Y2p�)܁	�Ȃ��j Ј���*>0@ ٨��A��#��$�;�Q��7,���FKS�l�A+ZiD���2�(B�P�&4�T S-a-g k�.$���$�3I"d.�>�Op���u����$�;�8�r�鋧�^�������JL�	IA<��&$T��@3����B��B(�����݌ ������B*Q�Cw��Y	����,��i��ƋAd� h��:�����(�;����/B��9��J,�2��~� ?sT���?P�� ��H*��zhQ�<q��
p��	�:��w��e�/�!�|Ӻ&��8*�;Z�<D0Th-��!���.��P��>P�S�+�x��a؄;�� �ڠ���Ļ ��fp����r����c�3j�K@�kP`�:���ɶ��:-�TXZ�K��ZhQ�#��O�"M�1�:$@�y@�|��b�	,�<	#g#q�����!h8f�2x8��>J(��]2;X�
;[�=�=�
(@�����>��ݑ9���0�!��6xDP�o D2"�	<:=I�o�w{x��j ��DK��e�:p��A�@���x!*��k�Y��<�1x�H�7��y�?�3���`�6ȄWȁL��m��~ؠc�F���`���	G��`�$�9`����a��$��A�6*8��	��A���?��.�I���k����K-Hw��{�:�C$�j��px�a6)��e{8&��K<�ZZɀ�q�:��"��tD�'�",�� �@x.��X�����D��/?x����Ȇdp��9Hb!BjDƧ�/�$�wp�0�Jm��"{
Z���x�I���D��T�,����1pK.��5�I��9�P6x�L0PІu��xxd<�j@��TʦG|wP��k�ƃ>���9��K|��������X9@!B��:�.-Ђ��_h�8�Є.��.p=/H����[��� �4��FІ[�{@�cLJ���$B�i���$H)&hNkd6+�>M�HY����K��SD�%h	8�.�IQp���{������Z��UZ�|�F���<HcDF`��`i<:謖�D��N�ذ�Ӥ!���7�"���ӃI�P�.ȄT�?���;w��>Q6XYH�G�z�>q2���L��"|F<	lblJ)eKP�;��%X+���̤T�� ��J��A?Ȅ6x$�a͛�1a�.��Gȅj(N�q���l%�BU5=D"��Hm�9h�ƃ�qRl*�%�@�<��x�#��2�l�2P5�.X�X 9�*�A��)�E��K�<����σ$�hl��$�X�9��Hp��P����͠�Ap=��l����d`�OP.��Eh��ڛ˒�����^<��:qS�ɓ'$#|�QrXJ���3�Qt�H�t�ec��t�b�Z�@X��#�|�uH$�|�6P�`͎H�
��0��7�q��Ó=��O%��ϥ�h�m%²��ѢD�%��|>&����8�1R��k ���[����M�P�ȝ���P5��ŉ<!�	�m�O�\Jrx�w)M
)=�9�&�lp"��I�w�L��l�m�d��LX�$�F�?����/x��	/PI`w8�(���T�4=H��ݥ��p�Z�L��':�$ǣ�V�
�b9 �S���l�f��E��?���.�Mh�H� �н ���KV��:��Q'b���[l��}�`��o�׀��'њY���F�+�^�\B@�L�YM�E���]�L�@� ]�L��� �?h���e��QRJ��+m]J>y�F�B��>�t<!;Ш�H!h�t#�7����:DЂz`>�Q�@���z�!���x�M���?���@`�$�|�2��j�[2�ۧ��j��u���򬎅>o�Lj6�#B�=��"(��+�k �Yȅ�W:��	�!!�� �Fx�! /��# �g���[)��c�c",aD�&'p�s����_�:P�k:h\���&3�< D��6�ă�"�0�* (���:�7؄ 8��fX���)�1N�tPS2n��ݓ���oj��SU&��;P�d2X)�SЂk����ՌC�f�?��|��+�#R9� 0f �)�YX2��'x�\�"j|��3����|�hOnJOU�(+'����,p��g�8��U�:h4w�=�UZ�Y��7�>�6	���:(�	�@ ��Gh�cvK8�6�T�U8�� �e�|r�.fڃ�`���(`P���z�ț�GX�@hS(J�� ZƆd��7��P Z@+�K��!Q '�P �Z���0�LX���wb�QB:�����a̑&4��UJ\�3�q-ϙ�;��l��w~g�Kq��6�RK�N�
;;B`� �x!G ���Z�>�;�)��/8y����T:{ȞE5WLc�j�i�1B(߻�<�mp�f �77�	H�:�NP;�%@HL��:�B.�����+옯v�9L©w�$p���P�#8���K,'d �;T��^�k�r8�hx:x�9��$��w�&P @��4J���˃F�d`�!pp�� ������Da���l�QP�k��f�E�K�\�[�ox<�K�q0��@T�8�)h0��	h>�.� �����s� 8a'wP����
�EcI�&G�eh�V�J!0�߫���7m��~��p�;��F��jL�S�*!�&��J0�Rh1X^�{pj �<�|����+w �^�wZ$ך���e8�	��V6�������QPkA��l؆y��79q�;@=�XN0r�Q�=2J(�4�Z0p��ao�s[�u��s��R�7R���#���fˀAH���*HJ�J�����z�����q��dh!A��R K�U R��S�T�P�v�v��:o]�s�|�w��)R�s  ;         crocodile.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � KR d x   	Bildname  	crocodile  0HGIF89ad x �  ���ε��sc�cR����{scRJ����sc{kc��{��{Ɯ��{cε�޵�֭�Υ���{��s��kJ1!�Ƶ��s���{cR�{ccJ9{ZBB)ֵ�ƥ���{��s��k�sZ�kR�cJcB)��c�{sν�Ƶ�cZR���ֽ��scB91����{ccRBsZBJ9)B1!R9!������{skskc�ν�Ƶ��������{�ε��s���{kZ91)��{scR��sֵ�1)!ƥ��sZ��s�kR��k{cJRB1�{ZkR9cJ1sR1cB!J1kcZJB9)!��Ƶ�{��s��k��ckZB�{Z�kJ{cBsZ9J9!��{cR9����ε�ƭ�����s��sZJ1RB)���ƽ�����{kcZJB9)�����ƽ�����{sc�έε��{Z91!��cscBcR1cJB1�ν�Ƶ��������{��sskZkcRJB1��R1))!ν���c�{Rsc9��ƥ���{cν��ƭ��������{��k��{sZskRRJ1�{ZcZ9��֜�skcB��)))����ƽ������{{s��{ssk���kkc���ZZRccZ������JJB�ε��{��s99111)ccR��sZZJ�޵��k�֭RRB))!��{ssZ��s��kccJBB1{{Z99)RR911!ccBRR1))99!cc9JJ)11!!!!���s{ZckJRZ9BJ)s{cksZckRRZBJR9BJ1)1{�kZcJRc99J!ckZs{kksck{ZJZ9{�kZkJRcB9J)ZcRJc99R)s�kk{cZkRJZBc{ZBZ9RkJJcB9Z1BJB)1)BRBZ{Z   ,    d x  � �us\6p㰁���6lİ��L��Ny�a���رN�~a��љ�qݾ�St��v(٥c��|�f���.g�v��qc�m[7���xڦ�%9l�m3ڒ۸m��37�;m���P�;u��s�m��f�He���N�<��	[;lٚa���6���ec�>x���k��f�v;����%���{͖�!;�O?s���7̞ȱk�n�8mʠ���� �e�<��������u��8�k~��T�[��~������v�.�k��M1q=���7{��5SG��gv���K7�[3�aM0ހs�B��R���E�Ƞ�C�TRI'�$sM^L��݌��/�d�W�t8[x��ӎV�3S;�tCk�>�p�Mz/u�>ݬv�:� �8��S8���L=-�H6��bg�$b]��h��5���M7��D����W��7��6�:��3��1a�OE��g�g�#�����1C%yYA����7�x8���PE"���8ް�Pp��M:�U4���_W�S�c���rL:y�tL(��g�]�e:����?
Ә����3��s�V츅��|��2�4t�:� ��:=^#�:Bꗍ3͌b�P0���k�̃�j��=�u�5���Q�v�.�p�_7��z�W�v���.NL�k���c����s�=����7��Np�4O7@��_���Ý���(f&o|�L٬#TP�o7��UO��_=����k�J%����=��s�M����[�C$��x��=7���7�8̔��O�ި��7�����@�(MWޔ&(���U6�x}ϐ�&���`&i3鐂<��6���D��iv�n2��7$2��ҁ���'�#�tM/��BA�x��7Њ�Q�j�N6�N>���=�v��!�|v�;�#�L�\��=��O�f�T�M=v��)�{B�J��Ӌ���M-�d��8��w7� F7ܡ���7(9���)�i\C�Ga �	��t�>&�<�X�hF;�r��!���:d3�tJ�X:���5-?��F0�}`���8�6�My�к�t���0�+�pǉ�"��nC�";���9*<��f�^hJ�hGD�Ҥ�c���*^��7��>�؋~,d�@������֒�Q������PF�>u~�2�ӏ~��Ap�m���$��ǁ����2�������X7��9�"(��>�Q�z�BA���U���cpj��S��1�^L�7��=���E��OD�`�f�%J�P���%��tl^�X2�ֻ"��^��F�j��V����x�9�0�X����T-��n�b��Zh��Zܣ�!s��Fص"t���L� c����(g��e��^��
��"J3�et����=���}�b8h�z��C "��1T],�oY�"ד|l퐵��;�Q������V4���n%�Y�P�x�J>"�m<r�l��@�I|�3fA�xNY��+ � �@�!rpe`�K�F/ b̦���>���w�'�!�1��o%�����0	.�'=	��z�����[+ۡ�V�0)�7r�~�"�`�
�<$ ���*���Ci�7<a�ƌ�Lq=�<3y�IQ�W�A�q��5�Pz�tE"GUg<qb(���k~���&D�@?t1��`(�V��`W�A"��<L�" �D/�q�{d�̔�l}�� Rgv3-m�l�g��&3n�(j9�D�Q�T�ب�3�Q9l�fb.L�[YȢ�U��s��D�!A��2�@h\a���@�(|ʳ��G�.�����8����^���\t�Aݦ(���&6!T�|��7.��<��t�u��Z�B�8`Eq ��!r�qsP�.B� ��ܐZ���L)A�����>�z=�ыw�c
��8��k$����E��',�	X^��	�(�E1j �`.�6�g���[ȡ 8(���
�b��4v���O��AWz S�01��G|0�5XD7��-��'�;1�A�%�D%���F+����
����`R:�h��9\!�X��(� ��
���a�F���qTR5���b�op��0�I��'%����*����8���/,t��8�2���_R�y��{�Kc�p��{��Aa��]=ޑ7e�k�6�����* �-�Z�"�c!�
��T-�i �D"�0�J�1�/����]L��,���W�>���bq�� 7�C!
Q)]p�:䆙��+���@�}��i�b�	J;����33��"�щeHH�=F3�KP cy��0̡���KF-���^�B�/�m��+� w@��d'�;���0!�)k6�2t�C��Mǰ�{��@,�Bd��_ɰ	w�
��	� jPs���J�K����T�B�v�p� �p��B� Wp>S��G"E"��s�7�pޠ9��0�^R���#��P	�	�`���+h�@����G�f
F���XP����&�p�Pؠ[���0��@���@#�.�S!@.���	nq�`|����J���o�� �P����	�����٠��&GM�g
�ƈ�L�
�0�`|̰���7/��@͐: +��74M���j�V�0���PG�l1����	Z�y�!�P	�`e�	��	�0'�`����J�����
�pܰ J��Dy��� j�g͠2��0ٰh�p����`��l�R+��O¨&#�/�	�@]|�	��Ե�רʠI@i'LD �P���@X�#�@u�`�Q)`����@�S��r�um4�UW�J��]y��d��H�(
B�Q��_� �Ϡ�@��mx�W��
�0� �@�`��e�	����Z�pTӶ�����;�;��P]�*�� ����j���!��`ǰ��z� 
ư��@s �w���f̀:@�pw�@ ����D� ���� �G�_ !�	Op1`�����{Yސ!n `wqm ��H�p4@�@�&v��!��`Ð��D������x��������g�o��@������	k��H	!!kP	� ��� 1��4��HHw�H���p�0�p���Q�̀�!��X�0s�v��*@ qPW�����8s��С�g|@
|!2@
��	�p� !]�	�"@	�@	x`�q.�X�*�j >P*�	?�	)��,� �I	��Ɛ8�	6X	��Ȑ���@?��P�p� w`�9�Ы-�m�9�±~��	]���q���	��	q�kpkP A����	r����*��F ��,`�Zw�	�p���	�	w 
A`�p���,�	��?�>�*���=�q�@��	�B�vA�0i�	e����g٠�=wq�?p=G	hJ����xp��
����@ 7�
p`� �p7P��	k�	���?=PA��,� ���X�)��4�	�ǧ�@���pK���@A`�?@a,�s@ xp=�� 7���P Çqp>�wP���)��� �� B�	;�*�=� =�*@	�x�<
�@
�0�`L4 �P���	��	���03�	d�	����`���S<@	A�v˷v�
7 qз����ƨ�����x�xP�p	j��	��>0��e����>pO@
y�	�����a��К�im0�0����0�u� ,�����v���9�Ћs�+�,0��K	�;���F�C@	����	J�	 K	 �*P�,P�A��`��*���4 s0��}���ǐ��9��z�� .K r�A� ����{BˮT��k��P{�E�S+���j����K�x�s`m����m��~a5�a5����P�?�	�zO� ��p+>��P q�$� �ɛP @��0�	�	 .p� e����3������q�) �p��� �r�wg ��_�t ���0���������!(��x�.;,����A�犀�Z s�\�` ˰ ��>���	A\�F�,p���2�*p�]<2@��}p����0� � 2�!u
C0. ��i���|��A ���h����P�3M X��
r�\gZ���;��+ć��0�@	�`}0���4��C�O0>�r7 e�'  "�	�0� ���@
] |�{ԡs������������A� �p�w� N�@���x �, ,`2�C�.@z� �	`\s�i�-c�G[.�{ͼX�Kp.�04�F˰f 
����h� ��� 6������J	.�Ć��\�Ξ�0��= �>P 2�`��80����P 0�i��'9 j\?����L�-�#p]�m�	t �� fW�p��율xs�ԈJ �����|���m �P����	�A�	A�@�J )�
ǐ�p@ͯr��2��s�`��.P?`+m �;x� �"Ph0p2���a/�(u\q�s� ������������K�:�	ݺ �K�A |q�p ���p��	i��r�Aps�w j*�	�X0� �e0@ G!0KPL  O����X � �px���B��mE@ ���@�"oT��ċj��@�C���8 ��
3�p�	j� � }0�P` A`M�3e�O�?�� C�A.��_��P��q*�* ���6��{H�0�Fp�8��`����#=���·�W�p�
�[�������5C\ .��,���A�_� 3�s��#"�]�톅{�:�����9p�>`�>����`�+�ە��?@����J�ݚ? ����7�j@	jPE��`fX���`.ЯX�[9r `s`M�G�Ǖ@$� ` }�Љ�ֹw�x��P�x�JK�е	���j��Xp�p�]\��[�,�,pt�W�(@�P��E��O��r F�0�=CP_ �� � �00�]Xp��Ǡ�Pq��5��`	��O	10<G	�6��||Ԟ�����] �@�M{���0ں\����6X���}|jC��C��@$ ���\�~��� ��\I�j�9rz����JFz��(�(ڔ��9	䠘�(N"�$��㐲\���Q������L0:��aY�bN(2�����	U����aTs6�
��ʜ+���5��8�$�T�j
��A	�y�,P���Dr6�I�g���
T��H�\�d�:�����p��ƢE�X� �!�D�@!u�!�(�pd�W���K�oqr.���J24�1�"�"R���@�<��m�a$O0(����!� �.6�󸖬+	P�ٴ��3^�	��N�F��È!��a	VK��"`���xA�\��+�v�E:T ��Bz�dMz�9�Pk�MX 9���+���I�^��J�ؤ��QF�^i%xP ����:�y��>��"Fb��P�)	ʌ��8��F��!�\d���`�	E,ꡦB����V�#��:b� 8Jd��tX �`fR��� ��X�\��g�V�;�b�a��XĈ4��#���(3	&���D�M�$z���X���F�a��!�D��"`����D�EdF(E�
ƀE�Z� EY�]�m�P@�6�AU��@!h���(A (,��Wa�������[�H�KRш
�DJ
� 8d�C-&�aX�A�>�Ew��q�#����IBKsѥ�XA��`�!2pa�/J ��	B��@�0��
�B��6Z�,^@Y ,\�XHDU�D�zX@�d�H��MԠ�,VJD;Y�����\9t :�$��P�e��B�ZU`Z;�> A� �#4�X��'��]p�SV����îK&�A�ÅD�Ld�h$#,Eb�A���$�ѥK�$��
��4@`	�A� �@���0�@������Ј��	�FSt��+`�s�E
�����D
R���-�Xp���#���[���!m����S%d�C�p��"��"���4 ��@�(0�@���z��1��0h�9 �/v���LxJ܁J� ���H��`�^�!�@�G���B�@DZ`A��v"� �$��H ��$ ���0�P�,�&�D.
AHC� �PZytb/#��"�%P�cP�BB�[2��`��^�G�pC��qH�Dp ~ \h@Z��Hb 
13>Y�?*�|�ԅ�v�$B�@��p��.*X@0d@	�	9��*��`ǫH�&�, �C�\�0"i�8�q�wl�fJ`�0 '���ZS�B �\|R�8����I�b�Cq����[I(��"�x��
1�DmbZƑ�t��HȠ��
CJ��`�$��%j ����4� �D@Ƒ��E�1�w����t��x^:@�!��� Ap�栈��� @�&�#@��Xx;%J��I\�B/��;�@��0 ���� Amk���>C}�ϑ�J4�-:��q,\A�0҇|0�;��p�P�+9�`*�6�����#;�VW]��q^0�� @	�c > H@	 $�ZO2�^�"	�t���T#*��`(�w '�E��s*-P��arCW!s`,b���
r�b$��q(D�ʐ�&��~l�k\���'
#�����b#�/ �
,D�H���xPa<���ȅz��D��P��0�"Ƞ�*����� �8D����.�Z�P���V���!낫���%�!�~1���2�AE��p(���
2�9�A! ���w���gP���ȁ���b�x�����`B> 6 ���B&8v�j$�ǋ� ���7�+�W���������
L`�xb[�i �e��	������Y���Ž�!~k����_�`I�ZR��B�`̮29���(�H�] Co{Q���aL�_P!�"dV�*� X�*e8�b�O��j��@ �F-@8B�$486��N"�JV'3��U:���D�x;��@"l�8)��I����7�EC~,����Ā\�P����C��e��A(�2�4l!�VB�)p_S̀x ԣ.�B��/Xė���Is�m�u�0���!ZIp[.z���Q��"�&��	O(����!�0.X��g � ��@40���������?�?�����&'�)-=o��1ˡ)���]!�@�`�<��o��m�J�!���!���b��5���%:�)�2؀Dp�xS�S��g�:h�-��*�6s���+Z��r�;����F��)@�)�`�&X�/��"��� (W���/	���/(��[����P�~��s�:f��g������gX��H������Ђ9�,؅�ʁ��Mx.��#��O��� � �&��&�&�b��'�
b��4�\)�&�%�a��-�e #���<�U�*���C�����;��&E(�+Јi��C��`�'x� �%���A_�0�	`�A�D�����A;�� ��*��NJO���p����N�D:(��J���A�C�-��6�(���.Mp�'؄�؄84X�&0�'�P��&0)`ڢ$�!���(��E, �~ �O�*!c, ��m��㝊R���"��CpG�q���`7h�X�i���"��h�/(�/0�@4D�i�����2��q��` ���P  -�* O�gx�S��$��0'S?�hK:��488�8�J ��Ȁ,�6��yAp�!(�%D8�Ո��Xp�p�%� �4)���� f��d�줱$KK�+쭌b.d����tB�'4p��% 8(��3��)�9k �j$%H��t�H�$p
I28ڈ�l���J+
K!Mf82:G��,`A��C�]���;�]0�;�����&��ظ )�0.xH	�0�-p>.�h '`pj Mb$� &P�I �9��I�˂�l�˅�bKU��Z�,(�N�Jh�����J� ��&0�� � @�-�'����"�'��-h�?�K& �����aI�K�������P�e0dx�8�h�����%�E(��`0�X�MЀ08�1h�� pr�Ɠ z;�@��ү`��S�(vB1@��Y's�B2|�i�D��öt�Y����"�����/��/ �'h�/x��cc���8NPl̀6��z�J���� `ɜ�)s��a�EV���g�-�����$X,�]`1��Sp�!����	�h�J�M0BԿ`�(�&H�2� S�M"Ҁ%�A��(8Ш�1��w3�&pP؀69�NAV���J�Fx�F�+U1:�B�X���C`�7�"*���h��� ��eh� 
���{HW��%�����&�;58�#� �J�Qx3*��N�a4�Kg�X#�����9��-E:�!W��� #0P��|�ֈ+�q���D8�@U%`�Yh-Е&��>����}�(��JfM���S��(��"����' ݄%)0��S
h � 7��&��Q����x�!ı�d2�$� ��'�M�@,��2�ܹ�g�(r��R��� �l�����A9�6x�3�Ѐ(����'���!���؀e��@��� ����D��.������KH¥P+b4��0��w��� ������i�V��4� @ �]�˟k��9��!��̀I1,h�l<���pJ$)
(�(�k� ؝;;��9� :����J�h�4݀ �ز&"�'X)p#��9���&��i�� ��Հ���'�`X��W��k�`Fj-�Z>�Ӏ�c���
�К#P��� �p��F��F(n3�뱸�  ���Fhۄ��,� (],���Ѐ/�Hބ4����5Fx��V�-����%�,f"���Hc�����G��`�E0)�?'h /`@�'h�D.���x>(X�h�9���\�h��� TU�!@�'�KD� |Bl\+����"&�0���pJ4Dp�/p���MЉA�
�%Pd���zY�j�x�IJ�k���ld
��$�,�cLL���]�}�͇n�� ؊F=�l"�_#�2y�h�W P(�(�w}�{]�1�W�S��$7�=�(x�	��\���[$�L��%��D�;��#L4`l�X��	hY'�.��R�:��1����_���L2�"�Y�W�=��4�0�$���0�؂$�FT��R+�K���ƛE ����/� /h�#��9v�����?x�.��t���{�؂%�-`$`���"�M����? ���# ƒ�?`�* �0X�Sͱ�+��ǜ��F/Dc+�i��烫��-X�ɜ �����\�l��3�A�D�]���ơn���!��/xN�?0�S�A	��q����/h�a3�%8�"�&�3���\��b��"j���C [����2p+{�N�р���]��J�7#�`2p�?�7�`aX� ^V�𯵒���[�b�(��}hk� ���"�!�e��H���E�3�D<ӗ��&�S*t�@"F$��.��`3����%p-���&��&�� ń�x�t�#H߰�������ڂ�bUk�rے�kri�Q+��U��&�`^�����ҚMX��1m@R���� ����?��q���m/Ȥ���We��<@���!a�y>����&k*�a/H���+W���R �8���y+�V a�$_W���Oo�0#�=�sJ8�z-����������؄��+��/���w�+7���-�@Pf���x-�-��2���)��� )��1�. {�f��	��P�%Xk�_�)�E)X����*����q��{u� -4��$llh��;��/"��E��Ҁ?����Wr�+|wqF��C^�p��6�:FVU�C���q���A�"Xq�� Eds��;4�-����0���
B��% �Gwy�U�>x�����Y��z�W�|�݂4>�Wq��D�\=cl����#��/�|��>lH�՚	��x�\":�j炳¯�n��;d�r�'���-4����b�
U���P���w��lV��"D ��f1��x2�04�bD!!�Ѡ��!j �]F�8��]:J��.���%,�'	IMR�#D��
�0��M4(h"�����,Ap$Ē��@0�$��6AFq���E�4AY�Ö
Eİ�@Å�E��y�� �H��A��y�.���"�hQ�Đ".\�KX��#O�.�(V��p� ��$�cd�h�hT.���Ç5"�l�" D\��n>�aH�#E`K� B@\3�d(ãm�)��?X�T]��0YMlC��BOİ�4A��
,���)Y4W���qO�pX @���p�_G1Xt�Yv	�@B�	F�OY��G#H�	Pr�@���\��AYE��_v�Ed#ȅ�U�� ı�P^� �pNP�WG�\G@F5@l@ E�����}Q���0�e�0Q+V�X�0�,�xQiv�~
�� JA�t� e<��I!���X�A%�G ���%�3���G#5�n�ԫ����HG`pc.�P#%���U$G���j�тPRp�y!pрa�E�BBp�"Z��nY�5d�#�k\`����OdP���O<��f�1�FA� ��/I:��u�����$B����G ��n�� ;        
 gibbon.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
        send "mouseup" to btn "Aufgabe"
      else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  � � d x   	Bildname  gibbon  %�GIF89ad x �  ���{{{cccZZZ{ss�{{cZZ���kZZ�{{cRR�ssZJJRBB���J99kRR!9))�ccR99�ZZ�RRc99Z11k99B!!�BBZ))s11�BB�RRc))�99{11�99k))�BB{))c!!�11ZcJ�91k91kJBR1)�cZ�kckRJcJB�RB)��sB9191)1)!)!�{RsZ1B9)�sR91!kZ9�k9RB!sZ)kR!RRRskZ)!�{R�sJ{kBsc9kZ1cR)ZJ!�{ccZB�sBB9!��kJB)sc1�{Z{k1kcBZR1RJ)kkcRRJkkZZZJRRBBJBckk9BB)119BJRcsks{JRZBJR���!���������s��c{���ޔ�֌��{��s��k��Jc���甥ƌ�����s��k{����RZk��眭֌��{��Zk������甜������ޥ�΄�����ks�RZ{��ޥ�����ss{cckRRZJJR���ss�119��猌����{{����!!)ZZ{!))9!��ﵭΜ��������1)9ν�Ƶք{���������Ɯ�����skskck������������������޵֜{�Μ����ƭ��k{)!���sckֵƽ������{�Ɣ��s�����s{���9!���999�{� �s{B)1)�s��Rc����ksR19J)1ޔ�֌��s{�Zk1�cs�JZ�ks�ck�csR!B1 �RZ�Zc�BR�ks�Zc�JR{19s)1{)1�Zc�JR�Zc�JR�BJ�9B�19�)1�ck�RZ�BJ   ,    d x  � O�rs��@RI��Pᙆ
"�8��B2�Z�B����ArV%J��Q�D~EZSꌨNY0e���/n�ԉs�)��y�T�(,X�h�!Ņ�Δ�hqbB������6h֨ٴ�O�O���#'�3�x��@��]�9y�4E�1��6�\�h����"Ѫ@�]2|XQ�K	\�a�),@��RD��$O�̼� �G���Z����=qr��PLD	6H�ҫP+VnlQr�2�YS֢D�	����G������6]j?u��=�B��l��j�q�	K]�JjjąP���HЀ��I�0"i�T"a%����k���F�]��&�n����-D��J}�%wXeD�B�Mtƍ�$�@2����'�A蝄�����a�k�U���5IS�`bK ����.�Ԣ�~4B���-e�B�=%$�L,�x"�h�D؝w����j�ßK�S��A��L?YpF&���˖���}b��� ��'6Z��IT3L5��K,���ʄml�҅��g��^�n�F�52q��-Y��
�n���'E}z����r��h��&���Jh���ɷ� ��j��!�=�4[O�ByS��J��)>��R�Q�s�詧gp�4I$��%����*�
��Ï����K�<�XS��6�P��vˊ[�r
A�ƔS �����I)��Q��$q�1��"K��t��T�R�����l�ޖ+Ov��Wҷ�*]�D�~z&̖e���f�!M&2 `Ҋ?��	'uX�KG�7�↓߹�f�{H�� jPrCJMJ4����R�ew�F&�-J&d�,���jE�Iq�J�fS�9��{��&_-\��X)�!g�.�,v�5�� ��bJ+��&,1Dx\����=�`�놮�S��Ռ3%�S-(��5���oŷB)��(�z���K��ڟc/x���P -�BR���X6�/�bf72��2��$�y�P��x�O����ҵ���/JM�f��IjF�{��$79�I��#C+%��H (��"�
aŃ�uhKT�NX�&)�C��E-V��L��k7�����2� �hh�CNA���=��k�A+ro�J�\'%Aqhd�+DQ�LEkZ�ғ�������R�!�S��P�k��!7^�|*��у�`/6��� �F�k�z� dHT�L��D�(Ҟ��/c;����t!^n�O�j�	i�� �!	R�cs<��rt��B�7-	�r�YV�^B
��@���e��?х�K�5�fM�JX����(�3��-.����iO��i�����v���mH�Z��U��yRD�q��vp�K8J<��59!���F;��5C�EIA@i��B$`�4.�����<4JČކD�2ܢ ��]� �H�ICӁ4t`H�n����"���t<�����˂F`��R��tFb�厠 ,V�y�l`�(HY*��ڕ���p�jh<g��x4��!h(CI�P��殼Є=��@�(y��( l흿dfH�J�l:iT�P��}VZY!���W�u����K�G�$"�c���rF%V(���.Z2������Qh;jH����ͽ�Q9��1d�������Dt�O���L����&��9��D� �����R���{̵�#�PZ�.��d C��WA��4,9����=v����ˣ� �b�$��V����E*�J�\�V}g���@�L����RlXJ"Q�"���"�w��'�8�7��)f*�R��5�9�z~�-���%����s.0�2�.�m� ��4�v���{��Jf5�.���3�Ԟ��/SE�T��9`���R�b�c
x�=�d�`������Xޚ������_wЀ �"J�!��T3U���+'(:�*7��,�� 0���;�t�J�3V���n+m� �r��� v��\h���Ƴg��k�⳾Ԗ�0"Z�A�d�P�$�x�x�.W���S��]K)�\l@�CT�g�p��t�kHp�������j���b� `0Lpnc��|M����m��k��v:�ŧ���~M���Ů`y@]<`��^�`1�m�eh� l��6��&���4�&K8��-�b�Ύ�q�t_@]�٦(�� �7@�-nq&�`��	@j�\�_�]��z�Jc{�}�PF�(�� 
��~s�| �\L}T{bA�q
6q.'a e��na�g�sHg���RKF��0��x<�b�WG<�Z��]u�iGQ� `!� ��`�� _���ot ]�}����0ծ٭�\�9�Iz���pa��v1����� �z�O�؂ �����6���U8֠mP�`� �k��{SR��kc�{d���r|$ �;xg��t��X�q7n_P �@ SP|��9�e`0b��a�`�� � �QJZd� BR��W��h	g�p���a>��R�5s'�k] �ȧ#P @ ��|n7tc0cC�@���n�8(7� �X�x �_�c` ���M�5��)ҔK�S�w?
(�Gb� _�� � �`a�a`k��!u�``m�9h �`6�m�T��< �,& �`����-9�Xz�]
�r�ƈ^ nb _`\� WP� ���+�!�[4x� �R��ݐ�8��KUm��0�ư؄N�E��{G�W��k�7]@]@ ���  �W Ϙ9�6�FU}afu�@� j���A����k��|8x�p��x���E�T��VXA���wH%�X��؅^h	�@q�� �DU��t��R���@װ���8(�cwK�q���;�㋖Q�]@�]��b��
 �_ E�X� �`	edHPi�PN28��$� ��� �`Vq8��t9�� 	j/$,�}JWY�k,	fT@�����0�p@ w�k��9o�!+>�p�� �H����x=Uvb����N���#M'�rX`X`C�k] ^@a�a` �yP ���g��Ki��>��i�� i�@U��H8X`�& �&�MHH��r�X�h#�{#ؒD�J���w%�I ɘ�q�D?m9e��@���) ) ����b
X8�
�8���@�!z��W�Yy��I���Sp��j_0 ��b:@?T���0cQ�0���*����f�a�x4`@ ���L��E��{_���^P�D�S�a0�i�p%7) ��mcp���g�i	�� ��
 )`� ��BIq1�|h S$��8��WzrG��q��_
�T�B�	�0�y�9 ap�d�?��g�r��p�P���p @�0���(it��r[V 	��`�v�M����{���F`YIN B �ڕ_��g��W4�T
�p�@v�pPx�j�)��2��fE1�`@ �@�,7C��U�]V��(�_�P �J��*�ɏ�C�b�k�!�#
f��`p@pp������&�� ��0� �0o�c�qQ� ����8K*�U!�{��Y��Q��P�B���Jp���v�Pk̕!J�� 	~0p��p�|P� (�&�"��`f`
�H��rc����ʄ-��EP��]F`��T��\ ��|Gw��Ui��v�p`�����@	q�' � 
p-i���vr5k�@E�ٞ��}�B�PR@�M�M T���(qݺT.�$�qi��o �q@qൡ�  �)����	��
f�D�r ��+�ɰ�� 1������Q�K\ໄ��[k��pA�/q
i����o��oPmp����#+�� ��r��[`X򡶉�{��k�:��˻������Z�b^R��$n	���m�p �K	�`�����w�~��@����)�ɨ�8>��e�� �[�D�O����;�+���5K�����vpA|�[�tp��	���N<	��}�	��!�؇�&u���)]y����B
�Q���\@�쒿'hզR�q
4��v�mpq�@?|���P�)+�@	����k�!�V������v_��b�h�eGʢ�M �W�b��ì,i�F �q�u`A\�uP�0��;��~`|�	j S;�#\ !����׆WZw�F{Y��O��.y�
Xs.!��A`
�����l����&]v�	�  ��P��|��@���06g���
�Šed6|�(��H �ƥ����TyF�
��!n`
l0	q�v�t��k�������)���
�
q@	�����YK��CM�oAbq�p�M�,��L�]`jX� 1�H�Q
��{���wp�\��)�#P���q�ȟ ��u��M(eεZ�P]V��HpO���̒'U�4ٓ�[3�5h0u���`˄`օ������������@���0:p����=��d5�O��cp�
�RpEp�] �M_��D�6h`��ڱtp���up�`� ��%�����	|�c�z��޶�os&��wX�R E˰,���~�d
��F� �ై�����,
ٰ%����`�u��0	��	��T�$�r�bc@�}+Hp�	��5�p�4^�c	��ㅰ��ǋ0�E>�@�
|@�w�| 	�p!.��Bm��)5�ܥz`_����;uv�t�h�����s����mw�
� u�����
��v 
 �U.�z)��O�]�g^�R𬿩��4n
Oa�h�	r��m{��z`yp�p�E�%��0Kv��P � �@�n�ŪQ�R�s�_��FP���`v�<�0�/�	���xpӞx�خ�}��	�������
�,U>�@���JR�n����&�{(狕��$k rpН�.�z���^%����0	^��������h�P�-!1�U�}5V��Ϫ�����r26��Zh0� �0�m�z`����%�o������`z����C-�I���@�ZO�r?C0&��G_��q_e�i�~P�y`s�z�p� ����� 	� 	� &�
�N�S~�^�Ɓ)��)@
�c$����e�)M�H/6� �������� }�zpy�� �p�����A�~ �0
���
�Д���H�,�u� 	�q	b3AF��` ��&yZ$��@���y^=���sŋ�>rEb �0^�p����I\�r�:ղ)R�D��y�f��X��e��ctH;#mM�gJq:�IښLh�&�t�ҪM�1ȫ�@� a�w|߀�
��4fX�RdIY(M����/̘3eE,� Xt����4NL��ґ	ih��0h� [��"5
%� P�z2W6D>|ސ�
��#Ol�ղ�[�ޕ*E�4u
0�[�$�Pc�%zS�2d�`���Lf2q��֥P}�J#@�����^�:\��T�Zb����~㋔�LA���
�~
B���¡�hei�Hb�2X��5��� j��=O6�Vփ�s�zF�O�dO�8c�Z)��N�/M)NA��,��"�):,1$�10@ 0!c�2.$�$�`��
�$ �\\��,��Ŝ~��o�I�M<y$3θ�.�x��7�Tr�QO�@J�d�҂����Bi:MB1�P��֨��P` c�KmFV���p��s�q�U�e�3�(c$�NJR�%!MP��*�Q,������P(i�À/n �2y���HB 0� WI� e�l��=�qgVX��9�2\�@%���H�cJ� C0���0:o�P ��  g� /�܅�h�ƛqv=�z����p�Y%�H���N�@��f6�f=�ɧ����c�($*�Pb
[DĤ�H`����[V ��`w��'{��;gz�qV6a��������d�QG�}�'�B��Svض�~.�C�2�m�s�Qw�^F@ZT�=�����q�q�2��I��m��\"v6ҩ��z1
�ء.:�"D5l���r��q���1���:`��|T@�y��vv�p,@2N2�e�eQ"^�9kr1��)$p��ta���������6&����H7��h ��P`t�C��=��v��o�` M�BX�YKRE.z��AjAD�p�D����
��`5X0F�av��U.� 7��h #�G	P ��C)(�|�#� j5�$�����0���&��r.���A ,��0���6����������\��}� �Aj8��"Jk�rA�f �iOK�*�$RH�B����0��B�9��v�#@@� /b勇F`� �,0�H�x|S��K� � �����a�$9^�s�ű�u(ԅ1�M��l1�/�Ί�G9���$p����:@�� $ g8S��r��)HA*� J�#�.z��f4��JP>�� H]�B;�B��-L��iY.0�u\`�@<@� �1�|�� �	Q����)A
4`���P���Jt�[:,��q>���`k:](�B�T�2����X��kh� Z�f�����Al`�&H0Q"�����'��W�\@�/��g�T�OBZIDp��0Q���@ͱ�b�
	@��A�"�Dh�y\�+i
Ёc\�h��T�`Z�UI)���� ����|�"<AZP����٠5X�n ��1���n�p���@9?��`"h@ .��5pB�2TY�R��B�JoM%�˨��ZA����!\� _2@��P�`1Ѐt��$�j�x��d�2� jP3�ad ��Dq�������(�Z�w�����&<t�Ih �	����v�%0@�l@�P �MV,e3�"T.J �K�,�D�=��*�kb�.h������d"l�
?`�hp͘��5�AZ�g�Q,K���ֵ�ՐՅ�d�R��f 
������|Q-h���y̑{�|0(��L j�>
��;� bP���` cp�J@�1,Q�{���SDQ
3p���+_\�RN�ٺ���V���r�]Ȃ�� T<ט6P@�Pnd ɭ�@�1@@'�� �@�K$M�a��������PE.uQ�����6 |@�-$��LP�r!����2�@D`�x��]w�1Ѐ/آk �wD��
�4A,z،Ӫ$�ͦ�.hlQ��~�']i�W,�J����؀3�s���T����E�A�����HA욜A�Eܙ��ú�XLYJ)����M��� �-�?���@���ܭ�@��$�_����3�����y���ȜA �=m��
���&k�D����B�N���p�-�@�Lp��[W%��_,>��
p2[�P����b��V��V0�dS6y��\���x'�0�Vp�g٥� �!h����*(!`!p��� �����P�M(1.p!�0��&�4 ���B-cJ�@�S�Ux�Nq
��./������Ga�.p��ۂ"�8!𽦻1X� L<�+ [��0�3��'������N�� �]؋
L	�S8ԅ(�%�`��A�c�󻧱�%�.���ۂ���&p��˿�C9�P�/ �+�l�|�#@�(p�8�#��z����;]0�UX]0���������[-�s� 
x�, �-x�����*���P1�3�0��*  �)pE!Ё�4ȡ,��!��^�_\���	}��(3 A��!`B��z���D:<3!�k �&�/1 �1` .P�#�#�)�zj�a �1ԣ�B,�{��^l
i(��ɣ�	l�)��8�ft��"x�.��p��Q�$ 
h (x/��.��'k�� �Z@-�k6��U��]���]�I�(
Q8�:
����i�	b �� 3+'�6(��M�bH��BP� 3x"0�(0&�㱀�`�I?�?_$�U0˱,
}�3�����#�l)���~���*�A'x"0�&�J'�-.�"��P���x /(�.�/x�"��� �3�'���Jz�ǲ4K�ͣ@��<��LͶĖN�N�o��'���iL.��.���4Y�L���i�0��K 4xR�'Q@�P���]˕���}
a��`ϙ8
�LMꐆ
*Q* Q*x��P��1 �� %���w1�и3(�J9X��T�̄B^d�^d�8
���OlqK��NNњ���LQ���<2���R00���5A�0PQ ��t�}ә���9��a���LM���.).oqQ��RB]40�8D�0H�Ahi�Up�BD!�E�PV�� 
��=�#���	�,�B�>�����E�H�x 0O4� 2E���i���Ez�{��75K#����I�	Ӕ	T͙
��Vi`�.�� TW��]Q�dї̄2�))ΰ� �I�ѕ$�"��  ;        ) 
tiger.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  tiger  .�GIF89ad x �  ���Z99�s�sc�cRބs�kZ�cR�ZJ�RB֌{�{cޜ�����k�{c�sZ�sZ�kR{B1�{Z��s�kRΌs��{{9!�s�kRkB1��kJ!��s�sZ�k֜{Δs���΄ZބR�J)���ޜs��{{R9J1!�Z9�Z1�sJ9 �Ɯ�{Z��ZkJ1�{J޵�﵄�{R��RΌR{R1�c9ƄJ�{B�k9kB!�c)kZJ΄B1 ��k�sZ��sZJ9kR9��Z�cB��{��Z֜c{Z9ZB)�kBΔZ�{JsR1֔R�s91!�Z)kBJ)111Ɯk�ƄƔZ�Z�s9��cΥs�sJ�k�c9�c1Ό9�{c�����{��skZB�kJ{cB�s֥c��RJ9!ZB!�sZ�Ɣ޽�έ{��Z�s�sBZ9ֽ�ƭ���k�{R9)�k)R91!J1�֜B9)�ƌ�΄!ν�Ƶ�ZRB�����s�Ɣֽ�ε�ƭ{�sR��s��kscBZJ)JB1�Δֽ���R1))!����ޜ�{Rƽ��{ccZB��B�����{��s��k�Μ�ޥZR9�޽ƽ���{���Δ����έ�ƥ���skJZR1������Υ�����kc9����ޭ�֥��ﵵ����RRJ�����{��s{{kssc��sZZJ���JJ9BB1ssR11!))JJ)Zc9JR1BJ)s{ck{JcsBZk9{�kZcJ���ckZs{kJRB19)BR1Jc1���{�sZcRJk1{�cJc91B)Z{J)9!s{sRZRBJB191ZkZ)1)RcR!!9!1!!!!RcZ1B9���{��s��css!!   ,    d x  � ���G������)�G�y�"6����E��2O]ď CBDG�(Օ��f�M#�f��f�ز�Ëw�[���H#z�H��҈����U�C��)��@jy�ѳ�Q;��]ȎM��]Ӡ���o#=h�����'؋��m��Ѩ�KM���Z�oU�S�eT�2	Vԛ^��Р=��fT49\	�p�G��q��㨕ݺ�F\%���FU�v8������"�4U�$�4tn�Ӟ�����ôl��7tߞqV7o�K��qϬ�PzVh�8c%�@b�R�>%�SF�1Đb��e]��v�Q^�^T���7Yq��3P)7ׅi)$]mC�&�p�]&�ܡ�&NpG%��3�N[MHaHf�8v��g!�7���.��ܒ�X��VC�J*�d��&a�qD%\�!���Љ[m4�=�I�;����=F���9�1�^3͸��!��(�YM�!+��[��xIaG�ر����J��A	�NH!�%�ܳ���w����l�?�$��yңTF:T|Y�EUj���v��L�"F%~���E��%x����<[m!$<��#�A�'�<Ш����m�8~F,�CTq)�$S8Ӕ3���4��bGa��E��f$�P�D_P'�&�0ό��7�0��0����Z�{RjO?5���!�R#U�,^1n�U4�8�}�a�GDr�K7!h`�(t��J-h��9�x���2�3j�#:��3����p߸s�;���7�sO��4���4Ѥb�$a�!	�E�$k�J�4F�0����q�+���
&g7�7[���!�`�����ٌ;u�Tx���>��c|;8oa+�jMͱT�FA�
	�3�ܱ]%�T�FEQ-���(ÍƩ��R�%�0�L"А���4#�(�@��0 |�7��D��j�=���u�����= ׌UP���Y8��,��R'&�
i�aG �Ѐ�ZL�}�����?��	p��@�g���hG;$؎f�M��B3��(%jC������j��kǭꡌs�%��F}v!+f���/�1P"FpF-jA:8��p� �6TB	�k�.�
edC�(Fj�C 	�0�31@�P�l�0��<��l� \=�LPJK>{��<���Lg��.4����js��n0�B�A�PMp�
��3�b����F(L�!�A��!���o�me��B޸�! !�A�Vؑ�oX3�Q<�1�y��f���|�
I4�TF2P�6`"O��!��#%��np*�A�m���(7h��!�B�$3��������F#h�7�B�@B)�q������ӹ@'�%Q�-��9C��t�1��PP�oȃ� L�B�01��`l��PD)0�	C�|h`&�`�a��ݺ
B{2 *Z�F`bF�_4JO1T�j1^\��t�H�6�?f �nC&2�cV�m�$�W��{����EAi�1���@�����o`np9�1�P��wH�����
�F��0��֔Ԡ�O��w�C�`�I:�I���@�0o֔�E�Q�~l��X�/r�*D.	�������2��X �c��uh��Y��
�c(�(�;XC�q��!4#��F�D�)q�LBx���p�z4��W��>!���.���KD�	a�����'�����$�AYȂ�x�ܘ�6�A	2��%�A��ZX�э��4B�-����"n��0��r09�A"h�#܈�6dr�C�(��^��[��	n��
ڰ�2���.(d �5XB��-|�
.�! �p�%�a�Ͱ��ኼ�#��{�!�#h���h �~�������飫�`�,Xш'@b�X.�9S�`a(,1P�hĎ}C>�*c��p0�Y�<���y�'��QL?�@P��m�4��et����7�����۠�"b��K�b��$�@�� M��6��",aX���a,#a�����6QM2�i
���BC����e��"�-p�t��3&�e hp*D�N@#Dp`�h"�0�R �7aJ��d�����	X�B�Q׈I8�pH���e^�l�@|σ
9��R3&�"��@X`:L�����U���pE$q�e�"���!1.�@x �f��8l�	M��� M�|xE�!.��o��ko��W��b~�r�S������l2�Hfe�[���h�0���b�+�@�La
q0o7)�/�V5 d ������
��Epo`���և}�灶 F�P��}CK�� ����t�Kp�`	��� ��
x�mh�8�'p� / r^`8P:P>0y�q=(�p� 
b`bP����7�!H�� &�
����udt�%�	t�|j�W��A��|@	c��p��z�0�Q�c���/`9�9�Q�V@�y4zpS�`}�h�`��h���?%�� 
t`��D��\�H�	�0�m�����	c@	.�	�p�P	e�r����? �R �3`��	��.�	��}�xp�F��p��x	֗�q�{����!�GL���
jh`,`	� Z�� {0ː
I��~���+�Qp��=�>P?��
��ȍ� ���X}�P}�(�(����A� 
�P�0
E t@"��j�����2�K@�0�@O`|2%����I��@e0/�?0909�. � ��f����
4�~���������0i��x	yaEi�'�q��H>��S��G� l N�^�Y�c�0��I��	, ��P �e�Q���f0�@
��
K��0mp	nPQ0�Y)zy	��X}�h�!G�� i����@	h +�MhPt�r b��V���{p
��ð���	@gP�I @I@4@0�-Pm�Pc�~  p�Q�	2@E@))����#�+��'n!��%����P[��u�P��AjP)@
"��8������l�eJ�C��I�IpTP�'�4 �p	�@k  � Y�n$���y��O�<�0�_��`�"[�p���@g�Y����,P	�pT0\�SP���	� �@V�CP`�+PdOc��;P� mu
� k s��(� ��y9� �2ၪD�R"[A:x
ipF�@���%�}�:�@�np��Z�X�8OuLT;q�,`�4 �K��0K�m�����O S�iy�p	��
�:��zP�waU�%�?������	[p
}0�@"B�j������	x x >�-���a��V��4`��9�e��h�0	��� �_p8}�V~�a��a�!�!,C1��p�������0��\_�`
��	���wM ��z	���0;����_X9�|z�J�+�|�/0Q�d�� X�
r@�yZ;΅	�% ������ʀ~�v�
�P2B�
�`�����
ΐ?�{]�A�/��ٴ��y�cJ}:�E��hV�rY30=�y ����x� ����B)q1�eWh 9������@����� q�P��	����^pb�O`����cJ��dJf����K�hݻO�;�>�p�{�@
x��`��/�(�[��(�1���pU�	���{=|�
�`�����
�p
s�
O0w��PH� ��z��
5j�I�W��K �n���;9�DP�1I@�<8��y�7h)*�Mʠ�0	j�} 	��D���@������ 
���
�@	oD�W7�l~�	� �i�I�h*�K��'�n ;�_���k�������
l�]3L~r"��0."%:�������X����
� �p
Ā
��|��ɾ��@Mt��C;zL;�y�O`	+0��$��+��;0_��b�PT��iP;�����;F,���W��
i 	|`
%S��i�����p����������6g��31�
���@����|шM@���-@|B+�p�B��
���6�4&c͠m���i���
�[���pĆp����� �� ���B4m5;,F��t���g
м�p7�5]��\ 	��� ��
� ���  ��lD{\3�m�	]*��������͍Bl�P����v��*�<;��P�5h�%- $�^ 3�
��F7�<�-���� � 
��~`&������ߠDe3R������pou
��
���$B�������0�:g$�؂��.�BR6���/����)x���	{m:���?�v-��P�}@	�p	�E��5�t��TIԡ$�Ơޠ��
�@t�([����
�P�`D�YqŃ'�@�̀	I �-0��
��G�6�q���-	K�|<��@� |0�wj�@��K� NL���/���`?���q�<�i�������3�p�����@.Àߓ�n�<� hp|DP��
me�
��u������m{���nYޠ5��&���ܠ�P�K�@6
���
�@�4;~���£�';h�2'��0l��c�@��	�@h���`+�	V0np���s��p� 
,�?1�W�aD�z3B�2ǀ�p��R��u������@"���'�@���`�0��	��9p�`��`Ct0 m��	����d�m`-��� 	��	�P	��L����bq����>6��
�����p
�`��w
\
���@|c<Ⱦ�|s6�@���A��@����Z�����~���E ��R
sp �
���$	h0
#��� b���7��@܀
ûٍ��@��ѡP��{N�����^�[��I�P�R� lE���Q  _)�p^�m�����P	E0
����yj���+�0Ȁ�06���P
�P��
��
�����{Z���@d�z~�p�@� 0 �����r����#�
�P1 P�
_ �,�a���
��0��IK���}�'�?��@��
���Vh _��
�L�KD��5!D��U��6��9�Ze�
�/�03���� ˄|%&O!R���jS��.U�R���Y�g�0!1��Gu�y{���cܸK�JT1e�P���W�T�Py��ݻa��9Cv���E��-����-O�M&U��Qx��3P��1�Np��X?�2����P$4�1{f�3L;ͫ�^�a'�c�2۱c�C�S�T|JS��2r�L%3u�X1���Ԥ��K%H�9B)��X�8���u�2J@�LP
��.M�?��Tdշf��mT�7$�fͪu�FyX�d*��+f
�/U�R�r�ț2:����6j�)n�j��/*0�h!D��_��_��$����ŗ0��1T�U"!N�H2I%6��C�Đ-�'�o�1��ƛ��!ǝv�A&EI�~i��cP�ÙQ�Q�ɡ�_P�C�Z�e�E��*O���(zY�6��␥�L�JֈD�;ڌ�:F��f���p����l��o�A�2e���N�%�|�EG�A%b�#f��b�e�X�����nyE@<�X&�ר&�=6�ʓe��#?"�]�(BA�H9�qg�j��@��fd^4Tg�Y��T�X�T��v�a�v��gDa#�e�|ŗG$	CU�JJ�W������0��ėO`��].�:�1d����Т}��w��SFc�AF%G��]tR�Ywֱ'��8�K���=�B?R�K�p�d�_���e\��<(�_~���L"���>ֈ��8z��G������<63�FI��T ���dN�s\~���W8q�TNA�I,q��^�r�T8`��Z��
�:2��"����0Ty%JdHÕ"FI�a$0ٚkx�iƝ�>�L%r��F�N�V�F��q۱�~�C&WJ�$�FBYVC%핥
	C����2�J*��|�,b�5"��6�b���t��16���R�:�IFSF�����YA��>��c8����F]Fa����~���R����&8�Z�kh���*�?(b@��T��><!	�����5zH�97�a�$#�@�7�F,i�����nc�89��g0��p'0�M�]��0� (�"�cJ/^���(}�H*Ԁ�0������>C��P`�֏��;Ȩ�ǢE�Sd���(�!���Q<`)hQZЁ� 3�!v��,nЅB| P��Ņ"�@S�"�\D"j���
�`MD"��F1D��hG7Tұh	
1)a<�#���Bt��GO!�%t@B�`	tBn BR�2|�]�@����8�4�D.1�Z��Bn�/F	�bh�l1"$0#�"%6�a��(��|x��j�E#�@�5�#�@F;�QL0��p�2�����I�B%b@�|@]`?Ѩ�oT,p%�`�y��|X(�
���v�C���G=s�&� ��
EF� �1��1j!����c+܀vܣ�9N!e�c��@�� �IUAS�@���"�D-Q6� 	���+l���<�z��*Q�"8D$pHD~�u4u9��j%C�8�+\��	q���:T�E��0� 
*�T&,�I� �Z�(x��r�H ����j .��>��j��Y%��'8�8�b�!�qH���!EF1|k���¸�`p#���n�h� 78!�bD�H*	���/P�(�B��:�z������I�P��$�4��8��2����!#�V�	�rM4�;Bʍn���0�NOQ��B�P2�юu<�Ϩ�78 ,@*Pj���2�P� ��!�p�$�Ї#P�G��t	J�B�k҄&���z��4�!�$���!uVP�$Sh��0n5��yp��xQ"��
1b
��u+ۀ8�!A(�́@Ã���4��pi(�WbSph@�$�֙P��*�܏zhz�h�=��Cu��l�t�N��x���k�;�!rla�� * �5� X��@�̀�`�42Ad��P�\�I,i8�&M�����-:�g�D��a��}o�D�/��p�f������0�� jq��4@h >8� � @!��`3P!�T�}H���]�!�(���h;t�P��(� �ih��`�=Bʎvl�!=��!
��sENΘ;�q�{���t����T��sA�<�Pq3��FA��,����5A5v�"t����Ip�*l�Q98c�8�5X^�q��V5|x�#���x`Rh̅�F=��D~�x 0 4����2��G��[�#T_�F�A���h0�Z��x�8:���L�qɻ~�M
�
3���wX{��r�&|؂-`$H�g�N �<À� ��P �:a�o�P��d�G8�"�W�4�	��0�#��s�j��i�oK�������jR�
���y���y�$|���z8�+�� p  C( H ���;���F�ӓ�4�G��S�Q@�>S7�J(��kІh8p�j��Z��{`Ft2%�0wh��h�&k2D�~p�-��z��-���A@�x ](�H�` x
l�f�&�?�H��:`<m@�4P���?�1(�=k�(CT�$��F|�?��7�7f �E,7��9k�$�>8�X�(�x��3C N�N (�oX�Y��s���$p�"�Ã�	�6��-�m8�!�C�kH�-�F$�v��C�p��l�����F,,,|�9��� XEu4 �l�w�1��-��KI�W@n��g��"�8E0]��6�#[�p��t�h��k0�$7v�i܂o���P)p)!���F
���'0� ���`E� $��:P�D�f8�0p��s�P��)=4�)�6�K��U B��?9P���-�c�x�r�H2y؂i9d �>x��Ihx*(^;I��\ HK��1H�x�,�h��:?H����IpH�8�S�6�#HL@Hp�j8�Q��h�:�x�ʒ��~�H#Tm�ƫ��7���	M�ʁ�� �L�( �H �6���h!(?(�S��蘤�E�ê��Z 6��U��sh�h��t��D�L��tj<$yh�R�_t�ahDo�H��-��(( @`�P 	ȁ���Nx,d4��:T��%:�?�s?p�50(�K�lP�i���k���Æp�̮��x(	(�j���pn�4@2e�qK�,�d#���0��#��# p�+��IT@QІo(�o�W���?0"��Q����k�j��s8$������n`�z`Bf�03EVum�&�
��� ��	��?�My� $`�g�	�Cp40o����GЖ8\=��$����=���t@�pH�rm��-�PvІ�9	kx 7��"QTV
�o��{hS
�E&3�;�g��QN��U��C��W3��[=�G!x�Q�h�k�k0�i��i @xp�p)��)�`�v�/�4f�V-�":�0��))7��Bm����-�
�@wxnF�>�E%ݫ�Z�#�8g��l�Xk��M!�i�[��L��X�R���q �RM�z@�t	�Sp	̀���Wobr��{���ڻ�r
s2����[ WX5�A��0��u�t��K(�r���Ū��Z$�s	m [�o�a���E;���=�cȦ-)(����䈎�@���d�h����8�K���O<�[p�k�贆�n�Z[���uf�䠰˘��8 ���~�%A�D�C7T`n�c0]u��")(�K	�3r(��54�U�#X��i���Aȵ�ǭRL�l`[�ԩ�I2}Y��]n�7 �][4h���buJ�����S@�AQ�*�c@�fX�S]p6�K��2�K�Ap�r��p���k�#K�:��
�j�m���2Փ]� T���`�b��S "cp������^�L��+�U�>5��3VW�O��nsU�\N�-jxPt�j`���
\��^� ��Cݱ)Qw��l�����Y�HҟΈbWp�R�bX聾F���1��ߋ�����e��Tp���V*=+=�!\���C>wP��)F�&�P�i�D��TXd�͆� ��h	�U���S(WHLP���:WH�3��Sp��s�!9�fhP<F�M����\+N`Ó��yx0%]F�aF�]"�]���� YdF�+3.R�_W����;�8�u���fg����f�RL0�UP�rH����J����X֑7p�`�2�=�wp�fg@�)_���B��.�*aS(2�	r�G��8��?pB�I��<�U@�i�j m�aJ�;n��Q��pZf�d�nP@�>�qH��F�}�c8���]v�����pY
3���#0�Sj�Z�S�jf�)CxfX�i�t�C$D!��-�h�D��Pgi� �%>�4��@Qh�`�����W@�w@��&�sC	B���k�d6@�50rX�U`L���p�h�Ԇ!DHkp�Id�y��r	�c�g��^QkK�jh�A���h�o����$,4�a�2Q�:���).�2�saS�$C�g��'��$@�:iNlHep�B��r8�I��~
�u&��7��ُh�ٝ�ҹ5���/y7��i�K�+s��H"Ab��Qp�Q�m[��QX�ihu���tHet0gۻ��jwr��ٝ�q8� w����Ң�� 
s+����'��vE�+&��IW ���L�^HK�9X�zuh��jp��kB$�f���#�7kFk��7�j�R� 7��m�'[k�� A���j�tn� f�#��6�7p�QHs�YAt@��nP�(!��:IVy��bnX�u���nk"�q�D��&[DdU)����@��(�dH!8����CMPh�%X�6p�$h^���h`�hxLX�{hu#��i�p	Y��gk�F'�Y���D�srd(	GYG��C>e?g�bXf�M���j�6hx��qi���HLthj�r?V�d��߉�	�^�@ãD"f�q�~(	k*vc�����io	,�"0P��6XP�'K8sp��B�q�((Јh`8\���t2��Z�\�JM"7��.����wh2�YbcPi��&s���c��IX�I�vKHF�jtXtx��hL�6My��D���'�xh][��Ʈ�`K�4��R��'�&�5knx��Ex�2V5#��I8�6�6��/��`������$P�eD\D�w"���bϘJ4�������Q�M��%�s�]�P\]c��;4MzԿ�G��WAt�[J�U X�GT�v��z�P�y�l�7�����|��ga|wY�-J��Th��1"d��6BF�Z���o�2�5CϘa�1��w"��+I��=~�Tvk�7{�ܡ�n�=x��!9��xܐ�tɍ�~����l���ǎ�B%��7t��Jb��F�߾5���b���ر��\�%�݃�?�ݸm��]<v���瓭͠��!kl��-L빋�mݸ�ǌMuՙVgB"1Ă�g蚩���t�.���{[��yoޢ��ݻ��n�"���n1�jwWrk�7�v�֭�yjgd���ei���R�S��`U�����w��+)��H�5~�1�N;>���LA���0C9�;$��Sw��a7���7�9��4sGϸ�F��'Q@  ;          ostrich.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � � � d x   	Bildname  ostrich  $�GIF89ad x �  ���9 J c!�{c�sZ�R9k1c)Μ�ޥ�{B)1 B ��kƔs�sR�Z9c11��k��c{ZB�kJƜ{ޥ{c9�ֵ֭�経��sޭ���kΜs﵄J! �{k! �޽޽�ƥ��Ɯ罔ZJ9֭���cƜs֥s�cBsR1kJ)sJ! �޵�֭�Υ�Ɯֵ�{Z1kB�{c�sR�kJ{cBkR1J9!B1{kRscJ��s��c�{RZJ1�sJsZ11!B9)!�ֵ�ƥ�����s��c�Ɣ�{Z{kJ91!scBcR1ZJ)J9B19) )!����֭�Υν�Ƶ������{��k�{RZJ!RBν�Ƶ�cZBB9!��sskR�Μ��{911)�޵���ƽ���k��c��s{sRskJZR11)�Υ�Ɯ��������{skBZR)91�֥�Μ�Ɣƽ������{��s��k��c��Z��Rkc1cZ){s9sk1ZZR991ccRZZJ��k{{cRRB��{���ssZJJ9kkR�����cccJBB1��s{{Z��k��{ssR��c��skkJRR911!��cJJ1��ZZZ9��R��Z{{J))99!ssB��Jss9cc111kk1ZZ)JJ!ss1cc)))kk)ZZ!BB1199))!!   ks1ks)��s��Zks9ck1RZ!Zc!JR19 ��Zs{JksBRZ)Zc)JR!BJ19s{RBJ!199B��{9BZk!ksR)1)9 1BksZ19!csB)9!1 Rc19J1B9B))B ) BJ9kscRZJJRB)1! 1 9B1RZR191   ,    d x  � ѡK&���d�&D8��v!��&Л��3^lg�7m��Y�&�d�y1��r�@�
��sGo�L��r�K��v
�
�aĔZ�Ʊ�R�J3Y�d���	�h��ц�%��Nؾ}5��Dے�·�f�}ٲ�˻�l	O�D�#�^%im��v��\�8��}��E6+��Z�,��9�X�C1J����J�0��880�Z)v݊�!D��QF[S�Τ�
Ox��ޕ���O;p��|���tm7d���۸�-��=w�etH�=B�[R��}I���k�&-^�n��S݀"�6_OP��^y�5�Y�hqpq�:�U[E��8��C�7�x3]<��;��8��G�U"E��]B}���;:hVl�%��Bz�}��7��7�hÍ8�i��;�dä6�|�_(�7Zԕm�)�B���J�}��B���7�5'7�l��4Ҽ#N6�a�.�`��5���d4ڄ�ͤ_NJ`~L	��V���f���YVY��A�vZJ���G��@#
6����+�d�M-���J#�H�J#���
6�lß4�t� ZZ�_O�&$|C�jB$MĔm�e�m�M�͖�̂
*�,�v��Ⱥ���3�0#���+�0M5�T#M4�7ՔXS�9�jD��g��Cu���Ⱃ�;��2K(���!,�a�!2�a"��a"��҈#�n��*�d��5�d�'7U�D"���O@Y�-w�a:GRi+4��q�*Áن�i�|�`�A����ȼv4���3{��
�N*`UN�G�@"���&�D����� R�b ��k�,��~�LGi��a�7�kë�!� �*����41R'����@W���qeeI)֢J(�ƞ��D�H c`��O��v�~��=ꪯݽt�]>v,�H �D�,uST�VQ�IED�E�]W�6�F#���@��X�Ƞ/~-|���<x��~� T7�k�����7��p��v�3�e�!�)�kR��X0��0E(��E0"
�yp��P���
D� �:x�Ox�`�?��`8�"b�jĈ0���<�r8�t++��O�d�n�#���%@
VP�Bt�#� F�я� ��	A�"u�D�Np��C';�%b���/4~#3�`H
�@M��;Tq�T�a��fq�;���(Ev��S�1Q�8A
�] �0@,��XD.�Ѱ �(6M���׀���l����Fzb�`Bd1�*H����� �@���0C)B�N��MOq�R0"RX�#&��Y��#jDæ�0�̠��V��	�+F�	>0!���,�y���B�ȥ 8��BF!Q�D)�P
N��P��� =q� Q��h����;���E�i�ం1���%�l`�+O�,\����;�(�����''H��; �w��La�T���ݰ��H�0��&A�$��*�x���H�-�P9�aa��,��T(�;M!�p�-B�`����������!�a�`�a�xD�*Q�f�ЄX��ޔ�`��M��MX+��[6`aU�Bfq�!��
P�p��"��f(�	P@M܁��� ��>���PG`'"��b;�˚SHD�W�b�9��c�	4�,Vp�fX���	�� 7�0��)��C��lA�6���h(L��Q���/Qv,��6��ԝ`�ҍd���p�1����a{ B��Q��
 H@lP� 6��i��])BX`��<1
6���h/���x����3v���h/�GR<h�&8��(ƃ��[��|�B���#aD�^�� ��<� H�D0EdAV�u��`B2fM�;��ָ&Q8�,h?�ٸIŔSJ�X���}h���`�MȢ�݃�*X�Ex�:���&�.�T!�W �X�bP0������lgr������ 'u�Ka��L�b��M(AZ�QX�����@��R!*x�:p�/l��A
��*��Wp�,\mf,�W����r�ɱ�P�=h�<��0p���Vxbs^,�P���
�p��p)$�2�D���S�v
<`m"��+>�}��y��dsI��6�y8$��I��x�9�	Y|�	mh,��
> pA�A�4`;Ȁ^��!8�J>�7�y��'��d�=�C�y��]��}��>G��'��Ǳ�.�pd�a���,���#T x�2@� L .s
B��D,P&v����V��	l ���AB��ַ���\oA��.���}t-m��f`
��
L�{@E�@j�q*p0�e``v7�P=�D'�0�l��Pt����~�qo*Hs�R{�&"��*�F�1k��*>6���`�m��0n� P �(Pa�QdJtjp5��@� p@��@
m r v:(o�7{J�`݀w6h+�r�I� #���P
x�
'%   � ��  ?0<�<@��PG@~W���
<p
d�ZA � �F"#:�!1���׆"�!��k��ڴ��c&�� 	�S
�@_UP  p`   Ps Y�\��
< ��X�L`	��
l�zU�x|0΢�f���{0")����g��YS�#ՠ� ;�@�@_i�� 	� 8�  \P]�
7r�xa(L�L`�̵a��{�� &��;�&0�!m8)��!���`zQ&wh"���
��>�p
lpY eP�FX !�9PU�r�K�4���hL ��m`L�+p(U���0��xh`�"�""��k�^��d�TT�p` �`
|�l@@�2��2�IP p��W��D�H��4�p%�ɰ\�T�r�Pİ�\i��h���"�xo��k��B��� Ӏ(�` � �&+�|`VU1 I @pW0�E� �r`�l˶ip�X�	�0��0�#	�;`�,��y�h�6h���8`x#��
p����`L |�|��� Y�Y�[Y�f�i]�g� �H�lp��]�	� 0����;�h�+����0�of���ɖ;�j`b0z������`
�`
�X���}p}Pi�Y��9V0K@�Y	2��@�|�4�PҀ��#�@ �!�B*�x�V"�����
z�
� �`+�����gʰɠ��ְ��\�r�ʀZ�|�o�l`
&��Ѱ�0��	��(�	"J�����ܐ��pb���
$�	��f��G�� s��pǐ3ʪȠ} }�\�ِ
� q�P,M�0�J��)�b�u���3h�V{�>� ������`���`�`ܺLp�EIk}0k�Pm�����{0�P,�"%��> 2 �����wv'����3h���
�
����\��� ��� ��� ����j��J� ���@R��UpH����Z��:x���5"i{kho�ꯎ�T<�����
�
�p���l`�	b���	�w��������p��P��0
ذ���� )�BM�J)aү��n�*؎�}�ӡ� H�P
�����	N�	��	�P��z�ЦƐ� �홍�V���`�R���p�i&ҁ�_b���,Jүҡ���w���(�;y�
��[�p	��	�p	�0����z�ʦ��mp���
�p	"��p�O���벙�%�r�0B���,1Xw9kF����P�z�l���������X����@�����p��
�P�{�Ѱ����,қ�!"��&�H')�7{��������Ї�
�h���~k�Ew�`�F��`����	I�
�P��Mr.��,�J��^���p����6'��ƝҁU� ����	�	���P	� �Rl�@k���� L  
1�J������0	�	�,�J� B�=���gs6�u'�|̆�� ��O�0�І	�	�`��J��K��K�R���0
��
{@(�
���6�0�p�� ǒ�{m���;�y�*n��y�Ǯ"��ċI���	��
� �@�L�r YX+������ ���5��n�0�|��,��,)�p�:����͉�|P2��	ؠ	*ztl k"[�$L����i�߰_+��U�B͜����m���",�R�ˆ��������,�ߐ���W��k��`�T+���']��#=��@�#3�Ob�p,��`���8�p���D�w'9)���p�X�X�U|����p
�$
����K�hJƀ��\·@�ɗv�02|�|���<�:��l����$���������I����e-&s
�p
պΟ ��@����`�Q����	�`� ���ƛ���,�l]%��8����ʣ��x��y��m=��P
��	~�	����-��p&-��;Ҷ�_ȩ� ���*�٣|�m,%�0�]%m�u�=A-�x��{]%�����PP�`
�P	�z� �%��ͭ#=��	��	��4�ګ6��ǝ�8�پ���ߟ=�nX�ֽ���Q�����ԪP
���0
i���|ҹ}���
���C���@��R��,����۰.���1mLڤ�W5�ݠ����M|���Ҁ��
�p�
�л_��ݺ�@
� ���}�:� %�-�o}���f� �*�G��bМ��U��A�X������S�߀	l��_�%�R��@��W�˩� 
�Ҡ,��������۰�~�� @ ޑ6.)*��q>� �XP;{�� ج�	���k	R^���
�P�p�P	��
��� �`��ym��ݙ�驎����%��bN�� �/��`�`�X��� ���m��+��
���`	�PT�尤	�phܫ4�	\��@�Ξ�^�%����*��A=�7��r����
��z@�0�����Nk	���
���p��Nﳎ	dz
z�,�<4��{M����.���"���"�ې�w'":���.�N�x�|�a	/ߘ@
���n�n	�0��`��P	�@���R���M��]��2���:o�?��u����ng��H��@��x�����ꡐ
�p�л`�]��0�����	��4����P�p���������x��?/�`"�������Xp�������������
�`	)��@���������	�m
���1��_%:�<����������J�7,������� 	|P;��
�	���������U��&u���U�W�`�$N$��b�m�vi���.` ER��Y/r���'�[7x/q����m�v�|�sۮw�|�	P�V�֫��?�Q��ç��%s�J��UW3i%F�(v�.i�zu���$�qu�����]n����Vv��m|$�²SZ-G�J��t�S|P-9����{�ؘss�ڬh�!�=��ruMb�:.0�0]v�ݍ[5��lZ��s�6,-N��W�S��T���*>�����W�r�~��mbuJ�,\� ��8~�F�u��˚u��puݥ�\nm�%�*v�E y��N���{*�� �&�
�*����p�E��2,�`�륭��s>�����np���� �)�`���?�vF�h	E�O>�G)��ˈd*3L>yG�R�
�<��0�aҋ&�t�o�\�lM�W�/�it�K�w|�	8���E7⢉�o>�I������"�uF�C���F<���4?&$�X�%��´�3-��?�pگ�7�ۥ�Zƹ�1L�������;X����MZѤIKS�!��Zk=�j�rR�´LL�S֦���I͍�����!f\�p���cu*��ʮ �`�l�W�St��x�U��&�eR�\�N��m�?�$�M�)
Ubpi������UV�[�)�0��TT��CM�P�a|�0.���o˸���f�T3F���t�wh���8�y�)�<�\ؠ{��i��;��]��p�`zI6xW�e5�⋐�P�ZM>bܥ��8o?���P��D�U���~�-LH!�7�i(�D۰ʦ�^+H��Z��異�h��85���'��r�_��}�M4�������c���M��+\2����6L�wE��-���Z�OUV������u�Q.a:1�b�W���OZaR�C����fԵ��]��<�f�l"[S#o�������rA%O�*3!݆x�ML�z��6G���{���Z(��]ip��	D.�M�NM�	Fׂ2���_��H-�P
s�n۹���ՃV�`�'<S�`c�8�uD�kIK��&��-���TF��5�Mj	F$J�O��E�����GIb�*����q���[��<����E��x�^�2�d�w��o����$�h� 2�	�#I�P^�T�O���P�5�֌6f�k��f�����XV��p
"3:Os2]�"w0��&��Oȃ��V�>��z�B���JҜ�c��JTF'}ǿ�d0{)�tH�,���\`N��S���Df2�#������=~D
�q%
�1���at�W�l`$���49N�Ӡ��t�7�er���[0&�A�a9��AԏW)���&�Q�U��-���1���|�s�|`?+8�a�L�"FMwX �"�Y�� 2�\@"�H�'.!C!Q��J�ۜ#�7�B
A��3�qҔ��càK���E�hkմ�/�&2�M;i&3�@�]�YQ����� !H����&l��euW�j>Y�ՖR�bͬEӴq��Z�[3�\����%<��z$hnW�sB�{�.9�xԣ�1`p���jm{����h�6fJ�nC�2�d;��ʶ1����)L
P4Ɲ�rg �$w�I��D-b۱�>��h-0�K���"���č�1S���幪q��̓>d��ݜ)41�K\B��k��Z���m?JW��J�w�%oHH,��3���F��[�wi��XW�*X}���Fa�L$��@0�����Ѝyx�b[�GMR��C6�����L��}X߭Bؼ�x�'7�R����<�&:�*����-S�	7<"���y�`ȧ���%4|����M�e_�6\%�l��`\�~n��=~d'K�%�eRw�q8��B�p�=ݚ뙷m&?#1S&t����HeA�9­%/-B��Q(�N�M.�Z���y�Ś��(�|�=�!I/���N��b2��@�X���',� Ob��=�I
�э�H���Z�Vx��`m��-����-�p�ׂjjS��d�)[�;[B����$B�Ldbm���&.�:J���E)^�{��#�\��`�R��E��k���M6|�mx]�\0b�U)�?R�r��-��;4B�#gz�<��*�S�r��|�k
��_�J!�慗w���'*�	�)���>����"�P3k)U���%�]�z�~��π"�&k Y��ā����U�d)�C
Q����	7���c����@�z(��֛&0�<�=O�f$�� q*LaUm���)��*��Rb�������j��umK�U?����_}B7��p�����(6a���mб���f���Æ�`��I��M���]O�-��?@�X�C�z�PH�C���<��u�(P(�IQ6�k�c�)�� �L���?�8&g����G�h@��-��u��艎z��O� "z�a�X�?�;�����zB&�A�+��{�W�S0|0y�� ��^3�S�F��=�:� ��� l�G���P&6�g`���Al:�G U�.�뢦������=X y�7p�Y�9�K�T8p���{B l�{B���2gPLB�S������=U�� X`X�(y����'�j��h5��T�!�'7,g(�� �c��c¤Jd���F�4�1{�u�Ui
| &X�_�U��X��j���6
31dL{
F��EҐ���ad)1Tp�:a�J���"�R�K�	�i� ˄R��\x��+���/^�J�m��6�H�\�J$��T�S�sP��W��)��ꑇlD�P�� 	�M�)W���{��6�'5���T��#_��UM`O�L�㟧`
&��MD\�4�$:ȉIUZ�k���H��_,)7<F�ʊȅR0O�,6h!1[˰y�Ƥ�g܄Έ���c)�!����)��ű\L6Ħ�(������1V�_��(?�K`�\��O`��L0i���i�	�Ĕ_Ћj!���Ҡ�r�M���5�Ȉ��J ��Q"ʼ�T�o���V�K�����[�L��פ��(�,8�)���!bغ#O���A^�����������DJV�t�q�1�ơ�B��=P�Kɋ� ��8�;�C��,O���`�t��.ǚ�m��RpO��H�F�Wxy�%�$�+N��hІ�������|��<�  ;        < 	bear.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � ^  d x   	Bildname  bear  -GIF89ad x �  ���)))��筥����{sscZZRJJ���ε����B99���������޵����ޭ��ss���祥�{{絭9 ���֥��{s�ƽƥ�������J1)B)!Z)�kZ�cR���������cRJ�scJ91{ZJ{kc��{֥� scZ֭�絔sZJ��sƔsޜs֔k{R9�Z9�kB�sB) ����ƥޭ�筄��cZB1֜s{ZBΔk�{R�cB֌Z΄R�Z19!s99 kkk111�ε�ƭƥ��kRޥ{�{ZsR9ޜk�kΌZƄRޔZ�{J�sB�ֵΥ�ޭ�﵄��c�sR�kJΔc�k�sJsJ)�{B�k9sB�{sƵ�ֽ�kZJJ9))���{skZRJ��{ֵ�ZJ9޵�֭�{cJRB1ｌ�{Z組�sRƔc�scJ1ZB)sR19)�Z1{R)cB!1!Z9B)�֥�ƌsJZ9�޽kZB�֜�Δ�ΌkR1R9J19! Ƶ��ޭ�֥cR9B1�֔9)�ޥB9)���ZRB�組sR�ޜ91!B1kcRRJ9)!�����������������{{sBB999111)))!BB1ckBJRBRcRZccZks���������1BR!)ckscs�)19!)1������!1B���s��s��k��c{�Rk����s��s��!!!JZs{��s��k��{��k��Rs�BJZk{�Zk�{��Rc�s��s��{��s��cs�c{�s{�ks�RZsJRks{�ss{BBJ99B���!!)���sksZRZJBJ���ֽ����֜�Ό��s{   ,    d x  � q	�/���f[�0�Ac���F��4i�E��Q�G���M'���v(��S��D�-[,h,���8��SƳ'Ogʜ	�,X�(Q�%[':u�]�j���R��m۳g̈Kv,�bh�5�Vm�۷n���M㹻w�A{�n�d��N��a���e��.:i�
F2ݴ�O�����*V�[�qۦl1bĘ�]��4[�nϡ�]��ұ��4v�	C6y�Qdđo'��8���	�Nܴ�ؿI��39����&����j�j[���9�N��+W��4��{K�W�raIM�q�1g�t$%��u��c�4�D�U;��#:�pSZX���z�X#�5oɅ_��w�4�u΋�`�!'L0��(`qF�Nq�%c�u�`�Nt$�C�d�]Ǎ5�T�ZZ�ȍ7R]#�l|%o�Ǝn.��،��TRQ��FL0@*x�m�����%3�u�@YM3��V�7�G�S|��n/v����g�4��fR٣�tN�u*�������^c[��6S�Uavb��؃ܣ�����cZ*#�5£&R���#�����p�u��� ӦR��sM��ƺ��Tݦ�f�c,R�V�n��p뤳N8~k�� ����4�,���HgG��u�rK([Vzs�7�4�a���l`���N���~eX�Jem0x̉��c�He�QJ]諰2l�O�w_�����Ji<q����2҈�0��\�r�L�r��-w� y�O�#��|����5�rwߋ~�х��a���1���՛w��Y����2�/� �@+_{�B�؀�	�Bp�I3ߓ�U����s_����_�)�$�	�(c�C��y�h�����J/��K�/<΂&�@�E��JU��Rv:��[3UUܵ���Ak�qp��i�4���~���r�����w��@�|͂	��Q�	,ذG��@��˜#m�3��q��^A�a�5A{ e/��Q��y�/d#CN�bv `� l(��n����
� E*a? �-��	n��D�)����H��%t�Sar�.k�w����F a���7�X�[sb�z�����	~ъ��
��!@a�C�-(�`�J�!zk�9��lTDA
p��r�P �*�@T��@	Z��@�'�0=T0�<,�VF� �h�"B'H�/�p��{أ�@�b��� �P��n\�1Ҙ�4@ P�S�%da
YLA�P�
P!�K�B�@*d!O�b���*"Q�2D����� ��(3�A+f��¥BHP�ny?܏�y8��P�Q��E�(Z@�?�����A'�!�|�#��>�I*�`c���`
O����%>A	O|����:aA�O����Dt #����n`�X�s��A�(a&ȂR��T�c�"A�R�"��[���b��~����W9ȡ|�� t@3$!	g8�0��RB���$���O����Pw�	T����-����B���*���X�"�d���`��Aw&�C*lp�A��EE��"�H�rW�J B�|�B�@#!	kHB���3�X@B �^����%NK��F��y;{�Btᾅ�%��׎a�:��\P����Eo�bW���k[�
喢�t��4	�����>��
8�Awop3�	W D.!����A�D܋Y�ǀ@B
�.	z��Ԡ/h��8(�0�,���8�p���En(BA����`D� p`#�k/ A]#t�����p�.��
��')�|�!� �=�Dy/�Y|^"�0jԠ#a�L�3Q�?�ʧ(�*q�$���p��ڈ:T8�6�3!
��3������`=�9�8�qЅ%�S�2� ��3d�� ʛc@|"ǂ��=�����:�����L����C)���=���$�(��f�b���FakP��p���f������^��&0!
z��
�h�f#{2��I����� ԖAF������ݧ8E+L0�J$"8H�R�����NĽu��T\7	h 7D�	�
��H@��}��Z'�i�g=�	X "eh4H�1عH�t>�\B�k8q�Lt����
V0�U� cй!QLV�����!� �3��<�%|�	@T�W@B����c��h8�tP�-`bҍ���c\]"��BBj�+���A _�z����V�.d�"� E8#�ۈ]w����1��A�=�2�������DD j-�.��Z E=�Z/,a	\�A!�+2�������KX�	� b�E`an�
��2p5���|tp\ʅf�p&V�	��H BU�`�`Fp	F�9`g�T}��I`��Cvze�L�m�e��i`A`yi�k} l�bi�F�.�o�P	ȄG�����p	hut\�Eatp,pj�p2hN��s�Z�EO�~,p�P}���(f:Pe�	��>�TH�چ{8�zfG�D�dDp;0~J&puw�`s��
���
����	c
�V���g���	jX9����Y�XJ&b, b�wi�Kx_`O��^PZ:�{�@]�qJ�g���Ќ��7�	�`V`K�����
��o��8��`n��	�@\��	�0��D�Hp	��l��Y5�h���y��X���UlH��(OHO:ph(H2xD�X�F~�g��p�0j�P	f5wh��0��Vt@\c�n0x!	W�0ChzD�v�5�ge �����rH�f]`qG� vd:��pi�l� 
�VOC�k��ג�6~"&bh�V ��&~h�
G e����݈����	��	h��;�aY�Z9�~��;��y9yi��.u�n�	����6�F`uDg�UK���F�c`Ky��	������V0e�k
��WԸ� q�u	d�T�	��_�WO�n�u�epHgX]�e���5d`'e���kpVk`u��f`v�ٌ,@K!uq�_{��e�@h�]�x\�
;�hp�c��B@�)Z�Dz���v]�J�i@�e�Z��)�C&
˶��fovX�����{�k&`D`�oy~ 
-pܘ	q�� ��p��k`dP���^%hB�~�@O�Dd:�j�G���`Z�vj�[`	Ɔ\�f�����V�j.P�U�o,��@�x��X[�
6'� bI��P
��tq����ZF�t�0B`C0��p	4(
� Z�jhMUO�fl�� �x8Zx�D�=�yG�oV�Y�?��o*��C���`I�]G`V- ���tYp���"�v�D
C�/:�f0tj�:�Y'�^�Z��� 	� ��~j�]@���}�@��fJ���	�GC���P�ͨgi�?,&�`��gЕ� |6�G����_P���0ePJfg�p���GY��\P�K v�		�I�\ ^		I�^pz:@U�	��Kb���jV~`�& Cf�	h0z0��F�p�6D�p�u��q�:p���������bfP�i@
�@O��=�y9 n��t���]��Fۧ=�L_gj�]z6��3���P�
~ps�G�P͘; ��z�24�X�fвZ���= r���Vq9�Nik�I`l�	�UO�:d<
�p��J�� �GP�y%V�V`�?/�Q� 
X �XiEw�p���0�w*
CF�A�`�b�eNve 
f�� 
S����`	b�M�0U+v�F�a\�e�� 
� 
��D`�&C�����
��
i<��g~�w����gs�TCVORbd����sx�+���[@
�D�56�3p �w.P�P��Kqe�u�|�y
� t�0�
�6j�P��
8Te~�K!l�P-p��H�hY_n��}p|[��e�0���`g�[1�P����t �04@
��w�� ��-`�-P¡PLl
�:xT
�@��eG�g4��+b�*�,�v8�}zg�I�yC�X����x�p��	��p��� R �}P^����  �h�a���v�Q|����� ,P	-��W�Q';Q��Z���JgD����[@���8Dܢ���ppp��a����# Q���
-�p�|aЍTX
y
�E�
��ë0�
��;���0�f�O�������o, d�xKp'`/�8��� 3 a� 2�E��܀��-�?] �6��G���Ќ����n�i{�ū��{P����6��y��*�/�B{���ͺ�ۧ�]�&p���	bp��|ؐ� �p�]m��<Y�d��
��  �p��� ӻPW����Q�1}
p0���Vh�Xf��`Z8�i��0nf`|'��C����p�C�	���·�-�P�� ͮ�� �P
Gk`��a����׻�{ e{@��n�$PY�U�
���X� ���L��_	}�b�B��N-�Z�W ���M~p ����3pc���p�  �@�z
;<�\��9]
w���n�KQ�\
+�
X	0�BW
�矅 �> J��XOWph���E�`�^�m�d	� w� �a���� ����a�:���p�� +�
~���� 5-�z�{�\Ws��7�E0p���`/v�L�`�`@�I �P��U�&q� T*`  @\�P�0� �E�޺0$p�p��ּ������
�L��L~jGp���?�d6�	�6���7�y<��W�e0cW�f�!��{L����^� Cs3 
3@"� ���R p +`��`Ǡ6.� ���@� �t e��	]yg`�V�Fe{�
���h���`��k9�{��sWgg�}�U�.�S�@�p Qp
`��������R� x��� ʐ���0��E�
����3�p4�]��ո[�`����p�H��֣�p���A�W`k4oXI��P��� �T�  p� �� ��|��� ��� ����Fn�t���~b��hЕU9驠	E�
<ׇ�]���=�{�hQ�B�Gn��]���Hb c ��޻p�/-��� R�R T�@��PΧ�������	Ҙ?bH���1�I�� c������58 �����B0�Ǟ�J3 �p ��~�/��� � ���R0�~��� ͥ`��/�Y G��j{]
���}����f�<�ئ��W���:����g�v��lA�|x��s�
|�r1��@0<�r�еk�]Rt�ʥK6|�sᏉJ�JU��!:t�����P�J�\a��ǚ&:0yQäL�=��	��� %JР���̙$f����#c��Za� �{��!@p �`�"Vڳ�W����+�H�J�:��T�tZ^�ŪU���س�׮ M֘)SfK��_��bD�",1��A��"<X�IbҥKA�1���W��b�KYxl���b׫ �z̅��u��_���8Q��+���)�S&F������5��dbnX�5�0�@"	�!n8!��~|t9� �KD�Rv�#y�e]��.$��i��S)ŕR^I$�w� �^�̢&�H�.�pÍ+
Yc��0cFN 3bd"�Z��H,B#L`!?Nq��r�ta`��J$]pم/����cC6K�@��,2>�����,�`"�Kb�E� �En0b$�@c�Р�D��v@�@.��p ���^���"B ���D�*܈<�)==� ��^Y�^J�ȣ��
 ���($�&�0�L�!�u5�x�,n0�5�
b�b�T^�AL\A M|�,%^�EG]t�%�iuQ�aG6��^!�Ux3Z)v�H�\��FE���B
�$	��K
Q����y����@����X��9�pl\	�D<.�Â�@
)��>�auᥑU2xN�R�t���DC�$�(č&� ,<��Έmn��,�8�� 	��1���l �_�����W*zŕ�,��#\�;��P���3Hĕ�J!��#�n=3�X/r�4��DR,xp�"��Ph���*,�Eƀ!�*�|a��,�+lm��2�\�U�����4=�< �P^Zgs��#1�[���$�P��+A�@BQ�$� �� Be��m��Dn�걠�0�&� �F4�E$h	@A&B?p���u�0�]�! d ~uHD+pb�J��u�����50a	e����1���ް�	"6��� !>�(��&�Fd�0 ����"PHD(�P�R����ƈ�0&��F���L���..�6(�:HqF("UCx��a"`��0D2q�1x���#@�	G0Y ����F��� E ��:0�����^ш0`�" 	̝�C_��+p��<,���z2#$�0C�TS��l0C��`� �(Y�Z܀$8���hb�?��?d �:�C&��?B��L�bk���G,��;�t�b��U��81LG� l��kPD���A��QV!�h�Gdbn�Ȃ��.$|����!F�P<��GS�jЧn�G0�H�G��q�Ԩ *7H�js�(���]0�'���"܀38	X،q�.�����B x��P)hP�,q	1d�	�h�AO��6LX����P�4B��\��Q�^�(`b���b���K)0�6<�D0�`�	B�o�l�2� �h�A$,�� ��Ո�t؁lu!�%� 2X	��Yӡ�L�FEr� �v#�B+�*��4�l�#"I�a�]~kDB�8���,\BA��#xA�H����� K9(�Je��[9�ik���L$�tua�F�J�� ` ]J��#�pG�l(݈0�I�!7V���A���6A�ˀ�⣜�)��?��	�
`#�#�3!��F38�u*R��p��8B����ݽ��M��W�A���N��B�����;]���%I�.��"����JG��\-���<���Y��
� v1��dB+E��$�w���	��;����B� h�gC�@�� G*�
�Yb�m�vHP"���%���ِX$��E�[�,`A^��"y4	�P� �<"0"WAWLA�.�l�D� ���K碵�e$3�-�HI,��n2�"��x��5��$̔�ٰ?%0��@�z�#��X9VBy��)�H��!Z`��e �Xȃ�t(a��l��������3i�i�34qH0�E�A	�Rq���h�4e�#aJ�^�ȃL�����q|$�.�H�2x!����`R��8{����d-3M-Hq_GS�9���p�>�c8�#��F68�Sm"�Pd2a	]XCf`�C8�F���<��/y�B���.�A� �r����H�U���e���7M�ۉ<Hc�S�*%� ��1����@�J@zPH$�� J �V� 	8 ��c���?]Ȁ��:l��ꋡ3�ay&�1��*iBE��I0�T �,��*?+��!24p�J%X���-�x �G�[   ؇�|@�x��L` eX��ۅDp>҉�]�*��pc��!�S)�L�����%�0��8,��O�.("� ��γ;�A ��`����\ >y yB%�����a	��*��(���0�!_@�K��X�A6@�C0���$�と`% �! $0�,�� � 3�������@���A<�\�����57#-���#1_ 	�b�:��Z��Pp�1`%���ȂD �K`�3�L����}( �  ������xX��?e8�)��z&{��렜�������(�0�MЄJ�Gp7?P�3p`92+�'��+X%H�!(L(pE;���  ��  �B�X\{�I���ӓ?D�5�H@���CXH4�D���:G`94�D�':3H�t!�$؂Z�,��(�
(�=� ( ;�PI
��x` g��)��$L3g�Igr���.E�D�BN�4�NuS)D`� cD�-70#@0"��D [� C�� x ,8����� ;� eh�W萯�:K3o��,�V���؁GhV0F؄���	�@���I�YB���H2P�S�-؂/��P� 	� 臔�8�[X�@��`-]�G4ۚ�|�D|&c�MF�M8C�E0O�6�9X�0<"$Y. �$�߱�2`�30O.(�� ��7���[��8y+�
�?�c�K���!H�����C���|�Ep�R*ʛ�7��֘��ʝ40�!�"�/(/�Z��H�؃~����;��Z�Q�P�z�D�	$c�˽|&�s@a�,��M� ��כ�Lp��>�H(-H %0�4�ܹ�X��Zp�	�`��)����D��%0�Pz��1���:�	�4D�c:@�a
a��X�L�xcF@%#�
2@>��9P�$��&X� Y�L; ��4O�Ë́p�NM�Ic&�b�TU��M�	M8F�aR9C��,�1C�+68�J�����"$��+�*��YhR���S�Z��'x˸�F8��<���6�Q�s�G�a�V��MN��%��P!8�)�B��v�-�K0Qh�D��J� P#�?�<�g`� (�I�0o+Sp�(q�ڗ�SF���d�,ב݄F��+� �LЂ��$�H0GPS0�7�� ��� ��(gxM�*���˾���Z���MWV� b
�C`��%�%F0�.聒���0�"�B� P~X �}X 	�����
��?y��X)�ۤ�D���	�ĕ��T�=�� �=�rU�L�C(�ȼ�5��H�&@�@p�t�>Ѐ��� � ��	��~��8 P�0Pg��Q@ԓ	9��Zq�N��:0&:�Q`�Q�:0��N@F�����HP$���5�X ~؇	� ��������H�]�_gX���n�6���UD��C�� ���R^VH�-�G`�L�$ y�5�.P�8�DR�*�P ��;pC p6�F����\�˃y�Y�3�M^����h�:�:x�=8^���P`�CPw{,@�&�R��#B	C�~�� ��؀��] �� �G(� yp��-@	������_T=��X!������Ä\�-��3�40?aJ��}������D�Hf�eP���`qQ���^ބ�h�
�P��:C��*M@�{�
�z��^��	��؇<����  ����U�ߤ��fS�@S��S&�Gx���N�'p�(WN(F(bX�`u[BX��&❸�����08�,�8��)��D���Q���JӃ��`rG�&y(8`�քG�O8�MȂL�.��&���c�*�X�}8 y�8܇~��
� ;�]��(�����Dܟ�,M�F�Q��ZY��<H8�G�V��(P#@�{c�P�*� `��S��� ~(k;��(�� 3�R�f�k���n(Y�c�ӄI؄�� �|�V^(@�$`�B���1%`�)9 �}��;x�V|�~( P�\���s���ͦR�P~c�.�dZ5�G8HD�X8-�M�;"I(�6p0,�t�c�x�}@��(�} �؈����a�ڧ�f����2�ք#.#M��=�P�hVX�>�B��#E8��KCX�JqG����	D����`P�RF���P�8�m32LY-��k���F`^3p�XSQ�$,؁����P �	 8X�˱�6m�vq_� Pp�r����r� ��^m��ZV�:�Pp�5 ��5D@��0:Xd y��)���֨ŀ/-і2����nF���#����PH*((����>H0 ���u*�)	�	��D� K㓇�l�oq%-�:����m�m�Gh���Ih�&X�E0��Uj9��2�L�;Ex�	�� �~�L0?���+D�n���!/�Ѫ��>>�M8�2�-��}�7����ڪ�I��T�KX�I0�5p�3��"P���*C胎�`)��:��3GUNxp�C#�ZL��Z̈́M��G(�Q��O�"���EH?$��Mx?��:8:@-�޸u��B�!�I��e�d�# ���k���Q8jq'����C`WH1�4�+6��[;���<`��;�b�x��\@eq�K�U�Ih�n�W�J�XF�Fp;
o�5�R�7��bt�7�D( %�@�J��/�цqs_�0g�?v�  ;        * turkey.gif p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
        send "mouseup" to btn "Aufgabe"
      else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     �  , � d x   	Bildname  turkey  -�GIF89ad x �  ���������)!!!kJJ!k�R  J  �)!��)!�ZR�9)9 �J9�9)k!Ƅs�J9�sc�ZJ�J1J �kZ)�ZJ�kRsJ9�J1�cJƥ��{cƌk�Z9�Z9��k9 ֵ���k���sZB! ε�1)!�{Z�sJZB)9)�c9J1J))!�Z)�s1��Z�c9�Z�R kZB�sR�kJsZ9֥ckR1ƔR�{BΔBޜB�s1�R 9! ��{έ{cR9��k�{J�sB֥Z��B��9�k!�cscJ��k�{R�{�sJ�kBΥcƜZ�csZ1��J��BcJ!9)�k)�c!J1sJ�{kcZJ��{B9)��Zƥk��{�s޵k֭c�{BƜR��J�s9�k1�c)ZB!sR�ZZ9 ZRB��{�֥��kֽ��{Zƭ{{kJ��k�Ό�ƄkZ9��Rƥc�{JcR1��sZJ)��R޵c�k9RB!�{9sZ)J9kR!�k)cJB1ZB9)kcR�֜ε{��c޽s��R1))!�����{��s��k��Zֽ{εs{kB�քsc9kZ1ZJ!�֥ν���c�{JJ9��s��Z�ތ91)!��{���ƌ��k��RB9ZJ��k��c��s��{sRskJRJ)cZ1B91)��������ZskB�Μ��k��c��Z����ε991kkZ11)�ƥ��{ZZJ{{cRRBssZJJ9kkR��kccJZZB99)kkJRR9ZZ9BB)))99 �ޥ��Z�ƔckB{�k!9BRBJc9ZZksk�RJZkck����!1�9B   ,    d x  � �la�(�E��8rE���	b���*(�,�Ƣ���`ق��Y�Z���ɧ-����JV�D�Z�вE�!�V	�@qH�!,^9
�E�By�#@��ժXWaI���"T�X#䌅�bŌ5t���D���M4��,,?��"�ꕙU�<Ͳ�J֣Om����*�%[����V�!rDrCD�(�`��>|P�N�z4l���Ȫb�XA���X�������ni5����!�l��Y�d�Q%k֖U��� ��*�!�>�Ҍ��� �!bԊ��̡�z�*�Z� m�C"Ͱ�
!B��]m�WPh��"�WW���3�8�
� �B$P���']	%^��2�w�Az��DW�1�� ��i�駚j�i1�,<)Y�*��!�=	!Q���[��UW_�%#��HɌ!V$�%C����pq��*˱`�@B��2� �l��C�KU�I�kM�"P\9�D3*ITL[���� �H;��H:���:��l��w� #����b˄Ѥ�J+�f�x�8"#�~��*�`�k�C$kG�g�Hl��=������ yi��G�h���9��+�4�K%J8�#v��	�ؒ�-�B��x!�$#ChD��@/��$#AhA�+���N�P`��P��wn�
R�`^y��_@��<����r�,���J,��b�'��*KѾ,�ƒXT(�r��
��D��P�H2���B%�ႋ9��c6j���J$1����P2�?#��m���p��ïX���j��wG�*W���ruy�^�C?ز�A���,M��|�Ӎ��`v.���m���2�<�)�$��	qˑ�]p����X,��,r�.��%�"��ZD#� ����lS�[*nIH����$-��"b�I������S�5�p���S���ݮC��4��Y�"͠�*��H� 3�i�O~E�����(�I���";��
l0.i���Vm0#�ůYuc����4��hK���&�]}ah�j�,Pq���<��CH`����8�+W�r�t�"��f6�5��G%��!N�
����r�,~�pp��AA�'6�K���,�!Y�
�`C^P�/��1M��W7,4���A��`�a���$%l�\d���ca�If!*��#	�,l�
���q+(��	����E�Vt���Y��`�:�@�h�/���0��h�#�F8�-�D��JBr"�IJ"%Mi*~��� ����m"�ap4����dN���YG8��%ʃKT�@@��3���>x��!�c4��`�����.��	'��5��A� ��ܒ-و�nq� �a�f8r���� y�D�B<��%�5���E/��5\����*zcAx���y�)�S��6�!D3���S����W0 ���29��mq�^�bP�ElRb	�dk����(�̜�Dw����
�;�aAJ��$��c�"[���x$�46q�¨m�������]�Q,D��=��*tp�❕�)��Jl1�O .:��@��ET/ٛ`+�Rcr$_8O֩Х�"
��ʃ�V(�P�e"�˓l�q�����cОx�Ek�a3u��B(�.�	E��a��pV�D�   �9��Ͱ����@��a���kZ��Ӿ3�����=�"�-J�g�4�O$b~pL��O-h�w��+�R�5�D'JOl��l�w�O�c��,L�I]y[�Rs�Ep�طH�Q$���|���$�������9��"#�� g���i����H�&Q�����p%]��_^�ꋩ���(�# ��ٖ_��\��)F�&���h��5g��D��E��`��#�<�c���Q7���7�ɋ��E�1��)lT@��P�/��e~�m��RSF�(��&H��-8#�>h�æsF�hzD��2������iW"�#�\z�p1�i.�&�-� .�����BD#��D&�|[<� ���h%��`W�("W�!,I%C�����|�Al �HLbT�t9��,&��H�¿5�>�e������"2!�1�b-� ��<4J��.��T2�&hFnk�D"�Ya�0ʒM�����A�3I���	�m�(�G>�5��������Ŝ���D��W<���E��N뱘�6�HC��LŐ�h��淓��]a��
��h4��A���6B�݋�lt��*��u�J�X��cRx���*��-]�>Ȅ1�A~�5K��`PGu�d =��S�"���=+��C�O��#,�	��5!I�"d�	� 
�0�pf�	O ��dd��rc��Pg�+Lrc�q~X`
t!K�ta�@D��/��\�0� v�
�0'��;W@4����WW�db �a ��6�\!9��Q����Pj�Q����%;1*J"!��.��~�<��
��:�GR�"D�	l�	��m�PG���3a��J � ��	������4�!�M!!� 	� ,`BAZ��0٢C�7�Q'� ;,�PU��	��
2���B	�u4��AR�R���0
���-�� ��
Ȁ�g�Pl� 	� >�v�"�B��@4: �I�.[���׊0�.A������O�_�d� /��p�1~Mp2,�*1M�#E!��dw�S�#0}t�1%gl������/3���}��Ѓ:����`
��>���� 
�>��7������
�P�@��Q�&o9K�GK3tԇ�.�HD8�H�W
��"p�
�0�����C$U��i3��W�
-��1 - 
�P� �s'��+���y��1=�#�A���
*�-;R��e�pY^�	�W8D3U���#_�
��%��:�҇$�k`���)Bh�@@���5
,�}AI, ��rj�$9��=M�!9�zY�3��	����X@�3x�/,iP}s��R�a/��0Z�"�1� �P	h��p���s%�$?���͂C�� s�a�>Av��WЃ�7U��	��5	�`�U�f\���E2
�00
"�"��b��aMM��pB�@��
�4�GD��
MQ"�"@
*`
gM)�e�Pi�H��	up��
�Umf�OБ5 �x��g � I��	!"Y�� 	� 2�bj,F��ҙ
O @���  + !�{@q�+�w4���v�",!zȣ9,a���[��p�0`�(Qa�2]�&	�#��@�
�0>R!���!��p�  �P�@�P &l�SzG�\	u
��jm��O�g
�Ѐ��1�pI8 `�aPPO�S��
��
�`nx'5C� J6c.�ɒ�#� ��P��Kp>�F΁b��$��#�p��� �lB�X� Nӗ�0��y��
����7���Y7���}�r{��!I�qG!��Z��p�'�%K����� �@	����+:�ZaG�� 
�p���n��`
�����8�7W��M�a_�4�.a�R$I�0� P h�02�# W$3"o�� g� -�������H@@y0EB�8�� c�� N�"'�V���
2AZ�q[�,ؑ\�0�
�P�
�XP�."!ѐ���/�:7 ��y�1��J�`
l�kI-��/��0R��0
���s���@��y� � !��$āOp$l�^P`! 
 2P�@
� �5�w4W�{�)}�@�A6� �����@�0��1�@ �0��2@��R�#(��`��Y��$���
X��\�~��`Z`� �� ��
!�=����	��җ���� �yy����03P�` p�t��hM��p��0#�G��ٚ"5.��00*P
. %?�OW�6� ŀ�p����̖7`���$�p�y���y 
��G��
M`N���V)�^��\��f2S��&�p �)���H��&Q�	%�19}���������1L�0 ��հQ!
�&�^[p�3W��䷙<��"`P�"���1�!0�.�	��i�
�G�PF<ŏbR,�EB �p�1��Wo�2P�/�50�PX ���	C@�M&"
��qqT%׉�� �}��� �O������ӧώ��b7�ŕ:�M|�����03�(
GA�RJ� �,�p�#�1Ep!���:�7P"p-0
իGWP
�p��*�4m-5}�����q��i0��uKh$F5P����U�ˈ��	��t1SO��@�f% @�Z�*�p&M�U��7�(2Y$l)�T���-��� 
�@��p�0�0�3`�#��a��c��s��$�  �SQ��:Q����پ�l������'�����J�!�и��� �@����7o�=1@k�!�/�̜�� �H���ħ!TQ�6M-V�(Tq�;퀥I�ZY��p��p2@P	�0k����^�Cc�#uEvx�� �����Ԋ�G���mm�-�ûe�?A�&��>0
�-��c 9oq!r �ЃO/L�Pp� �� `Ŕj�F���A����������&��ޫ��� 	�`N��
��` ����#	�?1a[!��^��/!NP� [�/>���ه<�nݣ-�}��۰}��%�Y�B�k)c����M�0#�z!R)�J#`����0��qӛM��r����V��S1-�a ���p���k0
g|YiB�3����I)�\1ס�o!n5���Z��S�@�1^�2���1y�(�j ���I��A��j�� 	�����d�%��=��	� 
e��VZ����'}��p��֦����"�>���7@󠏿�
[k,%Z!��±�C���P��M�0��U�ڐy���1��o���Ӎ2�Sq/��R�,�a����f9&*�"[�AW�	ϫS���=yp�`�0���I����m�3��n�P׀K<y�!�(��4!��r 3<q�jim�o�����7��+
�0��;��a�?
7��d�ē۴�����a,��)�o
O
_�¹x����� ������@��0�����p�P�~��+7�y/ ���60
ӛ���� JC�N���Qr �p��d���EJ�P pC���n�"а�9�����,O�s�D�3�P�@|�>:4��!A#)�k��Ǳ&�1"�� xX�
���EA�,z#��C��Z���:�C��G��RH�5��假޺c�nH���!S�LI��Qc�Y�c�V��,ڂ��*W,�J��-F��y�d�EW�@H�ܨ����r��@�q�+N<e凞[���ݔ=����c@P9k�C�-��"�*pbc,�lѲeP(1�>jH�"�BD7 w�k7n��6.:x�4�bV�_:n�p��züԬ:(�c��b��$q�<^٢�/X�	D����a6�n�H�8��r/����*��m���yG�rnX��\�i�l��m���$ ;�K�ÌWDd�QN9|p�D���Y�
9��A��2��B'�tDe�up���q��aǛ\��v��M
�# �j� \Fi��/��"��	��D�A�B�sL��0 ,9ؘA�y�М�$再���o�gx�i�Z ��rI��y�̮�<)7�@DT~(�%�Т�a�/F!��	#�-��b((C%��
�� �,�_�8���Kt�e�w܁fd����5�a�����J�@_p�%%$q$�U��n9fd1D�(,f���E{b�u:�ȴ�2`�LfX#���慜��Y�J��a�GyE	�Yg�jr�!���m ��c����I[�d[g��cy���8��-�JD�x���Z�F6�d�Iǚo��ca��`�V��u^h�����k�yx!��aF�kB!�I����{,����/<p�3	0 �5D�J+QDy�y(����v�i��J���f%���]�Dr�Ϫ���5ZPF�"�U�pc��	?�",��+ xB�_�#Yyp����D�y�U��uHoqcEG:b���i]�@ ���5��2Q��9� �+V�<��c�X�O� ,
��Ź~ �|A4��/򐪩�c0�˲��x��(�/~�\�"x��u�<
�O�r�`v�`A��G��Ap���m� t���,؀T�2�����@^�^�9�Q��(^0e�M�����"�Q��v�o�u��s@-� 0�x�^8�Vh�ǐ�,�
6<��&��N"bp�ƌ�w��2�	�-�љ2gA�iY�(�Q�>��4�PQ	(#Cx�2�
d�f�D+��)m1�����
�cRj�a� �`�	8��p���An%@�j$Aj�<� �b�Zd��̴���m����T��JhBP��_�}j�hLI�?���Y ���Bh T��+7�4�6�D�37@� (�܅.��5jф\����7F�ə�,��"��X"��#� ;@�����+�W	�5�B���"l�Je,�B""�h8"EM�AD���$��*D�%$y���8F;�q�]��
�X�ĸ�����%��
BP�O����d v�h2�������ic ���1���: ��W��j�lg��n�c{YG5�0
ql�� Gt�e��	cG>��c<�X�u���C�A~��#N�wV"&�N�Ԇ�k�m[�_�t�2��c ׻�v�4��I�;�!
o�c�(FbS�m�C�����$r�r�ⳁZT(f!��D����*�`KT"�`A�e �Ll�@�* Ɇ��̖@i�&,�6$
Ƒ�2���<p�q�(F�0���X�:~��c��Ǩ�$�qt��� GRw�4T��#�,t��$"9� �#���H�B������JHBl@�`�-4��z*����\�u������r�V���c��*�1�Q�c��:α4\4�0�&2��_�����
'ib
a��#�[���|�+�^��O͢����-�a�X-���%b�`A%8��TjE��@��Ht����F;��u�j/E��I�c�!T�6�
���p��0�!�E$�`�H�a�� -��
[�@�0�/g��ba@8]+����7v�k�v��^�}X�/Ҁ�\䁊�@G8tQdT�E0��:'��B>B0���H<�a ���6(B]x�*Ba�d����da�f��0���'��^$�H��Ƞ�T|�}D��|���q�W�J�E��b�"�2::�q�k�Ǭ�ld�:�+��C���" �
9����O��dH�%̠	JĵP�ާ�������@�Tb�p���8���h�#�=wJBQ�`M9�0�p�rH�s�<��?3r��k0�ʹ�x�P�0��.�P�"��9(��c>r{E�0��.hJ��0)(`�E[H�/�%[��-�J�C8P��9��F��#�H�`�`�9p�O�����U�r��s(��o�m�cd�8\��`C�� ��Q��A��6�A8�8��9hC2��)����.��2P�OP'hB��J���U�!��;��O��F�#8#�$� F�J�=(�P �E��V�a��]�ph�c�8�{�bH9�
� �5P�/p�7�8��8�.�2@:�ȁ��O�>RP�6Ȃ7��.�)1{��B�'�U�=؃2pV�D#0�(�Mx#�t�Ы�'pJ x��\x�n�Q@��
q(��+r�\n`}�%�7�H���8��8�)�:(�*�PP�O� 0R ^n��|'x9�64I���3�9��(�L8Y8H�/��.P0��(�I�<��o�Z8�n�w �Q��qX\�th�	��T0B �8(˲|�=��=��.x>5��h`�R`�ep�X(0f��C0��G��|#�8 �( 2;����0�I �G��C��;P���l�p�/\ȅf�m��<��7Aa��^%��8 �7�ڜHC(��6(�D�S�e��V؂���(h;��K(���.��30�[�Vp7�:��O�.x0�=�J0�:��)�H2�8 Wh�\H�o��5q�a���Jt\h�OP3H%J�AqtHx�7��lgX? <�9IFH,*1x�8P�Gx�0(rC8h.��ڌV��F�|&��|�.Ȃ8���.8�Y���چn ��D�48Ap6oІ��r�JX[�,���d�>;�E��L� %��qI@�z��sҁCPUh�70?78�C�P�U�^l�8��78��_|�C�N7���L�FxEPt�;�N�^yt��c�qH��5X�]�%�\�'(��"��A�a8t#z�HU8�O`Q�4K���UЉ��8��]UPH�H���4;h3`�th�tq�4��<�T@˅o���r�^1%P�J@%�1�(p�'��D-�&�%@�
��'�H.p�.���@�ͳt�@��AuH8�SU ؇�M����̂Gh%� Ȅ��r��l(�l$��_`�\X�51��tP�_ �Y��^P��R���FPX�p�4�'�P��SA�:���Բ7=�TX��j�TH?Up7MO�D^P3�@R���s��نZ�,�[�1�N@N�57�(-R�q)���P����CP�L�Q��V�! �D8�;MQU�S��M7M1�IP�M3���Z��d�30�d0�\�H`ȝ�
��l؆69D��\���
�P�TJ�����7�E������9aX�' �6P�H��<]�,�!���D??�����d�^uP%�^k�\��^eP�^�?��L�V��q(M�h�L`[XI@����<8�^QZ�`��T��㍃�U�C��/@)D`�hH.0U1�S_��E�T$�Rk�/�\���U��M`��YxГ ��7Y<�7��3 �	�V��B�6�FE`��S6�6�Y��\� I(�W@ǢJH��_�8�_lϣUf'Ё'�+��/X�H������B`XP�N��O�M�L�:ƺ��/�t�W �`A�Y0�X��A�@�&wd&@�6�BPZ��d�L`��؄8�`P8�Dӣ�,p	6C��P�˧=�0�?;p�I�Ã�*E�W�H��.^�:�J�KY��w����SP5��g�6`�S�^ B��Q�<J�c�Y8Bh.(gE�ó�8p�;�U+���<�!V&@?������9�k�����M?^H��O�g6i�W��/ <�-�p�s h�F�M@�<8�o��|b�D��1 �' �8��A�Ugt>Z���I��"��ل�T����Su��O��(>ޙӁH��R�Uk�H'�WXt��Upb<�%(�=�3�&��f�O ����U�T�TP�P.Z8=i_%`P��'x�����M8��ٔ�.(9��;�Zh�gP[�X�b �-��I�M��_��cp�4�cX�1h��bw �< �u�C8��X!���>ZP�@�nOBbf<��=Qw>Q)~��Ơ�D��HH�Y(�N�ζ�-8�j�T��1H��"z�x���W�f���b)V����)�8��9-�r~Cuv��|��>�K!���\�.m��6��OX;@�68A*�����M�"+��Qe�5pgh�J@�c �8h���N�N��#��n���b�~C�b��GH4e�U��[`�9��Y�K08�3@� ���k`u��L(��:BxpaH�r@h�!��r�Q!Ȃ(��bҎ�9�ȕ~oAb-W�Px�a4m&H�O�G������s¼��D�!��(�����F����JX�f�8(g8�p)>�m�.��r�$m�8�! Z��OPs���@(Y�1�;X�U�W��:�9N�;�,V�:t+�c@!D��z1B��dhi ����r�/�"��/m)��<�vYm�uN��eO�G�����@|�$�I��d�<�E��`UP� �]����ac�DPF(<�p�v�.ъ��ml�o�N�7 mU�]ھoY�r!�Y��7�;�E��L�e(3\X�J�lD`F!.���;�Н[DD0I�
�@H<H�$Wv)��7L�)�Ўr����p)�Q��b>D~+`l(�]�5�1 �D� �Hp�d���9`�1()T�1�Ix����N��$mO�m�nK?\��N���e��uu�����-��XhH��Gx��(CpQ �7Yp�nae0�I�8�<�d���O.mY%\=ܲ΂�?������6�V��uG�P��y�Z�?�����Mx�P[��Fp�e�6(B �Z8=c8F��%�T`��>�/_���X�x�g=%mE(m	f޿p8��- �!�5qT��9F?�9����i>��:��sǎ��5���"�cdLP+���` ;        % pigeon.gif 	p�on mouseDown
  if the locklocation of me is false then
    set the layer of me to 77
    grab me
  end if
end mouseDown


on mouseUp
  Global AufgabenRichtig
  if the locklocation of me is false then
    put the Bildname of me into Feld
    if intersect(me, fld Feld) then
      move me to the loc of fld Feld
      put the ID of fld Feld into FeldID
      put the Bildname of fld ID (FeldID+66)  into fld ID (FeldID+66)
      set the locklocation of me to true
      add 1 to AufgabenRichtig
      
      if AufgabenRichtig <> 12 then
send "mouseup" to btn "Aufgabe"
else
        send "mouseup" to btn "Verzeichnis"
      end if
    else
      add 1 to fld "Fehler"
      move me to 94,242
    end if
  end if
  
end mouseUp
     � �Q d x   	Bildname  pigeon  |GIF89ad x �     �   � ��   �� � �������������������ô�����������xxxiiiZZZKKK<<<---��������c��/�������˗��c��/�� �����������c��/�� �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� c� /�����������c��/�� �������˗��c��/�� ˗�˗�˗�˗c˗/˗ �c��c��c��cc�c/�c �/��/��/��/c�//�/ � �� �� �� c� /�  �����˗����c��/�� �����˗˗��c��/�� �����˗����c��/�� �c��c˗c��cc�c/�c �/��/˗/��/c�//�/ � �� ˗ �� c� /�  c��c��c��c�cc�/c� c��c��c˗c�cc�/c� c��c��c��c�cc�/c� cc�cc�cc�ccccc/cc c/�c/�c/�c/cc//c/ c �c �c �c cc /c  /��/��/��/�c/�//� /��/��/˗/�c/�//� /��/��/��/�c/�//� /c�/c�/c�/cc/c//c //�//�//�//c///// / �/ �/ �/ c/ //   �� �� �c �/ �� �� ˗ �c �/ �  �� �� �� �c �/ �  c� c� c� cc c/ c  /� /� /� /c // /   �  �  c  /��������h��4�������М��h��4��     �����𠠤����   � ��   �� � �����,    d x  � =a�Dp�AL��A���6s.E�3bE$s�PԨq��67"��F�D:%V���D�-+R�Hg�M�6�$AB�/O�*�&�Bޜi��ǌ!GI��Ӊ3Un�!��l0�Ą�i��_]^Z�p��]l��YQNH'�~�h��ȏO:>����6xgҭh%Ř2!~��M�v�\�	$W�u3:��F�H&ϴ���!K�|���L5sB���Y�`�z.3/�2?�FNqmƝ�+nn�����K)zڬ�xi�a�����!���y����?:Yɐ��'��$a��j����R��Q�w���C�)%\wI��xЍ�B&)��u���TG��e^Y6QE�DjU�k:���c =��H��D8������M�f�=ԗqZ��YXA��}-���Cx�g��u"j%1H���3U'��d�VDd�E}q�Qf$-�#CY.��NW"1ڍ����;� a�_&���#���Ed�Fݍ���c㱆�~���ሣ��!�D�|j¡&Lu��H�j�T���f��o3�'SXpBT�%>婯2=���m9#��H�s(��Fk����~6�Ang��X�����B�`��Y|*E�2:�_��
*��cB���g�#jh�����F;�:AA�;8
L�SۨL�a�P`�[��b=k��I�0čBX�D���P&L[��1S
��;�N���H���:>#q��}~�(Cx�7��V��-�)GB	;�ls	��l6ho ���#�h��L���	��<��%a"�S�p�	�
�)'�1�P�|��&��s� ���K{P4�,Mw�I��I<m��T��ϬO<z�L�N-<~O�0��&���O(aBū��/͑O^3�� 7��$O9��6�Ԧ���"!w�p�>m��14��Zm������"��씣��q#���tܐ���I���%��MLu���ڦ��G�
[�~��@xx[U�|����x��	N����@	J��4H?kQ�u=���F':�Cb=;�nCBe�����a钠�=Me���K�8m��C[�&6k��x�k��ZG9,*P��]��V����f����Ōzx	�4:H�f���XE3��$d䆧G/��7�݂X�'4n��;�Ö?��t8"#���10��lh�W�>�/���)w�;��Oo&��n�Mkz��e[�*D^p'}|_�n�E�rr�Y�(���l���l�����{9�Y�n9Yưznl_�ާ*ki������`�͹e{���~���)Ж_��@	ʃ� �	��Sy�Zd,�������My���@�ev�i�ۉzy���Q�j���N<�����������/��FmyHݹLxݡ�i��Cbm��D��!�����!=%��Ҍ�N$��$6P5�
J8�Ұ��Ly�^��(�>�{�$�H�;��Nr);[�n(9�N���3�����w��_�KY��*F#�L��;��!��A�q���7�C�U��[�=s��qz�[�/K9�%���|�2�e�nd��Q�=CuOb�|�S՘�(��~��Z�4�T��.{©��7<aZ�`/��#�pUr��v�4Z/i7��~���jt΅�Aed>Q�K	��{�P������z鴜9�|I;�0��:���T6rصp����m�|B0M���g��S��.�z�� Ȭ�<eŖT����O`.{����Є���o��)́o8lh����{�2�I|�ǹ]U�v�՝��{`P)����I�@E���B��J�8�G�q�4��$�Ra�\���Yd������~�Ԕ�Or1W� $$�!ЌC�g��F�&*�px�T�ڐ��Jw��z B�<.3"q���X��D�]D��jPԨF�dA�O�X����EV:�Zo	SG�ئ�D'.!�K8�V�T���^�Yӊ=K�H�E1
p~3��ݧةa�%"���@ ٖXK'�p��|��z�4� O��㞹�X0��mB/�֮d�8<�ǞC&�e@5AY}���;�8��s������#�m�U��v]+xQ�A�Q�[.1�	8��쾌C*��Z(%�1П�C=�d'%�4˧�S�q�Y:�����\p�9�'@�]�<��v��ٰ����Vږ�ࣨg�}�Ԇȥ�'�!�R7a�����]P`�Z��Z��ues�E��S�|�2U��VcV�(bt]?&C	P�Ah�<��4��jA�S ޖ����l��,�j��v�eN+^#�Ѩ��#��&���v�9�y @5R��p=6� �/���K$��NIM���%,q��݁{ǹ��'e���H���_�.�8�,�nHP_���y��n�eC`��W�}�(��k͒("xn���7���$� F�~GPj�Ps����@zZ�w���"uHW-S1~Wy��)���r}fCcq�~��;�
ph^� �	�@=���p�l�a'0!nQ�tg!!��:B%.���s:�8�;x ^� 	X� }PN�l�Q�A#
�tQ�l��&q!is��@v��gq�@���H4�~
� j��l�u�Px]�kQK�-����d�PQ6�A�p	k�s
��1G|
����~q@�q���ցm�z]�w���� s�8O7���	*a^�u�(pQ�� �A��e^���5�N�~�l��k<�R�v(��pnk�r0q|7vd���kp	��l� S��~FXE��
���p�V	Ǧ؄�7N�	��t�uJ�r�-������g�n�l�	=q	@�w`�xa��`V�l��ȑA 七��pl`	�}�G��w�e{�"r�SywvV�s�&k��w���������7jk0jE��
P�Xz�Ps�@}�W���Q�4��c�'�w ����f�f	
��  e�����0�A fz��Eh�i�`�ؑ4	=ѕ�Wsp�@�lߧQ��^���&P���v���=!���	���N������ T	��u��^w���,��*�R��'ʗ}� �&pj��|��0P)���G����h���kP��y P�P�I}��	v9!#��{;�*͹��9���	q	��=a	����ez	�OY�GjO�@�������w&8&���,	(��JY��h�o\���r���p	6��٣�e:����陒)�`� :&Q�""}fR�j�Aj��}�����k�n���������eڣ�3j�֦5����l�U1��78錙j���g��yloǦ��wطAq	����h@z�}jٚ���xС]ǒ���f0��#�""�w%ds�Fvf���  ZjkA��F��l�Ȗl��l��u�	�՗�( ��Uw�@"�v���w�֧솚_ʨ�j��w�Ǖ[yj���2�lI:[�y_����i�QO�P��*�p�
������!Ͷ57� �x���l
��2lzg°4x��w��m������g�l�'x�	�n�l̦����.�"R�y�&"m�f涔[f.�����'o�֕��z';��&ͨ�T���(�"�1#Rn&wn�1_�e�*s^	zL�l�6�Ix�9H*��n��'R����aF'E�y~vCR�3�z�Zx�x�J˶�硝���y��o{-��g�Z(0C1��*�&dB(��'A��a�'�*v΋�L;�}�w�r�0��br �4UY~�[BvRUU��;07��$W��f�[F��땄��#x�f�l�g0a�[�d0�k7V0�$�8$9d�Yb�rr~|w��Zxp����f۴����1j�7�>�r>3cr�@6�`@U�c�Dܒx;'Z+1�Jj���g}u����l�{C�F#~�]�q?�6���0y07A�T�3Wv����`r�Vj��G�ʖ��f�fR�;��R�	l�9����lPi�%}�\H@6�/�[�S1�g�n���w�h�
�� -	pIm�4E=�N�{"}�N�D]c>2�-���Ǫ�.����l�	���e�c?�3*E�t�1�1r�v��7�4�{�t�f$�Q���l7ȵw�o�	l 8R����?��W�`	f�w|���+��&�{(���lUrJf2Ǵ+n62*;�74C[Ow3��KW�N�cI���~���6j��&7�\6j��r
+6#��+8r=f(��)����(����a�x�6A��n���eN*���$SfI@8�7nw�*J��Ul0%����kv�d�{��-��t2���1�LH�/����-�"$,d�r( p�,�O*�b� �_W(�d�4+�h.q��b��x}Bf2y��}ar�ln�P��=�mv�Ԅa .�~�i�i�P�Q$Ƿ�u/��+b+��1)!r@���2�!2��W���"~�.	�#-1!jI�1F��1�3��sPiX�])��,(�Έڹ;����d�v��-Pe�m�;�.Y!ܨXg�Xg�Q(C�x�m'����~��
�r5.\�1���S�;��Q ����fy�Np���'|�k����(��hB�O���,�r�d(8� �߉L�qv͡����z��,�',@6F���.��JҮ��*��aҌW0pr�#�ĭ���z�y��]�QOP+F#1�#
+�Vur�<c"~cr�m*o\�5#��6�^�p��p�.[��;�&QiN��b/�y>$�/�b�7��O�d�Ȍ��.��0�hG�q>�k@��{R3,&i��֍�����l�f7�U0��Н�#��� �a��H4� ۩Aw�5t/h)r ����}T�,]R�3��7`�.+l����r�A	F0�m�߯b+�{>�C0#F��HӂǄ3�8�c1���#��s�&y&0�3{����7�>G-ֻG@A�+d2y- �-o�%sI�2{30L�*&`ӏ��e.�j���}s#y�2ww�l��c�mm��R��R��7�]Θ��iw��|C�����c?��]��o���2#�"Gr�7���.�t
�~�+9�X��*���3h�j�^�B�b� �ZO0�N�S��M)z�'�5m1@r�6���n~���>3,��}�j�v�����΀�8=�.N�s�$��`ب�(����|%Bv�*��4|�C�$�&߷g˂'
c�@�в�[8!,7[�(�r'?��i�!�w����R;)O�-.�*�#����\�C+���op�{�s�݅��mb�r/A����~+���\F�-mj�l���>�" �g�.reo!R���!��m� a3�M�6.|"I��<H�B!#"i3g��9E.���9m�`hb`F�m��D�p�M$�y�n�Ɍ%
���bD�l�(,3�G�cjl�FaP�73n}9���_�$� G�3{$c�V���'�9l��2�(EL��%h���#%��d����!t_��O��z��D߁�p3dx'�a蹒���IңՠC_��y�gV�[���=s�;��{�&����p�eP�uik�B�*U�S]$���a����xQ�˺�wPлA�&N��i��������$�s�~3?���#L��@�,�xͮ�.ʨ�Ҕ#ͬ9��:	^��(�nH�FL(?�n*�-�.è���@�0���$��5?�#$��8,(��"�(�l:����h��n�I8o۩�ԬrH�������\(��)���B�C�DL�͢�DB�,��Ү�@P.#��4�����ˎ�RP&���*6��+��<����\�(*{2B_�9��iH��tI��*A�>��w@�ꠄ���#��k�/�8r�&�ls.��PH\bƞ�<�0�n:�P�J�m�����$��J� ���L�����PS:7���[����[�J�ރUh��Q��Ӹ����X��˨�@�t�Ne��S�j\/�7o���xs����
�-����c)E��~(���Q&Y[ZYރ���F���O�yb��ɲ���*2L�dDa�te��g���i�Ɓ&m�O��:'}�/	�A��U�Tk4���in̂M/6<����sX&�����V�ICmV8q��XR�#���ͩ��z)��:Z�  ;      
  Q            � � ;        @ .Zuordnung von Tierbildern durch Drag-and-Drop 
  C Erl�uterungen  �   ]on mouseUp
  hide me with visual effect reveal right
  show btn "Erl�uterungen"
end mouseUp
  r ����ff  ������  ������  @@@@@@  `  [ !-�        @ 2Funktionen des Buttons "Start der Bildzuordnung":        1 �Aus dem verborgenen Feld "Verzeichnis" , in dem im Moment 37 Bildnamen vorhanden sind, werden 12 Bilder ausgew�hlt und in die Variable "Bildnamen" plaziert. Dann wird von hier der Button "Verteilung" aufgerufen.            Custom Properties:        Jedes Objekt kann Inhalte in individuellen Variablen - den Custom Properties - speichern, die dann dauerhaft (bis zu einer gezielten Ver�nderung) mit dem Objekt verbunden bleiben. Diese objektgebundenen Variablen k�nnen u.a. im Property Dialog unter "Extras" definiert werden.  DDas ist auch bei den Bildern (den "images") dieser �bung geschehen:  �Jedes Bild hat eine Custom Property "Bildname", in dem die Kurzform des Image-Namens gespeichert ist, so z.B. "giraffe" (als Kurzform); die Langform des entsprechenden Bildes w�rde "Image "giraffe.gif"" lauten.    �Der Button "Verteilung" verteilt diese Kurzform in der Custom Property der ausgew�hlten Bilder auf die Namen der 12 Felder und schreibt sie zus�tzlich als Text in diese Felder hinein. Dann wird der Button "Aufgabe" aufgerufen.                          �   �Im Button "Aufgabe" wird jeweils 1 Bild ausgew�hlt und gezeigt, das nun mit gedr�ckter Maustaste auf das Feld mit dem zugeh�rigen Text gezogen werden mu�                    �   �Alle Bilder (images) haben ein einheitliches Skript, in dem �ber die Funktion "intersect" abgefragt wird, ob die Custom Property "Bildname" mit dem Namen des Feldes, zu dem das Bild gezogen worden ist, identisch ist                    �   �Die Buttons "Verteilung" und "Aufgabe" sind nur zur Veranschaulichung sichtbar dargestellt; da sie nicht direkt vom Nutzer aufgerufen werden m�ssen, sollten sie normalerweise unsichtbar bleiben.    ]                                                       (Dieses Feld mit Mausklick schlie�en)        \  � Moved Icons          � � � �            ����      �    	@           � �  @  �    	@           � �  A  @ i320  	D           ������     0 0       d� � � 
� 
� � � #��  � @� @� �� �� @� @�  � #�� � � 
� 
� � �    R� � � � � � �� ?�� ?�� �� �� ?�� ?�� �� � � � � �    b� � � � � � � ?�� ?�� �� �� ��� ��� �� �� ?�� ?�� � � � � � �     A i321  	D           ������     0 0       d� `� `� P� P� H� H� �Ă �� �� �� �� �� �� �� �� �ă H� H� P� P� `� `�    R�  �  � 0� 0� 8� �� �� �� �� �� �� �� �� 8� 0� 0�  �  �    b� `� `� p� p� x� x� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� x� x� p� p� `� `�     ` Ask Dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
        � �@ �            ����      �    	P�on doresize
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
    set the bottom of button i to the height of this stack - 16
    add the width of button i + iwidth to twidth
  end repeat
  set the default of button 2 to true
end doresize

on preOpenStack
  local nstrings, twidth
  put the number of lines of the askDialogStrings into nstrings
  put line 1 to (nstrings - 1) of the askDialogStrings into field 1
  put the last line of the askDialogStrings into field 2
  put max(the formattedWidth of field 1 + 64,\
      the formattedWidth of field 2 + 64, 320) into twidth
  set the width of this stack to twidth
  set the height of field 1 to the formattedHeight of field 1
  set the top of field 1 to 8
  set the height of this stack to (the height of field 1) + 100
  doresize
end preOpenStack

on openField
  select the text of the target
end openField

on resizeStack
  doresize
end resizeStack

on closeStack
  put empty into field 1
  put empty into field 2
end closeStack

on returnInField
  click at the loc of button "OK"
end returnInField
           @ �  `  �  _  \  ]
  �   �        0                 \ OK �L�p Son mouseUp
  set askDialogStrings to tab & field 2
  close this stack
end mouseUp
        B X :         	  �   ] Cancel �D�p Kon mouseUp
  set askDialogStrings to empty
  close this stack
end mouseUp
        � V <         	  � 
  _   �`       0 &                ` New Button �B�@         $ (              J            	  �   � Answer Dialog  � �on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
        � � X b             U 
Helvetica   �    	P	4local strings, choices

on preOpenStack
  local oldwidth, lastline, bwidth, twidth, iwidth, theight, curx
  put the answerDialogStrings into strings
  put the answerDialogChoices into choices
  put the number of lines in strings into lastline
  if lastline is 0
  then put 1 into lastline
  if choices is empty
  then put 0 into choices
  subtract choices from lastline
  put line 1 to lastline of strings into field 1
  add 2 to lastline
  put 32 into bwidth
  if choices is 0 then
    put  "OK" after strings
    put 1 into choices
  end if
  if choices is 1
  then set the icon of button "Icon" to 329
  else set the icon of button "Icon" to 330
  if choices > the number of buttons - 1
  then put the number of buttons - 1 into choices
  repeat with i = 2 to choices + 1
    show button i
    set the name of button i to line (choices - i + lastline) of strings
    set the width of button i to the formattedWidth of button i + 24
    add the width of button i + 32 to bwidth
  end repeat
  set the dontWrap of field 1 to true
  put max(the formattedWidth of field 1 + 64, bwidth) into twidth
  if twidth > 600 then
    put 600 into twidth
    set the width of field 1 to twidth - 64
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
  set the topLeft of field 1 to 48, 8
  put (twidth - bwidth) div (choices + 1) + 32 into iwidth
  put iwidth into curx
  set the default of button 2 to false
  repeat with i = choices + 1 down to 2
    set the left of button i to round(curx)
    add the width of button i + iwidth to curx
    set the bottom of button i to the height of this stack - 16
  end repeat
  set the default of button 2 to true
end preOpenStack

on closeStack
  repeat with i = 3 to the number of buttons
    hide button i
  end repeat
end closeStack

on mouseUp
  if the name of the target contains "button" then
    set answerDialogStrings to the short name of the target
    close this stack
  end if
end mouseUp
            X b  z  �  �  �  �  �  �  �  �
  �   �@       0                z icon �BP on mouseUp
end mouseUp
          , (              I            	  �   �  �L�`         6          	  �   � No �D�`       � 4 2         	  �   � Yes �D�`       0 4 9         	  �   � z �D�`       � 4 '         	  �   � y �D�`       � 4 '         	  �   � x �D�`       i 4 '         	  �   � w �D�`         4 )         	  �  