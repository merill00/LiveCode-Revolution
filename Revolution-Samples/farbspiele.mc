#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  D Farbspiele  � �on preopenstack
  Global animation
  put "an" into animation
  set the loc of me to the screenloc
set the dontuseqt to true

end preopenstack
  w        Black � � �  
AliceBlue ffffff  � � �  white ������  � � �  	darkgray   4��         Farbspiele     ����   ?  U 
Helvetica   W 
Helvetica  @ W 
Helvetica  $ W 
Helvetica  
 U 
Helvetica  
 W 
Helvetica   W 
Helvetica   W 
Helvetica   U Arial   U Arial  
 U Arial  
 U Arial Black   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica   W 
Helvetica    W 
Helvetica  ! W 
Helvetica  " W 
Helvetica  # W 
Helvetica  % W 
Helvetica  & W 
Helvetica  ' W 
Helvetica  ( W 
Helvetica  ) W 
Helvetica  * W 
Helvetica  + W 
Helvetica  , W 
Helvetica  - W 
Helvetica  . W 
Helvetica  / W 
Helvetica  0 W 
Helvetica  1 W 
Helvetica  2 W 
Helvetica  3 W 
Helvetica  4 W 
Helvetica  5 W 
Helvetica  6 W 
Helvetica  7 W 
Helvetica  8 W 
Helvetica  9 W 
Helvetica  : W 
Helvetica  ; W 
Helvetica  < W 
Helvetica  = W 
Helvetica  > W 
Helvetica  ? W 
Helvetica   W Arial  
 W Arial   W Arial   U 
helvetica   � menu   	P �on openCard
Global animation
if animation is "an" then
  wait 0.5 second
  send "mouseup" to btn "Kriechgang"
put "aus" into animation
end if
end openCard
   � � �  
AliceBlue       ��  �  \  ^  H  T  U  [  ]  `  a  b  c  d  l  q  	 Oberfl�che 1   	�?on openCard
if the environment is not "Metacard Development" then
hide group "Autorenstacks"
else
show group "Autorenstacks"
end if
  
end openCard

on closecard
  
end closecard

on farbwahl
  Global Farbe
  put random(255) into R
  put random(255) into G
  put random(255) into B
  put R,G,B into Farbe
end farbwahl
  {         ������ 
AliceBlue � �    Yellow ������  @@@@@@  LLLLLL        ��  �  �  �  �  �  �  �  �  �  �  �  �  �  �  O  �  �  �  �  �  �  �                     i  3 Oberfl�che 2   	P�on openCard
  Global Eigenschaft
  
  put the backcolor of fld 1 into Farbe
  set the backcolor of fld "Teilfarbe" to Farbe
  put "backcolor" into Eigenschaft
  put "backcolor" into fld "Teilfarbe"
  set the hilitedbuttonname of group "Feldfarben" to "backcolor"
  set the thumbposition of scrollbar "R" to item 1 of Farbe
  set the thumbposition of scrollbar "g" to item 2 of Farbe
  set the thumbposition of scrollbar "B" to item 3 of Farbe
end openCard

on closecard
  
end closecard
     ���� Cyan       ��  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  �  A Farbmosaik 1   	P �on mouseup
  put the mouseloc
end mouseup

on farbwahl
  Global Farbe
  put random(255) into R
  put random(255) into G
  put random(255) into B
  put R,G,B into Farbe
end farbwahl
           ��  G  H  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  �  p  
> Farbmosaik 2   	P +on mouseup
  put the mouseloc
end mouseup
           ��  D  F  G  H  I  J  	>  �  �  �     �  	�  U  
'  	`  	�  n  	A  �    h  	$  �  k  	�  �  X  	n  �  p  d  w  F  	.  	|  `  	�  	�  �  	,  
  
(  	�  �  R  
  1    	(  �  	/  	�  
  q  �  r  	U    
-  �  �  J  r  '  �  	�  �  �  C  	X  �  	[  �  �  �  }  �  �  	  �  	�  	  H  �  �  	  
  	    \    �  	�  >    �  ,  �  
    N  
  �  �  �  �  	l  	�  �  	^  
%  �  <  	  	�  �    	�  	�  	�  	p  
  w  �  
6  j  �  
1  	�  	�  �  �  	�  	~  �  	  B  	W  
	  	R  �  z  y  	  �  	  	8  �  	�    	�  P  �  	h  ~  �  {  
  	]  z  �  n  	�  
$  	�  	    	�  	�  a  v  h  	�  	�  m  	�  	�  9  	  �  �  	  	�  	H  �  	&  I  �  W  �  +    
  c  =  (  Y  �  �  L  	�  *  	E  	�  �  	�  �    �  �  �  �  	�  	s  �  
  	�  �  �  	�  	@  
#  �  	�  	"  �  	�  �  �  �  �  ?  	�  �  v    �  
  
0  :  �  u  	�  	�  .  �    �  �  	�  	i  s  
  l  	   O  �     	�  	:  �  o  �  �  
  	j  
  	�  �  
!  	�  	3  	T  �  x    	5  	�  	C  �  b  a  	;  �  	6  		  [  �  4  �  p  
  Q  	�  U  	�  i  �  	�  X  D  q  
  �  	�  �  	�  	�  	�  �  �  
  
  �  	  �  	4  	t  �  ~  �  L    �  M  �  	�  	d    	'  	    V  	I  
  /  �  �  �  
  	Y  �  	?  �  	   	�  
&  e  �  �  �  
  �  �  	a  �  	�  |  	y  N  �  	�  	�  �  	V  �  �  	�  o  	�  i  Q  	g  �  �  	�  �  0  	�  �  	�  K  	1  d  P  �  
)  �  	  	�  	�  K  t  )  !  �  	u  	q  �  �  f    	�  g  
  �  	<  	�  	�  �  	  	�  	�  �  �  
"  	�  	N  	D  	  
2  �  	�  m  �  	�    �  	)  	�  �  e  �  
3  �  	�  
   �  �  	�  	�  	#  �  �  	  �  E  �  	�  �  Y  ;  
  �  �  {  �    	�  	o  	O  	J  �  �  Z  �  }  	w  �  	r  �  �  	G  	�  	  �  	�  �  	�  	�  	  b  	�  �  T  3  �  �  �  �  	F  
+  	�  
,  �  �  	�  �  �  
8  y  ]  �  	  �  �  %  	  �  f  	Q  �  s  	  	�  	�  �  	�  �  	�  �  	  �  	c  	�  	�  	e  �  �  #  	�  �  	�  V  "  	P  �  	�  �  O  
  �  �  �  �  �  �  ^  G  	-    
4  t  _  	�  	�  �  �  	�  ^  
7  	�  �  	
  �  �  j  \  �  W    
*  u  	�  �  �  	+  �  	Z    �  �  	�  �  �  	\  �  	�  �  �  �  	  S  	�  	�  �  	k  
   	�  �  	  	!  �  	{  �    
  �  �  �  �  	�  	�  �  �  	7  _  	f  	�  A  �  	�  	S  M  �  	  	  
.  �  	�  S  �  	�  �  �  $  	*  	L  �  [  2  	K  �  �  	}  �  �  	=  �  	�  5  �  �  	b  
  	�  �  ]  k  �  	�  	9  	0  	�  `  �  �    	_  	�    	  	x  	2  	%  l  	�  	�  	�  	m  �  	�  T  c  �  �  �  	M  �  

  �  �  �  �  	�  	  	v  �  �  	�  �  �  �  �  
  
5  	�  �  �  	�  6  7  	�  �  
    g  	  �  x    	�  	�  
  �  �  
  �  �  |  �  	  	�  	z  �  	�  �  �  8  �  �  �    -  �  R  &  
/  @    �  	B  �  �  Z  
9  
:  
<  
=  �  X  Y  j  k  m  n  o  � Navigation   �       ,� j %  
 New Button �C� @on mouseUp
visual effect wipe up
  go to next card
end mouseUp
       n� $               A             	        New Button �C� Fon mouseUp
visual effect wipe down
  go to previous card
end mouseUp
       Q� $               @             	       f New Button �C� Gon mouseUp
  visual effect wipe down
  go to  card "Menu"
end mouseUp
      0� $  zur Seite "Men�"               8             	       � Bildschirmfarbe hx    Jon mouseup
  set the backdrop to the hilitedButtonName of me
end mouseup
  
 � � �  	CornSilk ��        + � �   
AliceBlue @D� fon mouseUp
  put the short name of  me into Farbe
  set the backdrop to  Farbe #"yellow"
end mouseUp
        h l          	  	    Aquamarine @D�        l          	  	    Black @D�       � l          	  	    none @D�       � l          	  	  I Coral @D� fon mouseUp
  put the short name of  me into Farbe
  set the backdrop to  Farbe #"yellow"
end mouseUp
        Q l          	  	   J 
SlateGray @D� fon mouseUp
  put the short name of  me into Farbe
  set the backdrop to  Farbe #"yellow"
end mouseUp
        < l          	  	   � Rahmenbreite �8   1on mouseup
  set the borderwidth of this card to the hilitedButtonname of me
  if the hilitedbuttonname is 0 then
    set the showborder of this cd to false
    set the threeD of this cd to false
  else
    set the showborder of this cd to true
    set the threeD of this cd to true
  end if
end mouseup
       3 r �   2 @D�      f Q          	  	    6 @D�      | Q          	  	    10 @D�      � Q          	  	   14 @D�      � Q          	  	    0 @D�      O Q          	  	 
     	  2 ����  @@@@@@  ������  ` < V           	 
der Karte 
  � Beispielfeld  	� Gon mouseUp
  global Farbe
  put the mousecolor into Farbe
end mouseUp
  s ������  xxhh��  ������  @@@@@@         black � E + �   Eigenschaft  218        	          � R  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into  fld "R"
  put x into item 1 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
end scrollbardrag
        1 L � x�      255         � G  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into fld "G"
  put x into item 2 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
 
end scrollbardrag
        2 o � h�      255         � B  �q �on scrollbardrag x
  put the backcolor of fld "Beispielfeld" into Farbe
  put x into fld "B"
  put x into item 3 of Farbe
  set the backcolor of fld "Beispielfeld" to Farbe
  
end scrollbardrag
        2 � � ��      255       
  � R  	`       � L %         	 120 
  � G  	`       � m %         	 104 
  � B  	`       � � #         	 131 
  �              J          	 R 
  �              l          	 G 
  �              �          	 B   � Rahmenbreite des Feldes  �q Zon scrollbardrag x
  
  set the borderwidth of fld "Beispielfeld" to x
end scrollbardrag
       � � � %�UT�f   75       
  �   h         t � �         	 Rahmenbreite des Feldes   � 3D-Form des Feldes �       � � R   erhaben @D� �on mouseUp
  
  
  set the topcolor of fld "Beispielfeld" to 64,64,64
  set the bottomcolor of fld "Beispielfeld"  to 232,232,232
  
end mouseUp
        Q          	  	    	vertieft @D� �on mouseUp
  
  set the topcolor of fld "Beispielfeld" to 232,232,232
  set the bottomcolor of fld "Beispielfeld" to 64,64,64
end mouseUp
       : Q          	  	  � Schattenbreite des Feldes  �q [on scrollbardrag x
  
  set the shadowoffset of fld "Beispielfeld" to x
end scrollbardrag
   ((((((     � � � %���   0  30       
  �   h          � � �         	 Schattenbreite des Feldes   � Titelzeile �(           � � +   an @D� Gon mouseUp
  set the decorations of this stack to default
end mouseUp
         \          	  	   aus @D� Eon mouseUp
  set the decorations of this stack to empty
end mouseUp
        E \          	  	   � Seitenfarbe hx    Xon mouseup
  set the backcolor of this card to the hilitedButtonName of me
end mouseup
  
 � � �  	CornSilk ��        �. y �   
AliceBlue @D�       �~ l          	  	   
SlateGray @D�       �� l          	  	    Cyan @D�       �� l          	  	    Bisque @D�       �h l          	  	   K Gold1 @D�       �U l          	  	   L 
LawnGreen @D�       �@ l          	  	   � 3D-Form der Karte �       �a � R   erhaben @D� �on mouseUp
  
  
  set the bottomcolor of this card to 64,64,64
  set the topcolor of this card  to 232,232,232
  
end mouseUp
        t Q          	  	   	vertieft @D� yon mouseUp
  
  set the bottomcolor of this card to 232,232,232
  set the topcolor of this card to 64,64,64
end mouseUp
       � Q          	  	     Autorenstacks �(          � � � +    an @D� �on mouseUp
  show menubar
  show stack "Metacard Menu Bar"
  show stack "tools"
  show stack "home"
show stack "Message Box"
end mouseUp
        �
 /          	  	  ! aus @D� �on mouseUp
  hide menubar
  hide stack "Metacard Menu Bar"
  hide stack "tools"
  hide stack "home"
hide stack "message box"
end mouseUp
        � >          	  	    bewegtes Feld �E�qj
on mouseenter
  set the backcolor of me to "yellow"
end mouseenter
on mouseleave
  set the backcolor of me to "Azure"
end mouseleave

on mouseUp
  Global Farbe
  move fld "Beispielfeld" to the points of graphic "Pfad" without waiting
  
  repeat with i = 1 to 20
    farbwahl     # die funktion "farbwahl" ist im cardscript definiert
    set the backcolor of fld "Beispielfeld" to Farbe
    wait 0.5 seconds
  end repeat
  
  set the thumbposition of scrollbar "R" to item 1 of Farbe
  set the thumbposition of scrollbar "G" to item 2 of Farbe
  set the thumbposition of scrollbar "B" to item 3 of Farbe
end mouseUp
   ������ Azure P �5 f  0Feld bewegt sich entlang einer verdeckten Kurve          	        Pfad   C       L >�>    h� d� c� c� b� `� _� _� ^� ]� ]� \� \� \� \� [� [� [� [� Z� Z� X� V� U� T� S� R� R� Q� Q� Q� P� O� P� P� O� N� M� L� K| Kw Kq Jo Jn Jm Jm Il Ig Hb F^ DY CU BQ BL AH @G ?D ?B ?A ?6 @+ C# D E E F F F F F G	 G � I � J � J � L � L � L � M � M � M � M � N � O � Q � S � T � U � U � U � U � U � U � V � V � V � V � V � V � V � W � X � Y � Z � Z � Z � \ � ] � _ � _ � ` � a � a � a � b � c � d � e � f � g � h � i � k � l � m � m � n � o � p � p � q � r � s � t � u � v � w � x � x � y � z � z � { � | � | � } � } � ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � s � k � d � \ � [ � W � U � S � S � R � O � O � N � N � M � M � N � O � R � Q � Q  O N	 N M N N P Q Q S T U V V! V$ X+ X. [2 ^7 a: c= g@ h@ i@ mD tP ~\ ] �n �p �p �u �x �z �{ �{ �ytrrr$p5rKwOwTvvk�d�V�R�Q�R�Q�N�A�76566.%+001 �4 �4 �3 �3 �2 �* � � � � �	 �  �  �� �� �� {� z� w� t� s� q� p� n� m� m� l� k� k� k� j� i� i� i� h� h� h� g� g� f� d� c� a� [� [� Z   atmendes Feld �E�q%
on mouseenter
  set the backcolor of me to "yellow"
end mouseenter
on mouseleave
  set the backcolor of me to "Azure"
end mouseleave

on mouseUp
  repeat with i = 1 to 3
    repeat with x = 1 to 20
      set the shadowoffset of fld "Beispielfeld" to x
      set the thumbposition of scrollbar 5 to x
      wait 20 milliseconds
    end repeat
    repeat with x = 20 down to 1
      set the shadowoffset of fld "Beispielfeld" to x
      set the thumbposition of scrollbar 5 to x
      wait 20 milliseconds
    end repeat
  end repeat
  
end mouseUp
   ������ Azure P �P g  Feld ver�ndert seinen Schatten          	        Lupe �E�q�
on mouseenter
  set the backcolor of me to "yellow"
end mouseenter
on mouseleave
  set the backcolor of me to "Azure"
end mouseleave

on mouseUp
  
  repeat with i = 1 to 2
    put item 3 of the rect of fld "RGB-farben" into rechtsX
    put item 4 of the rect of fld "RGB-farben" into rechtsY
    put the textsize of fld "RGB-Farben" into Schrift
    put the rect of fld "RGB-Farben" into Groesse
    
    repeat with x = 1 to 50
      put (rechtsX+ x) into item 3 of Groesse
      put (rechtsY+ x) into item 4 of Groesse
      put (Schrift + x) into Schriftgroesse
      set the rect of fld "RGB-Farben" to Groesse
      set the textsize of fld "RGB-farben" to Schriftgroesse
      wait 5  milliseconds
    end repeat
    put item 3 of the rect of fld "RGB-farben" into rechtsX
    put item 4 of the rect of fld "RGB-farben" into rechtsY
    put the textsize of fld "RGB-Farben" into Schrift
    repeat with x =  1to 50
      put (rechtsX- x) into item 3 of Groesse
      put (rechtsY- x) into item 4 of Groesse
      
      put (Schrift - x) into Schriftgroesse
      set the rect of fld "RGB-Farben" to Groesse
      set the textsize of fld "RGB-farben" to Schriftgroesse
      wait 5 milliseconds
    end repeat
  end repeat
  
end mouseUp
   ������ Azure P �i g  !Feld ver�ndert Gr��e und Schrift          	        Sprung �E�q
on mouseenter
  set the backcolor of me to "yellow"
end mouseenter
on mouseleave
  set the backcolor of me to "Azure"
end mouseleave

on mouseUp
  put the loc of fld "RGB-Farben" into Stelle
  # repeat with i = 1 to 3
  
  put the height of fld "RGB-Farben" into Hoehe
  
  repeat with x = 1 to 10
    add x to Hoehe
    wait 10  milliseconds
    set the height of fld "RGB-Farben" to Hoehe
  end repeat
  # put item 3 of the rect of fld "RGB-farben" into rechtsX
  # put item 4 of the rect of fld "RGB-farben" into rechtsY
  # put the textsize of fld "RGB-Farben" into Schrift
  repeat with x =  1to 10
    subtract x from Hoehe
    set the height of fld "RGB-Farben" to Hoehe
    wait 10 milliseconds
  end repeat
  # end repeat
  move fld "RGB-Farben" to Stelle
end mouseUp
   ������ Azure @ �� h          	        	Sprung 2 �E�qK
on mouseenter
  set the backcolor of me to "yellow"
end mouseenter
on mouseleave
  set the backcolor of me to "Azure"
end mouseleave

on mouseUp
  put the loc of fld "RGB-Farben" into Stelle
  # repeat with i = 1 to 3
  put the rect of fld "RGB-Farben" into Groesse
  # put the height of fld "RGB-Farben" into Hoehe
  
  repeat with x = 1 to 10
    add x to item 4 of Groesse
    wait 10  milliseconds
    set the rect of fld "RGB-Farben" to Groesse
  end repeat
  # put item 3 of the rect of fld "RGB-farben" into rechtsX
  # put item 4 of the rect of fld "RGB-farben" into rechtsY
  # put the textsize of fld "RGB-Farben" into Schrift
  repeat with x =  1to 10
    add x to item 2 of Groesse
    set the rect of fld "RGB-Farben" to Groesse
    wait 10 milliseconds
  end repeat
  # end repeat
  move fld "RGB-Farben" to Stelle
end mouseUp
   ������ Azure @ �� g          	        Kriechgang �E�q
on mouseenter
  set the backcolor of me to "yellow"
end mouseenter
on mouseleave
  set the backcolor of me to "Azure"
end mouseleave

on mouseUp
  put fld "RGB-Farben" into Feldtext # d.h. der Text des Feldes
  put the loc of fld "RGB-Farben" into Stelle
  repeat with i = 1 to 7
    put the rect of fld "RGB-Farben" into Groesse
    
    
    repeat with x = 1 to 10
      add x to item 4 of Groesse
      wait 10  milliseconds
      set the rect of fld "RGB-Farben" to Groesse
    end repeat
    
    repeat with x =  1to 10
      add x to item 2 of Groesse
      set the rect of fld "RGB-Farben" to Groesse
      wait 10 milliseconds
    end repeat
  end repeat
  put "Jetzt bin ich unten!" into fld "RGB-Farben"
  set the backcolor of fld "RGB-Farben" to "red"
  wait 1 second
  put "Jetzt geht es zur�ck!" into Schrift
  put the number of chars of Schrift into Zahl
  repeat with y = 1 to Zahl
    put char 1 to y of Schrift  into neueSchrift
    put neueschrift into fld "RGB-Farben"
    wait 0.1 seconds
  end repeat
  
 
  wait 1 second
  
  move fld "RGB-Farben" to Stelle
  hide fld "RGB-Farben" with visual effect wipe right
  set the backcolor of fld "RGB-farben" to "lightblue"
  
  put Feldtext into fld "RGB-farben"
  show fld "RGB-Farben" with visual effect scroll from left
end mouseUp
   ������ Azure P �� f  9Feld bewegt sich "kriechend" nach unten und kehrt zur�ck          	     
   RGB-Farben  x   con mouseUp
  Global Farbe
if Farbe is not empty then set the backcolor of me to Farbe
end mouseUp
   ������ 
lightblue    9 " �         	 RGB-Farben   # Bildschirmfarbe hx    Jon mouseup
  set the backdrop to the hilitedButtonName of me
end mouseup
  
 � � �  	Seashell ��        + � �  6 Yellow3 @D� fon mouseUp
  put the short name of  me into Farbe
  set the backdrop to  Farbe #"yellow"
end mouseUp
        ? l          	  3   7 Red @D�       Y l          	  3   8 Black @D�       � l          	  3   9 none @D�       � l          	  3  N SandyBrown @D�       w l          	  3 
  $ Feld1  x  U Oon mouseUp
  
  set the backcolor of this card  to the mousecolor
end mouseUp
  3 �輼    ��bb��  QQ++UU  ������  � 9 U �   Eigenschaft  218        3 Feld 1     % R  �q0
on scrollbardrag x
  Global Eigenschaft
  if Eigenschaft is "foregroundcolor" then
    put the foregroundcolor of fld 1into Farbe
    put x into  fld "R"
    put x into item 1 of Farbe
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    set the foregroundcolor of fld 1 to Farbe
    set the foregroundcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "topcolor" then
    put the topcolor of fld 1into Farbe
    put x into  fld "R"
    put x into item 1 of Farbe
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    set the topcolor of fld 1 to Farbe
    set the topcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "bottomcolor" then
    put the bottomcolor of fld 1into Farbe
    put x into  fld "R"
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    put x into item 1 of Farbe
    set the bottomcolor of fld 1 to Farbe
    set the bottomcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "backcolor" then
    put the backcolor of fld 1into Farbe
    put x into  fld "R"
    put x into item 1 of Farbe
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    set the backcolor of fld 1 to Farbe
    set the backcolor of btn "Beispielbutton" to Farbe
  end if
  set the backcolor of fld "Teilfarbe" to Farbe
end scrollbardrag
        2 I � ��q   255         & G  �q6
on scrollbardrag x
  Global Eigenschaft,transfer
  
  if Eigenschaft is "foregroundcolor" then
    put the foregroundcolor of fld 1into Farbe
    put x into  fld "G"
    put x into item 2 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    set the foregroundcolor of fld 1 to Farbe
set the foregroundcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "topcolor" then
    put the topcolor of fld 1into Farbe
    put x into  fld "G"
    put x into item 2 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    set the topcolor of fld 1 to Farbe
set the topcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "bottomcolor" then
    put the bottomcolor of fld 1into Farbe
    put x into  fld "G"
    put x into item 2 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    
    set the bottomcolor of fld 1 to Farbe
set the bottomcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "backcolor" then
    put the backcolor of fld 1into Farbe
    put x into  fld "G"
    put x into item 2 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "B" into item 3 of Farbe
    
    set the backcolor of fld 1 to Farbe
set the backcolor of btn "Beispielbutton" to Farbe
  end if
  set the backcolor of fld "Teilfarbe" to Farbe
end scrollbardrag
        2 p � ��      255         ' B  �q/
on scrollbardrag x
  Global Eigenschaft
  if Eigenschaft is "foregroundcolor" then
    put the foregroundcolor of fld 1into Farbe
    put x into  fld "B"
    put x into item 3 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    set the foregroundcolor of fld 1 to Farbe
set the foregroundcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "topcolor" then
    put the topcolor of fld 1into Farbe
    put x into  fld "B"
    put x into item 3 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    
    set the topcolor of fld 1 to Farbe
set the topcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "bottomcolor" then
    put the bottomcolor of fld 1into Farbe
    put x into  fld "B"
    put x into item 3 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    
    set the bottomcolor of fld 1 to Farbe
set the bottomcolor of btn "Beispielbutton" to Farbe
  else if Eigenschaft is "backcolor" then
    put the backcolor of fld 1into Farbe
    put x into  fld "B"
    put x into item 3 of Farbe
    put the thumbposition of scrollbar "R" into item 1 of Farbe
    put the thumbposition of scrollbar "G" into item 2 of Farbe
    
    set the backcolor of fld 1 to Farbe
set the backcolor of btn "Beispielbutton" to Farbe
  end if
  set the backcolor of fld "Teilfarbe" to Farbe
end scrollbardrag
        2 � � ��      255       
  ( 
Teilfarbe  x    con mouseUp
  Global Farbe
if Farbe is not empty then set the backcolor of me to Farbe
end mouseUp
   ������     3  �         3 bottomcolor 
  ) R  `       � H "         3 251 
  * G  `       � j "         3 187 
  + B  `       � � "         3 131 
  ,              J          3 R 
  -              l          3 G 
  .              �          3 B   / Feldfarben �h     � � �  
Seashell1   0 � �  : 
backcolor @D��on mouseUp
  Global Eigenschaft
  put "backcolor" into Eigenschaft
  put "backcolor" into fld "Teilfarbe"
  put the backcolor of fld 1 into Farbe
set the backcolor of fld "Teilfarbe" to Farbe
  set the thumbposition of scrollbar "R" to item 1 of Farbe
  set the thumbposition of scrollbar "G" to item 2 of Farbe
  set the thumbposition of scrollbar "B" to item 3 of Farbe
end mouseUp
       � b "         	  3   ; 	topcolor @D�~on mouseUp
  Global Eigenschaft
  put "topcolor" into Eigenschaft
  put "topcolor" into fld "Teilfarbe"
  put the topcolor of fld 1 into Farbe
set the backcolor of fld "Teilfarbe" to Farbe
  set the thumbposition of scrollbar "R" to item 1 of Farbe
  set the thumbposition of scrollbar "G" to item 2 of Farbe
  set the thumbposition of scrollbar "B" to item 3 of Farbe
end mouseUp
       h ^ "         	  3   < bottomcolor @D��on mouseUp
  Global Eigenschaft
  put "bottomcolor" into Eigenschaft
  put "bottomcolor" into fld "Teilfarbe"
  put the bottomcolor of fld 1 into Farbe
set the backcolor of fld "Teilfarbe" to Farbe
  set the thumbposition of scrollbar "R" to item 1 of Farbe
  set the thumbposition of scrollbar "G" to item 2 of Farbe
  set the thumbposition of scrollbar "B" to item 3 of Farbe
end mouseUp
       � l "         	  3  = foregroundcolor @D��on mouseUp
  Global Eigenschaft
  put "foregroundcolor" into Eigenschaft
  put "foregroundcolor" into fld "Teilfarbe"
  put the foregroundcolor of fld 1 into Farbe
set the backcolor of fld "Teilfarbe" to Farbe
  set the thumbposition of scrollbar "R" to item 1 of Farbe
  set the thumbposition of scrollbar "G" to item 2 of Farbe
  set the thumbposition of scrollbar "B" to item 3 of Farbe
end mouseUp
       H � "         	  3   0 Stackposition  �       �? | �  > oben links @D� ?on mouseUp
  set the topleft of this stack to 0,0
end mouseUp
       �R o          	  3   ? oben rechts @D� Won mouseUp
  set the topright of this stack to item 3 of the screenrect,0
end mouseUp
       �h o          	  3   @ Mitte @D� Eon mouseUp
  set the loc of this stack to the screenloc
end mouseUp
       �} o          	  3  A unten links @D� Yon mouseUp
  set the bottomleft of this stack to 0,item 4 of the screenrect
end mouseUp
       �� o          	  3   B unten rechts @D� qon mouseUp
  set the bottomright of this stack to item 3 of the screenrect,item 4 of the screenrect
end mouseUp
       �� o          	  3   1 Beispielbutton �E�o  0 3 �輼    ��bb��  QQ++UU  ������  @ 9 �U ^         	       2 Seitenfarbe hx    Xon mouseup
  set the backcolor of this card to the hilitedButtonName of me
end mouseup
  
 � � �  	Seashell ��        �. y �  C Salmon @D�       �^ l          	  3   D Khaki @D�       �� l          	  3   E Cyan @D�       �� l          	  3  F 
CornSilk3 @D�       �B l          	  3   M Tan1 @D�       �z l          	  3   G Hintergrund  @`  ��MM��    ����/�         	  A   H Hintergrund2  @`  SS����    ����/�         	  A   J create fields �E�p�on mouseUp
  put 0 into Summe
  put 0 into Vert
  set the width of the templatefield to 15
  set the height of the templatefield to 15
  repeat with x = 1 to 25
    add 5 to vert
    put 0 into rechts
    repeat with i  = Summe to 29 + Summe
      add 15 to rechts
      put "Test" & i  into Rufname
      create invisible fld Rufname
      set the showborder of fld Rufname to false
      set the loc of fld Rufname to ((i -Summe )+rechts), (3 * vert)
      put random(255) into R
      put random(255) into G
      put random(255) into B
      set the backcolor of fld Rufname to R,G,B
      show fld Rufname
      put i into Summe
      add 1 to Summe
    end repeat
    
  end repeat
end mouseUp
        � n          	       K delete fields �E�p �on mouseUp
  put the number of flds of this cd into Zahl
  put zahl
  repeat with i = Zahl down to 1
    delete fld i
  end repeat
end mouseUp
        �� \          	       L Farben �ndern �E�x 	 ron mouseUp
  global Farbe
  repeat with i = 1 to 750
    farbwahl                                       # Handler zu "farbwahl" ist im Skript der Karte
    set the backcolor of fld i to Farbe
  end repeat
  farbwahl
  if the visible of btn "Hintergrund" is true then
    set the backcolor of btn "Hintergrund2" to Farbe
    show btn "Hintergrund2" with visual effect dissolve fast
    hide btn "Hintergrund"
  else if visible of btn "Hintergrund2" is true then
    set the backcolor of btn "Hintergrund" to Farbe
    show btn "Hintergrund"
    hide btn "Hintergrund2" with visual effect dissolve fast
  end if
  
end mouseUp
       0 " f          	       M Farben �ndern 2 �E�x 	 �on mouseUp
  Global Farbe
  put random(255) into R
  # put random(255) into G
  repeat with i = 1 to 750
    # put random(155) into R
    put random(255) into G
    put random(255) into B
    set the backcolor of fld i to R,G,B
  end repeat
  
  farbwahl
  if the visible of btn "Hintergrund" is true then
    set the backcolor of btn "Hintergrund2" to Farbe
    show btn "Hintergrund2" with visual effect barn door open
    hide btn "Hintergrund"
  else if visible of btn "Hintergrund2" is true then
    set the backcolor of btn "Hintergrund" to Farbe
    show btn "Hintergrund"
    hide btn "Hintergrund2" with visual effect barn door close
end if
end mouseUp
       - H l          	       N Farben �ndern 3 �E�x 	 �on mouseUp
  Global Farbe
  put the number of flds into Zahl
  put random(255) into R
  put random(255) into G
  repeat with i = 1 to Zahl
    # put random(155) into R
    # put random(155) into G
    put random(255) into B
    set the backcolor of fld i to R,G,B
  end repeat
  farbwahl
  if the visible of btn "Hintergrund" is true then
    set the backcolor of btn "Hintergrund2" to Farbe
    show btn "Hintergrund2" with visual effect venetian blinds
    hide btn "Hintergrund"
  else if visible of btn "Hintergrund2" is true then
    set the backcolor of btn "Hintergrund" to Farbe
    show btn "Hintergrund"
    hide btn "Hintergrund2" with visual effect venetian blinds
  end if
end mouseUp
       . k k          	     
  O Test0  )� B ##����         black �  0      Ort  55,30        A  
  P Test1  )� B ##����         black �  ?      Ort  70,30        A  
  Q Test2  )� B ##��         black �  N      Ort  85,30        A  
  R Test3  )� B ##����         black �  ]      Ort  100,30        A  
  S Test4  )� B ##��HH         black �  l      Ort  115,30        A  
  T Test5  )� B ##����         black �  {      Ort  130,30        A  
  U Test6  )� B ##����         black �  �      Ort  145,30        A  
  V Test7  )� B ##��EE         black �  �      Ort  160,30        A  
  W Test8  )� B ##����         black �  �      Ort  175,30        A  
  X Test9  )� B ##����         black �  �      Ort  190,30        A  
  Y Test10  )� B ##��::         black �  �      Ort  205,30        A  
  Z Test11  )� B ##����         black �  �      Ort  220,30        A  
  [ Test12  )� B ##����         black �  �      Ort  235,30        A  
  \ Test13  )� B ##��nn         black �  �      Ort  250,30        A  
  ] Test14  )� B ##��           black �       Ort  265,30        A  
  ^ Test15  )� B ##��         black �       Ort  280,30        A  
  _ Test16  )� B ##����         black �        Ort  295,30        A  
  ` Test17  )� B ##����         black � /      Ort  310,30        A  
  a Test18  )� B ##����         black � >      Ort  325,30        A  
  b Test19  )� B ##����         black � M      Ort  340,30        A  
  c Test20  )� B ##��xx         black � \      Ort  355,30        A  
  d Test21  )� B ##��__         black � k      Ort  370,30        A  
  e Test22  )� B ##��         black � z      Ort  385,30        A  
  f Test23  )� B ##����         black � �      Ort  400,30        A  
  g Test24  )� B ##����         black � �      Ort  415,30        A  
  h Test25  )� B ##����         black � �      Ort  430,30        A  
  i Test26  )� B ##��DD         black � �      Ort  445,30        A  
  j Test27  )� B ##����         black � �      Ort  460,30        A  
  k Test28  )� B ##����         black � �      Ort  475,30        A  
  l Test29  )� B ##����         black � �      Ort  490,30        A  
  m Test30  )� B ##����         black �  0 &     Ort  55,45        A  
  n Test31  )� B ##��""         black �  ? &     Ort  70,45        A  
  o Test32  )� B ##��<<         black �  N &     Ort  85,45        A  
  p Test33  )� B ##����         black �  ] &     Ort  100,45        A  
  q Test34  )� B ##��[[         black �  l &     Ort  115,45        A  
  r Test35  )� B ##��99         black �  { &     Ort  130,45        A  
  s Test36  )� B ##����         black �  � &     Ort  145,45        A  
  t Test37  )� B ##��..         black �  � &     Ort  160,45        A  
  u Test38  )� B ##����         black �  � &     Ort  175,45        A  
  v Test39  )� B ##��**         black �  � &     Ort  190,45        A  
  w Test40  )� B ##����         black �  � &     Ort  205,45        A  
  x Test41  )� B ##��pp         black �  � &     Ort  220,45        A  
  y Test42  )� B ##��ZZ         black �  � &     Ort  235,45        A  
  z Test43  )� B ##��bb         black �  � &     Ort  250,45        A  
  { Test44  )� B ##��         black �  &     Ort  265,45        A  
  | Test45  )� B ##��99         black �  &     Ort  280,45        A  
  } Test46  )� B ##����         black �   &     Ort  295,45        A  
  ~ Test47  )� B ##����         black � / &     Ort  310,45        A  
   Test48  )� B ##��cc         black � > &     Ort  325,45        A  
  � Test49  )� B ##��         black � M &     Ort  340,45        A  
  � Test50  )� B ##����         black � \ &     Ort  355,45        A  
  � Test51  )� B ##����         black � k &     Ort  370,45        A  
  � Test52  )� B ##����         black � z &     Ort  385,45        A  
  � Test53  )� B ##����         black � � &     Ort  400,45        A  
  � Test54  )� B ##����         black � � &     Ort  415,45        A  
  � Test55  )� B ##��         black � � &     Ort  430,45        A  
  � Test56  )� B ##��AA         black � � &     Ort  445,45        A  
  � Test57  )� B ##��UU         black � � &     Ort  460,45        A  
  � Test58  )� B ##��         black � � &     Ort  475,45        A  
  � Test59  )� B ##����         black � � &     Ort  490,45        A  
  � Test60  )� B ##��||         black �  0 5     Ort  55,60        A  
  � Test61  )� B ##��         black �  ? 5     Ort  70,60        A  
  � Test62  )� B ##��~~         black �  N 5     Ort  85,60        A  
  � Test63  )� B ##����         black �  ] 5     Ort  100,60        A  
  � Test64  )� B ##����         black �  l 5     Ort  115,60        A  
  � Test65  )� B ##����         black �  { 5     Ort  130,60        A  
  � Test66  )� B ##��YY         black �  � 5     Ort  145,60        A  
  � Test67  )� B ##����         black �  � 5     Ort  160,60        A  
  � Test68  )� B ##��           black �  � 5     Ort  175,60        A  
  � Test69  )� B ##����         black �  � 5     Ort  190,60        A  
  � Test70  )� B ##����         black �  � 5     Ort  205,60        A  
  � Test71  )� B ##����         black �  � 5     Ort  220,60        A  
  � Test72  )� B ##��LL         black �  � 5     Ort  235,60        A  
  � Test73  )� B ##��66         black �  � 5     Ort  250,60        A  
  � Test74  )� B ##����         black �  5     Ort  265,60        A  
  � Test75  )� B ##����         black �  5     Ort  280,60        A  
  � Test76  )� B ##����         black �   5     Ort  295,60        A  
  � Test77  )� B ##��$$         black � / 5     Ort  310,60        A  
  � Test78  )� B ##��         black � > 5     Ort  325,60        A  
  � Test79  )� B ##��

         black � M 5     Ort  340,60        A  
  � Test80  )� B ##����         black � \ 5     Ort  355,60        A  
  � Test81  )� B ##��AA         black � k 5     Ort  370,60        A  
  � Test82  )� B ##��

         black � z 5     Ort  385,60        A  
  � Test83  )� B ##��}}         black � � 5     Ort  400,60        A  
  � Test84  )� B ##����         black � � 5     Ort  415,60        A  
  � Test85  )� B ##��}}         black � � 5     Ort  430,60        A  
  � Test86  )� B ##��         black � � 5     Ort  445,60        A  
  � Test87  )� B ##��         black � � 5     Ort  460,60        A  
  � Test88  )� B ##��FF         black � � 5     Ort  475,60        A  
  � Test89  )� B ##��@@         black � � 5     Ort  490,60        A  
  � Test90  )� B ##��         black �  0 D     Ort  55,75        A  
  � Test91  )� B ##����         black �  ? D     Ort  70,75        A  
  � Test92  )� B ##��YY         black �  N D     Ort  85,75        A  
  � Test93  )� B ##����         black �  ] D     Ort  100,75        A  
  � Test94  )� B ##����         black �  l D     Ort  115,75        A  
  � Test95  )� B ##��++         black �  { D     Ort  130,75        A  
  � Test96  )� B ##����         black �  � D     Ort  145,75        A  
  � Test97  )� B ##��%%         black �  � D     Ort  160,75        A  
  � Test98  )� B ##��VV         black �  � D     Ort  175,75        A  
  � Test99  )� B ##��         black �  � D     Ort  190,75        A  
  � Test100  )� B ##��88         black �  � D     Ort  205,75        A  
  � Test101  )� B ##����         black �  � D     Ort  220,75        A  
  � Test102  )� B ##��''         black �  � D     Ort  235,75        A  
  � Test103  )� B ##��,,         black �  � D     Ort  250,75        A  
  � Test104  )� B ##��77         black �  D     Ort  265,75        A  
  � Test105  )� B ##��         black �  D     Ort  280,75        A  
  � Test106  )� B ##����         black �   D     Ort  295,75        A  
  � Test107  )� B ##��         black � / D     Ort  310,75        A  
  � Test108  )� B ##����         black � > D     Ort  325,75        A  
  � Test109  )� B ##����         black � M D     Ort  340,75        A  
  � Test110  )� B ##����         black � \ D     Ort  355,75        A  
  � Test111  )� B ##����         black � k D     Ort  370,75        A  
  � Test112  )� B ##����         black � z D     Ort  385,75        A  
  � Test113  )� B ##��]]         black � � D     Ort  400,75        A  
  � Test114  )� B ##����         black � � D     Ort  415,75        A  
  � Test115  )� B ##��gg         black � � D     Ort  430,75        A  
  � Test116  )� B ##��

         black � � D     Ort  445,75        A  
  � Test117  )� B ##��nn         black � � D     Ort  460,75        A  
  � Test118  )� B ##����         black � � D     Ort  475,75        A  
  � Test119  )� B ##����         black � � D     Ort  490,75        A  
  � Test120  )� B ##����         black �  0 S     Ort  55,90        A  
  � Test121  )� B ##����         black �  ? S     Ort  70,90        A  
  � Test122  )� B ##����         black �  N S     Ort  85,90        A  
  � Test123  )� B ##����         black �  ] S     Ort  100,90        A  
  � Test124  )� B ##��ll         black �  l S     Ort  115,90        A  
  � Test125  )� B ##��		         black �  { S     Ort  130,90        A  
  � Test126  )� B ##����         black �  � S     Ort  145,90        A  
  � Test127  )� B ##����         black �  � S     Ort  160,90        A  
  � Test128  )� B ##����         black �  � S     Ort  175,90        A  
  � Test129  )� B ##����         black �  � S     Ort  190,90        A  
  � Test130  )� B ##��		         black �  � S     Ort  205,90        A  
  � Test131  )� B ##����         black �  � S     Ort  220,90        A  
  � Test132  )� B ##����         black �  � S     Ort  235,90        A  
  � Test133  )� B ##��         black �  � S     Ort  250,90        A  
  � Test134  )� B ##��ii         black �  S     Ort  265,90        A  
  � Test135  )� B ##��00         black �  S     Ort  280,90        A  
  � Test136  )� B ##��         black �   S     Ort  295,90        A  
  � Test137  )� B ##��         black � / S     Ort  310,90        A  
  � Test138  )� B ##��""         black � > S     Ort  325,90        A  
  � Test139  )� B ##����         black � M S     Ort  340,90        A  
  � Test140  )� B ##����         black � \ S     Ort  355,90        A  
  � Test141  )� B ##��XX         black � k S     Ort  370,90        A  
  � Test142  )� B ##��QQ         black � z S     Ort  385,90        A  
  � Test143  )� B ##����         black � � S     Ort  400,90        A  
  � Test144  )� B ##����         black � � S     Ort  415,90        A  
  � Test145  )� B ##����         black � � S     Ort  430,90        A  
  � Test146  )� B ##����         black � � S     Ort  445,90        A  
  � Test147  )� B ##����         black � � S     Ort  460,90        A  
  � Test148  )� B ##��         black � � S     Ort  475,90        A  
  � Test149  )� B ##��rr         black � � S     Ort  490,90        A  
  � Test150  )� B ##����         black �  0 b     Ort  55,105        A  
  � Test151  )� B ##����         black �  ? b     Ort  70,105        A  
  � Test152  )� B ##��         black �  N b     Ort  85,105        A  
  � Test153  )� B ##����         black �  ] b     Ort  100,105        A  
  � Test154  )� B ##����         black �  l b     Ort  115,105        A  
  � Test155  )� B ##����         black �  { b     Ort  130,105        A  
  � Test156  )� B ##����         black �  � b     Ort  145,105        A  
  � Test157  )� B ##����         black �  � b     Ort  160,105        A  
  � Test158  )� B ##��cc         black �  � b     Ort  175,105        A  
  � Test159  )� B ##��		         black �  � b     Ort  190,105        A  
  � Test160  )� B ##��ff         black �  � b     Ort  205,105        A  
  � Test161  )� B ##��pp         black �  � b     Ort  220,105        A  
  � Test162  )� B ##����         black �  � b     Ort  235,105        A  
  � Test163  )� B ##��         black �  � b     Ort  250,105        A  
  � Test164  )� B ##��         black �  b     Ort  265,105        A  
  � Test165  )� B ##����         black �  b     Ort  280,105        A  
  � Test166  )� B ##����         black �   b     Ort  295,105        A  
  � Test167  )� B ##����         black � / b     Ort  310,105        A  
  � Test168  )� B ##����         black � > b     Ort  325,105        A  
  � Test169  )� B ##����         black � M b     Ort  340,105        A  
  � Test170  )� B ##����         black � \ b     Ort  355,105        A  
  � Test171  )� B ##��zz         black � k b     Ort  370,105        A  
  � Test172  )� B ##��         black � z b     Ort  385,105        A  
  � Test173  )� B ##����         black � � b     Ort  400,105        A  
  � Test174  )� B ##����         black � � b     Ort  415,105        A  
  � Test175  )� B ##����         black � � b     Ort  430,105        A  
  � Test176  )� B ##����         black � � b     Ort  445,105        A  
    Test177  )� B ##����         black � � b     Ort  460,105        A  
   Test178  )� B ##��         black � � b     Ort  475,105        A  
   Test179  )� B ##����         black � � b     Ort  490,105        A  
   Test180  )� B ##��         black �  0 q     Ort  55,120        A  
   Test181  )� B ##��JJ         black �  ? q     Ort  70,120        A  
   Test182  )� B ##��CC         black �  N q     Ort  85,120        A  
   Test183  )� B ##��hh         black �  ] q     Ort  100,120        A  
   Test184  )� B ##����         black �  l q     Ort  115,120        A  
   Test185  )� B ##��ee         black �  { q     Ort  130,120        A  
  	 Test186  )� B ##��         black �  � q     Ort  145,120        A  
  
 Test187  )� B ##��""         black �  � q     Ort  160,120        A  
   Test188  )� B ##����         black �  � q     Ort  175,120        A  
   Test189  )� B ##����         black �  � q     Ort  190,120        A  
   Test190  )� B ##����         black �  � q     Ort  205,120        A  
   Test191  )� B ##��ee         black �  � q     Ort  220,120        A  
   Test192  )� B ##��ss         black �  � q     Ort  235,120        A  
   Test193  )� B ##����         black �  � q     Ort  250,120        A  
   Test194  )� B ##��!!         black �  q     Ort  265,120        A  
   Test195  )� B ##��         black �  q     Ort  280,120        A  
   Test196  )� B ##����         black �   q     Ort  295,120        A  
   Test197  )� B ##����         black � / q     Ort  310,120        A  
   Test198  )� B ##��$$         black � > q     Ort  325,120        A  
   Test199  )� B ##����         black � M q     Ort  340,120        A  
   Test200  )� B ##����         black � \ q     Ort  355,120        A  
   Test201  )� B ##����         black � k q     Ort  370,120        A  
   Test202  )� B ##��//         black � z q     Ort  385,120        A  
   Test203  )� B ##��jj         black � � q     Ort  400,120        A  
   Test204  )� B ##����         black � � q     Ort  415,120        A  
   Test205  )� B ##����         black � � q     Ort  430,120        A  
   Test206  )� B ##����         black � � q     Ort  445,120        A  
   Test207  )� B ##��         black � � q     Ort  460,120        A  
   Test208  )� B ##��XX         black � � q     Ort  475,120        A  
    Test209  )� B ##����         black � � q     Ort  490,120        A  
  ! Test210  )� B ##����         black �  0 �     Ort  55,135        A  
  " Test211  )� B ##����         black �  ? �     Ort  70,135        A  
  # Test212  )� B ##��CC         black �  N �     Ort  85,135        A  
  $ Test213  )� B ##����         black �  ] �     Ort  100,135        A  
  % Test214  )� B ##��         black �  l �     Ort  115,135        A  
  & Test215  )� B ##��ee         black �  { �     Ort  130,135        A  
  ' Test216  )� B ##����         black �  � �     Ort  145,135        A  
  ( Test217  )� B ##��))         black �  � �     Ort  160,135        A  
  ) Test218  )� B ##����         black �  � �     Ort  175,135        A  
  * Test219  )� B ##��VV         black �  � �     Ort  190,135        A  
  + Test220  )� B ##����         black �  � �     Ort  205,135        A  
  , Test221  )� B ##����         black �  � �     Ort  220,135        A  
  - Test222  )� B ##����         black �  � �     Ort  235,135        A  
  . Test223  )� B ##����         black �  � �     Ort  250,135        A  
  / Test224  )� B ##��22         black �  �     Ort  265,135        A  
  0 Test225  )� B ##��AA         black �  �     Ort  280,135        A  
  1 Test226  )� B ##����         black �   �     Ort  295,135        A  
  2 Test227  )� B ##����         black � / �     Ort  310,135        A  
  3 Test228  )� B ##����         black � > �     Ort  325,135        A  
  4 Test229  )� B ##����         black � M �     Ort  340,135        A  
  5 Test230  )� B ##����         black � \ �     Ort  355,135        A  
  6 Test231  )� B ##����         black � k �     Ort  370,135        A  
  7 Test232  )� B ##����         black � z �     Ort  385,135        A  
  8 Test233  )� B ##��UU         black � � �     Ort  400,135        A  
  9 Test234  )� B ##����         black � � �     Ort  415,135        A  
  : Test235  )� B ##��88         black � � �     Ort  430,135        A  
  ; Test236  )� B ##����         black � � �     Ort  445,135        A  
  < Test237  )� B ##����         black � � �     Ort  460,135        A  
  = Test238  )� B ##��55         black � � �     Ort  475,135        A  
  > Test239  )� B ##����         black � � �     Ort  490,135        A  
  ? Test240  )� B ##��~~         black �  0 �     Ort  55,150        A  
  @ Test241  )� B ##����         black �  ? �     Ort  70,150        A  
  A Test242  )� B ##��]]         black �  N �     Ort  85,150        A  
  B Test243  )� B ##����         black �  ] �     Ort  100,150        A  
  C Test244  )� B ##��&&         black �  l �     Ort  115,150        A  
  D Test245  )� B ##��         black �  { �     Ort  130,150        A  
  E Test246  )� B ##����         black �  � �     Ort  145,150        A  
  F Test247  )� B ##��$$         black �  � �     Ort  160,150        A  
  G Test248  )� B ##����         black �  � �     Ort  175,150        A  
  H Test249  )� B ##����         black �  � �     Ort  190,150        A  
  I Test250  )� B ##����         black �  � �     Ort  205,150        A  
  J Test251  )� B ##����         black �  � �     Ort  220,150        A  
  K Test252  )� B ##��22         black �  � �     Ort  235,150        A  
  L Test253  )� B ##��``         black �  � �     Ort  250,150        A  
  M Test254  )� B ##��qq         black �  �     Ort  265,150        A  
  N Test255  )� B ##��xx         black �  �     Ort  280,150        A  
  O Test256  )� B ##����         black �   �     Ort  295,150        A  
  P Test257  )� B ##����         black � / �     Ort  310,150        A  
  Q Test258  )� B ##��""         black � > �     Ort  325,150        A  
  R Test259  )� B ##����         black � M �     Ort  340,150        A  
  S Test260  )� B ##����         black � \ �     Ort  355,150        A  
  T Test261  )� B ##��         black � k �     Ort  370,150        A  
  U Test262  )� B ##����         black � z �     Ort  385,150        A  
  V Test263  )� B ##��44         black � � �     Ort  400,150        A  
  W Test264  )� B ##����         black � � �     Ort  415,150        A  
  X Test265  )� B ##����         black � � �     Ort  430,150        A  
  Y Test266  )� B ##��[[         black � � �     Ort  445,150        A  
  Z Test267  )� B ##����         black � � �     Ort  460,150        A  
  [ Test268  )� B ##��PP         black � � �     Ort  475,150        A  
  \ Test269  )� B ##��RR         black � � �     Ort  490,150        A  
  ] Test270  )� B ##��>>         black �  0 �     Ort  55,165        A  
  ^ Test271  )� B ##����         black �  ? �     Ort  70,165        A  
  _ Test272  )� B ##����         black �  N �     Ort  85,165        A  
  ` Test273  )� B ##����         black �  ] �     Ort  100,165        A  
  a Test274  )� B ##��88         black �  l �     Ort  115,165        A  
  b Test275  )� B ##����         black �  { �     Ort  130,165        A  
  c Test276  )� B ##����         black �  � �     Ort  145,165        A  
  d Test277  )� B ##����         black �  � �     Ort  160,165        A  
  e Test278  )� B ##����         black �  � �     Ort  175,165        A  
  f Test279  )� B ##��HH         black �  � �     Ort  190,165        A  
  g Test280  )� B ##����         black �  � �     Ort  205,165        A  
  h Test281  )� B ##��gg         black �  � �     Ort  220,165        A  
  i Test282  )� B ##����         black �  � �     Ort  235,165        A  
  j Test283  )� B ##����         black �  � �     Ort  250,165        A  
  k Test284  )� B ##��

         black �  �     Ort  265,165        A  
  l Test285  )� B ##����         black �  �     Ort  280,165        A  
  m Test286  )� B ##��YY         black �   �     Ort  295,165        A  
  n Test287  )� B ##��YY         black � / �     Ort  310,165        A  
  o Test288  )� B ##����         black � > �     Ort  325,165        A  
  p Test289  )� B ##����         black � M �     Ort  340,165        A  
  q Test290  )� B ##����         black � \ �     Ort  355,165        A  
  r Test291  )� B ##��^^         black � k �     Ort  370,165        A  
  s Test292  )� B ##��kk         black � z �     Ort  385,165        A  
  t Test293  )� B ##��           black � � �     Ort  400,165        A  
  u Test294  )� B ##����         black � � �     Ort  415,165        A  
  v Test295  )� B ##��uu         black � � �     Ort  430,165        A  
  w Test296  )� B ##����         black � � �     Ort  445,165        A  
  x Test297  )� B ##��NN         black � � �     Ort  460,165        A  
  y Test298  )� B ##��//         black � � �     Ort  475,165        A  
  z Test299  )� B ##����         black � � �     Ort  490,165        A  
  { Test300  )� B ##��11         black �  0 �     Ort  55,180        A  
  | Test301  )� B ##��xx         black �  ? �     Ort  70,180        A  
  } Test302  )� B ##��xx         black �  N �     Ort  85,180        A  
  ~ Test303  )� B ##��55         black �  ] �     Ort  100,180        A  
   Test304  )� B ##��>>         black �  l �     Ort  115,180        A  
  � Test305  )� B ##����         black �  { �     Ort  130,180        A  
  � Test306  )� B ##����         black �  � �     Ort  145,180        A  
  � Test307  )� B ##����         black �  � �     Ort  160,180        A  
  � Test308  )� B ##����         black �  � �     Ort  175,180        A  
  � Test309  )� B ##��""         black �  � �     Ort  190,180        A  
  � Test310  )� B ##����         black �  � �     Ort  205,180        A  
  � Test311  )� B ##��         black �  � �     Ort  220,180        A  
  � Test312  )� B ##����         black �  � �     Ort  235,180        A  
  � Test313  )� B ##��33         black �  � �     Ort  250,180        A  
  � Test314  )� B ##����         black �  �     Ort  265,180        A  
  � Test315  )� B ##����         black �  �     Ort  280,180        A  
  � Test316  )� B ##��         black �   �     Ort  295,180        A  
  � Test317  )� B ##��         black � / �     Ort  310,180        A  
  � Test318  )� B ##��kk         black � > �     Ort  325,180        A  
  � Test319  )� B ##��,,         black � M �     Ort  340,180        A  
  � Test320  )� B ##��**         black � \ �     Ort  355,180        A  
  � Test321  )� B ##��II         black � k �     Ort  370,180        A  
  � Test322  )� B ##����         black � z �     Ort  385,180        A  
  � Test323  )� B ##����         black � � �     Ort  400,180        A  
  � Test324  )� B ##����         black � � �     Ort  415,180        A  
  � Test325  )� B ##����         black � � �     Ort  430,180        A  
  � Test326  )� B ##����         black � � �     Ort  445,180        A  
  � Test327  )� B ##����         black � � �     Ort  460,180        A  
  � Test328  )� B ##��         black � � �     Ort  475,180        A  
  � Test329  )� B ##��jj         black � � �     Ort  490,180        A  
  � Test330  )� B ##����         black �  0 �     Ort  55,195        A  
  � Test331  )� B ##����         black �  ? �     Ort  70,195        A  
  � Test332  )� B ##����         black �  N �     Ort  85,195        A  
  � Test333  )� B ##��EE         black �  ] �     Ort  100,195        A  
  � Test334  )� B ##����         black �  l �     Ort  115,195        A  
  � Test335  )� B ##��         black �  { �     Ort  130,195        A  
  � Test336  )� B ##����         black �  � �     Ort  145,195        A  
  � Test337  )� B ##��         black �  � �     Ort  160,195        A  
  � Test338  )� B ##����         black �  � �     Ort  175,195        A  
  � Test339  )� B ##��oo         black �  � �     Ort  190,195        A  
  � Test340  )� B ##����         black �  � �     Ort  205,195        A  
  � Test341  )� B ##��66         black �  � �     Ort  220,195        A  
  � Test342  )� B ##����         black �  � �     Ort  235,195        A  
  � Test343  )� B ##��JJ         black �  � �     Ort  250,195        A  
  � Test344  )� B ##��uu         black �  �     Ort  265,195        A  
  � Test345  )� B ##��]]         black �  �     Ort  280,195        A  
  � Test346  )� B ##��++         black �   �     Ort  295,195        A  
  � Test347  )� B ##����         black � / �     Ort  310,195        A  
  � Test348  )� B ##����         black � > �     Ort  325,195        A  
  � Test349  )� B ##��cc         black � M �     Ort  340,195        A  
  � Test350  )� B ##����         black � \ �     Ort  355,195        A  
  � Test351  )� B ##����         black � k �     Ort  370,195        A  
  � Test352  )� B ##��II         black � z �     Ort  385,195        A  
  � Test353  )� B ##��##         black � � �     Ort  400,195        A  
  � Test354  )� B ##����         black � � �     Ort  415,195        A  
  � Test355  )� B ##����         black � � �     Ort  430,195        A  
  � Test356  )� B ##��II         black � � �     Ort  445,195        A  
  � Test357  )� B ##����         black � � �     Ort  460,195        A  
  � Test358  )� B ##��//         black � � �     Ort  475,195        A  
  � Test359  )� B ##��         black � � �     Ort  490,195        A  
  � Test360  )� B ##����         black �  0 �     Ort  55,210        A  
  � Test361  )� B ##����         black �  ? �     Ort  70,210        A  
  � Test362  )� B ##��gg         black �  N �     Ort  85,210        A  
  � Test363  )� B ##��SS         black �  ] �     Ort  100,210        A  
  � Test364  )� B ##��&&         black �  l �     Ort  115,210        A  
  � Test365  )� B ##����         black �  { �     Ort  130,210        A  
  � Test366  )� B ##����         black �  � �     Ort  145,210        A  
  � Test367  )� B ##����         black �  � �     Ort  160,210        A  
  � Test368  )� B ##��``         black �  � �     Ort  175,210        A  
  � Test369  )� B ##����         black �  � �     Ort  190,210        A  
  � Test370  )� B ##����         black �  � �     Ort  205,210        A  
  � Test371  )� B ##����         black �  � �     Ort  220,210        A  
  � Test372  )� B ##��==         black �  � �     Ort  235,210        A  
  � Test373  )� B ##����         black �  � �     Ort  250,210        A  
  � Test374  )� B ##��         black �  �     Ort  265,210        A  
  � Test375  )� B ##��qq         black �  �     Ort  280,210        A  
  � Test376  )� B ##��

         black �   �     Ort  295,210        A  
  � Test377  )� B ##��         black � / �     Ort  310,210        A  
  � Test378  )� B ##����         black � > �     Ort  325,210        A  
  � Test379  )� B ##��||         black � M �     Ort  340,210        A  
  � Test380  )� B ##��[[         black � \ �     Ort  355,210        A  
  � Test381  )� B ##����         black � k �     Ort  370,210        A  
  � Test382  )� B ##����         black � z �     Ort  385,210        A  
  � Test383  )� B ##��$$         black � � �     Ort  400,210        A  
  � Test384  )� B ##����         black � � �     Ort  415,210        A  
  � Test385  )� B ##��88         black � � �     Ort  430,210        A  
  � Test386  )� B ##��HH         black � � �     Ort  445,210        A  
  � Test387  )� B ##��         black � � �     Ort  460,210        A  
  � Test388  )� B ##��         black � � �     Ort  475,210        A  
  � Test389  )� B ##����         black � � �     Ort  490,210        A  
  � Test390  )� B ##��         black �  0 �     Ort  55,225        A  
  � Test391  )� B ##����         black �  ? �     Ort  70,225        A  
  � Test392  )� B ##����         black �  N �     Ort  85,225        A  
  � Test393  )� B ##��		         black �  ] �     Ort  100,225        A  
  � Test394  )� B ##����         black �  l �     Ort  115,225        A  
  � Test395  )� B ##����         black �  { �     Ort  130,225        A  
  � Test396  )� B ##��PP         black �  � �     Ort  145,225        A  
  � Test397  )� B ##����         black �  � �     Ort  160,225        A  
  � Test398  )� B ##��JJ         black �  � �     Ort  175,225        A  
  � Test399  )� B ##��GG         black �  � �     Ort  190,225        A  
  � Test400  )� B ##��oo         black �  � �     Ort  205,225        A  
  � Test401  )� B ##����         black �  � �     Ort  220,225        A  
  � Test402  )� B ##����         black �  � �     Ort  235,225        A  
  � Test403  )� B ##����         black �  � �     Ort  250,225        A  
  � Test404  )� B ##��ss         black �  �     Ort  265,225        A  
  � Test405  )� B ##��))         black �  �     Ort  280,225        A  
  � Test406  )� B ##��QQ         black �   �     Ort  295,225        A  
  � Test407  )� B ##��         black � / �     Ort  310,225        A  
  � Test408  )� B ##��EE         black � > �     Ort  325,225        A  
  � Test409  )� B ##����         black � M �     Ort  340,225        A  
  � Test410  )� B ##��         black � \ �     Ort  355,225        A  
  � Test411  )� B ##����         black � k �     Ort  370,225        A  
  � Test412  )� B ##��         black � z �     Ort  385,225        A  
  � Test413  )� B ##��))         black � � �     Ort  400,225        A  
  � Test414  )� B ##��^^         black � � �     Ort  415,225        A  
  � Test415  )� B ##��         black � � �     Ort  430,225        A  
  � Test416  )� B ##����         black � � �     Ort  445,225        A  
  � Test417  )� B ##����         black � � �     Ort  460,225        A  
  � Test418  )� B ##����         black � � �     Ort  475,225        A  
  � Test419  )� B ##����         black � � �     Ort  490,225        A  
  � Test420  )� B ##��XX         black �  0 �     Ort  55,240        A  
  � Test421  )� B ##����         black �  ? �     Ort  70,240        A  
  � Test422  )� B ##����         black �  N �     Ort  85,240        A  
  � Test423  )� B ##����         black �  ] �     Ort  100,240        A  
  � Test424  )� B ##����         black �  l �     Ort  115,240        A  
  � Test425  )� B ##��kk         black �  { �     Ort  130,240        A  
  � Test426  )� B ##����         black �  � �     Ort  145,240        A  
  � Test427  )� B ##��         black �  � �     Ort  160,240        A  
  � Test428  )� B ##��33         black �  � �     Ort  175,240        A  
  � Test429  )� B ##��66         black �  � �     Ort  190,240        A  
  � Test430  )� B ##��++         black �  � �     Ort  205,240        A  
  � Test431  )� B ##��..         black �  � �     Ort  220,240        A  
  � Test432  )� B ##��         black �  � �     Ort  235,240        A  
    Test433  )� B ##��33         black �  � �     Ort  250,240        A  
   Test434  )� B ##��uu         black �  �     Ort  265,240        A  
   Test435  )� B ##��}}         black �  �     Ort  280,240        A  
   Test436  )� B ##��qq         black �   �     Ort  295,240        A  
   Test437  )� B ##��         black � / �     Ort  310,240        A  
   Test438  )� B ##����         black � > �     Ort  325,240        A  
   Test439  )� B ##��//         black � M �     Ort  340,240        A  
   Test440  )� B ##����         black � \ �     Ort  355,240        A  
   Test441  )� B ##����         black � k �     Ort  370,240        A  
  	 Test442  )� B ##��,,         black � z �     Ort  385,240        A  
  
 Test443  )� B ##����         black � � �     Ort  400,240        A  
   Test444  )� B ##��}}         black � � �     Ort  415,240        A  
   Test445  )� B ##����         black � � �     Ort  430,240        A  
   Test446  )� B ##����         black � � �     Ort  445,240        A  
   Test447  )� B ##��XX         black � � �     Ort  460,240        A  
   Test448  )� B ##����         black � � �     Ort  475,240        A  
   Test449  )� B ##����         black � � �     Ort  490,240        A  
   Test450  )� B ##��         black �  0 �     Ort  55,255        A  
   Test451  )� B ##��~~         black �  ? �     Ort  70,255        A  
   Test452  )� B ##��kk         black �  N �     Ort  85,255        A  
   Test453  )� B ##��         black �  ] �     Ort  100,255        A  
   Test454  )� B ##����         black �  l �     Ort  115,255        A  
   Test455  )� B ##��YY         black �  { �     Ort  130,255        A  
   Test456  )� B ##����         black �  � �     Ort  145,255        A  
   Test457  )� B ##����         black �  � �     Ort  160,255        A  
   Test458  )� B ##����         black �  � �     Ort  175,255        A  
   Test459  )� B ##����         black �  � �     Ort  190,255        A  
   Test460  )� B ##��>>         black �  � �     Ort  205,255        A  
   Test461  )� B ##����         black �  � �     Ort  220,255        A  
   Test462  )� B ##��\\         black �  � �     Ort  235,255        A  
   Test463  )� B ##��@@         black �  � �     Ort  250,255        A  
   Test464  )� B ##��RR         black �  �     Ort  265,255        A  
    Test465  )� B ##��<<         black �  �     Ort  280,255        A  
  ! Test466  )� B ##����         black �   �     Ort  295,255        A  
  " Test467  )� B ##��mm         black � / �     Ort  310,255        A  
  # Test468  )� B ##����         black � > �     Ort  325,255        A  
  $ Test469  )� B ##��uu         black � M �     Ort  340,255        A  
  % Test470  )� B ##����         black � \ �     Ort  355,255        A  
  & Test471  )� B ##����         black � k �     Ort  370,255        A  
  ' Test472  )� B ##����         black � z �     Ort  385,255        A  
  ( Test473  )� B ##����         black � � �     Ort  400,255        A  
  ) Test474  )� B ##����         black � � �     Ort  415,255        A  
  * Test475  )� B ##��ZZ         black � � �     Ort  430,255        A  
  + Test476  )� B ##��QQ         black � � �     Ort  445,255        A  
  , Test477  )� B ##����         black � � �     Ort  460,255        A  
  - Test478  )� B ##��         black � � �     Ort  475,255        A  
  . Test479  )� B ##��JJ         black � � �     Ort  490,255        A  
  / Test480  )� B ##��tt         black �  0     Ort  55,270        A  
  0 Test481  )� B ##��kk         black �  ?     Ort  70,270        A  
  1 Test482  )� B ##����         black �  N     Ort  85,270        A  
  2 Test483  )� B ##����         black �  ]     Ort  100,270        A  
  3 Test484  )� B ##��dd         black �  l     Ort  115,270        A  
  4 Test485  )� B ##����         black �  {     Ort  130,270        A  
  5 Test486  )� B ##����         black �  �     Ort  145,270        A  
  6 Test487  )� B ##��\\         black �  �     Ort  160,270        A  
  7 Test488  )� B ##��ll         black �  �     Ort  175,270        A  
  8 Test489  )� B ##��ll         black �  �     Ort  190,270        A  
  9 Test490  )� B ##��##         black �  �     Ort  205,270        A  
  : Test491  )� B ##��66         black �  �     Ort  220,270        A  
  ; Test492  )� B ##��==         black �  �     Ort  235,270        A  
  < Test493  )� B ##��         black �  �     Ort  250,270        A  
  = Test494  )� B ##��LL         black �      Ort  265,270        A  
  > Test495  )� B ##��         black �      Ort  280,270        A  
  ? Test496  )� B ##��uu         black �       Ort  295,270        A  
  @ Test497  )� B ##��         black � /     Ort  310,270        A  
  A Test498  )� B ##����         black � >     Ort  325,270        A  
  B Test499  )� B ##����         black � M     Ort  340,270        A  
  C Test500  )� B ##��@@         black � \     Ort  355,270        A  
  D Test501  )� B ##��66         black � k     Ort  370,270        A  
  E Test502  )� B ##��SS         black � z     Ort  385,270        A  
  F Test503  )� B ##����         black � �     Ort  400,270        A  
  G Test504  )� B ##����         black � �     Ort  415,270        A  
  H Test505  )� B ##��@@         black � �     Ort  430,270        A  
  I Test506  )� B ##����         black � �     Ort  445,270        A  
  J Test507  )� B ##����         black � �     Ort  460,270        A  
  K Test508  )� B ##��         black � �     Ort  475,270        A  
  L Test509  )� B ##��]]         black � �     Ort  490,270        A  
  M Test510  )� B ##��AA         black �  0     Ort  55,285        A  
  N Test511  )� B ##��77         black �  ?     Ort  70,285        A  
  O Test512  )� B ##��         black �  N     Ort  85,285        A  
  P Test513  )� B ##����         black �  ]     Ort  100,285        A  
  Q Test514  )� B ##����         black �  l     Ort  115,285        A  
  R Test515  )� B ##����         black �  {     Ort  130,285        A  
  S Test516  )� B ##��::         black �  �     Ort  145,285        A  
  T Test517  )� B ##��PP         black �  �     Ort  160,285        A  
  U Test518  )� B ##����         black �  �     Ort  175,285        A  
  V Test519  )� B ##����         black �  �     Ort  190,285        A  
  W Test520  )� B ##����         black �  �     Ort  205,285        A  
  X Test521  )� B ##��qq         black �  �     Ort  220,285        A  
  Y Test522  )� B ##��,,         black �  �     Ort  235,285        A  
  Z Test523  )� B ##��::         black �  �     Ort  250,285        A  
  [ Test524  )� B ##��33         black �      Ort  265,285        A  
  \ Test525  )� B ##����         black �      Ort  280,285        A  
  ] Test526  )� B ##��%%         black �       Ort  295,285        A  
  ^ Test527  )� B ##��LL         black � /     Ort  310,285        A  
  _ Test528  )� B ##����         black � >     Ort  325,285        A  
  ` Test529  )� B ##��[[         black � M     Ort  340,285        A  
  a Test530  )� B ##��         black � \     Ort  355,285        A  
  b Test531  )� B ##����         black � k     Ort  370,285        A  
  c Test532  )� B ##��QQ         black � z     Ort  385,285        A  
  d Test533  )� B ##��hh         black � �     Ort  400,285        A  
  e Test534  )� B ##����         black � �     Ort  415,285        A  
  f Test535  )� B ##��RR         black � �     Ort  430,285        A  
  g Test536  )� B ##��PP         black � �     Ort  445,285        A  
  h Test537  )� B ##��99         black � �     Ort  460,285        A  
  i Test538  )� B ##��ee         black � �     Ort  475,285        A  
  j Test539  )� B ##����         black � �     Ort  490,285        A  
  k Test540  )� B ##��[[         black �  0%     Ort  55,300        A  
  l Test541  )� B ##����         black �  ?%     Ort  70,300        A  
  m Test542  )� B ##����         black �  N%     Ort  85,300        A  
  n Test543  )� B ##��??         black �  ]%     Ort  100,300        A  
  o Test544  )� B ##��EE         black �  l%     Ort  115,300        A  
  p Test545  )� B ##��gg         black �  {%     Ort  130,300        A  
  q Test546  )� B ##��44         black �  �%     Ort  145,300        A  
  r Test547  )� B ##��         black �  �%     Ort  160,300        A  
  s Test548  )� B ##��         black �  �%     Ort  175,300        A  
  t Test549  )� B ##����         black �  �%     Ort  190,300        A  
  u Test550  )� B ##����         black �  �%     Ort  205,300        A  
  v Test551  )� B ##����         black �  �%     Ort  220,300        A  
  w Test552  )� B ##����         black �  �%     Ort  235,300        A  
  x Test553  )� B ##����         black �  �%     Ort  250,300        A  
  y Test554  )� B ##��bb         black � %     Ort  265,300        A  
  z Test555  )� B ##��         black � %     Ort  280,300        A  
  { Test556  )� B ##����         black �  %     Ort  295,300        A  
  | Test557  )� B ##����         black � /%     Ort  310,300        A  
  } Test558  )� B ##����         black � >%     Ort  325,300        A  
  ~ Test559  )� B ##��OO         black � M%     Ort  340,300        A  
   Test560  )� B ##����         black � \%     Ort  355,300        A  
  � Test561  )� B ##����         black � k%     Ort  370,300        A  
  � Test562  )� B ##��         black � z%     Ort  385,300        A  
  � Test563  )� B ##��++         black � �%     Ort  400,300        A  
  � Test564  )� B ##��ww         black � �%     Ort  415,300        A  
  � Test565  )� B ##��qq         black � �%     Ort  430,300        A  
  � Test566  )� B ##��,,         black � �%     Ort  445,300        A  
  � Test567  )� B ##����         black � �%     Ort  460,300        A  
  � Test568  )� B ##��GG         black � �%     Ort  475,300        A  
  � Test569  )� B ##��         black � �%     Ort  490,300        A  
  � Test570  )� B ##��KK         black �  04     Ort  55,315        A  
  � Test571  )� B ##����         black �  ?4     Ort  70,315        A  
  � Test572  )� B ##��         black �  N4     Ort  85,315        A  
  � Test573  )� B ##��nn         black �  ]4     Ort  100,315        A  
  � Test574  )� B ##��YY         black �  l4     Ort  115,315        A  
  � Test575  )� B ##��         black �  {4     Ort  130,315        A  
  � Test576  )� B ##����         black �  �4     Ort  145,315        A  
  � Test577  )� B ##��         black �  �4     Ort  160,315        A  
  � Test578  )� B ##����         black �  �4     Ort  175,315        A  
  � Test579  )� B ##����         black �  �4     Ort  190,315        A  
  � Test580  )� B ##��oo         black �  �4     Ort  205,315        A  
  � Test581  )� B ##����         black �  �4     Ort  220,315        A  
  � Test582  )� B ##��ZZ         black �  �4     Ort  235,315        A  
  � Test583  )� B ##����         black �  �4     Ort  250,315        A  
  � Test584  )� B ##����         black � 4     Ort  265,315        A  
  � Test585  )� B ##��;;         black � 4     Ort  280,315        A  
  � Test586  )� B ##��         black �  4     Ort  295,315        A  
  � Test587  )� B ##����         black � /4     Ort  310,315        A  
  � Test588  )� B ##��ff         black � >4     Ort  325,315        A  
  � Test589  )� B ##����         black � M4     Ort  340,315        A  
  � Test590  )� B ##����         black � \4     Ort  355,315        A  
  � Test591  )� B ##����         black � k4     Ort  370,315        A  
  � Test592  )� B ##��         black � z4     Ort  385,315        A  
  � Test593  )� B ##��vv         black � �4     Ort  400,315        A  
  � Test594  )� B ##��bb         black � �4     Ort  415,315        A  
  � Test595  )� B ##��         black � �4     Ort  430,315        A  
  � Test596  )� B ##��99         black � �4     Ort  445,315        A  
  � Test597  )� B ##��\\         black � �4     Ort  460,315        A  
  � Test598  )� B ##��,,         black � �4     Ort  475,315        A  
  � Test599  )� B ##����         black � �4     Ort  490,315        A  
  � Test600  )� B ##����         black �  0C     Ort  55,330        A  
  � Test601  )� B ##��&&         black �  ?C     Ort  70,330        A  
  � Test602  )� B ##��DD         black �  NC     Ort  85,330        A  
  � Test603  )� B ##��         black �  ]C     Ort  100,330        A  
  � Test604  )� B ##��>>         black �  lC     Ort  115,330        A  
  � Test605  )� B ##��))         black �  {C     Ort  130,330        A  
  � Test606  )� B ##��WW         black �  �C     Ort  145,330        A  
  � Test607  )� B ##��tt         black �  �C     Ort  160,330        A  
  � Test608  )� B ##��         black �  �C     Ort  175,330        A  
  � Test609  )� B ##����         black �  �C     Ort  190,330        A  
  � Test610  )� B ##����         black �  �C     Ort  205,330        A  
  � Test611  )� B ##��kk         black �  �C     Ort  220,330        A  
  � Test612  )� B ##��::         black �  �C     Ort  235,330        A  
  � Test613  )� B ##��99         black �  �C     Ort  250,330        A  
  � Test614  )� B ##����         black � C     Ort  265,330        A  
  � Test615  )� B ##��QQ         black � C     Ort  280,330        A  
  � Test616  )� B ##��         black �  C     Ort  295,330        A  
  � Test617  )� B ##��         black � /C     Ort  310,330        A  
  � Test618  )� B ##����         black � >C     Ort  325,330        A  
  � Test619  )� B ##��PP         black � MC     Ort  340,330        A  
  � Test620  )� B ##����         black � \C     Ort  355,330        A  
  � Test621  )� B ##����         black � kC     Ort  370,330        A  
  � Test622  )� B ##����         black � zC     Ort  385,330        A  
  � Test623  )� B ##����         black � �C     Ort  400,330        A  
  � Test624  )� B ##��         black � �C     Ort  415,330        A  
  � Test625  )� B ##����         black � �C     Ort  430,330        A  
  � Test626  )� B ##��bb         black � �C     Ort  445,330        A  
  � Test627  )� B ##��         black � �C     Ort  460,330        A  
  � Test628  )� B ##����         black � �C     Ort  475,330        A  
  � Test629  )� B ##����         black � �C     Ort  490,330        A  
  � Test630  )� B ##��gg         black �  0R     Ort  55,345        A  
  � Test631  )� B ##��::         black �  ?R     Ort  70,345        A  
  � Test632  )� B ##��qq         black �  NR     Ort  85,345        A  
  � Test633  )� B ##����         black �  ]R     Ort  100,345        A  
  � Test634  )� B ##��qq         black �  lR     Ort  115,345        A  
  � Test635  )� B ##����         black �  {R     Ort  130,345        A  
  � Test636  )� B ##��yy         black �  �R     Ort  145,345        A  
  � Test637  )� B ##��$$         black �  �R     Ort  160,345        A  
  � Test638  )� B ##��||         black �  �R     Ort  175,345        A  
  � Test639  )� B ##����         black �  �R     Ort  190,345        A  
  � Test640  )� B ##����         black �  �R     Ort  205,345        A  
  � Test641  )� B ##��oo         black �  �R     Ort  220,345        A  
  � Test642  )� B ##����         black �  �R     Ort  235,345        A  
  � Test643  )� B ##��!!         black �  �R     Ort  250,345        A  
  � Test644  )� B ##��         black � R     Ort  265,345        A  
  � Test645  )� B ##��66         black � R     Ort  280,345        A  
  � Test646  )� B ##��GG         black �  R     Ort  295,345        A  
  � Test647  )� B ##��11         black � /R     Ort  310,345        A  
  � Test648  )� B ##��         black � >R     Ort  325,345        A  
  � Test649  )� B ##����         black � MR     Ort  340,345        A  
  � Test650  )� B ##��         black � \R     Ort  355,345        A  
  � Test651  )� B ##��ff         black � kR     Ort  370,345        A  
  � Test652  )� B ##��         black � zR     Ort  385,345        A  
  � Test653  )� B ##����         black � �R     Ort  400,345        A  
  � Test654  )� B ##����         black � �R     Ort  415,345        A  
  � Test655  )� B ##����         black � �R     Ort  430,345        A  
  � Test656  )� B ##����         black � �R     Ort  445,345        A  
  � Test657  )� B ##��         black � �R     Ort  460,345        A  
  � Test658  )� B ##��         black � �R     Ort  475,345        A  
  � Test659  )� B ##����         black � �R     Ort  490,345        A  
  � Test660  )� B ##��NN         black �  0a     Ort  55,360        A  
  � Test661  )� B ##��aa         black �  ?a     Ort  70,360        A  
  � Test662  )� B ##��33         black �  Na     Ort  85,360        A  
  � Test663  )� B ##��         black �  ]a     Ort  100,360        A  
  � Test664  )� B ##��AA         black �  la     Ort  115,360        A  
  � Test665  )� B ##����         black �  {a     Ort  130,360        A  
  � Test666  )� B ##����         black �  �a     Ort  145,360        A  
  � Test667  )� B ##��           black �  �a     Ort  160,360        A  
  � Test668  )� B ##��&&         black �  �a     Ort  175,360        A  
  � Test669  )� B ##����         black �  �a     Ort  190,360        A  
  � Test670  )� B ##����         black �  �a     Ort  205,360        A  
  � Test671  )� B ##����         black �  �a     Ort  220,360        A  
  � Test672  )� B ##��         black �  �a     Ort  235,360        A  
  � Test673  )� B ##����         black �  �a     Ort  250,360        A  
  � Test674  )� B ##��yy         black � a     Ort  265,360        A  
  � Test675  )� B ##����         black � a     Ort  280,360        A  
  � Test676  )� B ##��         black �  a     Ort  295,360        A  
  � Test677  )� B ##����         black � /a     Ort  310,360        A  
  � Test678  )� B ##����         black � >a     Ort  325,360        A  
  � Test679  )� B ##��YY         black � Ma     Ort  340,360        A  
  � Test680  )� B ##����         black � \a     Ort  355,360        A  
  � Test681  )� B ##��rr         black � ka     Ort  370,360        A  
  � Test682  )� B ##��II         black � za     Ort  385,360        A  
  � Test683  )� B ##����         black � �a     Ort  400,360        A  
  � Test684  )� B ##����         black � �a     Ort  415,360        A  
  � Test685  )� B ##����         black � �a     Ort  430,360        A  
  � Test686  )� B ##����         black � �a     Ort  445,360        A  
  � Test687  )� B ##����         black � �a     Ort  460,360        A  
  � Test688  )� B ##����         black � �a     Ort  475,360        A  
    Test689  )� B ##��aa         black � �a     Ort  490,360        A  
   Test690  )� B ##����         black �  0p     Ort  55,375        A  
   Test691  )� B ##����         black �  ?p     Ort  70,375        A  
   Test692  )� B ##��}}         black �  Np     Ort  85,375        A  
   Test693  )� B ##����         black �  ]p     Ort  100,375        A  
   Test694  )� B ##����         black �  lp     Ort  115,375        A  
   Test695  )� B ##��11         black �  {p     Ort  130,375        A  
   Test696  )� B ##����         black �  �p     Ort  145,375        A  
   Test697  )� B ##��##         black �  �p     Ort  160,375        A  
  	 Test698  )� B ##����         black �  �p     Ort  175,375        A  
  
 Test699  )� B ##����         black �  �p     Ort  190,375        A  
   Test700  )� B ##��==         black �  �p     Ort  205,375        A  
   Test701  )� B ##����         black �  �p     Ort  220,375        A  
   Test702  )� B ##��((         black �  �p     Ort  235,375        A  
   Test703  )� B ##����         black �  �p     Ort  250,375        A  
   Test704  )� B ##��00         black � p     Ort  265,375        A  
   Test705  )� B ##����         black � p     Ort  280,375        A  
   Test706  )� B ##��WW         black �  p     Ort  295,375        A  
   Test707  )� B ##����         black � /p     Ort  310,375        A  
   Test708  )� B ##����         black � >p     Ort  325,375        A  
   Test709  )� B ##��tt         black � Mp     Ort  340,375        A  
   Test710  )� B ##��         black � \p     Ort  355,375        A  
   Test711  )� B ##����         black � kp     Ort  370,375        A  
   Test712  )� B ##����         black � zp     Ort  385,375        A  
   Test713  )� B ##����         black � �p     Ort  400,375        A  
   Test714  )� B ##��55         black � �p     Ort  415,375        A  
   Test715  )� B ##��dd         black � �p     Ort  430,375        A  
   Test716  )� B ##��ee         black � �p     Ort  445,375        A  
   Test717  )� B ##����         black � �p     Ort  460,375        A  
   Test718  )� B ##����         black � �p     Ort  475,375        A  
   Test719  )� B ##����         black � �p     Ort  490,375        A  
   Test720  )� B ##��         black �  0     Ort  55,390        A  
    Test721  )� B ##��\\         black �  ?     Ort  70,390        A  
  ! Test722  )� B ##��~~         black �  N     Ort  85,390        A  
  " Test723  )� B ##����         black �  ]     Ort  100,390        A  
  # Test724  )� B ##��         black �  l     Ort  115,390        A  
  $ Test725  )� B ##��..         black �  {     Ort  130,390        A  
  % Test726  )� B ##����         black �  �     Ort  145,390        A  
  & Test727  )� B ##����         black �  �     Ort  160,390        A  
  ' Test728  )� B ##��         black �  �     Ort  175,390        A  
  ( Test729  )� B ##����         black �  �     Ort  190,390        A  
  ) Test730  )� B ##��<<         black �  �     Ort  205,390        A  
  * Test731  )� B ##����         black �  �     Ort  220,390        A  
  + Test732  )� B ##����         black �  �     Ort  235,390        A  
  , Test733  )� B ##����         black �  �     Ort  250,390        A  
  - Test734  )� B ##��         black �      Ort  265,390        A  
  . Test735  )� B ##����         black �      Ort  280,390        A  
  / Test736  )� B ##����         black �       Ort  295,390        A  
  0 Test737  )� B ##��         black � /     Ort  310,390        A  
  1 Test738  )� B ##����         black � >     Ort  325,390        A  
  2 Test739  )� B ##��WW         black � M     Ort  340,390        A  
  3 Test740  )� B ##��DD         black � \     Ort  355,390        A  
  4 Test741  )� B ##��~~         black � k     Ort  370,390        A  
  5 Test742  )� B ##��55         black � z     Ort  385,390        A  
  6 Test743  )� B ##��&&         black � �     Ort  400,390        A  
  7 Test744  )� B ##����         black � �     Ort  415,390        A  
  8 Test745  )� B ##����         black � �     Ort  430,390        A  
  9 Test746  )� B ##����         black � �     Ort  445,390        A  
  : Test747  )� B ##��MM         black � �     Ort  460,390        A  
  ; Test748  )� B ##����         black � �     Ort  475,390        A  
  < Test749  )� B ##��hh         black � �     Ort  490,390        A    = Felder zerstreuen �e�x 	 �on mouseUp
  hide me
  repeat with i = 1 to 750
    
    set the shadowcolor of fld i to "black"
    set the shadowoffset of fld i to 2
    set the shadow of fld i to true
    # put the loc of fld i into Stelle
    # set the Ort of fld i to Stelle
    put random(550) into x
    put random(400) into y
    set the loc of fld i to x,y
  end repeat
 
  show btn "Felder ordnen"
end mouseUp
        |� t  Felder verteilen          	       > Felder ordnen �E�x 	  �on mouseUp
  hide me
  repeat with i = 1 to 750
    #set the shadow of fld i to false
    move fld i to the Ort of fld i  without waiting
  end repeat
  
  show btn "Felder zerstreuen"
end mouseUp
       <� t          	       ? verschieben �E�p\on mouseUp
  put 1 into Summe
  put 0 into Vert
  
  repeat with x = 1 to 25
    add 5 to vert
    put 0 into rechts
    repeat with i  = Summe to 29 + Summe
      add 15 to rechts
      
      set the loc of fld i to (((i -Summe )+rechts)+ 40), ((3 * vert)+ 15)
      put i into Summe
      add 1 to Summe
    end repeat
  end repeat
end mouseUp
       �� q          	       @ nach Farbsumme plazieren �E�p�on mouseUp
  global Farbe
  repeat with i = 1 to 750
    put the backcolor of fld i into Farbe
    put sum(item 1 of farbe, item 2 of Farbe,item 3 of Farbe) into Farbsumme
    if Farbsumme < 382 then
      put random(275) into x
      put random(400) into y
      set the loc of fld i to x,y
    else if Farbsumme >= 382 then
      put random(275) into x
add 280 to x
      put random(400) into y
      set the loc of fld i to x,y
    end if
  end repeat
  
  
end mouseUp
       2 � f          	       D Hintergrund  @`  ����mm    ����/�         	  
>   F create fields �E�p�on mouseUp
  put 0 into Summe
  put 0 into Vert
  set the width of the templatefield to 15
  set the height of the templatefield to 15
  repeat with x = 1 to 25
    add 5 to vert
    put 0 into rechts
    repeat with i  = Summe to 29 + Summe
      add 15 to rechts
      put "Test" & i  into Rufname
      create invisible fld Rufname
      set the showborder of fld Rufname to false
      set the loc of fld Rufname to ((i -Summe )+rechts), (3 * vert)
      put random(255) into R
      put random(255) into G
      put random(255) into B
      set the backcolor of fld Rufname to R,G,B
      show fld Rufname
      put i into Summe
      add 1 to Summe
    end repeat
    
  end repeat
end mouseUp
         � \          	       G delete fields �E�p �on mouseUp
  put the number of flds of this cd into Zahl
  put zahl
  repeat with i = Zahl down to 1
    delete fld i
  end repeat
end mouseUp
        \� \          	       H Farben �ndern �E�x 	 �on mouseUp
  #put the number of flds into Zahl
  
  repeat with i = 1 to 750
    put random(255) into R
    put random(255) into G
    put random(255) into B
    set the backcolor of fld i to R,G,B
set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat

  put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
       / $ f          	       I Farben �ndern 2 �E�x 	 �on mouseUp
  #put the number of flds into Zahl
  put random(255) into R
  # put random(255) into G
  repeat with i = 1 to 750
    # put random(155) into R
    put random(255) into G
    put random(255) into B
    set the backcolor of fld i to R,G,B
set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
  put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B
end mouseUp
       - E l          	       J Farben �ndern 3 �E�x 	 �on mouseUp
  # put the number of flds into Zahl
  put random(255) into R
  put random(255) into G
  repeat with i = 1 to 750
    # put random(155) into R
    # put random(155) into G
    put random(255) into B
    set the backcolor of fld i to R,G,B
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
  put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B
end mouseUp
       - g k          	     
  _ Test20  )� B ��AA��         black � � �     Ort  430,180        
>  
  l Test33  )� B ��AA11         black � � D     Ort  415,75        
>  
  v Test43  )� B ��AA99         black � / 5     Ort  310,60        
>  
  � Test84  )� B ��AA         black �  � S     Ort  190,90        
>  
  � Test99  )� B ��AA��         black �  b     Ort  280,105        
>  
  � Test102  )� B ��AA��         black � � b     Ort  460,105        
>  
  � Test107  )� B ��AA��         black � k �     Ort  370,165        
>  
  � Test139  )� B ��AA��         black �  � �     Ort  145,165        
>  
  � Test164  )� B ��AA��         black � � �     Ort  445,195        
>  
  � Test173  )� B ��AA��         black � � �     Ort  415,195        
>  
   Test184  )� B ��AA��         black � � 5     Ort  460,60        
>  
  % Test218  )� B ��AA++         black � k �     Ort  370,150        
>  
  2 Test231  )� B ��AA

         black � k �     Ort  370,195        
>  
  U Test266  )� B ��AA��         black �  ? &     Ort  70,45        
>  
  � Test344  )� B ��AA^^         black �  { 5     Ort  130,60        
>  
  � Test348  )� B ��AA--         black �  N D     Ort  85,75        
>  
  � Test359  )� B ��AA~~         black �       Ort  280,30        
>  
  � Test366  )� B ��AA��         black � � D     Ort  490,75        
>  
  � Test385  )� B ��AA         black �  � �     Ort  220,135        
>  
  � Test401  )� B ��AA��         black �  � �     Ort  190,135        
>  
  � Test411  )� B ��AA44         black � \ D     Ort  355,75        
>  
  	> Test499  )� B ��AAbb         black �  �      Ort  160,30        
>  
  	� Test571  )� B ��AA��         black �  ] &     Ort  100,45        
>  
  	� Test574  )� B ��AA��         black �  5     Ort  280,60        
>  
  	� Test584  )� B ��AA��         black � � �     Ort  400,225        
>  
  	� Test598  )� B ��AA��         black �  � �     Ort  220,150        
>  
  	� Test627  )� B ��AA\\         black � M 5     Ort  340,60        
>  
  	� Test652  )� B ��AA         black �  N �     Ort  85,180        
>  
  	� Test683  )� B ��AA��         black � � q     Ort  445,120        
>  
  
 Test705  )� B ��AA44         black �  � &     Ort  190,45        
>  
  
 Test708  )� B ��AA��         black �   S     Ort  295,90        
>  
  
4 Test745  )� B ��AA��         black �  �     Ort  280,165        
>    
9 Felder zerstreuen �e�x 
 on mouseUp
  hide me
  repeat with i = 1 to 750
    put random(40) into Breite
    put random(40) into Hoehe
    set the width of fld i to Breite
    set the height of fld i to Hoehe
    set the shadowcolor of fld i to "black" #R,G,B
    put random (4) into Schatten
    set the shadowoffset of fld i to Schatten
    set the shadow of fld i to true
    # put the loc of fld i into Stelle
    # set the Ort of fld i to Stelle
    put random(550) into x
    put random(400) into y
    set the loc of fld i to x,y
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
  show btn "Felder ordnen"
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
       �� b  scatter and 
 reshape fields          	       
: Felder ordnen �e�x 
 �on mouseUp
  hide me
  repeat with i = 1 to 750
    set the width of fld i to 15
    set the height of fld i to 15
    #set the shadow of fld i to false
    move fld i to the Ort of fld i  without waiting
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
  show btn "Felder zerstreuen"
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
       �� m  1reposition fields and 
 return to original shape          	       
< Gr��e �ndern �e�x 
 �on mouseUp
  put random(80) + 10 into StartBreite
  put random(80) + 10 into StartHoehe
  repeat with i = 1 to 750
    put random(StartBreite) into Breite
    put random(StartHoehe) into Hoehe
    set the width of fld i to Breite
    set the height of fld i to Hoehe
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
       . � j  Gr��en zufallsartig 
 �ndern          	       
= arrange fields �e�x 
 2on mouseUp
  put 1 into Summe
  put 0 into Vert
  
  repeat with x = 1 to 25
    add 5 to vert
    put 0 into rechts
    repeat with i  = Summe to 29 + Summe
      add 15 to rechts
      
      set the loc of fld i to (((i -Summe )+rechts)+ 40), ((3 * vert)+ 15)
      put i into Summe
      add 1 to Summe
      set the thumbposition of scrollbar 1 to i
      set the label of btn "Anzeige" to i
    end repeat
  end repeat
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
        � ^  rearrange positions          	       H Farbspiele.gif 	@       W )� d  'GIF89a�d �  7%0'9 -<'15(O;""W9-TD-5B3ZT ?Q)@`TO9k"O&W(NS*ORKPN[\YYKCq\Xq-t,L}#9�7Q�'R�\L�[S�a`�tw:{J%�O$�T!�k$�hN�j!�n=� c� k� k� syDi�kgsscslpr�)v�(t�){�)��'˗��3��myd�|g��_��m��Xɏ_��aŲd2*�T@��KD�Z>�]X�`<�d<�kc�ph�ss�{{{p[�pp�kB�uUȠ {��K��Z�{{��w�o��r���{��{��{�{��{�{��{�{{�p��s��k��p��sƌ{ƌsƔ{˙���������������������������������������´��������Ѱ�ʿ�Ϳ���������������D&�J)�`/�\5�s!�s-�p?�o=ބ!ތ!�!�{B�~J�{F�P�{mޘ!�!ީ!�!�P��R�Z�U�c�c�c�]�l�g�y�{�!�!�����%��&�Q��hޭ�޵�ⱈ뱅޹��Á��{�Љᷙ�ǚ�К�֘޽�����ũ�˴�۬�ޯ�ک�ޱ�ֽ���޽������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������!�  � ,    �d  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��ɓ(S�\ɲ�˗0cʜI��͛8s��ɳ�ϟ@�
J��ѣH�*]ʴ�ӧP�J�J��իX�j�ʵ�ׯ`ÊK��ٳhӪ]˶�۷p�ʝK��ݻx���˷�߿�L�����)^̸��Ǎ�!ۃ�)�Œ)�M|y�d=�`r��9�a��('[ͺ��װ�!�CgɄ
L��٭����w�P���<>��+OΧ�����'����鰩��������O������%���e��H�A��k�Eſ?Q��@�l�� &� ��K��ӏ?Vh�f؏=����{KɃ�|$��}���9��(�:���@�Bh�=�装�p�Ǉ�c�F%O��`"�H"Y֊-�����(���F�e�9��O=����l��f�B�q�c�#Ԓ%���|(�H'�a�(J� ހ%��%�
��c�ҙoVj���`������{$iPx���������j�X��(����`��R�ͨ$-�(��z�+��rt&<�&���6�l:��!�tTk�{���O�6yj�Pkm��jk4��zC���Kn�ێ����[n��jt�;�"�N:�,����M6�ԑ���0p�AG�����+8�g�C,1��zuܺ$�L�B�p�Ah�4/�*��2��vtf;κ�:�HS�0Dm���C�m��4i�!�Ȅ�S��f��M?��U���6t�l������P�1qŽB#��tӝ��lG����9W�s;�8��4W��'�xoh��l��T��k�@D>y�bs�LY�nz�X,���Ͷ�w�-��u�Π�O�.{߈�#���TS�o����'���/T���KNy�{��
Z����N}X�6�t��Fh,���L{�v��=��O�;�~������O/u�B�G@������!ϼF6�PL�@���L4)UְG� ��ʓ��*]aD�p`k ���m$|�L2�A��ІN#`�b�7>0���paB�?۩,y;��@|(> 
�Xg��a>�au̢� =�U� m�U�<�!��MeF�Q�g�g��<�f|���a*�a�I�Bm�@�d �vH�vS-B䋬��&9��/vIe�xA��a�L1xQ�ZТ:�rdBR�IP�K� �ȫP&C���.aq8>�8{��B�XD��~h`߶l��P2��f�δ�)��������y���g��r���\@DȆ<(dz��<�IO�����d�O�`;���d��a/c���1;4� �(
0��A�C\�$��юzf�Lsy�(M)J��!��.JF2��ڡ�B�!�G���@mA0K��l��i�-<1��:��M=A�:�!�,� ��d�/R���lV��XRbW�ԙ�������ؼ����o��k�KF,� ����l_͹��AK��@�ч~:��1�C?��Xֲ����@�l���6�1��V�S !I��x�ᣰ������Ҡ��h@�#��)|��d�u � ���� De��`fp��ͮ�@�4���+&W���]�c6|H�z׫^ߘ�|ޝf=�A���wr�� ��4��c 0Ĭ*9��l9��_���e/k�
�@�u���c ��AB�;(�BK�����U����������G��6p���6X������G:|Ld�Lȓr��&;���}.Q�@�ke��@Ev���5�0��o��E����`�����KTjg	`.ә�K�k��o�%=F�>���.#pLhB?`8 
[�	[V�}��7�`d!1D��NOt�2�$c�ڎ4C��$��=�=`]dye�%S?��d'Gy�K p@�+n8B�N6����d?U%@�\//A����6ݎYf�كl7{Q	�4L�N�s��;�^܂y #�v�^:�!j�NX<�B���H &;	�ю��&]aWZ���gG���y����K�3x��x8��@���մ�A/X�r˓0�����]��׀��P�#�h6�M`��]�C/:�<Ct�������X�{~��d7*��t��F�����n_��(����v���6� lDu����X@*Pf<B�u�Nxg�s�Z��)^qO����CQ8���aȼ>�q��`/ ��偍z������H����|������ڎ+�@'��wO����7�OthW �:4���q{}V�G�{���L�qY8~���!���d���sA������d^ߺWH(���,���� �31�	Gx��P����G� ؀@ �Q��.��q3`��m0wr�"���:�Gl��z*��:P��6��+��k��s��T�0|�W|"��?�{<؃& �3B�f�'u�|�4P�fzp8nP�n�����uԂ-M�}z�}�v�W�fx�f���~cF�w��6S�L`h� 
����$a�p1��Xi�0N�����Q؈H 0i���y�>&yx`��y�%h ��.�o)Ȃ:�����>��y���0�X���sC�j���uQ�0��W�:WkC9|�	��{E�TFٲ˷���|T����f��8��=zx�E��8���h.�!d��긎�؎�Ȏ����w�h{��pzG|5�cU�9��WzGTQ�� ���a�xO��"��Q�(��h�x� � i``>8�4j�-������c ��	�2��z�X8�oЊ*��.��F5�h����D9z��X|�=�CH�pKY�� A*�Z��Z�mN���Kb9���zN�L��c��ei���>a��0�tY�vy�w)���d��f�GX�7@9�<p�L@��w	 9�#PIa6���Y�8�2��<)b�i+�2v� ɀ� M�7� �"�y�U�i@>m�C�<��<ܘL���؛����K������Y��E��2CI��(:GT]����:׏O��<��
��לؒ�\ɕ��۰kI���<lÝ<��b����o	�v��x���9���Hp��s�6?T�[�\�H� ܸ<�$q���W	` �c�p���h�Yi�'K��:�����ӀɏN#z0�Y���5޵���c0�Q-�#��S@�C����Y�HWz�G��:���9]���)���Dr�����8�˓��)�FE��ٕЄT���&���9�`�<zP�K��~mÇ�YB����:���Z��* *s�g�3��4.�<nS5��D���JpJ^yС��p1@��Dԙ�����9���P���5h 6z��7c R�F�T��YWF
��(�����|@��s��g�D���I?w��p�؊��'n �C@�y	ٚ����_�c�gi�|w`w��o�]�Z@�٦�)�U��{ӧs�j��[�[���%�5 ���bC�1�AʰV����Ap\�D�)�J�ȪE����� ��<�&2J� M�El��ȉǉ6k����g Rh���sWh0�P�z0��C���J��PC�pP�Pk�Ju{p�:��7Fd�����Z���&IЀh��hەj�D{���Ko���r�`w
��M*Pq� �������op��������_�C=�#T.��w�������IWev k�H�K�y��h�e����J ӊ�B7[�6K�K9;b e��#����%���:��� P@i o�������y�XfN+�RK��Iu۰
`;�����`�p� ��+�)�4f���ˮmK?��p������
I�^� ���`�����S��5B�������k�<�������9�VT��t��ʹ����kx0�]�_ϋ�i��K�w P�6\�*�t�g�����@��9���+s�b�%1�p:��\�]�y�ĦS�E��O��S[�H$��b<�d��J�h,ƈ���[�g�i+��'�P��
x��xl�w|��ɯ��B6�\Ȇ,��~�Ȍ�@|wݳ�)�"|�K�E���O�ؼu�6S���R�Lt �7|�0�@i�s�ۻ�[˶���l�` m"D.y�X��,�fɺȤ�Ü�D��z������̆`���i|�؜�e���� �jۮT'|\��lǨ��ݜL�
��`��<��
<P��E�N�^������=�,x�dx�ZWh�L��{�����èLu������ݻ�8�<��*� �����<�l�=w�(�<��p�����\��#ڼ�<-�&@Y�Ep��༶��E�
���L�Ԫ��P�R��<P����p��υ�|���Ez�b��������k�+� �)�_]%�����9���ׯ�U���=س�+�0=Gs۰T�؎M)�0	D?��*�����#�P�����H	�	�}ڤM�=��k�F;�Em�s��N��S}�S�	=�V������\=�@� ʣ��3���F�����#�|UNA��ݙ��R��pp�m��4g�}�9=�{0{-�m���2s ��-؄m���sF����J� �{&a4���/@1B������8=ڥ}ڦ��b\5|">�#> �۱G�I�ۨ�	��2>�4^�5^�j��~�p!d�0ܯP�<p��M��x�G>`�`��[N	� �$����F��m�D��ɥ��s��ڂޤ���m
�=��U0�I�i��p��}��%� ���o�P���J��(�\4��F�� ᛝ�P	�>�p�' ڈ�	���?M��>�!p �c�Ƞ��ꬾ�)콵�ۺ�-���^-���뷎맞�	��}��
Ȟ��.�D�_	y���LX���h���W��Z��]Na��)��G���9�з�k��T���H"�*�x��z��2��^�z�6�}� ?�> �>�_	���.���
��ڐ��<|'�P#��s�����@C��,����D�`0>�4_��"�_��'� ��2��D�0��]fz3����d}՞���<K�0���`����o]��=����'U ��Q�����/K^����l��.�s������s���_���Hp �D��+�o�� /�>�@	��z��0	���� 	oY`�e�ܦB�����ϧ�0�0��0�=�s�L��EA�Dx��E��p���~�I�F�Z�w���6t�QoA�������P#�R�("E٬��lO���_�*��y@[v?��e����xӴ����_��h��a����&	&D����L\'�J5R���D/(��#M�$�)QB�AC�@�#	�a��M�1uVD���ϟ0@0 r"�l��~b�I��<���y�fM�9w�d#�N2y���%[��Y�iծe���[�g��s���]��Zi�!A"W:y�m�W����F/fl$ȅ6�.a��O��A$�͝>�2f�&mCF�D���sYر�R���¶�)P잒�6w�ы�۸��40JG�d���ѓ'�9`8�I�F��m<�'?���E�����{����ɣ��m����o!���(��M
4�>
i$8�1E%�$����j$9�჏����:�C��p��'�RJ��D�)��$*wbOC��0�K̊:��-."�4�H$ߚ�&�tr���:
8�؃�~��rK-�Q�	0�\��"���2}�0"L1b�<M4�F�35ո�
,����6n�9� �y��8FuC�\"01ʳ��`༻	�q,%��3�J��S��&�Rf+V��X�h@��#��Z\ �p��#����	%��hi��-*(*�ST�(_?�p9�1\Lzx�Xd?�gra��>�U����J��Lr_~����%�J�<������M�#D6&b#y�a6݄Sҁ����R3�` �����T�Fg[�eG�S '+E-�L��+��S�Y�Te5�h����lr�A�%i�S
�	S��د��E�f["� �8���iE��h�p�&��:�n-�~��{nJ �"�9��9��5�p����>���e���>���b��dbd� �;2o����������"�@�}v�mcP@R9�� g��Ρ�'<������裣�/ZZ���.�z�|\@!e|��EBSb)&ip1�����o��L[m��&���?L`��X�2��U����*H$R���!�HX�,xA�-�qNz\�6�
Z.t���`�8��	$�P9��c3P]��$=�v��a�n)[�a�S^;�2�AFęJ��<oS�b�xE,N�z	�������uoA7��)����B�gD���(6	@�N8�<��k�W��
�T`��v 9ұ�z��0�HH&I�dR#7%Vn-�P=�I��z�a�Bf���P���좰(�R���%nE ��m�cb/����,�"���b1���7! �:��&:�LhjBb�ZW�@3�Q��T�$h@� 0��#��Gt:��7�C��AR��`N�@덳>�l��"�O����8EAz��MrӤZ䱇~��G��0��PrF+�	�<:ќO��
�*'�l��0h�RY�w�f���_��<�4 �H�cՊ@ PӊdC�Ke*5�$A>d�S�jU�ZUR��!�� ��=�z�i5��>p�`k[��V�Z�#�t�W�DGF�)�{���Y�!�"t�~[�M2���\��(c�p�̅r�֜<zY�� �L+���8RH�`	Ә� 9�g�����tyAy�w"�c~A�S$�Q[ˠe0U�Ne��p=�Q�We�T�8��vpf��W�0�<�3��.r1�GP"���xO���-pս�C�W��S|n}{@�2TI��*ʰ�.&A B��xP�H�P�DX��@j
K����p�wÂ���60�e�X˱���Jw���\��RE`��-�P�	9��D-�oQ�"��w���v��d�Zc���\蒀��M�ӝ�����Y��7� �c&s��|�� T6����������o�/�:�@�{�s�Bp� �rp��}��1�����0`HG��̎"�6`��ʅUY9:8@ԣ�r����6���jg�����X��P��D�%2�j����,�A���ml�v�6:X��\�yO�	~Pl7K��vK�9�W�'*�Ë��.?,�6���nx�[j�@�ō�4lʸt�s���%�@��\P��z����6�&!�D}�,@�	�$�pX�.А�\@�X��F��\�+G�~��e	"��Xp�
P��X�aQ7 ���@�ݺ;�(X�A�s��]���	Nl�nܘ�H�s��`|wE7:�]@p����S9�,��Bjp�x@���R&A	>c^hJ���*px�#��.w�U����Ak�B�}ẏ ڇ<U�o �Ɵ�&}���Q]ԋ�FyA�ݾ����hh��E��z�Dd��Ԗ�q������,YR_]������q?��3[�W*����
����W<�E2����B ���[
L����x�ɞJ8l��g����~l#��ڷ���[��M>����"��ȿ������˽ﻉ����s���������$�*���:���{�@�#��H�;�l��C�D��=�+���5�)�DA��	a6|��n0?%��J /��x�X�>�<�A$���~��m8.��,L�@TӃ*̿���k@/C!��#;�4=��}QC,\A�A"�B4��x��2?İ|��A?�������C�B#�5�ȏ,aD�CK��a�;�%<?�zBq�A��D
�>�{;2��BNB1�B���h�!y�G�BZL�D��E��]4=\�~��I\AYc8�BI�D��M1��#� F̃��q�C~I$q˷M�	q<DT۷,1�ZT�v�F,�R,E&T&�k���W��g���SFy�j��D����q�z<�YF1�lȍ�dF���/�ȫ�8��h(B{Å��vĲMq��!�8��Hp��Ii�+y@��ɜ����6�{�3��7ċT����|3����@�|,�&�Gu�	�<ʗ�J�ʠ�EM��I�G|sɤ���˜�I�Lȴtʵ�J��ȏ�˸�?����;����@|í9@������	��|�u�F�,LG�D�LHp�L�|�ȃ��F���m@���<@�J��ϱ}$���|���ͤ|M����Lx�/D����lL�,Ͱ4�߼�������<N֜��� ��C��ε@M���O�V�C/����#Ή��,��DK�����L�4N�Or�������2�x�����dO�ϼ"y��%��)��}P�2͆O��O	�#�4G�d�q��tO%�/�P�����ML�=�P�+	��NmԄO ��h�#��d��('%����؆mR ��Ұ0R)�R�$Ԍ�+��#M�%�*�O-����QR6���,�,��%<ŧzO$eSsr�,��.�,1S4��;��rr�&�S���>�S���TB5T?�R3�QK=S����В�D/�RPU��O�TJ%Q45�M�TTUUJ�OU	�T�)UY�U*]UW�S%�����X�U]��TUUZ%V��UaV�*VS=�FMUeUf�TkUReU~�VRmVh��-��p�Dn�Q,Wn�+^5?_};DWm�.Ax�V#��{��q�V~��W�@y�����t+��W�MX�]X�}�m���챂u׃mX��X��X�D�����8�kC�Y�-Y����r�r�F�@�b���Y��Y���+����,�Y��Y�=Y_\A��ן-Z�=ZkuFt4Ȓ�X�}Z��ZfB�l���C��Z��Z��B�,PN�[�-�*Q1%Ts"R�m[�}[%��i՝�[��۷��o�[��[��[�\�\�-\�=\�M\�]\�m\�}\ȍ\ɝ\ʭ\˽\��\��\��\��\�]�]�-]�  ;      
  O   H 
       � c         	 einfache Animationen   T Kriechgang �E�q

on mouseUp
  put the loc of image "Farbspiele.gif" into Stelle
  
  repeat with i = 1 to 3
    put the rect of image "Farbspiele.gif" into Groesse
    repeat with x = 1 to 15
      add x to item 4 of Groesse
      wait 10  milliseconds
      set the rect of image "Farbspiele.gif" to Groesse
    end repeat
    
    repeat with x =  1to 15
      add x to item 2 of Groesse
      set the rect of image "Farbspiele.gif" to Groesse
      wait 10 milliseconds
    end repeat
  end repeat
  move image "Farbspiele.gif" to the points of graphic "Pfad"
  
  wait 0.2 second
  
  
  
  move image "Farbspiele.gif" to Stelle
  hide image "Farbspiele.gif" with visual effect wipe right very slow
  
  
  
  show image "Farbspiele.gif" with visual effect scroll from left very slow
end mouseUp
   � � �  Azure P �� f  9Feld bewegt sich "kriechend" nach unten und kehrt zur�ck          	       U Pfad   C       �
m �        ) �+ �W �� �� ��5������f�C�B|)  X change layers �E�x 
 mon mouseUp
  repeat with i = 1 to 750
    put random (730) into Zufall
    add 15 to Zufall
    set the layer of fld i to Zufall
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
        
� d          	       Y change positions �E�x 
 mon mouseUp
  repeat with i = 1 to 750
    
    put random(530) into x
    put random(400) into y
    set the loc of fld i to x,y
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
        � _          	       [ Oberfl�chenkosmetik I �E��

local Farbe
on mouseEnter
  put the backcolor of me into Farbe
  set the backcolor of me to red
  show fld "Oberfl�che 1"
end mouseEnter

on mouseLeave
  set the backcolor of me to Farbe
  hide fld "Oberfl�che 1"
end mouseLeave

on mouseUp
  go to cd "Oberfl�che 1"
end mouseUp
   �̙���  @  � � �           	       \ Oberfl�chenkosmetik II �E��local Farbe
on mouseEnter
  put the backcolor of me into Farbe
  set the backcolor of me to red
  show fld "Oberfl�che 2"
end mouseEnter
on mouseLeave
  set the backcolor of me to Farbe
  hide fld "Oberfl�che 2"
end mouseLeave

on mouseUp
  go to cd "Oberfl�che 2"
end mouseUp
   ����ff  @  � � �           	       ] Farbmosaik I �E��local Farbe
on mouseEnter
  put the backcolor of me into Farbe
  set the backcolor of me to red
  show fld "Farbmosaik 1"
end mouseEnter
on mouseLeave
  set the backcolor of me to Farbe
  hide fld "Farbmosaik 1"
end mouseLeave

on mouseUp
  go to cd "Farbmosaik 1"
end mouseUp
   ��ddNN  @  � �           	       ^ Farbmosaik II �E��local Farbe
on mouseEnter
  put the backcolor of me into Farbe
  set the backcolor of me to red
  show fld "Farbmosaik 2"
end mouseEnter
on mouseLeave
  set the backcolor of me to Farbe
  hide fld "Farbmosaik 2"
end mouseLeave

on mouseUp
  go to cd "Farbmosaik 2"
end mouseUp
   ����^^  @  �9 �           	     
  `   x 
  on mouseUp
  Global animation
put "an" into animation
send "mouseup" to btn "Kriechgang"
put "aus" into animation
end mouseUp
  0 444444  ������  P  � � ( 1Animation kann von hier wieder gestartet werden.         � � Wilhelm Sanke 6/99  Universit�t Kassel 
  a Oberfl�che 1   � 	  @ ((((((  @ � x �@        � S"radio buttons" und "radio groups" zur Einstellung von Oberfl�chen- eigenschaften:            ;            ;       ! 1   - Bildschirmhintergrund    - Kartenfarbe    B- erhabene und vertiefte Darstellung von Feldern und Kartenrahmen    $- Ein- Ausschaltung der Titelleiste    n"scrollbars" (Schieberegler) zur Einstellung der Hintergrundfarbe, der Rahmen- u. Schattenbreite eines Feldes            ;  
      b   einfache Animationen     ;   
  b Oberfl�che 2   � 	  @ ((((((  @ � x �@        � pKombination von "radio buttons" und "scrollbars" zur Einstellung verschiedener Farben von Feldern und Buttons:             ;            ; % 
     / @   !- foregroundcolor (Zeichenfarbe)            ;           - backcolor (Hintergrundfarbe)            ;  	         ?- topcolor (oberer Rand bei Buttons, unterer Rand bei Feldern)            ;  	      3   C- bottomcolor (unterer Rand bei Buttons, oberer Rand bei Feldern).            ;        5   ------------------  JBestimmung der Position des Stacks auf dem Bildschirm durch radio buttons            ;       "     ; < 
  c Farbmosaik 1   � 	  @ ((((((  @ � � � �        � Farbmosaik I     ;         ;     [Ein Farbmosaik mit 750 Feldern kann mit zufallsartig ausgew�hlten Farben ver�ndert werden.    7Ebenso �ndert sich jeweils die Farbe des Hintergrunds.    �Die Felder k�nnen dazu zufallsartig auf dem Bildschirm verteilt und danach auf ihre urspr�ngliche Position zur�ck gesetzt werden. 
  d Farbmosaik 2   � 	  @ ((((((  @ � � {        � Farbmosaik II     ;      ~Zus�tzlich zu den M�glichkeiten des Farbmosaiks I kann hier auch die Gr��e der 750 Felder ver�ndert und zur�ck gesetzt werden   i    i       G �    j Anzeige  Ia  ����    ��  33     �� �������#   750        k Anzeige  eh    ������    � -  750          	     
  l   	@      )� 0         �    m Schatten ausschalten �E�x 
 :on mouseUp
  
  repeat with i = 1 to 750
    set the shadow of fld i to false
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
       . � j          	       n Schatten hinzuf�gen �e�x 
 �on mouseUp
  
  repeat with i = 1 to 750
    put random(6) into Breite
    set the shadow of fld i to true
    set the shadowoffset of fld i to Breite
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
put random(255) into R
  put random(255) into G
  put random(255) into B
  set the backcolor of btn "Hintergrund" to R,G,B

end mouseUp
       . � j  "Schatten hinzuf�gen 
 oder �ndern          	       o Farbmosaik 2  Dh ;             ����  @ -  h          	  
>   p Farbmosaik 1  Dh ;             ����  @ .   h          	  A   q MADE_MAC_ROTATE.GIF 	@       �� � (  0�GIF89a� ( �  �����������f��3�� �������̙��f��3�� �����������f��3�� �f��f��f��ff�f3�f �3��3��3��3f�33�3 � �� �� �� f� 3�  �����������f��3�� �������̙��f��3�� ̙�̙�̙�̙f̙3̙ �f��f��f��ff�f3�f �3��3��3��3f�33�3 � �� �� �� f� 3�  �����̙����f��3�� �����̙̙��f��3�� �����̙����f��3�� �f��f̙f��ff�f3�f �3��3̙3��3f�33�3 � �� ̙ �� f� 3�  f��f��f��f�ff�3f� f��f��f̙f�ff�3f� f��f��f��f�ff�3f� ff�ff�ff�fffff3ff f3�f3�f3�f3ff33f3 f �f �f �f ff 3f  3��3��3��3�f3�33� 3��3��3̙3�f3�33� 3��3��3��3�f3�33� 3f�3f�3f�3ff3f33f 33�33�33�33f33333 3 �3 �3 �3 f3 33   �� �� �� �f �3 �  �� �� ̙ �f �3 �  �� �� �� �f �3 �  f� f� f� ff f3 f  3� 3� 3� 3f 33 3   �  �  �  f  3�  �  �  �  �  w  U  D  "     �  �  �  �  �  w  U  D  "     �  �  �  �  �  w  U  D  "  �����ݻ��������wwwUUUDDD"""   !�NETSCAPE2.0   !�GifBuilder 0.5 by Yves Piguet !�
   ,    � (  � H����*\Ȱ�Ç#J�8�>}�����?}��QI��ɓ(�Ҹ��K��I��͈+�ܹ3Њ�@�
5i��FV��ܳgo�=+����ge�իX�����>|LÊ�bq�K}"��];��΍����keP���H���߿�nܷt.�zX�%�ʖ}���I���˘3k�̪��ϠC�f�S�ȆŲ�kw�ܷ���󷹶�۸s߶����b����%���~��ͼ���/Y�u��_a�,��9U/���}�WІN��y�}�k�����t��Zl��e./o������VCob�	(���X���
�w� Wt�q}�g+�h�_ ��`s�4TK�1���/L�v±� b᳑?����K��Ȏ.�#f�(u?>�#��>��c�<=��> �~�	����?s�0E/���YLc��RS@��~_���?��i}�u��
��#H���J� "f+��R��ӡ`����`�ł�/,�ę}d�)�R�\�� ~.�r��
[�fF^�ӎ��祐��*��,j�u^��=���j��M��^)�P���N�µ/d�mY�`~� �'�JQ���.���xGy�;��aV�K,uȒ�mٓS��c�xpu�+ vfo
�t] �V[���j�-����=�~�e?!��+zL[?������>tJ�SR��+|��,WO��=UJ��d.���F���>�쳂`�Ŕ�KU)4ޛ-DL���f��*Ʋ?�{%�-R���Ⱥ�c��|m�� ౴�)E������LiW��3xK�̼�=��un~���Q�<Y�PKa�#CA���|�y;��y"��T6�+��O>���Q�����Ku��TVܮ�ۉ
�N��Hyѯ���?�7^|l��s�K�,tuX3���������66 ����i�َ܍J��r�q�!�(�v�����6�k	�^����J""���"����4��L����+]�6��q�|�{�c4Ʊ��'|sږpF�x�H�>
���GC�^ _b�@��$f1�l�'�Bɪ(p�L��Xp������5X��X���DX(,�WO|g��mV�
�r�8��U�9b��(�����*"r<�ǖh�\�i Ȥ���Щr����E*b�St�����lDUp�R~���YgG������Kw�r�f7< я��aw�2��e�!
 � ��,�K�	�GӘ��"7fq���iNc�~�g�"��\�[?z�4��QC��e'��8XR6�s��$���=�nM�!�ƅ����E�i�#���}:����#���$�`-3K\�գ��Q�J�RN�4��%L�:��� �"m�
�ᨺ�#J�F��6���1vJZL�6�y�%�B�[~�CT���g,�)G�� ��xq�(���Tzɑ��k'���y�z����%�K�
�1;��b�x�Y��V�����ψ�J��h!չ)��g����_��W0ŕ�Ze]���L�!v�X�AX�VV�� E'�s��@����K��Ve�*��_�:�*���N`��f�ԫ���tkC(E����s����QO�!l���%7vS�:wC95l��o�
}�|�hG���z�a��^�RCҳD0�M�A�Ҫ���)O�Q�����ڷ 9���H{���W%ZENL�K`��"��G@r�;�����'L� !�   ,	     � ��G��{&\�g����#�O�}�j�r*K�(�Q$H��+���49��>���"�H~a"��'�>`��w�$�+�x�RoL�KH�BuJ,PV�;5�O �E��2��U)Y�x\۳R�}�L�B5��q����ǣ�z}�N�3E/^)*��-3ˋ�#C���re�L^����/\�L�rf�VB?�\�s�ɡ]<��c� �u\�}w�t~��[7� �k'�Q��IA��Rۂ���w��RFM6mdƾ�)cD[y�A��q��Q��ȓ�V����ƓI��xm���a`����!i��`28F#c�A!�b �RB�X�`�6� �jP���c�
�`�*���2�b�����EB��Â
y2J'�t�F�rd0JӔ=C���=+ S�W*�d0� IeK���2�h��r��$0����@���
 ��^��%�x�H� !�   ,	     � ��G��{&�'h�zV��G�߾{
3�ԧ���*��1��S=fh���VY:�p��F��p�E̓�]�r�J��p�̨�O�>��pԪ#�}��iʯw��ٰc�A^��t��Tڔ�>���ʠ/��՛w�_�0�
�K��L���*�X/�z�v��d�eɘ��7+ȗ ;>ORy��J�TX��hʔ��.�y�{Y3~۶mMo޾}���^Ҍ���|8s2	���׭�������>&��z�{�8j4�<���� ܧ��,G�ē�N^~�������*U�������~6٣Z>� s�0�� �:x�B�n��"a��S�Α�
-e�
�HX�U��ǉ�PD�E�G'OWT���= !�   ,     �  ��A~V�)\�p�VW�)����@�Y�w�!������^A� �X��c�S}�hyrE?��Z.�w��:�]<�Q��A|DbQ��^E�	u^�rEd,$謧�N>�b���O�K>J�H��G`�ʵ:vEZ�
��ky%�H���b�ږ%�z�Df+6�+<����o��/0k���E��7hsfΚY|�����כ�`��_�Y��|	����2ev�1���Bܾ���R&��
%�y��ֿ��LY!�nܘ��O^<��W_�����X�_�m��m�ms��p�ɇ"K#�8B`�H |���P>F�`�c���;�R�#����* z�
2U ��'����"2/���|�8�+8�V�31�袌*$TJ+}�L����c'���F���$��ԣ�k-d�E !�   ,     �  ��A~V�)\�0�(�Z�g�@}��c�0]�S�8�+h�J�@^�8JJ{W�3���z �jasI~m��bgP6�UL�rŕ|���Y!��A�/�j����V_d��J�h]��yE,?�[A��6d�X9����O�j��KV��,�'@�㿠�V������L�2�DeB�m3C2�v��"�uː�+C�uۯ	���h�ߏ~7�o�Vz_���XVE����#�8��+lOE Y�l9?^���k2<��Py�����X��e��j����t��O�!eO2��2�,�`)�#M�P����`�2��
� `�U)qȠ�$�T�EŦG�����22t�> !�   ,     � ��A~V�)\h/_��g�߾{^i��JD V*�ȰթS3�-����}$�4JĂ��a����(*ޫ���|���Ɉs$O{�8���忢17�tj�G����g�+�A:�Yo+͓6�^K3� �YZ�gp'Ϻvi�H��ӻx�� ,�^�2�=�G�0O�_?�A�oLȑ�$�Ak�G۴u{���J��֞ޖ��Gd�z=�j֎Z5�Q��4Ɠ/�	��GГWxϟA�q8j�H֪~y4V��S�cȐ=CV��B�V�g���سd�,�6�3d����GUtI�uC !�   ,     � �	��/ߊ������U�+���Ԡ+�"j�g�F�������^�tVH6l-��z����ԩ*J�ԙ᠟I��s��AY�̴W�ҥI��,S&�R{ev|q��W�RTIncK�W��X K�9j�檣4��6Rs���cq��T02�$��xo_@ !�   ,     � ��[�/�=�Z���a  !
�Ҫb�5���ÉOY��PcC+ ��Cx�b�	�5�@ ��(��=����)p����Y���{ F�*ڬt�z
�t�A-�YԊ���z����ت%�*J��� P|����s*]�A}f�<@��M{Y�P���ּ�	|���,Wߛ)01�t�����¬�2eZ}�VfG���6�N���;����^�����D3g{���
^!���N��ץ�rp�r4lR�=.�v�{� �VV���'�,p�Č��5z?�\f��NV�F�qՑ����<�4�F}�4�@�X=�sLO?5��P��#�:�X�	L+�D�M���3�s�0��J*!��Ȍx�=\���G� !�   ,     � ���gŞ����3Ȑ�~�@��}ֻ��T��q�=��B�[q�c+�I
� �?����.N���[ %L,:[��i�D� @�d9蟠|����g%�= G�x<��U:pZC�rE��}����&>��ꅌ2(˝��Z���1
NV�|�%������'pi�,/2Gܪo�]nm�9K��sM�'T%��7g��T�[g��Q&Q�V����-gD�2�(O�hV�o�v���-�%T`W��w"o�˟��Q\%��T���D�Gݺy��7 ���z]��|�}�k�ŐL�14�7��Gt����Յ��?�5$�,���|�H#8��ZH\�""��|��Ġ�=k���
��#O?���b���@_��3��4�@��1����>Qm�O�OF9�1�<іLCeTC�<���$s2*��M6]�CO�QO>jvB�Hk���I� !�   ,     � ��A~V�)l%(����'�>���݃8�C� �hc ���95HJ� V�3������|��?~Q��C��Ý�0&|y�D�>��]�w�ϓ(Y�yj��)�ӭ�8��R�R�LY�tP�Vp�><�U��)w�t|v�=�XA��r7N��X^Qh�,�"��l���V����/(�z�_x���[�n�0����Ѥ+�nU���t�(�#H�D�uKԪL�[�,d�㉢�z=Ȍz=C�W�q��ǹ���y�]�����Q�����߶fu��+�=ү��{����6���D�8ҍ�
�`�ݬA�fe9V�!�8"ˆ��͆�d�r��TD�l����������B+(��3�Ă�,��͆�8�%(��A�Y�̒L2	�3�3��+�B�rL&�̓[.�(�C�I���3�TQʒ��I �UtM�Փ���P��8��C�� !�   ,      � ��A~V��cq��=�#Z�g�_ ��U��P!�,}Z��H�^A�X��$�)}��I2�� V�3����)S���3�>� N��Xh�A��*�G�^ńE�oŕ|4#�[y�%I))�diq�^�A��jՊ)�};�Y9PB_�M^4
��ArE��wО
{�a*��S����%đ% O��0�S���4�5��c�x��v�A�qs6h��fg�};7�r��"x���k��"����\��{�2���/~���
���$ȗ2��'�_F����w�w�����Y�D8l���lc���4�`7��aD�E��#	&� 7r��#�a�A�D��8�r���!nc�By���,�8�c#9��,8��>��Dc���A*y�
%<ɑ?�}��*�\K��ĲJ?�(Y�c�`8I�)�8���p���3o M���NNyi�
q��3sS�g'	�R���2�TAʛ�<s�'��yF��P	�T1�_�� �3s�S���T�> !�   ,      � ��A~V���r
��Y�g�_ ��U�w)Y�t���^A�X�(��,}��#	��? +��Gs��>WhB�g�I~##� �g�В�UL(�D�)}�ȷ�d��'[B4���,PV��ҧi�VA#������S^�h�b�_�nO�#("��OLi2%���X��m;��(#Fi��o�M7=���A��^]���Y`g��D�I
`ݺ5lٴg��W:���_�>��A�;�\�#z�2;ʔ��]����IΨN���ٻo����%ޗ����/��sǮ}�p+%�c@�1���۬��6	6�7r#�pb�s�
2��2�!�>��p��t�#�d���(�6�=DU�4�#6�x��;�8FqV�ēBc�rc�9��F6b���쳂:����L+���*�l�ʖ`~y�CV�c�A#偌3ȴ�f�k��&	����M9��U=��	g�~"��C+�$�J��U ���DO��f'�ڄ�F;��BsD4G��d�> !�   ,     �  ��A~V���'��
#F����?��,��O�>R$��w��E+����N)*FJ,����}#W��E��}&�q�b'�z>޳���>w�D�Qd=�*#��b�W)2V�a��O�AVJ�i�`S{%�t���Δ�Q?��W�?VHf��ī�Y��=�ǀ߬
�>|7���}L�}����/
�M�E�.���"�kѢK���oU��`�.]��,V��y%���/��q|�e��h{;���ʁ4����2�ڮVX��w�ܿ� ��;��Ij[�F͚���ۧ�~����߀��W�e���d��B�((!�^[�)$�#�p�a������!��M�興����!,��H#d4r�=�������J)��X�!A�䑪�t�P����P
s�1�s�0� CBD��t�
���)Ob�$2RRyL0yD�B  ���+tr�1N<��()��a��PU<AE ���'	(eR@ !�   ,     � ���A���Xa��C���4����@�Y�g�T)>��ob ���pP�>YJ�|x�A VL����K�3�\�O��0��i��D��Xδ�˝>@��+i����4,q*K������a	S�4����}����a�,q� �����>3��{h�)w����g
˅�i��C�� �"E0��U�"v����,^Ğ�����,����p��.
w�@�đ#g���,����ܶ����Z)����|��cG�Ata>�J���͛ra���;X�nX����q���凝k�Í6jd�`6F����<��e��Z[�u�ٔa�ِ�Mjqb�2��
P�lc��Hc�6���U��1F�ii�i42��b���>c9҈�� Ye�i`�$��dk�`�*��b��h�	�lr1�M����1�3����yg't�y]C[�C���g�|��1�T��=ᤓ=���(�8�D'�p�'%��M(M�RCU��	�p
�
���BM !�   ,     � ���A��ػ�Ç��3hP_=� ���O��>}�hѡ~a,h0�=����3HJI��6�`%e�(3A�Pq��+��W4(�EN����˛+����J�!Bah�Ԡ,Q�ګ׳eI, �b�#HP+���Ի95lL�Y@�K������������C9P�j��ӌ�����>��Ei�/P�>ݢ�Ւ�R�>]����$Kf^���l��EMT���A���x� ��~S~�K��ϭߡ�ā���^?\1k�s�ک��w���7u۶�������_CfoC�=T"���~k�g��p�x���
N��6j\HD�%�#�4�"�8�#b��S�C�"�����1�DIN�0�3�*���
�D
)���Tu�=� s2�<�d0N:y�8���R���P=��b���H	%2�@��N<��)�Ty�M>��xG	�R�W�'��4��N�t�> !�   ,     �  ���A��Գe������gР�z���������H�
���4��"E��xo#K+(g��3H��%fڳ����}3���9Ȅ=B�Q��2�>Xe� u潓=�\qŊ�V"��s(t!˙�Bb�Ӫ��+��R1nL�s������̥�c�5�L�}����'�|#b�"K�Ο=�~!��XϡSw�q�A�G��"j�Ve��Ƚ[��2Z�F�hw�/e�'�=#/ͤ]p�F�<H�;�G���7nk��l���x�f:&�\�����g�����y����m�p3�}��Y>�4�Ȃ
2�`#�A�R/=�H�.�`WM��,:�*��h�*��d�?�c�
� sL�3�H#2$�g�WE)2㍝�eNo=t�3Bv2��>D +��OU%T#[Փ�$�3�?� !�   ,     � ���g�|QV�[�߾����
C+��Q��"����14�O�SX:v�(�J{&5�������2��C��Ąr@E�/���"��V��P�����,.\��ՠS'��:u�DO�������,C��ҩqg=�,eY�ۅY��=��Wu�8q��%*C�re[M.��2��M�\�s"�gW|������ܶݻ�8o�s��\nn�wk�QY��'o�|�L�\�;j�\��FZ{�C~�ѪU�:�?��2;)d��!s����{��h�^=�*/W��x������W�H�s2���D�p�K !�   ,     � PO߿���Y�go�+�"Jķ��A}��d������3�D+�,h�`�{ @�e�Ɉ�8hE�M{W�����O� V�;�什zB�|tj�" ��`:7�џ��Z��3߾t�XP}jEg ��ҵju*������#{S��A���� ��|�>uJF�o���%�A|�y%�ˠku
�r�A��\k5��?ⵗ���ډT�ō�����N�H�Z}޼u���כ.M(�b:�o�u{��1��&m���ν���z7�t䨑#Y﹬���)�1��y�������,�@SUV\e�h �q2�8��3z��?I�U�IO ����X�G<�t�"��SH	��?�0h)z�X !�   ,     � ���gŞ�zW�\�o߿�����g��B����PQ� �zV�At���>XJ�����
�M��"@��@1mfdas�Þ�ZE���?��ҁ��`A��Z��ȲjS��Z�2�"�=W�e�#s�=�W�L���@�,/^����s{fq�hދev��+3Q���N|qV7o~�5��Bp�*[��h̘��/:J�&t�z�5
�T&�c���c�����+p�>��)�%]#�d�� !�   ,     � �Y�g���+,�ķ���,��Ϡ>Z��0�Ă������޽@K��rcI{(�}��O�/A����8%r��2��=1rֳ21ʠV�ҵ�����SR[�R��
�����ɢ��zN�@4��Y{-�dy���[{�^�m�b���q�#��]e�xkU&Ȍ�W�$J�̗.�%��&���.��筛�æ������[.�f}Nu��/���M�1>�ܝ%˧�1id�x��߼y�5��$S�֠9���C('��fM�c�^�@9ъ<h���2��*JT�v���4�P@ !�   ,     � PO߿����ǰ�Q��w�z����JÏ�N�S��~4xp߽�W�ⓥ�{
����+3k�����~-�6<ժOJ)���R{�N�Kw�^Պ���J��|��ֳ�3�U,}NEk�jk]�H���YnM�����3� ��N��Ĵ�S,%at������%K��z�byA�3�,/\D��Ϫ�Υ� &�*�J9�0=�E���+C|G�D�Z�".�?�C'�ț�/ef��x�5�Gһ�#�����0�=�ƞ��o��ysN�/"����?�{Ã�l���7�~����Py��P=��"�,�P8���He9���,��(�?�\�H��89��3����<����<�42�OVLe����4CZ�5�s�7�bT^´4�@3��Ds����L��̑�(ILE	��?.���
S:�$t��C�A !�   ,
      � ���G��>|�*��/JB|��W�E��$�p��V})��Ob��%����
|Z��eὌO�+����S���i��?+ ����ϧBA�f�Y�3�~+ ��ҩ�>���g�^�{<O����^Ա���kYϊ�{ |�2%K�V�Om�._K�'K�8��q�)���|�Յ�
�;`�cX C��l"�a��(q`���T$���hɃކ�"��8ul��E��ų��]ܩ�d�˒�����s�z���=���:f)N�����Y8]Q�c��Av�R&Q�D�gx��̎/�}�~���Y-���?�c_�W_����x=�7�l���݄�M7���UG�E�P>r�!�$zSb�'*��\q�#���H�2���7�\�+!Ԡ,�8¤�L�2��M6b�=υ��!N:2�,ހ�7i8�`B���B+<�4���O��0�M#�ఐK��W=#h2�

�3��MH�� �5�Y����3��6NXi��B����
�(��fRJ�tb=+�!��<��
f���U��UR@ !�   ,  #   � ���A���[�pa�(���3hP_=����JÏ|Z��
?��2b,hp߽�K85�T��m4���I VP�lXs�>0w�� ���ZeȢO�A}Z����
 �v�{9���}�L�w�_�=��gu� {��eX/��{ x�,��)v��ɸ�ޅ\S�˰��M�hF˸f+�����L�SR��R�c�X>�2(:P�z-����y�֮EҌ��eA�_�(����,г��" �O>n��9��/��O���zN�Q����������`1�?�>��dG����C���3LE�?��Pƀ���__x����^��@`�7`���P���TC�l��6k���6.>bc7�x�v��u7@�8c���x�,��T+�4D�#�@Id�E��H7�<6�?��Ȑ���#��9��h�)&���=R5�f�t�9g#E =�5d�*��"h5�>�3iV�%~���c�$��<S�3�`z�u�ܳ�> � U���PB����L��&s;�
8��X@	Ő�b�I���=%س�RL9%K���Ps�p 	�@J2x���N���? !�   ,     � ���A���[Ȑ�{��4����@�Yi��ʠ>�Y�71������Ȱ�A�Eax�A VJ�l����m��rg�>}>b�)�&��F��@��T���H�R>W�mX/�@,M�H�d
�=-V�LzjЕ��r\��Ŕ�T��%��?~]Li�"��)Y�s�X{gy�}і��>Y�J:��a��^X�z���/��Β��P��ݺ��ײi�f��r޿}Î=����-e�	����֩��Qfz"��gp�N��� _����@	�ܩ˯�~z����R���mܬ��6kH����7��_ �-���( �	.��a�8��#�P(��.��,�M�8�b�.:c�4:��?�4t�-��b,2���\��^���*�(��O�N�F
2�8�%2�d���X���=�UCɀ���^"CJ'cI��N����Z�Q�l:��
6�4�J��`��s؃W=Ux��s��#�A ;      
  x Test45  )� B ��AA��         black �        Ort  295,30        
>  
  � Test428  )� B ��AAzz         black �  0 &     Ort  55,45        
>  
  	� Test587  )� B ��AAbb         black �  ] S     Ort  100,90        
>  
  	� Test578  )� B ��AA66         black � � S     Ort  400,90        
>  
  
 Test699  )� B ��AAWW         black � z &     Ort  385,45        
>  
  g Test28  )� B ��AA��         black � �      Ort  475,30        
>  
   Test186  )� B ��AA��         black �   �     Ort  295,150        
>  
   Test194  )� B ��AA

         black � � �     Ort  400,165        
>  
  	@ Test501  )� B ��AAEE         black � � �     Ort  415,165        
>  
  � Test169  )� B ��AA��         black �  S     Ort  280,90        
>  
  j Test287  )� B ��AA��         black � \ �     Ort  355,180        
>  
  	A Test502  )� B ��AA��         black � � �     Ort  400,240        
>  
  	� Test605  )� B ��AA��         black � � �     Ort  415,240        
>  
  
$ Test729  )� B ��AA##         black �  � �     Ort  220,255        
>  
   Test201  )� B ��AATT         black � \ �     Ort  355,255        
>  
  � Test407  )� B ��AAKK         black � � �     Ort  400,255        
>  
  � Test376  )� B ��AA��         black �  N     Ort  85,270        
>  
  � Test178  )� B ��AAgg         black � �     Ort  415,270        
>  
  	� Test679  )� B ��AA��         black �  0 S     Ort  55,90        
>  
  	� Test610  )� B ��AA((         black �  � �     Ort  235,225        
>  
  m Test34  )� B ��AA��         black �      Ort  280,270        
>  
  	� Test687  )� B ��AA��         black � �%     Ort  490,300        
>  
  O Test4  )� B ��AA''         black �  �4     Ort  145,315        
>  
  R Test263  )� B ��AA��         black �  � S     Ort  205,90        
>  
  	� Test565  )� B ��AA         black � �C     Ort  445,330        
>  
  � Test89  )� B ��AA           black �  ? �     Ort  70,240        
>  
  
 Test696  )� B ��AAUU         black �  ]R     Ort  100,345        
>  
  	E Test506  )� B ��AA��         black �  l b     Ort  115,105        
>  
  � Test424  )� B ��AA>>         black �  �R     Ort  235,345        
>  
  q Test38  )� B ��AA��         black � R     Ort  280,345        
>  
  � Test149  )� B ��AA��         black � > �     Ort  325,240        
>  
  	� Test606  )� B ��AA��         black �  R     Ort  295,345        
>  
  
 Test718  )� B ��AA55         black � /R     Ort  310,345        
>  
  i Test286  )� B ��AA((         black � M �     Ort  340,180        
>  
  � Test429  )� B ��AAcc         black � �     Ort  430,285        
>  
  # Test216  )� B ��AA��         black �  �a     Ort  220,360        
>  
  
 Test710  )� B ��AA         black � a     Ort  265,360        
>  
  	 Test448  )� B ��AA��         black �  a     Ort  295,360        
>  
  	 Test466  )� B ��AAzz         black � >4     Ort  325,315        
>  
  � Test425  )� B ��AA::         black � �a     Ort  400,360        
>  
  	� Test588  )� B ��AA��         black � \ �     Ort  355,225        
>  
  � Test131  )� B ��AA��         black �   �     Ort  295,165        
>  
   Test196  )� B ��AAPP         black � �a     Ort  490,360        
>  
  � Test433  )� B ��AA��         black � � �     Ort  430,195        
>  
   Test192  )� B ��AAcc         black �  ]p     Ort  100,375        
>  
  � Test380  )� B ��AA��         black � �%     Ort  460,300        
>  
  	� Test668  )� B ��AA��         black �  {p     Ort  130,375        
>  
  \ Test17  )� B ��AA%%         black �  ? b     Ort  70,105        
>  
  	L Test513  )� B ��AA..         black � C     Ort  265,330        
>  
  	 Test440  )� B ��AA��         black �  � �     Ort  250,195        
>  
  	� Test568  )� B ��AA((         black �  �     Ort  235,270        
>  
  
 Test720  )� B ��AA��         black �  ?     Ort  70,390        
>  
  � Test314  )� B ��AA��         black � � S     Ort  430,90        
>  
  	l Test545  )� B ��AA��         black �  l     Ort  115,390        
>  
  	� Test633  )� B ��AA��         black �  p     Ort  295,375        
>  
  � Test154  )� B ��AAll         black �      Ort  280,390        
>  
  	c Test536  )� B ��AA           black � � �     Ort  400,210        
>  
  � Test88  )� B ��AA~~         black � k     Ort  370,390        
>  
  	i Test542  )� B ��AA��         black � �     Ort  490,390        
>    B 	Schatten   i /on openCard
  put the name of me
end openCard
       (� r 7  r Schatten hinzuf�gen �e�x 
  �on mouseUp
  
  repeat with i = 1 to 750
put random(6) into Breite
    set the shadow of fld i to true
set the shadowoffset of fld i to Breite
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
end mouseUp
       ,� j  "Schatten hinzuf�gen 
 oder �ndern          	       s Schatten ausschalten �E�x 
  �on mouseUp
 
  repeat with i = 1 to 750
   set the shadow of fld i to false
    set the thumbposition of scrollbar 1 to i
    set the label of btn "Anzeige" to i
  end repeat
end mouseUp
       ,� j          	     
  	� Test616  )� B ��AA         black � /      Ort  310,30        
>  
  � Test103  )� B ��AA         black �  �     Ort  220,270        
>  
  � Test338  )� B ��AA!!         black �  0%     Ort  55,300        
>  
  � Test104  )� B ��AA         black � / �     Ort  310,180        
>  
  	 Test444  )� B ��AA��         black �  � 5     Ort  160,60        
>  
  y Test46  )� B ��AA         black �  l q     Ort  115,120        
>  
  � Test370  )� B ��AA**         black � � 5     Ort  490,60        
>  
  3 Test232  )� B ��AA��         black � k 5     Ort  370,60        
>  
  � Test375  )� B ��AAyy         black �  �4     Ort  235,315        
>  
  � Test426  )� B ��AA         black �  � �     Ort  250,210        
>  
  � Test172  )� B ��AA��         black �  � q     Ort  145,120        
>  
  � Test136  )� B ��AA&&         black �  � b     Ort  220,105        
>  
  � Test167  )� B ��AA##         black � z 5     Ort  385,60        
>  
  ] Test18  )� B ��AA��         black � � 5     Ort  475,60        
>  
  f Test27  )� B ��AAss         black � za     Ort  385,360        
>  
  � Test423  )� B ��AA��         black �  N �     Ort  85,225        
>  
  � Test371  )� B ��AA��         black �  ] �     Ort  100,180        
>  
  
) Test734  )� B ��AA��         black � � �     Ort  445,165        
>  
  { Test304  )� B ��AA         black � � �     Ort  415,225        
>  
  
 Test191  )� B ��AA::         black �  �     Ort  280,150        
>  
  	^ Test531  )� B ��AA��         black � � �     Ort  445,150        
>  
  t Test41  )� B ��AA         black � >     Ort  325,270        
>  
  
 Test697  )� B ��AANN         black �  � b     Ort  145,105        
>  
  � Test350  )� B ��AA         black � � b     Ort  490,105        
>  
  	� Test597  )� B ��AAll         black �  � �     Ort  250,165        
>  
  � Test331  )� B ��AA��         black � z �     Ort  385,165        
>  
  � Test132  )� B ��AA��         black �  0 �     Ort  55,180        
>  
  � Test389  )� B ��AA��         black �  � �     Ort  175,180        
>  
   Test211  )� B ��AA>>         black �  �     Ort  160,390        
>  
  � Test151  )� B ��AAVV         black �  {     Ort  130,285        
>  
  	 Test464  )� B ��AA$$         black � �%     Ort  415,300        
>  
   Test188  )� B ��AA��         black �  �     Ort  265,180        
>  
  w Test44  )� B ��AAdd         black �  �     Ort  280,180        
>  
  K Test0  )� B ��AA??         black � � �     Ort  400,180        
>  
  	� Test650  )� B ��AAGG         black �  l      Ort  115,30        
>  
  E Test250  )� B ��AAZZ         black � >%     Ort  325,300        
>  
  W Test12  )� B ��AA//         black �  ] �     Ort  100,195        
>  
  	� Test625  )� B ��AA��         black �  { �     Ort  130,195        
>  
  � Test114  )� B ��AA44         black � > S     Ort  325,90        
>  
   Test187  )� B ��AAoo         black � �a     Ort  475,360        
>  
  � Test61  )� B ��AA��         black �  � �     Ort  235,195        
>  
  	 Test459  )� B ��AAmm         black �  NC     Ort  85,330        
>  
   Test308  )� B ��AA++         black �  0     Ort  55,390        
>  
  

 Test703  )� B ��AA��         black �  � D     Ort  175,75        
>  
  	� Test688  )� B ��AAXX         black �  0 5     Ort  55,60        
>  
  	� Test691  )� B ��AArr         black �  � �     Ort  190,210        
>  
  Z Test15  )� B ��AAqq         black �  ?R     Ort  70,345        
>  
  � Test55  )� B ��AA��         black �  �     Ort  265,195        
>  
  z Test303  )� B ��AA��         black � M �     Ort  340,150        
>  
  U Test10  )� B ��AA**         black �  �C     Ort  175,330        
>  
  	� Test637  )� B ��AA��         black �   5     Ort  295,60        
>  
  � Test312  )� B ��AA��         black �  N �     Ort  85,150        
>  
  	� Test618  )� B ��AA))         black � >a     Ort  325,360        
>  
  � Test78  )� B ��AA��         black � z4     Ort  385,315        
>  
  	� Test589  )� B ��AA��         black � �     Ort  400,390        
>  
  
( Test733  )� B ��AA88         black �  � �     Ort  250,255        
>  
  � Test119  )� B ��AA��         black �  � �     Ort  250,135        
>  
  m Test290  )� B ��AA         black �  �p     Ort  160,375        
>  
  ! Test214  )� B ��AAPP         black �   D     Ort  295,75        
>  
  � Test374  )� B ��AA��         black � � �     Ort  445,240        
>  
  | Test49  )� B ��AA55         black �  � �     Ort  145,150        
>  
   Test52  )� B ��AA��         black � � D     Ort  475,75        
>  
  a Test278  )� B ��AA         black � �p     Ort  445,375        
>  
  	 Test190  )� B ��AA         black � / �     Ort  310,255        
>  
  � Test59  )� B ��AA��         black �  � �     Ort  220,180        
>  
  ? Test244  )� B ��AACC         black �  � D     Ort  220,75        
>  
  � Test97  )� B ��AA00         black �  �     Ort  280,225        
>  
  	. Test483  )� B ��AA��         black � �C     Ort  400,330        
>  
  / Test228  )� B ��AA@@         black �  l 5     Ort  115,60        
>  
  	� Test661  )� B ��AAQQ         black � M S     Ort  340,90        
>  
  � Test383  )� B ��AA<<         black �  ?     Ort  70,270        
>  
  � Test368  )� B ��AA��         black �  � �     Ort  205,135        
>  
  [ Test272  )� B ��AA��         black �  0 �     Ort  55,225        
>  
  	/ Test484  )� B ��AA��         black �  ? �     Ort  70,255        
>  
  	* Test479  )� B ��AA��         black �  ] b     Ort  100,105        
>  
  � Test150  )� B ��AA         black � � �     Ort  475,225        
>  
  
# Test728  )� B ��AAvv         black �  �     Ort  190,270        
>  
  	 Test454  )� B ��AA��         black � /     Ort  310,270        
>  
   Test195  )� B ��AA��         black �  N �     Ort  85,255        
>  
  
- Test738  )� B ��AA��         black � k �     Ort  370,255        
>  
  � Test319  )� B ��AA         black �  � �     Ort  235,210        
>  
  � Test420  )� B ��AA..         black �  0 D     Ort  55,75        
>  
  � Test323  )� B ��AA~~         black �  � �     Ort  220,165        
>  
  B Test247  )� B ��AA��         black �  �a     Ort  250,360        
>  
  	� Test614  )� B ��AAgg         black � z �     Ort  385,225        
>  
  
" Test727  )� B ��AAFF         black �  �4     Ort  205,315        
>  
  � Test68  )� B ��AA��         black �  N 5     Ort  85,60        
>  
  	$ Test473  )� B ��AA((         black �  { D     Ort  130,75        
>  
  F Test251  )� B ��AA22         black �  � �     Ort  220,210        
>  
   Test199  )� B ��AA         black �  l S     Ort  115,90        
>  
  R Test7  )� B ��AA��         black � � q     Ort  415,120        
>  
  	 Test451  )� B ��AA��         black �      Ort  280,285        
>  
  � Test339  )� B ��AA<<         black � � S     Ort  460,90        
>  
  	Z Test527  )� B ��AA��         black � � D     Ort  400,75        
>  
  � Test313  )� B ��AAdd         black � �     Ort  460,285        
>  
  	q Test550  )� B ��AA��         black �  ? �     Ort  70,165        
>  
  
' Test732  )� B ��AA         black � p     Ort  265,375        
>  
  	7 Test492  )� B ��AA��         black �  �     Ort  280,195        
>  
  � Test372  )� B ��AA��         black � � q     Ort  400,120        
>  
  c Test24  )� B ��AA��         black � > D     Ort  325,75        
>  
  � Test157  )� B ��AA''         black � �a     Ort  430,360        
>  
  	� Test641  )� B ��AA��         black � M �     Ort  340,210        
>  
  ] Test274  )� B ��AAoo         black �  D     Ort  265,75        
>  
    Test181  )� B ��AAqq         black �  � �     Ort  235,240        
>  
  	F Test507  )� B ��AA��         black �       Ort  295,270        
>  
  7 Test236  )� B ��AA��         black � MC     Ort  340,330        
>  
  
* Test735  )� B ��AA

         black � k%     Ort  370,300        
>  
  5 Test234  )� B ��AAuu         black �  � b     Ort  175,105        
>  
  � Test334  )� B ��AAJJ         black �  �4     Ort  175,315        
>  
  	� Test662  )� B ��AA         black �  �R     Ort  190,345        
>  
  � Test138  )� B ��AA��         black �  �4     Ort  250,315        
>  
  � Test60  )� B ��AA         black �  �p     Ort  235,375        
>  
  	� Test599  )� B ��AA��         black � �%     Ort  475,300        
>  
  	� Test621  )� B ��AALL         black �  N �     Ort  85,135        
>  
  � Test86  )� B ��AA��         black �  � �     Ort  145,135        
>  
  � Test390  )� B ��AAMM         black �  �p     Ort  205,375        
>  
  9 Test238  )� B ��AA��         black �  �4     Ort  160,315        
>  
  � Test382  )� B ��AA��         black �  ? �     Ort  70,210        
>  
  e Test26  )� B ��AA��         black �  � �     Ort  160,225        
>  
  � Test113  )� B ��AAGG         black � > �     Ort  325,210        
>  
  
2 Test743  )� B ��AA��         black �  �R     Ort  175,345        
>  
  � Test80  )� B ��AA||         black � � �     Ort  475,165        
>  
  � Test179  )� B ��AA��         black �  �     Ort  175,270        
>  
  M Test2  )� B ��AA��         black � �4     Ort  430,315        
>  
  	< Test497  )� B ��AA��         black �  lC     Ort  115,330        
>  
  D Test249  )� B ��AA��         black �  N      Ort  85,30        
>  
  	� Test619  )� B ��AA55         black �  � �     Ort  250,150        
>  
  � Test148  )� B ��AAhh         black � \R     Ort  355,345        
>  
  
 Test713  )� B ��AA��         black �  �R     Ort  160,345        
>  
  G Test252  )� B ��AA         black � �4     Ort  475,315        
>  
  � Test123  )� B ��AA//         black � > b     Ort  325,105        
>  
  � Test81  )� B ��AA44         black � \ S     Ort  355,90        
>  
  u Test298  )� B ��AA��         black �       Ort  265,30        
>  
   Test212  )� B ��AAII         black � \a     Ort  355,360        
>  
  	 Test442  )� B ��AA��         black �  ]C     Ort  100,330        
>  
  	C Test504  )� B ��AA��         black � �     Ort  415,285        
>  
  � Test309  )� B ��AA]]         black �  %     Ort  295,300        
>  
  	� Test626  )� B ��AA!!         black �  0a     Ort  55,360        
>  
  	Q Test518  )� B ��AA��         black �  � D     Ort  160,75        
>  
  � Test357  )� B ��AA��         black �  �R     Ort  220,345        
>  
  
3 Test744  )� B ��AAOO         black � >p     Ort  325,375        
>  
   Test183  )� B ��AA!!         black �  l     Ort  115,270        
>  
  	� Test656  )� B ��AA��         black � \p     Ort  355,375        
>  
  	O Test516  )� B ��AA//         black �      Ort  265,285        
>  
    Test213  )� B ��AA         black � � 5     Ort  430,60        
>  
  P Test5  )� B ��AAWW         black � > q     Ort  325,120        
>  
  � Test325  )� B ��AA**         black � �R     Ort  460,345        
>  
  ~ Test307  )� B ��AAnn         black �  Na     Ort  85,360        
>  
  � Test335  )� B ��AA��         black �  �a     Ort  145,360        
>  
  � Test402  )� B ��AA��         black �  l �     Ort  115,210        
>  
  	} Test562  )� B ��AA��         black �  �     Ort  190,285        
>  
  � Test56  )� B ��AA##         black �  �a     Ort  175,360        
>  
  � Test92  )� B ��AA��         black � > �     Ort  325,195        
>  
  	� Test647  )� B ��AApp         black �  � b     Ort  235,105        
>  
  q Test294  )� B ��AA��         black �  � &     Ort  160,45        
>  
  � Test118  )� B ��AA``         black �  �     Ort  205,390        
>  
  	� Test591  )� B ��AA��         black � \ �     Ort  355,195        
>  
  v Test299  )� B ��AAHH         black � z     Ort  385,390        
>  
   Test197  )� B ��AA��         black � z �     Ort  385,150        
>  
  � Test72  )� B ��AA..         black � �a     Ort  415,360        
>  
  	� Test600  )� B ��AA��         black � �a     Ort  445,360        
>  
  � Test412  )� B ��AASS         black � z     Ort  385,270        
>  
  	n Test547  )� B ��AAHH         black �  �     Ort  265,255        
>  
  � Test358  )� B ��AA##         black � \%     Ort  355,300        
>  
  
 Test714  )� B ��AAGG         black �  �p     Ort  145,375        
>  
  { Test48  )� B ��AA��         black �   �     Ort  295,180        
>  
  	� Test635  )� B ��AA##         black � /p     Ort  310,375        
>  
  	v Test555  )� B ��AA��         black � \     Ort  355,285        
>  
  H Test253  )� B ��AADD         black �  l%     Ort  115,300        
>  
  	� Test673  )� B ��AAaa         black �  ]      Ort  100,30        
>  
  � Test328  )� B ��AA,,         black �  �      Ort  220,30        
>  
  8 Test237  )� B ��AA33         black �  la     Ort  115,360        
>  
  � Test415  )� B ��AA��         black � k      Ort  370,30        
>  
  	w Test556  )� B ��AARR         black �  lR     Ort  115,345        
>  
  � Test146  )� B ��AA��         black � � q     Ort  490,120        
>  
  � Test320  )� B ��AA��         black � �      Ort  490,30        
>  
  � Test144  )� B ��AA55         black � � �     Ort  460,240        
>  
  V Test11  )� B ��AAvv         black �  N q     Ort  85,120        
>  
  � Test329  )� B ��AA��         black � � �     Ort  460,135        
>  
  	� Test660  )� B ��AA��         black �  ?      Ort  70,30        
>  
  � Test129  )� B ��AADD         black �  0     Ort  55,285        
>  
  	 Test438  )� B ��AA||         black �  �      Ort  190,30        
>  
  � Test413  )� B ��AA//         black � k D     Ort  370,75        
>  
  � Test64  )� B ��AA}}         black � / &     Ort  310,45        
>  
  	R Test519  )� B ��AA��         black �  � b     Ort  160,105        
>  
  O Test260  )� B ��AA��         black � �C     Ort  475,330        
>  
  X Test13  )� B ��AA         black �  �%     Ort  220,300        
>  
  	! Test470  )� B ��AA��         black � M4     Ort  340,315        
>  
  P Test261  )� B ��AA��         black � �%     Ort  400,300        
>  
  � Test174  )� B ��AA22         black � z      Ort  385,30        
>  
  ^ Test275  )� B ��AA��         black �  { S     Ort  130,90        
>  
  
7 Test748  )� B ��AA��         black � � &     Ort  415,45        
>  
  	� Test582  )� B ��AA))         black � � �     Ort  460,180        
>  
  < Test241  )� B ��AA��         black � � �     Ort  400,150        
>  
  � Test346  )� B ��AAcc         black � � �     Ort  490,255        
>  
  � Test362  )� B ��AA��         black � � &     Ort  460,45        
>  
  d Test281  )� B ��AAJJ         black �  � �     Ort  160,210        
>  
  � Test321  )� B ��AA��         black �  � 5     Ort  190,60        
>  
  	N Test515  )� B ��AA��         black � / �     Ort  310,225        
>  
  	 Test460  )� B ��AA��         black �  { �     Ort  130,165        
>  
  � Test161  )� B ��AA��         black � � 5     Ort  415,60        
>  
  	� Test615  )� B ��AAJJ         black � �%     Ort  430,300        
>  
  � Test90  )� B ��AA         black �  ?     Ort  70,285        
>  
  N Test259  )� B ��AA��         black � z q     Ort  385,120        
>  
  
+ Test736  )� B ��AA

         black �  N%     Ort  85,300        
>  
  
5 Test746  )� B ��AA{{         black �  � D     Ort  145,75        
>  
  � Test53  )� B ��AA��         black � / �     Ort  310,165        
>  
  � Test414  )� B ��AA         black � �     Ort  445,270        
>  
  
 Test704  )� B ��AA��         black �  � &     Ort  220,45        
>  
  " Test215  )� B ��AA��         black � � �     Ort  430,165        
>  
  	� Test678  )� B ��AA��         black �  { �     Ort  130,180        
>  
  	� Test576  )� B ��AApp         black � > �     Ort  325,165        
>  
   Test205  )� B ��AAOO         black �  �     Ort  280,135        
>  
  � Test82  )� B ��AA��         black �  � �     Ort  205,180        
>  
  	� Test659  )� B ��AAcc         black � z D     Ort  385,75        
>  
  	  Test469  )� B ��AA         black �  {     Ort  130,270        
>  
  � Test391  )� B ��AArr         black �  � D     Ort  235,75        
>  
  	\ Test529  )� B ��AAFF         black �  { �     Ort  130,255        
>  
  	� Test628  )� B ��AA((         black �  � �     Ort  175,210        
>  
  	� Test654  )� B ��AAYY         black �  �%     Ort  160,300        
>  
  n Test291  )� B ��AA         black �  ] �     Ort  100,255        
>  
  	� Test569  )� B ��AA��         black �  � S     Ort  220,90        
>  
  � Test160  )� B ��AA         black �  �C     Ort  235,330        
>  
  n Test35  )� B ��AA((         black �  S     Ort  265,90        
>  
  \ Test273  )� B ��AA��         black � >      Ort  325,30        
>  
  � Test316  )� B ��AA||         black � �     Ort  430,390        
>  
  � Test343  )� B ��AA         black � � �     Ort  490,180        
>  
  	� Test594  )� B ��AA��         black � �R     Ort  490,345        
>  
  x Test301  )� B ��AA��         black �  N4     Ort  85,315        
>  
  	� Test642  )� B ��AA��         black �  l �     Ort  115,255        
>  
  	3 Test488  )� B ��AA��         black �  �     Ort  280,210        
>  
  � Test130  )� B ��AA''         black �  � �     Ort  160,255        
>  
  	� Test665  )� B ��AASS         black �  �     Ort  280,240        
>  
  � Test128  )� B ��AA��         black �  D     Ort  280,75        
>  
  		 Test446  )� B ��AA��         black �  ?C     Ort  70,330        
>  
  z Test47  )� B ��AA��         black �  C     Ort  295,330        
>  
  	� Test680  )� B ��AA         black �  � �     Ort  235,165        
>  
  d Test25  )� B ��AA         black �  � �     Ort  160,195        
>  
  	' Test476  )� B ��AAGG         black �  �%     Ort  205,300        
>  
  � Test110  )� B ��AA��         black �  �     Ort  265,165        
>  
  � Test406  )� B ��AAzz         black � � �     Ort  430,255        
>  
  	b Test535  )� B ��AA::         black � p     Ort  280,375        
>  
  � Test416  )� B ��AA         black � �C     Ort  415,330        
>  
  	� Test608  )� B ��AA��         black �  �C     Ort  205,330        
>  
  � Test166  )� B ��AA>>         black �  { q     Ort  130,120        
>  
  
 Test711  )� B ��AA--         black �  5     Ort  265,60        
>  
  � Test333  )� B ��AA��         black �  N b     Ort  85,105        
>  
  � Test345  )� B ��AA         black �  �4     Ort  220,315        
>  
  	� Test585  )� B ��AA��         black �   q     Ort  295,120        
>  
  � Test124  )� B ��AA         black �  � �     Ort  220,240        
>  
  � Test73  )� B ��AA��         black �  N     Ort  85,390        
>  
  � Test404  )� B ��AAZZ         black � �4     Ort  415,315        
>  
  � Test171  )� B ��AA��         black � � �     Ort  475,150        
>  
  
  Test693  )� B ��AA��         black � k q     Ort  370,120        
>  
  � Test341  )� B ��AA��         black � �C     Ort  430,330        
>  
  � Test163  )� B ��AA           black � �p     Ort  430,375        
>  
  b Test279  )� B ��AA��         black � �R     Ort  400,345        
>  
  	z Test559  )� B ��AA��         black �  ] �     Ort  100,135        
>  
  � Test105  )� B ��AA��         black �  {%     Ort  130,300        
>  
  4 Test233  )� B ��AA��         black � M      Ort  340,30        
>  
  � Test351  )� B ��AAJJ         black �  � �     Ort  160,135        
>  
  	� Test638  )� B ��AA��         black � / �     Ort  310,135        
>  
  � Test98  )� B ��AAkk         black �  0 b     Ort  55,105        
>  
  
 Test698  )� B ��AA         black �  l4     Ort  115,315        
>  
  � Test117  )� B ��AAJJ         black � \ &     Ort  355,45        
>  
  � Test176  )� B ��AAbb         black �  �4     Ort  190,315        
>  
  Y Test14  )� B ��AA88         black � kp     Ort  370,375        
>  
  	d Test537  )� B ��AA��         black �  � �     Ort  250,225        
>  
  � Test63  )� B ��AA         black �  �      Ort  205,30        
>  
  
6 Test747  )� B ��AA��         black � � �     Ort  430,135        
>  
  � Test381  )� B ��AA         black �  � �     Ort  205,165        
>  
  T Test9  )� B ��AA33         black �  � �     Ort  235,150        
>  
  	m Test546  )� B ��AA}}         black � \      Ort  355,30        
>  
  	� Test670  )� B ��AA��         black � � D     Ort  460,75        
>  
  
 Test715  )� B ��AA         black � � �     Ort  415,180        
>  
   Test210  )� B ��AA         black �  � �     Ort  190,240        
>  
  � Test365  )� B ��AA��         black � M &     Ort  340,45        
>  
  � Test436  )� B ��AA��         black � \     Ort  355,390        
>  
  	# Test472  )� B ��AA         black �  � �     Ort  250,180        
>  
  
& Test731  )� B ��AA��         black �  �     Ort  220,285        
>  
  	9 Test494  )� B ��AA((         black � � �     Ort  490,135        
>  
  	t Test553  )� B ��AA��         black �  � q     Ort  175,120        
>  
  f Test283  )� B ��AA--         black �  � 5     Ort  175,60        
>  
  	� Test593  )� B ��AAvv         black �  { �     Ort  130,150        
>  
  g Test284  )� B ��AA��         black � �      Ort  400,30        
>  
  	f Test539  )� B ��AArr         black � �p     Ort  460,375        
>  
  	0 Test485  )� B ��AA         black �  l �     Ort  115,180        
>  
  b Test23  )� B ��AACC         black �  0p     Ort  55,375        
>  
  	� Test653  )� B ��AA��         black � M �     Ort  340,135        
>  
  	� Test624  )� B ��AA��         black � \C     Ort  355,330        
>  
  	H Test509  )� B ��AA~~         black � � �     Ort  415,150        
>  
  p Test293  )� B ��AA��         black �  �      Ort  175,30        
>  
  � Test322  )� B ��AAYY         black �  �     Ort  205,270        
>  
  I Test254  )� B ��AA>>         black �  �     Ort  235,285        
>  
  	p Test549  )� B ��AA		         black � � �     Ort  430,240        
>  
  
 Test716  )� B ��AAqq         black � � �     Ort  475,180        
>  
  
 Test719  )� B ��AA��         black � / �     Ort  310,195        
>  
  	� Test672  )� B ��AA��         black �  4     Ort  295,315        
>  
  � Test126  )� B ��AA}}         black �  �      Ort  145,30        
>  
  6 Test235  )� B ��AA!!         black � M     Ort  340,270        
>  
  L Test257  )� B ��AA��         black �  �a     Ort  160,360        
>  
  � Test70  )� B ��AA��         black � zC     Ort  385,330        
>  
  � Test364  )� B ��AA��         black �  0 �     Ort  55,255        
>  
  	 Test441  )� B ��AA��         black � k     Ort  370,285        
>  
  S Test264  )� B ��AAoo         black �  � S     Ort  250,90        
>  
  � Test65  )� B ��AA��         black �  �p     Ort  190,375        
>  
  	� Test649  )� B ��AA��         black � � �     Ort  460,150        
>  
  
 Test709  )� B ��AA         black �  � �     Ort  205,150        
>  
  � Test152  )� B ��AAyy         black �  � q     Ort  220,120        
>  
  y Test302  )� B ��AA��         black �  � �     Ort  175,165        
>  
  � Test67  )� B ��AAgg         black �  0 �     Ort  55,210        
>  
  � Test378  )� B ��AApp         black �  � �     Ort  175,135        
>  
  	 Test564  )� B ��AA         black �  l �     Ort  115,240        
>  
  	= Test498  )� B ��AA||         black � z �     Ort  385,255        
>  
  k Test288  )� B ��AA%%         black � >     Ort  325,285        
>  
  	� Test580  )� B ��AA$$         black �  { �     Ort  130,135        
>  
   Test206  )� B ��AA��         black � � �     Ort  430,225        
>  
  	 Test449  )� B ��AA��         black �  { �     Ort  130,240        
>  
  	S Test520  )� B ��AA         black �  �     Ort  250,285        
>  
  � Test369  )� B ��AA]]         black �  N �     Ort  85,210        
>  
  	� Test590  )� B ��AALL         black � /a     Ort  310,360        
>  
  Y Test270  )� B ��AA

         black � \ �     Ort  355,210        
>  
  � Test397  )� B ��AA\\         black �  ? q     Ort  70,120        
>  
  	� Test595  )� B ��AA��         black �   &     Ort  295,45        
>  
  	� Test663  )� B ��AA""         black �  � �     Ort  145,180        
>  
  � Test108  )� B ��AABB         black � >C     Ort  325,330        
>  
  � Test379  )� B ��AA��         black � � �     Ort  430,210        
>  
  	u Test554  )� B ��AA��         black �  �     Ort  145,270        
>  
  	� Test636  )� B ��AA         black � k b     Ort  370,105        
>  
  	� Test622  )� B ��AA��         black � MR     Ort  340,345        
>  
  
 Test723  )� B ��AA         black �  � �     Ort  235,180        
>  
  
. Test739  )� B ��AAOO         black �  � �     Ort  235,255        
>  
  � Test396  )� B ��AA��         black � � �     Ort  490,225        
>  
  	 Test467  )� B ��AAWW         black �  ]     Ort  100,390        
>  
  	U Test522  )� B ��AA��         black � �     Ort  415,390        
>  
  	� Test611  )� B ��AAll         black � � q     Ort  430,120        
>  
  
  Test725  )� B ��AA##         black � / S     Ort  310,90        
>  
  � Test347  )� B ��AA��         black � � &     Ort  430,45        
>  
  	� Test612  )� B ��AA��         black � %     Ort  280,300        
>  
  	� Test617  )� B ��AA��         black � z%     Ort  385,300        
>  
  	: Test495  )� B ��AA��         black �  l �     Ort  115,135        
>  
  � Test317  )� B ��AA         black �   �     Ort  295,255        
>  
  	| Test561  )� B ��AARR         black �  ? �     Ort  70,195        
>  
  	 Test461  )� B ��AAAA         black � � S     Ort  490,90        
>  
  	� Test690  )� B ��AA��         black �  � �     Ort  190,225        
>  
  
% Test730  )� B ��AArr         black �  { b     Ort  130,105        
>  
  ~ Test51  )� B ��AA��         black �  0 q     Ort  55,120        
>  
  	h Test541  )� B ��AA��         black � � �     Ort  460,255        
>  
  	� Test648  )� B ��AA         black �  N �     Ort  85,165        
>  
  � Test122  )� B ��AA��         black �  &     Ort  265,45        
>  
  M Test258  )� B ��AA��         black � �      Ort  430,30        
>  
  0 Test229  )� B ��AA��         black � � S     Ort  475,90        
>  
  	V Test523  )� B ��AA��         black � � �     Ort  475,210        
>  
  = Test242  )� B ��AA))         black �  � �     Ort  205,195        
>  
  J Test255  )� B ��AA��         black � / q     Ort  310,120        
>  
  S Test8  )� B ��AA         black � �4     Ort  490,315        
>  
  � Test435  )� B ��AA         black �  � 5     Ort  205,60        
>  
  1 Test230  )� B ��AA��         black �  � �     Ort  175,255        
>  
  	� Test623  )� B ��AA��         black �  � �     Ort  190,180        
>  
  	� Test639  )� B ��AA��         black �  �p     Ort  175,375        
>  
  � Test147  )� B ��AA��         black �  � �     Ort  145,210        
>  
  	� Test644  )� B ��AA00         black � � �     Ort  415,255        
>  
  } Test306  )� B ��AA��         black �  l �     Ort  115,165        
>  
   Test203  )� B ��AA��         black � � �     Ort  490,240        
>  
  � Test360  )� B ��AA��         black �  l D     Ort  115,75        
>  
  � Test336  )� B ��AA��         black �  � �     Ort  160,165        
>  
  � Test392  )� B ��AA��         black � �      Ort  460,30        
>  
  * Test223  )� B ��AA^^         black � / b     Ort  310,105        
>  
  	J Test511  )� B ��AA��         black � k �     Ort  370,180        
>  
  � Test93  )� B ��AAff         black �  { �     Ort  130,210        
>  
  � Test116  )� B ��AA\\         black � �     Ort  445,285        
>  
  	 Test457  )� B ��AA         black �  l �     Ort  115,150        
>  
  � Test430  )� B ��AANN         black � � �     Ort  445,180        
>  
  T Test265  )� B ��AA00         black � � �     Ort  490,195        
>  
  � Test66  )� B ��AA��         black �  � D     Ort  205,75        
>  
  C Test248  )� B ��AA��         black �  � �     Ort  190,150        
>  
  � Test58  )� B ��AAbb         black � � q     Ort  475,120        
>  
  	� Test657  )� B ��AA��         black � %     Ort  265,300        
>  
  	� Test682  )� B ��AAnn         black �  � D     Ort  190,75        
>  
  	� Test573  )� B ��AA         black �  l �     Ort  115,225        
>  
  	� Test609  )� B ��AA??         black �  � �     Ort  160,150        
>  
  	� Test677  )� B ��AA         black �  �a     Ort  190,360        
>  
  	  Test437  )� B ��AAHH         black �  �     Ort  280,255        
>  
  � Test94  )� B ��AAWW         black � M D     Ort  340,75        
>  
  & Test219  )� B ��AA         black �  �     Ort  160,285        
>  
  	Y Test526  )� B ��AAee         black � � �     Ort  460,165        
>  
  A Test246  )� B ��AA��         black � �R     Ort  445,345        
>  
  	[ Test528  )� B ��AAGG         black �  �      Ort  235,30        
>  
  � Test145  )� B ��AAnn         black �  0     Ort  55,270        
>  
  	x Test557  )� B ��AA��         black �  ? D     Ort  70,75        
>  
  	� Test686  )� B ��AA��         black � > &     Ort  325,45        
>  
  	+ Test480  )� B ��AA

         black � � 5     Ort  445,60        
>  
  � Test76  )� B ��AA��         black �  ?%     Ort  70,300        
>  
  	 Test455  )� B ��AA��         black � �     Ort  400,285        
>  
  	4 Test489  )� B ��AAdd         black �  � &     Ort  205,45        
>  
  � Test101  )� B ��AA��         black �  l �     Ort  115,195        
>  
  � Test159  )� B ��AA��         black � z �     Ort  385,195        
>  
  	� Test577  )� B ��AA44         black �  � q     Ort  205,120        
>  
   Test200  )� B ��AA��         black �  � �     Ort  205,255        
>  
   Test189  )� B ��AAUU         black � �     Ort  460,270        
>  
  + Test224  )� B ��AA��         black � zp     Ort  385,375        
>  
   Test182  )� B ��AA         black �  � q     Ort  250,120        
>  
  � Test337  )� B ��AA         black �  � 5     Ort  235,60        
>  
  
 Test721  )� B ��AA��         black �  � �     Ort  220,225        
>  
  	� Test632  )� B ��AA         black � � �     Ort  445,210        
>  
  . Test227  )� B ��AA��         black �  �%     Ort  250,300        
>  
  	e Test538  )� B ��AA++         black �  � &     Ort  250,45        
>  
  � Test111  )� B ��AA��         black �  0C     Ort  55,330        
>  
  � Test419  )� B ��AA��         black � k &     Ort  370,45        
>  
  � Test142  )� B ��AA11         black � � �     Ort  490,165        
>  
  o Test292  )� B ��AA��         black �  � �     Ort  190,195        
>  
  	 Test462  )� B ��AA��         black �  � �     Ort  205,240        
>  
  	" Test471  )� B ��AA33         black �  � �     Ort  205,225        
>  
  s Test40  )� B ��AAGG         black �  � S     Ort  160,90        
>  
  
/ Test740  )� B ��AAmm         black �  ] �     Ort  100,240        
>  
  � Test134  )� B ��AA55         black �  � �     Ort  145,225        
>  
   Test209  )� B ��AA--         black � M �     Ort  340,225        
>  
  � Test332  )� B ��AA--         black � > �     Ort  325,225        
>  
  p Test37  )� B ��AA��         black � > 5     Ort  325,60        
>  
  � Test422  )� B ��AA..         black �  0 �     Ort  55,165        
>  
  � Test361  )� B ��AA==         black �  ] �     Ort  100,225        
>  
  � Test432  )� B ��AA��         black � � �     Ort  400,135        
>  
  � Test326  )� B ��AA��         black �  0 �     Ort  55,240        
>  
  ) Test222  )� B ��AA         black � � �     Ort  460,225        
>  
  ( Test221  )� B ��AA��         black �  �     Ort  190,390        
>  
  
 Test724  )� B ��AA��         black � � �     Ort  445,225        
>  
  � Test318  )� B ��AA��         black �  � &     Ort  235,45        
>  
  	� Test675  )� B ��AA��         black �  �     Ort  265,150        
>  
  	P Test517  )� B ��AA��         black �  � �     Ort  175,150        
>  
  � Test140  )� B ��AA��         black �  ? �     Ort  70,180        
>  
  � Test363  )� B ��AA��         black �  0R     Ort  55,345        
>  
  � Test405  )� B ��AAqq         black �  ?p     Ort  70,375        
>  
  ' Test220  )� B ��AADD         black � z S     Ort  385,90        
>  
  	 Test445  )� B ��AA55         black �  � b     Ort  205,105        
>  
  Q Test6  )� B ��AA��         black � � D     Ort  445,75        
>  
  	� Test601  )� B ��AA��         black � 4     Ort  280,315        
>  
  	r Test551  )� B ��AA��         black �  � q     Ort  190,120        
>  
  e Test282  )� B ��AAbb         black � z �     Ort  385,240        
>  
  � Test403  )� B ��AA��         black �   �     Ort  295,195        
>  
  	� Test658  )� B ��AAss         black �      Ort  265,270        
>  
  	� Test674  )� B ��AA��         black � \ 5     Ort  355,60        
>  
  
 Test722  )� B ��AA��         black �  0 �     Ort  55,135        
>  
  w Test300  )� B ��AA         black �  N     Ort  85,285        
>  
  � Test410  )� B ��AA��         black � � q     Ort  460,120        
>  
  � Test180  )� B ��AA         black � Ma     Ort  340,360        
>  
  � Test83  )� B ��AAqq         black �  � q     Ort  235,120        
>  
  	I Test510  )� B ��AA         black �  04     Ort  55,315        
>  
  ^ Test19  )� B ��AA         black �  � �     Ort  190,165        
>  
  @ Test245  )� B ��AA##         black � � �     Ort  490,150        
>  
  	� Test579  )� B ��AAGG         black �  q     Ort  265,120        
>  
  N Test3  )� B ��AAff         black �  �R     Ort  250,345        
>  
  	� Test681  )� B ��AALL         black � �     Ort  445,390        
>  
  
! Test726  )� B ��AA77         black �  � 5     Ort  220,60        
>  
  	� Test655  )� B ��AA��         black �  � �     Ort  175,195        
>  
  � Test125  )� B ��AA}}         black � �C     Ort  490,330        
>  
  	, Test481  )� B ��AAll         black � M b     Ort  340,105        
>  
  	 Test456  )� B ��AA��         black � M �     Ort  340,195        
>  
  
 Test695  )� B ��AA��         black � k �     Ort  370,210        
>  
  	� Test669  )� B ��AAff         black �  l &     Ort  115,45        
>  
  � Test135  )� B ��AA��         black �  { �     Ort  130,225        
>  
  ` Test277  )� B ��AA��         black �  &     Ort  280,45        
>  
  � Test121  )� B ��AAgg         black �  ] �     Ort  100,165        
>  
  � Test310  )� B ��AA��         black �  �%     Ort  190,300        
>  
  - Test226  )� B ��AA��         black � � �     Ort  475,135        
>  
  	� Test572  )� B ��AA         black �  � q     Ort  160,120        
>  
  	o Test548  )� B ��AA��         black �  � &     Ort  175,45        
>  
  � Test324  )� B ��AA         black �       Ort  295,285        
>  
  
0 Test741  )� B ��AA��         black � M �     Ort  340,240        
>  
  j Test31  )� B ��AA>>         black � � �     Ort  400,195        
>  
  	 Test468  )� B ��AA��         black �  �%     Ort  235,300        
>  
  L Test1  )� B ��AAJJ         black �  � �     Ort  145,255        
>  
  � Test398  )� B ��AA//         black � � �     Ort  460,210        
>  
  � Test431  )� B ��AA��         black �  ] q     Ort  100,120        
>  
  s Test296  )� B ��AA88         black �  0      Ort  55,30        
>  
  	k Test544  )� B ��AA��         black � \ �     Ort  355,135        
>  
  � Test367  )� B ��AA88         black � /     Ort  310,390        
>  
  � Test355  )� B ��AA��         black � kR     Ort  370,345        
>  
  	) Test478  )� B ��AA��         black �  N &     Ort  85,45        
>  
  	
 Test447  )� B ��AA��         black � \ �     Ort  355,240        
>  
  	% Test474  )� B ��AA��         black � k �     Ort  370,225        
>  
  X Test269  )� B ��AA��         black �  l     Ort  115,285        
>  
  	� Test566  )� B ��AA         black �  �     Ort  175,390        
>  
  � Test155  )� B ��AA^^         black �  q     Ort  280,120        
>  
  � Test158  )� B ��AA��         black �  �a     Ort  235,360        
>  
  	{ Test560  )� B ��AA@@         black �  ? S     Ort  70,90        
>  
  � Test340  )� B ��AA��         black � �      Ort  415,30        
>  
  
 Test706  )� B ��AANN         black �  �C     Ort  145,330        
>  
  	 Test443  )� B ��AA         black � �4     Ort  400,315        
>  
  	X Test525  )� B ��AA��         black � �C     Ort  460,330        
>  
  	� Test645  )� B ��AA��         black �  �     Ort  265,240        
>  
  	& Test475  )� B ��AA��         black � �p     Ort  490,375        
>  
  	_ Test532  )� B ��AA((         black �  ] �     Ort  100,150        
>  
  	8 Test493  )� B ��AA��         black � > �     Ort  325,150        
>  
  � Test434  )� B ��AA��         black � /C     Ort  310,330        
>  
  	g Test540  )� B ��AA��         black �  {C     Ort  130,330        
>  
  
 Test701  )� B ��AA��         black � >R     Ort  325,345        
>  
  � Test356  )� B ��AAvv         black �  �     Ort  265,225        
>  
  � Test354  )� B ��AA         black �  { &     Ort  130,45        
>  
  	a Test534  )� B ��AA         black �  ]%     Ort  100,300        
>  
  � Test79  )� B ��AA��         black �  � �     Ort  145,240        
>  
  � Test77  )� B ��AA��         black � � �     Ort  445,255        
>  
  	 Test439  )� B ��AA��         black �  N �     Ort  85,195        
>  
  	� Test685  )� B ��AA@@         black �   �     Ort  295,135        
>  
  � Test141  )� B ��AAbb         black � � b     Ort  400,105        
>  
  	( Test477  )� B ��AA��         black � k �     Ort  370,240        
>  
   Test207  )� B ��AA��         black �  �     Ort  175,285        
>  
  _ Test276  )� B ��AA         black � �p     Ort  400,375        
>  
   Test204  )� B ��AA��         black �  lp     Ort  115,375        
>  
  � Test417  )� B ��AA��         black � � �     Ort  475,240        
>  
  	~ Test563  )� B ��AA��         black �  ] D     Ort  100,75        
>  
  $ Test217  )� B ��AAEE         black � M �     Ort  340,165        
>  
  � Test165  )� B ��AA77         black � �R     Ort  430,345        
>  
  
 Test700  )� B ��AA

         black � � &     Ort  400,45        
>  
  � Test353  )� B ��AA         black �  � �     Ort  145,195        
>  
  � Test85  )� B ��AA��         black �  �     Ort  205,285        
>  
  � Test349  )� B ��AAxx         black � / �     Ort  310,240        
>  
  � Test168  )� B ��AA��         black �      Ort  265,390        
>  
  } Test50  )� B ��AAII         black � �a     Ort  460,360        
>  
  	� Test586  )� B ��AAtt         black � �p     Ort  415,375        
>  
  	� Test630  )� B ��AA^^         black �  0 �     Ort  55,195        
>  
  i Test30  )� B ��AAaa         black �  � S     Ort  175,90        
>  
  	� Test607  )� B ��AA��         black �  ? �     Ort  70,150        
>  
  � Test177  )� B ��AA��         black �  �     Ort  160,270        
>  
  � Test156  )� B ��AAEE         black � � �     Ort  430,150        
>  
  � Test75  )� B ��AA��         black � k     Ort  370,270        
>  
  	 Test458  )� B ��AA		         black �  � �     Ort  235,135        
>  
  	� Test596  )� B ��AAvv         black �  �a     Ort  205,360        
>  
  � Test311  )� B ��AA&&         black � � S     Ort  445,90        
>  
  K Test256  )� B ��AA��         black �   �     Ort  295,225        
>  
  
 Test707  )� B ��AA��         black �  0 �     Ort  55,150        
>  
  � Test409  )� B ��AA��         black � �4     Ort  460,315        
>  
  	y Test558  )� B ��AA��         black �  �     Ort  250,270        
>  
  � Test315  )� B ��AA��         black �  ]     Ort  100,270        
>  
  � Test175  )� B ��AA��         black � �     Ort  475,390        
>  
  � Test388  )� B ��AAPP         black � k4     Ort  370,315        
>  
  � Test109  )� B ��AA++         black �  � �     Ort  160,180        
>  
  Q Test262  )� B ��AAmm         black �  �C     Ort  250,330        
>  
  [ Test16  )� B ��AA��         black � �     Ort  430,270        
>  
  � Test115  )� B ��AA		         black � � �     Ort  460,195        
>  
  � Test127  )� B ��AAgg         black �  �C     Ort  220,330        
>  
  	� Test692  )� B ��AA��         black � � 5     Ort  400,60        
>  
  W Test268  )� B ��AA}}         black � �R     Ort  415,345        
>  
   Test202  )� B ��AAPP         black � � &     Ort  445,45        
>  
  l Test289  )� B ��AA##         black � �4     Ort  445,315        
>  
  � Test327  )� B ��AAll         black � �     Ort  490,270        
>  
  � Test54  )� B ��AA??         black �  ?a     Ort  70,360        
>  
  � Test162  )� B ��AA%%         black � zR     Ort  385,345        
>  
  	T Test521  )� B ��AA``         black �  N �     Ort  85,240        
>  
  : Test239  )� B ��AA��         black �  �     Ort  250,390        
>  
  	 Test453  )� B ��AA��         black �  �     Ort  145,285        
>  
  
, Test737  )� B ��AA��         black �  Np     Ort  85,375        
>  
  r Test39  )� B ��AA         black �  {      Ort  130,30        
>  
  	B Test503  )� B ��AA((         black � z �     Ort  385,210        
>  
  	� Test646  )� B ��AA��         black �  � 5     Ort  250,60        
>  
  � Test57  )� B ��AA��         black � \     Ort  355,270        
>  
  � Test69  )� B ��AAXX         black � M     Ort  340,285        
>  
  � Test377  )� B ��AA��         black � \ �     Ort  355,165        
>  
  	� Test604  )� B ��AA//         black �  ] �     Ort  100,210        
>  
  
	 Test702  )� B ��AAyy         black � \ b     Ort  355,105        
>  
  � Test133  )� B ��AAss         black � M     Ort  340,390        
>  
  	; Test496  )� B ��AA��         black �  {R     Ort  130,345        
>  
  | Test305  )� B ��AA��         black �  � �     Ort  205,210        
>  
  � Test387  )� B ��AA``         black � �p     Ort  475,375        
>  
  � Test170  )� B ��AA��         black � ka     Ort  370,360        
>  
  	� Test676  )� B ��AA^^         black � / �     Ort  310,210        
>  
  	G Test508  )� B ��AAQQ         black � > �     Ort  325,255        
>  
  > Test243  )� B ��AA��         black � �R     Ort  475,345        
>  
  , Test225  )� B ��AAWW         black � kC     Ort  370,330        
>  
  	] Test530  )� B ��AA��         black � � &     Ort  490,45        
>  
  	? Test500  )� B ��AAvv         black �  �%     Ort  145,300        
>  
  � Test62  )� B ��AA��         black �  �C     Ort  160,330        
>  
  	1 Test486  )� B ��AA         black � Mp     Ort  340,375        
>  
   Test193  )� B ��AA��         black �  ? 5     Ort  70,60        
>  
  	� Test643  )� B ��AAgg         black �  �R     Ort  145,345        
>  
  � Test352  )� B ��AAkk         black �  �%     Ort  175,300        
>  
  u Test42  )� B ��AA��         black � k S     Ort  370,90        
>  
  	� Test634  )� B ��AA��         black �   b     Ort  295,105        
>  
  	 Test463  )� B ��AA??         black �  ] 5     Ort  100,60        
>  
  � Test421  )� B ��AA((         black �   �     Ort  295,240        
>  
   Test208  )� B ��AA��         black � � D     Ort  430,75        
>  
  � Test120  )� B ��AA��         black � � b     Ort  445,105        
>  
  
1 Test742  )� B ��AA��         black � � b     Ort  430,105        
>  
  ` Test21  )� B ��AAAA         black �  � 5     Ort  145,60        
>  
  c Test280  )� B ��AA��         black �  ? �     Ort  70,225        
>  
  	 Test452  )� B ��AA         black �  �      Ort  250,30        
>  
  � Test395  )� B ��AA��         black � M �     Ort  340,255        
>  
  r Test295  )� B ��AA         black � z     Ort  385,285        
>  
  	� Test629  )� B ��AA��         black � �     Ort  490,285        
>  
  � Test74  )� B ��AA         black � a     Ort  280,360        
>  
  	� Test602  )� B ��AA		         black � > �     Ort  325,135        
>  
  	� Test613  )� B ��AA::         black � > �     Ort  325,180        
>  
  k Test32  )� B ��AABB         black �  {4     Ort  130,315        
>  
  	6 Test491  )� B ��AAtt         black � �     Ort  460,390        
>  
  � Test386  )� B ��AA��         black � � �     Ort  445,135        
>  
  
 Test694  )� B ��AA         black � � &     Ort  475,45        
>  
  	� Test684  )� B ��AA��         black � � �     Ort  490,210        
>  
  	W Test524  )� B ��AA��         black � \ q     Ort  355,120        
>  
  	K Test512  )� B ��AA��         black � �     Ort  475,285        
>  
  	� Test664  )� B ��AAmm         black �  {a     Ort  130,360        
>  
  � Test153  )� B ��AAzz         black �  �     Ort  145,390        
>  
  	s Test552  )� B ��AA��         black �  b     Ort  265,105        
>  
  	` Test533  )� B ��AA{{         black � /%     Ort  310,300        
>  
  
 Test717  )� B ��AA//         black � M%     Ort  340,300        
>  
  � Test87  )� B ��AAss         black � z b     Ort  385,105        
>  
  � Test400  )� B ��AAvv         black �  ?4     Ort  70,315        
>  
  
8 Test749  )� B ��AA         black �  NR     Ort  85,345        
>  
  � Test394  )� B ��AAzz         black � �      Ort  445,30        
>  
  � Test100  )� B ��AA��         black � �%     Ort  445,300        
>  
  	 Test465  )� B ��AANN         black �  �     Ort  220,390        
>  
  	� Test567  )� B ��AA��         black �  �     Ort  265,210        
>  
  	� Test640  )� B ��AA��         black � � �     Ort  475,195        
>  
  	� Test583  )� B ��AA         black � � S     Ort  415,90        
>  
  	2 Test487  )� B ��AA��         black �  �C     Ort  190,330        
>  
  t Test297  )� B ��AA��         black �   �     Ort  295,210        
>  
  
 Test712  )� B ��AAoo         black �  � D     Ort  250,75        
>  
  Z Test271  )� B ��AA         black �  � �     Ort  175,240        
>  
  � Test373  )� B ��AA           black �  �R     Ort  205,345        
>  
  � Test95  )� B ��AAAA         black � k �     Ort  370,135        
>  
  	 Test450  )� B ��AA         black �  �     Ort  235,390        
>  
  	� Test667  )� B ��AAqq         black �  � b     Ort  250,105        
>  
   Test185  )� B ��AA��         black � M q     Ort  340,120        
>  
  	� Test620  )� B ��AA��         black �  ]4     Ort  100,315        
>  
  a Test22  )� B ��AAAA         black � �     Ort  475,270        
>  
  � Test342  )� B ��AA��         black �  �p     Ort  220,375        
>  
  h Test285  )� B ��AA��         black � � b     Ort  475,105        
>  
  	� Test689  )� B ��AA         black � � �     Ort  475,255        
>  
  	� Test592  )� B ��AAcc         black �  � �     Ort  175,225        
>  
  � Test418  )� B ��AAff         black � / �     Ort  310,150        
>  
  V Test267  )� B ��AA��         black � \ �     Ort  355,150        
>  
  	� Test666  )� B ��AAvv         black �  {     Ort  130,390        
>  
  � Test71  )� B ��AAaa         black �  � �     Ort  190,255        
>  
  	� Test570  )� B ��AA��         black � >     Ort  325,390        
>  
  � Test384  )� B ��AA55         black �  � b     Ort  190,105        
>  
  	D Test505  )� B ��AA��         black �  � �     Ort  220,195        
>  
  � Test96  )� B ��AArr         black �  �p     Ort  250,375        
>  
  	� Test651  )� B ��AA��         black � z �     Ort  385,180        
>  
  � Test408  )� B ��AA��         black � /4     Ort  310,315        
>  
  ; Test240  )� B ��AA��         black � \4     Ort  355,315        
>  
  � Test91  )� B ��AAYY         black �  � �     Ort  250,240        
>  
  � Test399  )� B ��AAzz         black �  � S     Ort  235,90        
>  
  h Test29  )� B ��AA��         black �  ? �     Ort  70,135        
>  
  � Test393  )� B ��AA��         black � R     Ort  265,345        
>  
  � Test106  )� B ��AA��         black � � �     Ort  415,210        
>  
  	- Test482  )� B ��AA         black � C     Ort  280,330        
>  
  	� Test631  )� B ��AAGG         black �  � �     Ort  160,240        
>  
  	� Test671  )� B ��AA&&         black �       Ort  295,390        
>  
  	M Test514  )� B ��AAJJ         black �  N S     Ort  85,90        
>  
  	j Test543  )� B ��AA         black �  � &     Ort  145,45        
>  
  	� Test603  )� B ��AA^^         black � �     Ort  400,270        
>  
  	� Test581  )� B ��AA((         black �  ]a     Ort  100,360        
>  
  	� Test575  )� B ��AA         black �  � S     Ort  145,90        
>  
  � Test330  )� B ��AA         black � � �     Ort  415,135        
>  
  � Test143  )� B ��AA��         black � z �     Ort  385,135        
>  
  � Test137  )� B ��AA��         black � 4     Ort  265,315        
>  
  � Test427  )� B ��AA��         black �  ]     Ort  100,285        
>  
   Test198  )� B ��AA||         black �  �     Ort  265,135        
>  
  o Test36  )� B ��AA         black � � b     Ort  415,105        
>  
  � Test112  )� B ��AA��         black � /     Ort  310,285        
>  
  	5 Test490  )� B ��AA||         black � / D     Ort  310,75        
>    a Ask Dialog   ron openCard
end openCard

on preOpenCard
end preOpenCard

on closeCard
end closeCard

on openStack
end openStack
       ��� �               ����     U 
Helvetica   �    	Pqon doresize
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
  set the fieldmode of me to word 2 of item 1 of the dialogData
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
  deleteone
end deleteKey

on backspaceKey
  deleteone
end backspaceKey

on deleteone
  local tpos
  put word 2 of the selectedChunk into tpos
  put empty into character (tpos - 1) of field 3
  star
  select before character (tpos - 1) of field 2
end deleteone

on commandKeyDown which
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
  set the dialogData to numToChar(0)
end closeStack
     �     � �   
fieldmode  plain  a  �  _  \  ]  `
  �   �        0 H                \ OK �L�p on mouseUp
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
  close this stack
  set the dialogData to it
end mouseUp
        Z ^ 2         	  �   ] Cancel �D�p +on mouseUp
  close this stack
end mouseUp
        � \ <         	  � 
  _   �`       0 (H             
  `   
!`       b 8 |         �    a New Button �B�@         $ (              J            	  �   � Answer Dialog  � �on resizeStack
end resizeStack

on openStack
end openStack

on preOpenCard
end preOpenCard

on openCard
end openCard

on closeCard
end closeCard
       �O � d                U 
Helvetica   �    	P	�on preOpenStack
  local foffset, oldwidth, bwidth, twidth, iwidth, theight, curx
  set the itemDelimiter to numToChar(0)
  if word 2 of item 1 of the dialogData is "plain" then
    hide button 1
    put 0 into foffset
  else
    show button 1
    set the icon of button "icon" to word \
        wordOffset(word 2 of item 1 of the dialogData, "error information question warning") of "328 329 330 331"
    put 40 into foffset
  end if
  if item 2 of the dialogData is empty
  then set the title of this stack to space
  else set the title of this stack to item 2 of the dialogData
  put item 3 of dialogData into field 1
  get item 4 of dialogData
  if it is empty then get "OK"
  put the number of lines in it into choices
  put 32 into bwidth
  if choices > the number of buttons - 1
  then put the number of buttons - 1 into choices
  repeat with i = 2 to choices + 1
    show button i
    set the name of button i to line choices - (i - 2) of it
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
  set the dialogData to empty
end closeStack

on mouseUp
  if the name of the target contains "button" then
    close this stack
    set the dialogData to the short name of the target
  end if
end mouseUp
            � d  z  �  �  �  �  �  �  �  �
  �   �@        h             !Rahmenbreite und -farben �ndern?   z icon �@P on mouseUp
end mouseUp
          , (        	  �   � Nein �L�`       � 8 :         	  �   � Ja �D�`       * 6 -         	  �   � Yes �D�`         6 9         	  �   � z �D�`       � 4 '         	  �   � y �D�`       � 4 '         	  �   � x �D�`       i 4 '         	  �   � w �D�`         4 )         	  �   � Moved Icons          � � � �            ����      �    	@           � �  A  �    	@           � �  @  �    	@           � �  8  �    	@           � �  J  A i321  	D           ������     0 0       d� `� `� P� P� H� H� �Ă �� �� �� �� �� �� �� �� �ă H� H� P� P� `� `�    R�  �  � 0� 0� 8� �� �� �� �� �� �� �� �� 8� 0� 0�  �  �    b� `� `� p� p� x� x� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� x� x� p� p� `� `�     @ i320  	D           ������     0 0       d� � � 
� 
� � � #��  � @� @� �� �� @� @�  � #�� � � 
� 
� � �    R� � � � � � �� ?�� ?�� �� �� ?�� ?�� �� � � � � �    b� � � � � � � ?�� ?�� �� �� ��� ��� �� �� ?�� ?�� � � � � � �     8 i568  	D          ������  ������     0 0       x� 8� D� G��   �� " �   O ]�- �9��� ���� �    0 0P `��!�� @� ` ��@  �    
   ���    k� 8� 8� ���  �� t ��� � ]�� @���  �� � �� � �� � ��� �� ���   �� �� ���    Y� "� " � � � � >� ~� �� ���� 
���  �� ?�� ?�� �� _��σ � �    ~� 8� |� �� �� �� �� �� ?�� �� ������������������?������������������?���?�� �� �� ���     J i330  	D  ������  ffffff             0 0       b� �� � � � 0�  �  �  � � � � `� `� �� � � � � � �� � � �    b� �� �� �� � �� � � � � � � � x� �� �� �� � � �� �� ��    \� � � �� � � � � � � � � � � p� �� �� �� @� @� @� ��    {� �� �� �� �� ?�� >� <� <� � � � � ~� �� �� �� �� �� �� �� �� �� �� �� ��    