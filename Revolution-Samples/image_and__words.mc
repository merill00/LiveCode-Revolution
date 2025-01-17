#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                   image_and _words  ��on preopenstack
  hide menubar
  if there is a stack "revMenuBar" then hide stack "revMenuBar"
  if there is a stack "Metacard Menu Bar" then hide stack "Metacard Menu Bar"
  if there is a stack "home" then hide stack "home"
  if there is a stack "revtools" then hide stack "revtools"
  set the decorations of me to empty
  set the loc of this stack to the screenloc
  set the backdrop to black
  set the dontuseqteffects to true
  choose browse tool
  go to cd 1
set the label of btn "Show GUI" of cd "Wordshow" to "Show GUI"
end preopenstack

on closestack
  show menubar
  if there is a stack "Metacard Menu Bar" then show stack "Metacard Menu Bar"
  if there is a stack "home" then show stack "home"
  if there is a stack "revtools" then show stack "revtools"
  if there is a stack "revMenuBar" then show stack "revMenuBar"
  
  set the backdrop to none
  set the decorations of me to default
end closestack
  w         ������  ������  ������ white ������  ������    Kj�              ����     W    W Arial   W    W Arial   W Arial   W Arial   W    W Arial   U    W Arial   W 
helvetica   U Arial   U Arial  
 U Arial   U 
helvetica  
 U 
helvetica   U 
helvetica  
 W Arial       	P Eon openCard
  visual effect dissolve slow
  go to cd 2
end openCard
          black       j�  � 	WordShow   	P �on openCard
  hide fld "Legende"
  set the thumbpos of scrollbar 1 to 3
set the showborder of fld "continuous" to false
set the showborder of fld "manual" to false
end openCard
   ����        j�  �    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �             	  
        6  =  >  o  p  s  t  {  |  }  ~    �  �  �  �  �    � Lernen   	P 0on openCard
  hide fld "Legende"
end openCard

   ff��33        j�  �    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
  2 Testen   	P �on opencard
  set the hilitedbuttonname of group "choose" to "all words"
  send "mouseup" to btn "Start"
end opencard
on closecard
  hide fld "Feedback"
  hide fld "Feedback2"
end closecard
   ����WW        j�                               !  "  #  $  %  &  '  (  )  *    +  -  .  1  7  8  9  <  q  u  v  �  �  �      a loop   	P�on opencard
  send "mouseup" to btn "Start"
end opencard
on closecard
  hide btn "Start"
  hide fld "lob"
end closecard
on mouseup
  global Wort
  put the name of the target into Objektname
  put word 1 of Objektname into Objekt
  if Objekt is not "graphic" then
    put "You did not click at the"&&Wort&"! You clicked at "&CR&"another object that does not belong to the test. Try again." into fld "feedback"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of fld "feedback" to red
    else set the textcolor of word 7 to 8 of fld "feedback" to red
    show fld "Feedback"
  end if
end mouseup
   ������ AntiqueWhite2       j�  ?    @  A  B  C  D  E  F  G  H  I  K  L  M  N  O  P  Q  R  S  T  U  V  J  W  X  Y  Z  \  ]  `  d  e  f  g  ^  h  i  j  r  w  x  �  �  �  �  �  �        � EndTest   	P fon opencard
  send "mouseup" to btn "Start"
end opencard
on closecard
  hide fld "Lob"
end closecard
   ����33        j�  �    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �      � Pumuckl.jpg  	`    @  n _�, Pumuckl.jpg   
  �   �)`       cA��        � --to handle enterpage  --system lernen  --put "aus" into Lernen  --set syslockscreen to true  --hide button "aus"  --show button "an"  --end enterpage    to handle buttonup  (system lernen, WortVar, Fehler, Treffer  conditions  when lernen is "an"   !if target is not field "Anzeige"  4put name of target into the text of field "Anzeige"  end if  when lernen is "aus"  if name of target = "" then  set syslockscreen to true    % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  E put "you didn't click on anything you should learn!" into feedback2  2 put feedback2 into the text of field "feedback2"   hide field "OK"   show field "feedback"   show field "feedback2"   end if  Eif name of target <> "" and name of target <> item 1 of WortVar then   set syslockscreen to true  # increment(text of field "Fehler")  % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  # put name of target into feedback2  : put "you clicked on the " before first char of feedback2  & put "!" after last char of feedback2  2 put feedback2 into the text of field "feedback2"  6 put wordcount(text of field "feedback2") into Laenge   if Laenge is 5 then  G set the strokecolor of word 5 of the text of field "feedback2" to red   end if   if Laenge is 6 then  M set the strokecolor of words 5 to 6 of the text of field "feedback2" to red   end if  L set the strokecolor of last char of the text of field "feedback2" to black   hide field "OK"   show field "feedback"   show field "feedback2"   end if  , if name of target = item 1 of WortVar then   beep 1   set syslockscreen to true   hide field "feedback"   hide field "feedback2"   show field "OK"  $ increment(text of field "Treffer")   set syslockscreen to false   pause 2 seconds  # send buttonup to button "Aufgabe"   end if  end  conditions  end buttonup    to handle rightbuttonup  (system lernen, WortVar, Fehler, Treffer  --conditions  --when lernen is "an"   !if target is not field "Anzeige"  put name of target into Wort    .put the text of field "Lexikon" into Lexikon2  (put textlinecount(Lexikon2) into Anzahl  step i from 1 to Anzahl   4 put item 1 of textline i of Lexikon2 into Suchwort   if Wort is Suchwort then  N   put item 2 of textline i of Lexikon2 into the Text of field "Uebersetzung"     break step   end if  	end step  show field "Uebersetzung"  pause 2 seconds  hide field "uebersetzung"  end if    end rightbuttonup     �    	`    @ B �   � 
right eye   KD          ����ff  �  � �     trans  rechtes Auge      h  � 	left eye   KD          ����ff  �  �     trans  linkes Auge      h  � nose   KD          ����ff  �  �     trans  Nase      h  � television set   KB  ����ff  � � � r �   trans  	Fernseher         � ������ �� �� �  � remote control   KB  ��ffff  � Hc .    trans  Fernbedienung         Hma{uxvp\cHfHm
  � Legende  h   2 ������  dddddd  ������  @  � , � &        � mouth - Mund   � 
right ear   KC  ����ff  �  � �     trans  rechtes Ohr      g � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � 	left ear   KC  ����ff  � - �     trans  
linkes Ohr      P6 �5 �4 �3 �2 �2 �2 �1 �1 �1 �1 �0 �0 �0 �/ �/ �/ �/ �/ �/ �/ �. �. �. �. �- �- �- �- �- �- �. �/ �/ �0 �1 �2 �3 �4 �4 �5 �6 �6 �7 �8 �8 �9 �9 �9 �: �: �; �< �< �= �= �= �= �= �> �> �> �> �> �> �= �= �= �< �< �; �: �: �9 �8 �7 �7 �6 �5 �4 �  � mouth   KC  ����ff  �  �     trans  Mund      F � � � � � � � �
 �
 �
 �	 �	 � � � � � � � � � � � � � � � � � � � �	 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � 
left hand   KC  ����ff  �  � �     trans  
linke Hand      Z
 �	 � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � �	 �
 �
 �
 �	 �  � right hand   KC  ����ff  �  �     trans  rechte Hand      N � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � �	 �  � right cheek   KD  ����ff  �  � �     trans  rechte Wange      h  � left cheek   KD  ����ff  �  �     trans  linke Wange      h  � chin   KC  ����ff  �  �     trans  Kinn      < � � � �	 �
 �
 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � � � �	 �  � jug   KC  ����ff  � � c 3 ;   trans  Krug      �� e� e� e� e� e� e� e� f� f� g� g� h� h� i� k� l� m� n� o� p� q� r� s� t� t� u� u� v� w� w� x� x� y� z� {� {� |� }� }� ~� � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � ~� }� |� {� z� y� x� w� v� v� u� t� t� s� r� q� p� p� o� n� m� l� k� i� h� g� g� f� e� e� d� d� d� d� d� d� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� d� d� d� e� e� e� f    pants   KC  ����ff  �  � : >   trans  Hose     ( � � � � � � � � � �  �! �" �# �$ �% �& �' �( �) �* �+ �, �, �- �. �/ �0 �1 �2 �3 �4 �5 �5 �6 �7 �8 �9 �: �; �< �= �> �? �@ �A �B �C �D �E �F �G �G �H �I �J �K �L �L �M �M �M �N �N �N �O �O �P �P �P �P P QQQQQQRRR	R
R
Q
P
O
NNMLKJJIHGFEDCBA@?>==<;::98766543210//.//0123456789:;<=>?@ABCDEFGHIJJKLLMNNNNOOOPPPPPPPPPPO O!O"N#N#M$M$L%K%J%I%H&H&G&F&E&D&C'C'B'A'@'?'>'='<';':'9'8'7(6(4(3(2(1(0(/(.(-(,)+)*)))()')&*%*$*#*"*!* *********)('&&%%$##"!   � � � � � � � � � � � � � � � � � � � � �   	pullover   KC  ����ff  �  � � C 3   trans  Pullover     # � � � � � � � � �  � � � � � � � � � � � � � � � � �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � �  �! �" �" �# �# �# �# �$ �$ �# �# �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 �	 �	 � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � 	 !')*+,,,,,,,,++++,,,-
.	..//////00 0 �0 �0 �0 �0 �0 �/ �/ �. �. �- �- �, �, �, �+ �* �* �) �( �( �' �' �& �& �% �% �$ �# �" �  � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � �   right foot   KC  ����ff  �  �S ! "   trans  rechter Fu�      |TUVWXXYZ[ [ \ �\ �] �^ �^ �_ �` �a �a �b �b �c �d �e �e �f �g �h �h �h �i �i �j �j �k �k �l �l �l �m �n �o �p �q �q �r �s �t �t �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u uuuuuuuu	u
uuutsrqponmlkjihhgfe
e
d	c	b	a	``_^]\[ZYXWVUTSSSSSTT   
left foot   KC  ����ff  � R  &   trans  
linker Fu�      �TUVWWXYZ[\\]^_`abcddefghijklmnopqrsstuuuvvwwwxxxxwwvu u!u"u#u$u%u&u'u(v)v*v+v,v-v.v/v0v0u1u2u2t2s2r2q2p2o2n1n1m0m0l0k/k/j/i.i.h-h-g,g+g+f*f*e)e)d(d'c&c&b%b%a$a#`"`"_!_!^ ]\[ZYYXWVUTSSSSRRSTUVWXYZ[\   hair   KC  ����ff  �  � ` � �   trans  Haar      � c � d � e � f � g � h � i � j � k � k � l � m � n � o � p � q � r � r � s � t � t � t � t � t � t � t � t � t � u � u � u � v � v � v � v � v � w � w � w � x � x � y � y � y � z � z � z � { � { � | � | � | � } � } � } � ~ � ~ �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 �	 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �# �# �$ �$ �% �% �& �& �' �' �' �' �' �' �( �( �( �( �) �) �) �) �) �* �* �* �+ �+ �+ �+ �+ �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �, �, �, �+ �* �) �) �( �' �& �% �$ �# �# �" �! �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �# �# �# �$ �% �& �& �' �' �( �) �) �* �* �+ �+ �+ �, �, �- �- �- �. �. �. �/ �0 �2 �2 �2 �2 �2 �2 �2 �2 �2 �3 �4 �5 �6 �7 �7 �8 �8 �8 �9 �9 �9 �9 �: �: �: �; �; �; �; �; �: �: �9 �9 �8 �7 �5 �3 �2 �1 �0 �/ �. �- �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �. �. �. �/ �/ �/ �/ �/ �0 �0 �1 �1 �1 �2 �3 �4 �5 �6 �7 �8 �9 �: �; �; �< �< �= �= �> �> �> �? �? �? �? �? �@ �@ �@ �@ �@ �@ �@ �? �> �> �= �< �< �; �: �: �9 �9 �8 �7 �6 �5 �4 �3 �2 �2 �2 �3 �4 �5 �7 �8 �9 �9 �: �; �; �; �< �< �< �< �= �= �= �> �> �> �? �? �? �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �A �A �A �B �B �C �C �D �D �E �F �F �G �H �I �I �J �K �L �N �N �N �O �O �O �N �N �N �N �N �M �M �M �M �L �L �L �L �K �K �K �J �I �H �G �F �F �E �D �D �B �B �@ �@ �? �? �@ �A �B �C �D �E �F �F �G �H �H �G �F �E �D �C �B �A �@ �? �> �> �= �= �< �< �: �9 �8 �6 �5 �5 4 . }- }, |* z) y( y( x' x& x& w% w% v& v& u& t' s' r' q( p( o) o* m* l+ l+ k+ j, j, i- h- b- a, a+ a* a) a( `' `& `% `$ `# `" `! `  ` ` ` ` ` a a b b c d e f g h h h i i j j j k l l m
 m	 n n o o p q r r q q p n m l  l  k � k � j � i � h � g � g � f � e � e � d � c � b � b � b � b � b � b � c � c � c � d  	 carpet   KC  ����ff  �  p8 Q   trans  Teppich     [ �: �; �< �= �> �? �@ �A �B �C �C �D �E �F �G �H �I �I �J �K �L �M �N �N �O �O �O �O �P �P �Q Q RRSTTUVWXYYZ Z �[ �\ �\ �] �^ �^ �_ �` �` �a �b �c �c �d �d �e �f �g �h �h �h �i �i �i �j �j �k �l �l �m �n �n �o �o �p �q �q �q �r �s �t �t �u �v �v �v �w �w �w �w �w �w �w �w �w �w �x xxxxxyyyy	y	x
x
wwwvvuutsrqpomlkjhggfedcba`_
^
]
\
[
Z
Y
X
W
V
T	S
R
Q
P
O
NNMLKJIHGFEDCCCDEFGHIJKLMMNOPQRSSSSTUVWXYZ[\]^_`abcdeffghijklmnopqqrstuvwwwwwwwww w!w"w#w%x&x'x(x)x*x+x+w,w-w-v.v/u0u1t2t2s3r4q4p4o4n4m3m3k2k2j1i0h/g.g-f,e,d,c+c*b)`(_'^']&\%\$[#Z"Y!Y!X W VVUTS S!S#R$Q%P%O%N&N&M&L&K&J'J(J)K*M+M+N,N-N-O.P/P/Q0Q0R1R3S4T5T6U7U7V9V:V;W<W=X?X@X?X>X>W=W;V9T7S1Q+O)N(N(M)M)L*L+L,L-M.M0N1O2O3P4P6R7R8S9S:T;T<T=T<T;T:S9S8R7Q6Q6P7Q9Q:Q:R;R=S?U@UAUBUCVEWFWHXNYOYOZU[V[^]f^g^h_j`lamanbobpcvdxeyeze{f|f~gg�h�i�i�i�i�i�i�j�j�j�j�k�l�m�o�p�q�r�s�t�u�w�x�x�y�z�z�z�{�{�|�|�|�}�}�}}}}|}{}z}y}w}u}u|u{uzuyuxuwuvuuutusuruqupuountnsmslrlqkqjoingmglflekejeidgcecebdbba\a[aZaYaWaVaUaTaSaRaQaPaOaNaMbLcKcJdJeIfHfHgGgGhFhFiFjFkGlGmHnIoJpKpKqLqMrNrNsPtRuSuUvVwWwYyZy[z\z]{^{_{`{a{b{d{j{k{l{m{n{o{p{q{r{s{sztzt{t|t}t~tsrq�p�o�n�n�m�l�k�j�i�h�g�f�e�d�c�c�b�a�`�_�^�]�\�[�Z�Y�Y�X�W�W�V�U�T�S�R�P�N�M�L�J�I�H�F�D�C�A�;�9�9�7�5�4�2�1�'������������
�	�������� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �~ �~ �} �} �| �{ �y �x �w �v �u �u �t �r �q �q �p �o �n �m �m �l �j �j �h �g �g �f �e �d �b �a �` �_ �^ �] �] �\ �[ �Z �Z �Z �Z Z }Z {Z {[ {] }^ }_ ~_ �a �g �h �i �j �j �k �k �j �i �h �h �g �f �e �d �b y\ w[ v[ u[ uZ tZ sY rY rX qX qW pV pT pS pR qR rR sR uR {R }R �R �R �R �R �Q �P �P �P �O �O �N �N �M �L �L �K �K �K �J �J �J �J �J �J �J �J �J �J �J �J �J �I �I �I �H �H �H �H �G �G �F �F �F �E �E �D �D �D �C �C �C �B �B �B �A �A �@ �? �? �? �? �? �? �? �> �> �> �= �= �< �< �; �; �; �: �: �9 �9 �9 �9 �9 �8  
 table   KC  ����ff  �  r � z b   trans  Tisch     \ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � ~ � } � | � { � { � z � y � x � w � v � v � u � t � t � s � s � r � r � r � r � r � r � s � s � t � u � v � v � u � u � u � u � t � t � t � t � t � t � t � t � u � v � w � x � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � �  �! �" �# �$ �% �' �) �* �+ �- �. �/ �0 �1 �2 �2 �3 �3 �4 �4 �5 �5 �5 �4 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �& �& �% �% �% �% �% �% �$ �# �" �! �  �  �  �  �  �  � � � � � � � � � � � � � � � �  �! �! �" �" �# �$ �% �% �& �& �& �' �' �' �& �& �% �$ �# �! �  � � � � � � � � � � � � � � � � � � � � � �
 � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   graphic scripts �E�p �on mouseUp
  put the number of graphics into Zahl
repeat with i = 1 to Zahl
set the script of graphic i to the script of graphic 1
end repeat
end mouseUp
         � h          	     
   
Vokabular  �!`       � �S �        � b,hair,Haar,das Haar,das Haar  9b,right eye,rechtes Auge,das rechte Auge,das rechte Auge  5b,left eye,linkes Auge,das linke Auge,das linke Auge  6b,right ear,rechtes Ohr,das rechte Ohr,das rechte Ohr  2b,left ear,linkes Ohr,das linke Ohr,das linke Ohr  b,nose,Nase,die Nase,die Nase  b,chin,Kinn,das Kinn,das Kinn  b,mouth,Mund,den Mund,der Mund  9b,right hand,rechte Hand,die rechte Hand,die rechte Hand  5b,left hand,linke Hand,die linke Hand,die linke Hand  .o,pullover,Pullover,den Pullover,der Pullover  o,pants,Hose,die Hose,die Hose  "o,table,Tisch,den Tisch,der Tisch  Co,remote control,Fernbedienung,die Fernbedienung,die Fernbedienung  7o,television set,Fernseher,den Fernseher,der Fernseher  o,jug,Krug,den Krug,der Krug  )o,carpet,Teppich,den Teppich,der Teppich  8b,right foot,rechter Fu�,den rechten Fu�,der rechte Fu�  4b,left foot,linker Fu�,den linken Fu�,der linke Fu�  9b,left cheek,linke Wange,die linke Wange,die linke Wange  =b,right cheek,rechte Wange,die rechte Wange,die rechte Wange  o,curtain,Gardine  o,hallstand,Kleiderst�nder  o,paper bag,Einkaufst�te       	`    @ , �  �    
set trans �E�pon mouseUp
  put the number of graphics into Zahl
put fld "Vokabular" into Vokabular
repeat with i = 1 to Zahl
put the short name of graphic i into GName
put lineoffset(GName,Vokabular) into Zeile
set the trans of graphic i to item 2 of line Zeile of Vokabular
end repeat
end mouseUp
         " l          	        Pumuckl.jpg  	pkon mouseup
  global Wort
  put the name of the target into Objektname
  put word 1 of Objektname into Objekt
  if Objekt is not "graphic" then
    put "You did not click at the"&&Wort&"!"&CR&"You clicked at an object that you will learn later." into fld "feedback"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of fld "feedback" to red
    else set the textcolor of word 7 to 8 of fld "feedback" to red
    show fld "Feedback"
  else
    put the short name of me into GName
    if Wort is GName then
      put "right" into field "feedback2"
      hide fld "feedback"
      show fld "feedback2"
      wait 2 seconds
      send "mouseup" to btn "Aufgabe"
    else
      put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
      show fld "Feedback"
    end if
  end if
end mouseup
     @  n _�, Pumuckl.jpg   
     �)`       cA��        2 --to handle enterpage  --system lernen  --put "aus" into Lernen  --set syslockscreen to true  --hide button "aus"  --show button "an"  --end enterpage    to handle buttonup  (system lernen, WortVar, Fehler, Treffer  conditions  when lernen is "an"   !if target is not field "Anzeige"  4put name of target into the text of field "Anzeige"  end if  when lernen is "aus"  if name of target = "" then  set syslockscreen to true    % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  E put "you didn't click on anything you should learn!" into feedback2  2 put feedback2 into the text of field "feedback2"   hide field "OK"   show field "feedback"   show field "feedback2"   end if  Eif name of target <> "" and name of target <> item 1 of WortVar then   set syslockscreen to true  # increment(text of field "Fehler")  % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  # put name of target into feedback2  : put "you clicked on the " before first char of feedback2  & put "!" after last char of feedback2  2 put feedback2 into the text of field "feedback2"  6 put wordcount(text of field "feedback2") into Laenge   if Laenge is 5 then  G set the strokecolor of word 5 of the text of field "feedback2" to red   end if   if Laenge is 6 then  M set the strokecolor of words 5 to 6 of the text of field "feedback2" to red   end if  L set the strokecolor of last char of the text of field "feedback2" to black   hide field "OK"   show field "feedback"   show field "feedback2"   end if  , if name of target = item 1 of WortVar then   beep 1   set syslockscreen to true   hide field "feedback"   hide field "feedback2"   show field "OK"  $ increment(text of field "Treffer")   set syslockscreen to false   pause 2 seconds  # send buttonup to button "Aufgabe"   end if  end  conditions  end buttonup    to handle rightbuttonup  (system lernen, WortVar, Fehler, Treffer  --conditions  --when lernen is "an"   !if target is not field "Anzeige"  put name of target into Wort    .put the text of field "Lexikon" into Lexikon2  (put textlinecount(Lexikon2) into Anzahl  step i from 1 to Anzahl   4 put item 1 of textline i of Lexikon2 into Suchwort   if Wort is Suchwort then  N   put item 2 of textline i of Lexikon2 into the Text of field "Uebersetzung"     break step   end if  	end step  show field "Uebersetzung"  pause 2 seconds  hide field "uebersetzung"  end if    end rightbuttonup     3    	`    @ B �    
right eye   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
           ����ff  �  � �     trans  rechtes Auge      h   	left eye   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
           ����ff  �  �     trans  linkes Auge      h   nose   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
           ����ff  �  �     trans  Nase      h   television set   KR�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  � � � r �   trans  	Fernseher         � ������ �� �� �   remote control   KR�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  � Hc .    trans  Fernbedienung         Hma{uxvp\cHfHm
   Legende  #h         � . � #        2     
right ear   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  � �     trans  rechtes Ohr      g � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   	left ear   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  � - �     trans  
linkes Ohr      P6 �5 �4 �3 �2 �2 �2 �1 �1 �1 �1 �0 �0 �0 �/ �/ �/ �/ �/ �/ �/ �. �. �. �. �- �- �- �- �- �- �. �/ �/ �0 �1 �2 �3 �4 �4 �5 �6 �6 �7 �8 �8 �9 �9 �9 �: �: �; �< �< �= �= �= �= �= �> �> �> �> �> �> �= �= �= �< �< �; �: �: �9 �8 �7 �7 �6 �5 �4 �   mouth   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  �     trans  Mund      F � � � � � � � �
 �
 �
 �	 �	 � � � � � � � � � � � � � � � � � � � �	 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   
left hand   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  � �     trans  
linke Hand      Z
 �	 � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � �	 �
 �
 �
 �	 �    right cheek   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  � �     trans         h  ! left cheek   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  �     trans         h  " chin   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  �     trans  Kinn      < � � � �	 �
 �
 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � � � �	 �  # jug   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  � � c 3 ;   trans  Krug      �� e� e� e� e� e� e� e� f� f� g� g� h� h� i� k� l� m� n� o� p� q� r� s� t� t� u� u� v� w� w� x� x� y� z� {� {� |� }� }� ~� � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � ~� }� |� {� z� y� x� w� v� v� u� t� t� s� r� q� p� p� o� n� m� l� k� i� h� g� g� f� e� e� d� d� d� d� d� d� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� d� d� d� e� e� e� f  $ pants   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  � : >   trans  Hose     ( � � � � � � � � � �  �! �" �# �$ �% �& �' �( �) �* �+ �, �, �- �. �/ �0 �1 �2 �3 �4 �5 �5 �6 �7 �8 �9 �: �; �< �= �> �? �@ �A �B �C �D �E �F �G �G �H �I �J �K �L �L �M �M �M �N �N �N �O �O �P �P �P �P P QQQQQQRRR	R
R
Q
P
O
NNMLKJJIHGFEDCBA@?>==<;::98766543210//.//0123456789:;<=>?@ABCDEFGHIJJKLLMNNNNOOOPPPPPPPPPPO O!O"N#N#M$M$L%K%J%I%H&H&G&F&E&D&C'C'B'A'@'?'>'='<';':'9'8'7(6(4(3(2(1(0(/(.(-(,)+)*)))()')&*%*$*#*"*!* *********)('&&%%$##"!   � � � � � � � � � � � � � � � � � � � � �  % 	pullover   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  � � C 3   trans  Pullover     # � � � � � � � � �  � � � � � � � � � � � � � � � � �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � �  �! �" �" �# �# �# �# �$ �$ �# �# �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 �	 �	 � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � 	 !')*+,,,,,,,,++++,,,-
.	..//////00 0 �0 �0 �0 �0 �0 �/ �/ �. �. �- �- �, �, �, �+ �* �* �) �( �( �' �' �& �& �% �% �$ �# �" �  � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � �  & right foot   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  �S ! "   trans  rechter Fu�      |TUVWXXYZ[ [ \ �\ �] �^ �^ �_ �` �a �a �b �b �c �d �e �e �f �g �h �h �h �i �i �j �j �k �k �l �l �l �m �n �o �p �q �q �r �s �t �t �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u uuuuuuuu	u
uuutsrqponmlkjihhgfe
e
d	c	b	a	``_^]\[ZYXWVUTSSSSSTT  ' 
left foot   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  � R  &   trans  
linker Fu�      �TUVWWXYZ[\\]^_`abcddefghijklmnopqrsstuuuvvwwwxxxxwwvu u!u"u#u$u%u&u'u(v)v*v+v,v-v.v/v0v0u1u2u2t2s2r2q2p2o2n1n1m0m0l0k/k/j/i.i.h-h-g,g+g+f*f*e)e)d(d'c&c&b%b%a$a#`"`"_!_!^ ]\[ZYYXWVUTSSSSRRSTUVWXYZ[\  ( hair   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  � ` � �   trans  Haar      � c � d � e � f � g � h � i � j � k � k � l � m � n � o � p � q � r � r � s � t � t � t � t � t � t � t � t � t � u � u � u � v � v � v � v � v � w � w � w � x � x � y � y � y � z � z � z � { � { � | � | � | � } � } � } � ~ � ~ �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 �	 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �# �# �$ �$ �% �% �& �& �' �' �' �' �' �' �( �( �( �( �) �) �) �) �) �* �* �* �+ �+ �+ �+ �+ �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �, �, �, �+ �* �) �) �( �' �& �% �$ �# �# �" �! �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �# �# �# �$ �% �& �& �' �' �( �) �) �* �* �+ �+ �+ �, �, �- �- �- �. �. �. �/ �0 �2 �2 �2 �2 �2 �2 �2 �2 �2 �3 �4 �5 �6 �7 �7 �8 �8 �8 �9 �9 �9 �9 �: �: �: �; �; �; �; �; �: �: �9 �9 �8 �7 �5 �3 �2 �1 �0 �/ �. �- �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �. �. �. �/ �/ �/ �/ �/ �0 �0 �1 �1 �1 �2 �3 �4 �5 �6 �7 �8 �9 �: �; �; �< �< �= �= �> �> �> �? �? �? �? �? �@ �@ �@ �@ �@ �@ �@ �? �> �> �= �< �< �; �: �: �9 �9 �8 �7 �6 �5 �4 �3 �2 �2 �2 �3 �4 �5 �7 �8 �9 �9 �: �; �; �; �< �< �< �< �= �= �= �> �> �> �? �? �? �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �A �A �A �B �B �C �C �D �D �E �F �F �G �H �I �I �J �K �L �N �N �N �O �O �O �N �N �N �N �N �M �M �M �M �L �L �L �L �K �K �K �J �I �H �G �F �F �E �D �D �B �B �@ �@ �? �? �@ �A �B �C �D �E �F �F �G �H �H �G �F �E �D �C �B �A �@ �? �> �> �= �= �< �< �: �9 �8 �6 �5 �5 4 . }- }, |* z) y( y( x' x& x& w% w% v& v& u& t' s' r' q( p( o) o* m* l+ l+ k+ j, j, i- h- b- a, a+ a* a) a( `' `& `% `$ `# `" `! `  ` ` ` ` ` a a b b c d e f g h h h i i j j j k l l m
 m	 n n o o p q r r q q p n m l  l  k � k � j � i � h � g � g � f � e � e � d � c � b � b � b � b � b � b � c � c � c � d  ) carpet   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  p8 Q   trans  Teppich     [ �: �; �< �= �> �? �@ �A �B �C �C �D �E �F �G �H �I �I �J �K �L �M �N �N �O �O �O �O �P �P �Q Q RRSTTUVWXYYZ Z �[ �\ �\ �] �^ �^ �_ �` �` �a �b �c �c �d �d �e �f �g �h �h �h �i �i �i �j �j �k �l �l �m �n �n �o �o �p �q �q �q �r �s �t �t �u �v �v �v �w �w �w �w �w �w �w �w �w �w �x xxxxxyyyy	y	x
x
wwwvvuutsrqpomlkjhggfedcba`_
^
]
\
[
Z
Y
X
W
V
T	S
R
Q
P
O
NNMLKJIHGFEDCCCDEFGHIJKLMMNOPQRSSSSTUVWXYZ[\]^_`abcdeffghijklmnopqqrstuvwwwwwwwww w!w"w#w%x&x'x(x)x*x+x+w,w-w-v.v/u0u1t2t2s3r4q4p4o4n4m3m3k2k2j1i0h/g.g-f,e,d,c+c*b)`(_'^']&\%\$[#Z"Y!Y!X W VVUTS S!S#R$Q%P%O%N&N&M&L&K&J'J(J)K*M+M+N,N-N-O.P/P/Q0Q0R1R3S4T5T6U7U7V9V:V;W<W=X?X@X?X>X>W=W;V9T7S1Q+O)N(N(M)M)L*L+L,L-M.M0N1O2O3P4P6R7R8S9S:T;T<T=T<T;T:S9S8R7Q6Q6P7Q9Q:Q:R;R=S?U@UAUBUCVEWFWHXNYOYOZU[V[^]f^g^h_j`lamanbobpcvdxeyeze{f|f~gg�h�i�i�i�i�i�i�j�j�j�j�k�l�m�o�p�q�r�s�t�u�w�x�x�y�z�z�z�{�{�|�|�|�}�}�}}}}|}{}z}y}w}u}u|u{uzuyuxuwuvuuutusuruqupuountnsmslrlqkqjoingmglflekejeidgcecebdbba\a[aZaYaWaVaUaTaSaRaQaPaOaNaMbLcKcJdJeIfHfHgGgGhFhFiFjFkGlGmHnIoJpKpKqLqMrNrNsPtRuSuUvVwWwYyZy[z\z]{^{_{`{a{b{d{j{k{l{m{n{o{p{q{r{s{sztzt{t|t}t~tsrq�p�o�n�n�m�l�k�j�i�h�g�f�e�d�c�c�b�a�`�_�^�]�\�[�Z�Y�Y�X�W�W�V�U�T�S�R�P�N�M�L�J�I�H�F�D�C�A�;�9�9�7�5�4�2�1�'������������
�	�������� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �~ �~ �} �} �| �{ �y �x �w �v �u �u �t �r �q �q �p �o �n �m �m �l �j �j �h �g �g �f �e �d �b �a �` �_ �^ �] �] �\ �[ �Z �Z �Z �Z Z }Z {Z {[ {] }^ }_ ~_ �a �g �h �i �j �j �k �k �j �i �h �h �g �f �e �d �b y\ w[ v[ u[ uZ tZ sY rY rX qX qW pV pT pS pR qR rR sR uR {R }R �R �R �R �R �Q �P �P �P �O �O �N �N �M �L �L �K �K �K �J �J �J �J �J �J �J �J �J �J �J �J �J �I �I �I �H �H �H �H �G �G �F �F �F �E �E �D �D �D �C �C �C �B �B �B �A �A �@ �? �? �? �? �? �? �? �> �> �> �= �= �< �< �; �; �; �: �: �9 �9 �9 �9 �9 �8  * table   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  r � z b   trans  Tisch     \ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � ~ � } � | � { � { � z � y � x � w � v � v � u � t � t � s � s � r � r � r � r � r � r � s � s � t � u � v � v � u � u � u � u � t � t � t � t � t � t � t � t � u � v � w � x � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � �  �! �" �# �$ �% �' �) �* �+ �- �. �/ �0 �1 �2 �2 �3 �3 �4 �4 �5 �5 �5 �4 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �& �& �% �% �% �% �% �% �$ �# �" �! �  �  �  �  �  �  � � � � � � � � � � � � � � � �  �! �! �" �" �# �$ �% �% �& �& �& �' �' �' �& �& �% �$ �# �! �  � � � � � � � � � � � � � � � � � � � � � �
 � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  + graphic scripts �E�p �on mouseUp
  put the number of graphics into Zahl
repeat with i = 1 to Zahl
set the script of graphic i to the script of graphic 1
end repeat
end mouseUp
         � h          	       - 
set trans �E�pon mouseUp
  put the number of graphics into Zahl
put fld "Vokabular" into Vokabular
repeat with i = 1 to Zahl
put the short name of graphic i into GName
put lineoffset(GName,Vokabular) into Zeile
set the trans of graphic i to item 2 of line Zeile of Vokabular
end repeat
end mouseUp
         " l          	     
  . Aufgabe  h         m�� $        2 please, click on the hair         @ ��     red     1 
Start-alt �E�p ron mouseUp
  global Vokabular
  put fld "Vokabular" into Vokabular
  send "mouseup" to btn "Aufgabe"
end mouseUp
        O +         	     
  6            � 5 +           learn the words  - word show - 
  7            � $5             test and learn   8 Aufgabe �E�p�on mouseUp
  global Vokabular,Wort
  put the number of lines of Vokabular into Zahl
  hide fld "feedback"
  hide fld "feedback2"
  if Zahl is 0 then
    send "mouseup" to btn "Start"
    exit to Metacard
  else
    put random(Zahl) into Auswahl
    put line Auswahl of Vokabular into Zeile
    delete line Auswahl of Vokabular
    put item 1 of Zeile into Wort
    lock screen
    put "please, click on the"&&Wort into fld "Aufgabe"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 5 of fld "Aufgabe" to red
    else set the textcolor of word 5 to 6 of fld "Aufgabe" to red
  end if
end mouseUp
       T P          	     
  9 	feedback  h           black    ��R ,        2 You did not click on the hair!  @        black     @ ��     red    You clicked on the pullover.  @        black     @     �� blue   	
  < 
feedback2  h         �� � $        2 right   = "M" aus �A�X  on mouseUp
  hide stack "Metacard Menu Bar"
  hide stack "home"
end mouseUp

 on mouseenter
set the showname of me to true
set the showborder of me to true
end mouseenter

on mouseleave
set the showname of me to false
set the showborder of me to false
end mouseleave
        � &          	       > 	Show GUI �e�x  �on mouseUp
  if the label of me is "Show GUI" then
    show menubar
  if there is a stack "Metacard Menu Bar" then show stack "Metacard Menu Bar"
  if there is a stack "home" then show stack "home"
  if there is a stack "revtools" then show stack "revtools"
  if there is a stack "revMenuBar" then show stack "revMenuBar"

    set the label of me to "Hide GUI"
  else
    hide menubar
  if there is a stack "revMenuBar" then hide stack "revMenuBar"
  if there is a stack "Metacard Menu Bar" then hide stack "Metacard Menu Bar"
  if there is a stack "home" then hide stack "home"
  if there is a stack "revtools" then hide stack "revtools"

    set the label of me to "Show GUI"
  end if
  
end mouseUp
# on mouseenter
# set the showname of me to true
# set the showborder of me to true
# end mouseenter

# on mouseleave
# set the showname of me to false
# set the showborder of me to false
# end mouseleave
          @  	Hide GUI          	       ? Pumuckl.jpg  	`    @  n _�, Pumuckl.jpg   
  @   �)`       cA��        a --to handle enterpage  --system lernen  --put "aus" into Lernen  --set syslockscreen to true  --hide button "aus"  --show button "an"  --end enterpage    to handle buttonup  (system lernen, WortVar, Fehler, Treffer  conditions  when lernen is "an"   !if target is not field "Anzeige"  4put name of target into the text of field "Anzeige"  end if  when lernen is "aus"  if name of target = "" then  set syslockscreen to true    % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  E put "you didn't click on anything you should learn!" into feedback2  2 put feedback2 into the text of field "feedback2"   hide field "OK"   show field "feedback"   show field "feedback2"   end if  Eif name of target <> "" and name of target <> item 1 of WortVar then   set syslockscreen to true  # increment(text of field "Fehler")  % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  # put name of target into feedback2  : put "you clicked on the " before first char of feedback2  & put "!" after last char of feedback2  2 put feedback2 into the text of field "feedback2"  6 put wordcount(text of field "feedback2") into Laenge   if Laenge is 5 then  G set the strokecolor of word 5 of the text of field "feedback2" to red   end if   if Laenge is 6 then  M set the strokecolor of words 5 to 6 of the text of field "feedback2" to red   end if  L set the strokecolor of last char of the text of field "feedback2" to black   hide field "OK"   show field "feedback"   show field "feedback2"   end if  , if name of target = item 1 of WortVar then   beep 1   set syslockscreen to true   hide field "feedback"   hide field "feedback2"   show field "OK"  $ increment(text of field "Treffer")   set syslockscreen to false   pause 2 seconds  # send buttonup to button "Aufgabe"   end if  end  conditions  end buttonup    to handle rightbuttonup  (system lernen, WortVar, Fehler, Treffer  --conditions  --when lernen is "an"   !if target is not field "Anzeige"  put name of target into Wort    .put the text of field "Lexikon" into Lexikon2  (put textlinecount(Lexikon2) into Anzahl  step i from 1 to Anzahl   4 put item 1 of textline i of Lexikon2 into Suchwort   if Wort is Suchwort then  N   put item 2 of textline i of Lexikon2 into the Text of field "Uebersetzung"     break step   end if  	end step  show field "Uebersetzung"  pause 2 seconds  hide field "uebersetzung"  end if    end rightbuttonup     b    	`    @ B �   A 
right eye   KTon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
           ����ff  �  � �     trans  rechtes Auge      h  B 	left eye   KTon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
           ����ff  �  �     trans  linkes Auge      h  C nose   KTon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
           ����ff  �  �     trans  Nase      h  D television set   KRon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � � � r �   trans  	Fernseher         � ������ �� �� �  E remote control   KRon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � Hc .    trans  Fernbedienung         Hma{uxvp\cHfHm
  F Legende  #h         � . � #        a    G 
right ear   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � �     trans  rechtes Ohr      g � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  H 	left ear   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � - �     trans  
linkes Ohr      P6 �5 �4 �3 �2 �2 �2 �1 �1 �1 �1 �0 �0 �0 �/ �/ �/ �/ �/ �/ �/ �. �. �. �. �- �- �- �- �- �- �. �/ �/ �0 �1 �2 �3 �4 �4 �5 �6 �6 �7 �8 �8 �9 �9 �9 �: �: �; �< �< �= �= �= �= �= �> �> �> �> �> �> �= �= �= �< �< �; �: �: �9 �8 �7 �7 �6 �5 �4 �  I mouth   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans  Mund      F � � � � � � � �
 �
 �
 �	 �	 � � � � � � � � � � � � � � � � � � � �	 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  K right hand   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans  rechte Hand      N � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � �	 �  L right cheek   KTon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � �     trans         h  M left cheek   KTon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans         h  N chin   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans  Kinn      < � � � �	 �
 �
 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � � � �	 �  O jug   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � � c 3 ;   trans  Krug      �� e� e� e� e� e� e� e� f� f� g� g� h� h� i� k� l� m� n� o� p� q� r� s� t� t� u� u� v� w� w� x� x� y� z� {� {� |� }� }� ~� � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � ~� }� |� {� z� y� x� w� v� v� u� t� t� s� r� q� p� p� o� n� m� l� k� i� h� g� g� f� e� e� d� d� d� d� d� d� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� d� d� d� e� e� e� f  P pants   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � : >   trans  Hose     ( � � � � � � � � � �  �! �" �# �$ �% �& �' �( �) �* �+ �, �, �- �. �/ �0 �1 �2 �3 �4 �5 �5 �6 �7 �8 �9 �: �; �< �= �> �? �@ �A �B �C �D �E �F �G �G �H �I �J �K �L �L �M �M �M �N �N �N �O �O �P �P �P �P P QQQQQQRRR	R
R
Q
P
O
NNMLKJJIHGFEDCBA@?>==<;::98766543210//.//0123456789:;<=>?@ABCDEFGHIJJKLLMNNNNOOOPPPPPPPPPPO O!O"N#N#M$M$L%K%J%I%H&H&G&F&E&D&C'C'B'A'@'?'>'='<';':'9'8'7(6(4(3(2(1(0(/(.(-(,)+)*)))()')&*%*$*#*"*!* *********)('&&%%$##"!   � � � � � � � � � � � � � � � � � � � � �  Q 	pullover   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � � C 3   trans  Pullover     # � � � � � � � � �  � � � � � � � � � � � � � � � � �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � �  �! �" �" �# �# �# �# �$ �$ �# �# �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 �	 �	 � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � 	 !')*+,,,,,,,,++++,,,-
.	..//////00 0 �0 �0 �0 �0 �0 �/ �/ �. �. �- �- �, �, �, �+ �* �* �) �( �( �' �' �& �& �% �% �$ �# �" �  � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � �  R right foot   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �S ! "   trans  rechter Fu�      |TUVWXXYZ[ [ \ �\ �] �^ �^ �_ �` �a �a �b �b �c �d �e �e �f �g �h �h �h �i �i �j �j �k �k �l �l �l �m �n �o �p �q �q �r �s �t �t �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u uuuuuuuu	u
uuutsrqponmlkjihhgfe
e
d	c	b	a	``_^]\[ZYXWVUTSSSSSTT  S 
left foot   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � R  &   trans  
linker Fu�      �TUVWWXYZ[\\]^_`abcddefghijklmnopqrsstuuuvvwwwxxxxwwvu u!u"u#u$u%u&u'u(v)v*v+v,v-v.v/v0v0u1u2u2t2s2r2q2p2o2n1n1m0m0l0k/k/j/i.i.h-h-g,g+g+f*f*e)e)d(d'c&c&b%b%a$a#`"`"_!_!^ ]\[ZYYXWVUTSSSSRRSTUVWXYZ[\  T hair   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � ` � �   trans  Haar      � c � d � e � f � g � h � i � j � k � k � l � m � n � o � p � q � r � r � s � t � t � t � t � t � t � t � t � t � u � u � u � v � v � v � v � v � w � w � w � x � x � y � y � y � z � z � z � { � { � | � | � | � } � } � } � ~ � ~ �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 �	 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �# �# �$ �$ �% �% �& �& �' �' �' �' �' �' �( �( �( �( �) �) �) �) �) �* �* �* �+ �+ �+ �+ �+ �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �, �, �, �+ �* �) �) �( �' �& �% �$ �# �# �" �! �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �# �# �# �$ �% �& �& �' �' �( �) �) �* �* �+ �+ �+ �, �, �- �- �- �. �. �. �/ �0 �2 �2 �2 �2 �2 �2 �2 �2 �2 �3 �4 �5 �6 �7 �7 �8 �8 �8 �9 �9 �9 �9 �: �: �: �; �; �; �; �; �: �: �9 �9 �8 �7 �5 �3 �2 �1 �0 �/ �. �- �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �. �. �. �/ �/ �/ �/ �/ �0 �0 �1 �1 �1 �2 �3 �4 �5 �6 �7 �8 �9 �: �; �; �< �< �= �= �> �> �> �? �? �? �? �? �@ �@ �@ �@ �@ �@ �@ �? �> �> �= �< �< �; �: �: �9 �9 �8 �7 �6 �5 �4 �3 �2 �2 �2 �3 �4 �5 �7 �8 �9 �9 �: �; �; �; �< �< �< �< �= �= �= �> �> �> �? �? �? �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �A �A �A �B �B �C �C �D �D �E �F �F �G �H �I �I �J �K �L �N �N �N �O �O �O �N �N �N �N �N �M �M �M �M �L �L �L �L �K �K �K �J �I �H �G �F �F �E �D �D �B �B �@ �@ �? �? �@ �A �B �C �D �E �F �F �G �H �H �G �F �E �D �C �B �A �@ �? �> �> �= �= �< �< �: �9 �8 �6 �5 �5 4 . }- }, |* z) y( y( x' x& x& w% w% v& v& u& t' s' r' q( p( o) o* m* l+ l+ k+ j, j, i- h- b- a, a+ a* a) a( `' `& `% `$ `# `" `! `  ` ` ` ` ` a a b b c d e f g h h h i i j j j k l l m
 m	 n n o o p q r r q q p n m l  l  k � k � j � i � h � g � g � f � e � e � d � c � b � b � b � b � b � b � c � c � c � d  U carpet   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  p8 Q   trans  Teppich     [ �: �; �< �= �> �? �@ �A �B �C �C �D �E �F �G �H �I �I �J �K �L �M �N �N �O �O �O �O �P �P �Q Q RRSTTUVWXYYZ Z �[ �\ �\ �] �^ �^ �_ �` �` �a �b �c �c �d �d �e �f �g �h �h �h �i �i �i �j �j �k �l �l �m �n �n �o �o �p �q �q �q �r �s �t �t �u �v �v �v �w �w �w �w �w �w �w �w �w �w �x xxxxxyyyy	y	x
x
wwwvvuutsrqpomlkjhggfedcba`_
^
]
\
[
Z
Y
X
W
V
T	S
R
Q
P
O
NNMLKJIHGFEDCCCDEFGHIJKLMMNOPQRSSSSTUVWXYZ[\]^_`abcdeffghijklmnopqqrstuvwwwwwwwww w!w"w#w%x&x'x(x)x*x+x+w,w-w-v.v/u0u1t2t2s3r4q4p4o4n4m3m3k2k2j1i0h/g.g-f,e,d,c+c*b)`(_'^']&\%\$[#Z"Y!Y!X W VVUTS S!S#R$Q%P%O%N&N&M&L&K&J'J(J)K*M+M+N,N-N-O.P/P/Q0Q0R1R3S4T5T6U7U7V9V:V;W<W=X?X@X?X>X>W=W;V9T7S1Q+O)N(N(M)M)L*L+L,L-M.M0N1O2O3P4P6R7R8S9S:T;T<T=T<T;T:S9S8R7Q6Q6P7Q9Q:Q:R;R=S?U@UAUBUCVEWFWHXNYOYOZU[V[^]f^g^h_j`lamanbobpcvdxeyeze{f|f~gg�h�i�i�i�i�i�i�j�j�j�j�k�l�m�o�p�q�r�s�t�u�w�x�x�y�z�z�z�{�{�|�|�|�}�}�}}}}|}{}z}y}w}u}u|u{uzuyuxuwuvuuutusuruqupuountnsmslrlqkqjoingmglflekejeidgcecebdbba\a[aZaYaWaVaUaTaSaRaQaPaOaNaMbLcKcJdJeIfHfHgGgGhFhFiFjFkGlGmHnIoJpKpKqLqMrNrNsPtRuSuUvVwWwYyZy[z\z]{^{_{`{a{b{d{j{k{l{m{n{o{p{q{r{s{sztzt{t|t}t~tsrq�p�o�n�n�m�l�k�j�i�h�g�f�e�d�c�c�b�a�`�_�^�]�\�[�Z�Y�Y�X�W�W�V�U�T�S�R�P�N�M�L�J�I�H�F�D�C�A�;�9�9�7�5�4�2�1�'������������
�	�������� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �~ �~ �} �} �| �{ �y �x �w �v �u �u �t �r �q �q �p �o �n �m �m �l �j �j �h �g �g �f �e �d �b �a �` �_ �^ �] �] �\ �[ �Z �Z �Z �Z Z }Z {Z {[ {] }^ }_ ~_ �a �g �h �i �j �j �k �k �j �i �h �h �g �f �e �d �b y\ w[ v[ u[ uZ tZ sY rY rX qX qW pV pT pS pR qR rR sR uR {R }R �R �R �R �R �Q �P �P �P �O �O �N �N �M �L �L �K �K �K �J �J �J �J �J �J �J �J �J �J �J �J �J �I �I �I �H �H �H �H �G �G �F �F �F �E �E �D �D �D �C �C �C �B �B �B �A �A �@ �? �? �? �? �? �? �? �> �> �> �= �= �< �< �; �; �; �: �: �9 �9 �9 �9 �9 �8  V table   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  r � z b   trans  Tisch     \ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � ~ � } � | � { � { � z � y � x � w � v � v � u � t � t � s � s � r � r � r � r � r � r � s � s � t � u � v � v � u � u � u � u � t � t � t � t � t � t � t � t � u � v � w � x � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � �  �! �" �# �$ �% �' �) �* �+ �- �. �/ �0 �1 �2 �2 �3 �3 �4 �4 �5 �5 �5 �4 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �& �& �% �% �% �% �% �% �$ �# �" �! �  �  �  �  �  �  � � � � � � � � � � � � � � � �  �! �! �" �" �# �$ �% �% �& �& �& �' �' �' �& �& �% �$ �# �! �  � � � � � � � � � � � � � � � � � � � � � �
 � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  W graphic scripts �E�p �on mouseUp
  put the number of graphics into Zahl
repeat with i = 1 to Zahl
set the script of graphic i to the script of graphic 1
end repeat
end mouseUp
         � h          	       X 
set trans �E�pon mouseUp
  put the number of graphics into Zahl
put fld "Vokabular" into Vokabular
repeat with i = 1 to Zahl
put the short name of graphic i into GName
put lineoffset(GName,Vokabular) into Zeile
set the trans of graphic i to item 2 of line Zeile of Vokabular
end repeat
end mouseUp
         " l          	     
  Y Aufgabe  h         k�� $        a $please, click on the television set         @ ��     red     Z Start �e�pGon mouseUp
  global Vokabular, Auswahlmenge
  hide image 2
  if the vis of fld "Lob" is true then hide fld "Lob" with visual effect reveal right
  hide me
  put fld "Vokabular" into Vokabular
  put empty into AuswahlVokabular
  put empty into fld "Schleife"
  put 0 into fld "correct"
  put 0 into fld "mistakes"
  put the number of lines of Vokabular into Zahl
  set the backcolor of stack "ask dialog" to the backcolor of this card #"Aliceblue"
  set the textstyle of stack "ask dialog" to "bold"
  set the textstyle of stack "answer dialog" to "bold"
  set the backcolor of stack "answer dialog" to the backcolor of this card
  ask "There are"&& Zahl&& "items to be tested."&CR&"How many do you want to try?"&CR&"(minimum 4)"
  if it is a number then
    put round(it) into it
    if it  < 4 then
      answer "You have to try at least four items."
      send "mouseup" to me
      exit to Metacard
    else if it  > Zahl then
      answer "There are only"&&Zahl&&"items available."&CR&"Choose a number lower than"&&Zahl + 1&"."
      send "mouseup" to me
      exit to Metacard
    end if
  else
    answer "You did not type a number! Try again."
    send "mouseup" to me
    exit to Metacard
  end if
  put it into Auswahlmenge
  repeat with i = 1 to Auswahlmenge
    put the number of lines of Vokabular into LZahl
    put random(LZahl) into Zufall
    put CR&line Zufall of Vokabular after last line of AuswahlVokabular
    delete line Zufall of Vokabular
  end repeat
  delete line 1 of AuswahlVokabular
  put AuswahlVokabular into Vokabular
  hide me
  send "mouseup" to btn "Aufgabe"
end mouseUp
   ������     � O + Try again?          	     
  \            � 5             test with loop   ] Aufgabe �E�p�on mouseUp
  global Vokabular,Wort
  put the number of lines of Vokabular into Zahl
  if Zahl <> 1 then put Zahl&&"problems remaining" into fld "remaining"
  else put Zahl&&"problem remaining" into fld "remaining"
  hide fld "feedback"
  hide fld "feedback2"
  if Zahl is 0 then
    if fld "Schleife" is not empty then
      send "mouseup" to btn "Schleifenstart"
      exit to Metacard
    else
      show btn "Start"
      hide fld "Aufgabe"
      send "mouseup" to btn "Auswertung"
      exit to Metacard
    end if
  else
    put random(Zahl) into Auswahl
    put line Auswahl of Vokabular into Wort
    delete line Auswahl of Vokabular
    lock screen
    put "please, click on the"&&Wort into fld "Aufgabe"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 5 of fld "Aufgabe" to red
    else set the textcolor of word 5 to 6 of fld "Aufgabe" to red
    show fld "Aufgabe"
  end if
end mouseUp
       T P          	     
  ` 
feedback2  h         �� � $        a right 
  d 	mistakes  +h 
         �� *         a 0 
  e  	        �� >            	mistakes 
  f correct  +h 
        e� *         a 0 
  g  	       )� 7            correct 
  h 
remaining  
         � ;            5 problems remaining   i Auswertung �E�pfon mouseUp
  put the number of lines of fld "Lob-Phrasen" into Zahl
  put random(Zahl) into Auswahl
  put line Auswahl of fld "Lob-Phrasen" into fld "Lob"
  show fld "lob" with visual effect scroll right
  set the repeatcount of image 2 to 8
  show image 2
  if the vis of image 2 is true then send "mouseup" to btn "stopsprite" in 7 seconds
  
end mouseUp
         � f          	     
  j Lob  �   Bon mouseUp
  hide me with visual effect reveal right
end mouseUp
  C         ������  444444  `  � �" F        a 5OK. The more often you try, the more you will learn.   o New Button �C�pon mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,63
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  answer "Do you really want to quit?" with "Yes" or "No"
  if it is "Yes" then
    
    put the pendingmessages into Befehle
    cancel item 1 of Befehle
    hide fld "Legende"
    set the width of fld "Legende" to 230
    set the loc of fld "Legende" to 308,63
    repeat with a = 1 to GZahl
      set the linesize of graphic a to 0
      set the ink of graphic a to noop
    end repeat
    close this stack
  if there is a stack "Metacard Menu Bar" then  
show stack "Metacard Menu Bar"
end if
  if there is a stack "home" then  
show stack "home"
end if
if there is a stack "revtools" then
  show stack "revtools"
end if
 # if there is a stack "home" then  show stack "home"

  else
    send "Mouseup" to btn "Start"
  end if
end mouseUp
       � $ ( Dieses Programm schlie�en.               �             	     
  ^ 	feedback  h         u�� ,        a 4You did not click at the left hand! You clicked at          @ ��     red   
     #  <another object that does not belong to the test. Try again.   p 
paper bag   KC  ����ff  � T � , 9   trans  Einkaufst�te      �b �a �` �_ �^ �] �] �\ \\[[ZZZZYYY	X	X
XXXWWWWWVVVUUUUUTTTTTTUVVWXYZZ [ \ ]!^!_!`!a!b"c"d"e"f#g#h#i#j#k#l#m#n#o#p#q#q"r!r rssttuuvvwxyyzz{{|||}}}}~~~~
	�� ~ } | } } �} �} �} �} �} �} �} �} �} �} �} �} �} �} �} �| �{ �z �y �x �w �w �v �u �t �t �s �r �q �q �p �o �n �m �l �k �j �i �i �h �h �g �f �f �e �e �d �d �c �c �b �b �a �a �a �a �a �a �a �b �b �b �c �c �d �c �b �a �` �  q 
paper bag   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  � T � , 9   trans  Einkaufst�te      �b �a �` �_ �^ �] �] �\ \\[[ZZZZYYY	X	X
XXXWWWWWVVVUUUUUTTTTTTUVVWXYZZ [ \ ]!^!_!`!a!b"c"d"e"f#g#h#i#j#k#l#m#n#o#p#q#q"r!r rssttuuvvwxyyzz{{|||}}}}~~~~
	�� ~ } | } } �} �} �} �} �} �} �} �} �} �} �} �} �} �} �} �| �{ �z �y �x �w �w �v �u �t �t �s �r �q �q �p �o �n �m �l �k �j �i �i �h �h �g �f �f �e �e �d �d �c �c �b �b �a �a �a �a �a �a �a �b �b �b �c �c �d �c �b �a �` �  r 
paper bag   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � T � , 9   trans  Einkaufst�te      �b �a �` �_ �^ �] �] �\ \\[[ZZZZYYY	X	X
XXXWWWWWVVVUUUUUTTTTTTUVVWXYZZ [ \ ]!^!_!`!a!b"c"d"e"f#g#h#i#j#k#l#m#n#o#p#q#q"r!r rssttuuvvwxyyzz{{|||}}}}~~~~
	�� ~ } | } } �} �} �} �} �} �} �} �} �} �} �} �} �} �} �} �| �{ �z �y �x �w �w �v �u �t �t �s �r �q �q �p �o �n �m �l �k �j �i �i �h �h �g �f �f �e �e �d �d �c �c �b �b �a �a �a �a �a �a �a �b �b �b �c �c �d �c �b �a �` �  s curtain   KC  ����ff  �  q � X P   trans  Gardine     � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � ~ � } � | � { � { � z � y � x � w � v � u � s � s � r � r � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � r � r � r � r � s � s � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � s � t � v � w � x � y � z � { � | � } � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  t 
hallstand   KB  ����ff  � U u 4 u   trans  Kleiderst�nder         c �^ �f �g �` �V �U �Y �V �[ �` �g �l uo vt �{ �� �� �� �� �� �q �q �x �x �p �c �  u curtain   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  q � X P   trans  Gardine     � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � ~ � } � | � { � { � z � y � x � w � v � u � s � s � r � r � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � r � r � r � r � s � s � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � s � t � v � w � x � y � z � { � | � } � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  v 
hallstand   KR�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  � U u 4 u   trans  Kleiderst�nder         c �^ �f �g �` �V �U �Y �V �[ �` �g �l uo vt �{ �� �� �� �� �� �q �q �x �x �p �c �  w curtain   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  q � X P   trans  Gardine     � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � ~ � } � | � { � { � z � y � x � w � v � u � s � s � r � r � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � r � r � r � r � s � s � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � s � t � v � w � x � y � z � { � | � } � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  x 
hallstand   KRon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � U u 4 u   trans  Kleiderst�nder         c �^ �f �g �` �V �U �Y �V �[ �` �g �l uo vt �{ �� �� �� �� �� �q �q �x �x �p �c �  {   �i         �� � I$m�H�D� 1  8         | Vokabelschau �E�paon mouseUp
  global GZahl,Liste
  lock screen
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  put the thumbpos of scrollbar 1 into Zeit
  put the number of lines of Liste into LZahl
  if LZahl = 0 then
    put the pendingmessages into Befehle
    cancel item 1 of Befehle
    send "mouseup" to btn "Start"
    exit to Metacard
  else
    put the number of lines of Liste into LZahl
    put the random of LZahl into Auswahl
    put line Auswahl of Liste into Zeile
    put item 1 of Zeile into Grafik
    put item 2 of Zeile into Deutsch
    delete line Auswahl of Liste
    
    put Grafik&&"-"&&Deutsch into fld "Legende"
    put the formattedwidth of fld "Legende" into Breite
    set the width of fld "Legende" to Breite
    set the loc of fld "Legende" to 308,428
    show fld "Legende"
    unlock screen
    #=================================
    repeat with j = 1 to 3
      set the ink of graphic Grafik to srcAnd
      set the linesize of graphic Grafik to 1
      wait 10 ticks
      set the linesize of graphic Grafik to 0
      set the ink of graphic Grafik to noop
      wait 10 ticks
      set the ink of graphic Grafik to srcAnd
      set the linesize of graphic Grafik to 1
    end repeat
    #==================================
  end if
  send "mouseup" to me in Zeit seconds
end mouseUp
        a� _          	       } Start �e�x  �on mouseUp
  global GZahl, Liste
  show btn "stop"
set the showborder of fld "continuous" to true
set the showborder of fld "Manual" to false
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  put empty into Liste
  put the number of graphics into GZahl
  repeat with i = 1 to GZahl
    put the short name of graphic i into item 1 of line i of Liste
    put the trans of graphic i into item 2 of line i of Liste
  end repeat
  send "mouseup" to btn "Vokabelschau"
end mouseUp
       k� n  (starts a continuously running word show  start word show          	       ~ stop �e�x  Xon mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
  hide me
  set the showborder of fld "continuous" to false
  set the width of fld "Legende" to 230
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
end mouseUp
       j� p  stops continuous word show  stop word show          	     
    	        � r            display time in seconds   � Pumuckl.jpg  	`    @  n _�, Pumuckl.jpg     � 
right eye   KThon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
  show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
  hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
           ����ff  �  � �     trans  rechtes Auge      h  � 	left eye   KTdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
           ����ff  �  �     trans  linkes Auge      h  � nose   KTdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
           ����ff  �  �     trans  Nase      h  � television set   KRdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  � � � r �   trans  	Fernseher         � ������ �� �� �  � remote control   KRdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  � Hc .    trans  Fernbedienung         Hma{uxvp\cHfHm
  � Legende  #h   2 ������  dddddd  ������  @  �� � &        �    � 
right ear   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  � �     trans  rechtes Ohr      g � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � 	left ear   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  � - �     trans  
linkes Ohr      P6 �5 �4 �3 �2 �2 �2 �1 �1 �1 �1 �0 �0 �0 �/ �/ �/ �/ �/ �/ �/ �. �. �. �. �- �- �- �- �- �- �. �/ �/ �0 �1 �2 �3 �4 �4 �5 �6 �6 �7 �8 �8 �9 �9 �9 �: �: �; �< �< �= �= �= �= �= �> �> �> �> �> �> �= �= �= �< �< �; �: �: �9 �8 �7 �7 �6 �5 �4 �  � mouth   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  �     trans  Mund      F � � � � � � � �
 �
 �
 �	 �	 � � � � � � � � � � � � � � � � � � � �	 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � right hand   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  �     trans  rechte Hand      N � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � �	 �  � right cheek   KTdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  � �     trans  rechte Wange      h  � left cheek   KTdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  �     trans  linke Wange      h  � chin   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  �     trans  Kinn      < � � � �	 �
 �
 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � � � �	 �  � jug   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  � � c 3 ;   trans  Krug      �� e� e� e� e� e� e� e� f� f� g� g� h� h� i� k� l� m� n� o� p� q� r� s� t� t� u� u� v� w� w� x� x� y� z� {� {� |� }� }� ~� � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � ~� }� |� {� z� y� x� w� v� v� u� t� t� s� r� q� p� p� o� n� m� l� k� i� h� g� g� f� e� e� d� d� d� d� d� d� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� d� d� d� e� e� e� f  � pants   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  � : >   trans  Hose     ( � � � � � � � � � �  �! �" �# �$ �% �& �' �( �) �* �+ �, �, �- �. �/ �0 �1 �2 �3 �4 �5 �5 �6 �7 �8 �9 �: �; �< �= �> �? �@ �A �B �C �D �E �F �G �G �H �I �J �K �L �L �M �M �M �N �N �N �O �O �P �P �P �P P QQQQQQRRR	R
R
Q
P
O
NNMLKJJIHGFEDCBA@?>==<;::98766543210//.//0123456789:;<=>?@ABCDEFGHIJJKLLMNNNNOOOPPPPPPPPPPO O!O"N#N#M$M$L%K%J%I%H&H&G&F&E&D&C'C'B'A'@'?'>'='<';':'9'8'7(6(4(3(2(1(0(/(.(-(,)+)*)))()')&*%*$*#*"*!* *********)('&&%%$##"!   � � � � � � � � � � � � � � � � � � � � �  � 	pullover   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  � � C 3   trans  Pullover     # � � � � � � � � �  � � � � � � � � � � � � � � � � �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � �  �! �" �" �# �# �# �# �$ �$ �# �# �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 �	 �	 � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � 	 !')*+,,,,,,,,++++,,,-
.	..//////00 0 �0 �0 �0 �0 �0 �/ �/ �. �. �- �- �, �, �, �+ �* �* �) �( �( �' �' �& �& �% �% �$ �# �" �  � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � �  � right foot   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  �S ! "   trans  rechter Fu�      |TUVWXXYZ[ [ \ �\ �] �^ �^ �_ �` �a �a �b �b �c �d �e �e �f �g �h �h �h �i �i �j �j �k �k �l �l �l �m �n �o �p �q �q �r �s �t �t �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u uuuuuuuu	u
uuutsrqponmlkjihhgfe
e
d	c	b	a	``_^]\[ZYXWVUTSSSSSTT  � 
left foot   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  � R  &   trans  
linker Fu�      �TUVWWXYZ[\\]^_`abcddefghijklmnopqrsstuuuvvwwwxxxxwwvu u!u"u#u$u%u&u'u(v)v*v+v,v-v.v/v0v0u1u2u2t2s2r2q2p2o2n1n1m0m0l0k/k/j/i.i.h-h-g,g+g+f*f*e)e)d(d'c&c&b%b%a$a#`"`"_!_!^ ]\[ZYYXWVUTSSSSRRSTUVWXYZ[\  � hair   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  � ` � �   trans  Haar      � c � d � e � f � g � h � i � j � k � k � l � m � n � o � p � q � r � r � s � t � t � t � t � t � t � t � t � t � u � u � u � v � v � v � v � v � w � w � w � x � x � y � y � y � z � z � z � { � { � | � | � | � } � } � } � ~ � ~ �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 �	 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �# �# �$ �$ �% �% �& �& �' �' �' �' �' �' �( �( �( �( �) �) �) �) �) �* �* �* �+ �+ �+ �+ �+ �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �, �, �, �+ �* �) �) �( �' �& �% �$ �# �# �" �! �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �# �# �# �$ �% �& �& �' �' �( �) �) �* �* �+ �+ �+ �, �, �- �- �- �. �. �. �/ �0 �2 �2 �2 �2 �2 �2 �2 �2 �2 �3 �4 �5 �6 �7 �7 �8 �8 �8 �9 �9 �9 �9 �: �: �: �; �; �; �; �; �: �: �9 �9 �8 �7 �5 �3 �2 �1 �0 �/ �. �- �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �. �. �. �/ �/ �/ �/ �/ �0 �0 �1 �1 �1 �2 �3 �4 �5 �6 �7 �8 �9 �: �; �; �< �< �= �= �> �> �> �? �? �? �? �? �@ �@ �@ �@ �@ �@ �@ �? �> �> �= �< �< �; �: �: �9 �9 �8 �7 �6 �5 �4 �3 �2 �2 �2 �3 �4 �5 �7 �8 �9 �9 �: �; �; �; �< �< �< �< �= �= �= �> �> �> �? �? �? �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �A �A �A �B �B �C �C �D �D �E �F �F �G �H �I �I �J �K �L �N �N �N �O �O �O �N �N �N �N �N �M �M �M �M �L �L �L �L �K �K �K �J �I �H �G �F �F �E �D �D �B �B �@ �@ �? �? �@ �A �B �C �D �E �F �F �G �H �H �G �F �E �D �C �B �A �@ �? �> �> �= �= �< �< �: �9 �8 �6 �5 �5 4 . }- }, |* z) y( y( x' x& x& w% w% v& v& u& t' s' r' q( p( o) o* m* l+ l+ k+ j, j, i- h- b- a, a+ a* a) a( `' `& `% `$ `# `" `! `  ` ` ` ` ` a a b b c d e f g h h h i i j j j k l l m
 m	 n n o o p q r r q q p n m l  l  k � k � j � i � h � g � g � f � e � e � d � c � b � b � b � b � b � b � c � c � c � d  � carpet   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  p8 Q   trans  Teppich     [ �: �; �< �= �> �? �@ �A �B �C �C �D �E �F �G �H �I �I �J �K �L �M �N �N �O �O �O �O �P �P �Q Q RRSTTUVWXYYZ Z �[ �\ �\ �] �^ �^ �_ �` �` �a �b �c �c �d �d �e �f �g �h �h �h �i �i �i �j �j �k �l �l �m �n �n �o �o �p �q �q �q �r �s �t �t �u �v �v �v �w �w �w �w �w �w �w �w �w �w �x xxxxxyyyy	y	x
x
wwwvvuutsrqpomlkjhggfedcba`_
^
]
\
[
Z
Y
X
W
V
T	S
R
Q
P
O
NNMLKJIHGFEDCCCDEFGHIJKLMMNOPQRSSSSTUVWXYZ[\]^_`abcdeffghijklmnopqqrstuvwwwwwwwww w!w"w#w%x&x'x(x)x*x+x+w,w-w-v.v/u0u1t2t2s3r4q4p4o4n4m3m3k2k2j1i0h/g.g-f,e,d,c+c*b)`(_'^']&\%\$[#Z"Y!Y!X W VVUTS S!S#R$Q%P%O%N&N&M&L&K&J'J(J)K*M+M+N,N-N-O.P/P/Q0Q0R1R3S4T5T6U7U7V9V:V;W<W=X?X@X?X>X>W=W;V9T7S1Q+O)N(N(M)M)L*L+L,L-M.M0N1O2O3P4P6R7R8S9S:T;T<T=T<T;T:S9S8R7Q6Q6P7Q9Q:Q:R;R=S?U@UAUBUCVEWFWHXNYOYOZU[V[^]f^g^h_j`lamanbobpcvdxeyeze{f|f~gg�h�i�i�i�i�i�i�j�j�j�j�k�l�m�o�p�q�r�s�t�u�w�x�x�y�z�z�z�{�{�|�|�|�}�}�}}}}|}{}z}y}w}u}u|u{uzuyuxuwuvuuutusuruqupuountnsmslrlqkqjoingmglflekejeidgcecebdbba\a[aZaYaWaVaUaTaSaRaQaPaOaNaMbLcKcJdJeIfHfHgGgGhFhFiFjFkGlGmHnIoJpKpKqLqMrNrNsPtRuSuUvVwWwYyZy[z\z]{^{_{`{a{b{d{j{k{l{m{n{o{p{q{r{s{sztzt{t|t}t~tsrq�p�o�n�n�m�l�k�j�i�h�g�f�e�d�c�c�b�a�`�_�^�]�\�[�Z�Y�Y�X�W�W�V�U�T�S�R�P�N�M�L�J�I�H�F�D�C�A�;�9�9�7�5�4�2�1�'������������
�	�������� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �~ �~ �} �} �| �{ �y �x �w �v �u �u �t �r �q �q �p �o �n �m �m �l �j �j �h �g �g �f �e �d �b �a �` �_ �^ �] �] �\ �[ �Z �Z �Z �Z Z }Z {Z {[ {] }^ }_ ~_ �a �g �h �i �j �j �k �k �j �i �h �h �g �f �e �d �b y\ w[ v[ u[ uZ tZ sY rY rX qX qW pV pT pS pR qR rR sR uR {R }R �R �R �R �R �Q �P �P �P �O �O �N �N �M �L �L �K �K �K �J �J �J �J �J �J �J �J �J �J �J �J �J �I �I �I �H �H �H �H �G �G �F �F �F �E �E �D �D �D �C �C �C �B �B �B �A �A �@ �? �? �? �? �? �? �? �> �> �> �= �= �< �< �; �; �; �: �: �9 �9 �9 �9 �9 �8  � table   KSdon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  r � z b   trans  Tisch     \ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � ~ � } � | � { � { � z � y � x � w � v � v � u � t � t � s � s � r � r � r � r � r � r � s � s � t � u � v � v � u � u � u � u � t � t � t � t � t � t � t � t � u � v � w � x � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � �  �! �" �# �$ �% �' �) �* �+ �- �. �/ �0 �1 �2 �2 �3 �3 �4 �4 �5 �5 �5 �4 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �& �& �% �% �% �% �% �% �$ �# �" �! �  �  �  �  �  �  � � � � � � � � � � � � � � � �  �! �! �" �" �# �$ �% �% �& �& �& �' �' �' �& �& �% �$ �# �! �  � � � � � � � � � � � � � � � � � � � � � �
 � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � graphic scripts �E�p �on mouseUp
  put the number of graphics into Zahl
repeat with i = 1 to Zahl
set the script of graphic i to the script of graphic 1
end repeat
end mouseUp
         � h          	     
  � 
Vokabular  �!`       ���S �        � hair,Haar,das Haar,das Haar  7right eye,rechtes Auge,das rechte Auge,das rechte Auge  3left eye,linkes Auge,das linke Auge,das linke Auge  4right ear,rechtes Ohr,das rechte Ohr,das rechte Ohr  0left ear,linkes Ohr,das linke Ohr,das linke Ohr  nose,Nase,die Nase,die Nase  chin,Kinn,das Kinn,das Kinn  mouth,Mund,den Mund,der Mund  7right hand,rechte Hand,die rechte Hand,die rechte Hand  3left hand,linke Hand,die linke Hand,die linke Hand  ,pullover,Pullover,den Pullover,der Pullover  pants,Hose,die Hose,die Hose   table,Tisch,den Tisch,der Tisch  Aremote control,Fernbedienung,die Fernbedienung,die Fernbedienung  5television set,Fernseher,den Fernseher,der Fernseher  jug,Krug,den Krug,der Krug  'carpet,Teppich,den Teppich,der Teppich  6right foot,rechter Fu�,den rechten Fu�,der rechte Fu�  2left foot,linker Fu�,den linken Fu�,der linke Fu�  7left cheek,linke Wange,die linke Wange,die linke Wange  ;right cheek,rechte Wange,die rechte Wange,die rechte Wange   �    	`    @ ���  �   � 
set trans �E�pon mouseUp
  put the number of graphics into Zahl
put fld "Vokabular" into Vokabular
repeat with i = 1 to Zahl
put the short name of graphic i into GName
put lineoffset(GName,Vokabular) into Zeile
set the trans of graphic i to item 2 of line Zeile of Vokabular
end repeat
end mouseUp
         " l          	     
  �            � #5 +            move the mouse to see the words  and click for translation   � "M" aus �A�X  on mouseUp
  hide stack "Metacard Menu Bar"
  hide stack "home"
end mouseUp

 on mouseenter
set the showname of me to true
set the showborder of me to true
end mouseenter

on mouseleave
set the showname of me to false
set the showborder of me to false
end mouseleave
        � &          	       � "M" an �a�X  �on mouseUp
if the label of me is "M. on" then
  show stack "Metacard Menu Bar"
  show stack "home"
set the label of me to "M. off"
else
 hide stack "Metacard Menu Bar"
  hide stack "home"
set the label of me to "M. on"
end if
end mouseUp

on mouseenter
  set the showname of me to true
  set the showborder of me to true
end mouseenter

on mouseleave
  set the showname of me to false
  set the showborder of me to false
end mouseleave
        (� (  M. off          	       � New Button �C�p �on mouseUp
  answer "Willst Du wirklich aufh�ren?" with "Ja" or "Nein"
  if it is "Ja" then
    close this stack
    show stack "Metacard Menu Bar"
    show stack "home"
  end if
end mouseUp
       � $ ( Dieses Programm schlie�en.               �             	       � 
paper bag   KShon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
  show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
  hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  � T � , 9   trans  Einkaufst�te      �b �a �` �_ �^ �] �] �\ \\[[ZZZZYYY	X	X
XXXWWWWWVVVUUUUUTTTTTTUVVWXYZZ [ \ ]!^!_!`!a!b"c"d"e"f#g#h#i#j#k#l#m#n#o#p#q#q"r!r rssttuuvvwxyyzz{{|||}}}}~~~~
	�� ~ } | } } �} �} �} �} �} �} �} �} �} �} �} �} �} �} �} �| �{ �z �y �x �w �w �v �u �t �t �s �r �q �q �p �o �n �m �l �k �j �i �i �h �h �g �f �f �e �e �d �d �c �c �b �b �a �a �a �a �a �a �a �b �b �b �c �c �d �c �b �a �` �  � curtain   KShon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
  show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
  hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  q � X P   trans  Gardine     � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � ~ � } � | � { � { � z � y � x � w � v � u � s � s � r � r � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � r � r � r � r � s � s � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � s � t � v � w � x � y � z � { � | � } � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � 
hallstand   KRhon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
  show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
  hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  � U u 4 u   trans  Kleiderst�nder         c �^ �f �g �` �V �U �Y �V �[ �` �g �l uo vt �{ �� �� �� �� �� �q �q �x �x �p �c �  � Vokabelschau �E�p�on mouseUp
  global GZahl,Liste
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  put the thumbpos of scrollbar 1 into Zeit
  put the number of lines of Liste into LZahl
  if LZahl = 0 then
    send "mouseup" to btn "Start"
    exit to Metacard
  else
    put the number of lines of Liste into LZahl
    put the random of LZahl into Auswahl
    put line Auswahl of Liste into Zeile
    put item 1 of Zeile into Grafik
    put item 2 of Zeile into Deutsch
    delete line Auswahl of Liste
    
    put Grafik&&"-"&&Deutsch into fld "Legende"
    put the formattedwidth of fld "Legende" into Breite
    set the width of fld "Legende" to Breite
    set the loc of fld "Legende" to 308,63
    show fld "Legende"
    #=================================
    repeat with j = 1 to 3
      set the ink of graphic Grafik to srcAnd
      set the linesize of graphic Grafik to 1
      wait 10 ticks
      set the linesize of graphic Grafik to 0
      set the ink of graphic Grafik to noop
      wait 10 ticks
      set the ink of graphic Grafik to srcAnd
      set the linesize of graphic Grafik to 1
    end repeat
    #==================================
  end if
  send "mouseup" to me in Zeit seconds
end mouseUp
        a� _          	       � Pumuckl.jpg  	p�on mouseup
  global Wort
  put the name of the target into Objektname
  put word 1 of Objektname into Objekt
  if Objekt is not "graphic" then
    put "You did not click at the"&&Wort&"! You clicked at "&CR&"another object that does not belong to the test. Try again." into fld "feedback"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of fld "feedback" to red
    else set the textcolor of word 7 to 8 of fld "feedback" to red
    show fld "Feedback"
    # else
    # put the short name of me into GName
    # if Wort is GName then
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    # send "mouseup" to btn "Aufgabe"
    # else
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
    # end if
  end if
end mouseup
     @  n _�, Pumuckl.jpg   
  �   �)`       cA��        � --to handle enterpage  --system lernen  --put "aus" into Lernen  --set syslockscreen to true  --hide button "aus"  --show button "an"  --end enterpage    to handle buttonup  (system lernen, WortVar, Fehler, Treffer  conditions  when lernen is "an"   !if target is not field "Anzeige"  4put name of target into the text of field "Anzeige"  end if  when lernen is "aus"  if name of target = "" then  set syslockscreen to true    % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  E put "you didn't click on anything you should learn!" into feedback2  2 put feedback2 into the text of field "feedback2"   hide field "OK"   show field "feedback"   show field "feedback2"   end if  Eif name of target <> "" and name of target <> item 1 of WortVar then   set syslockscreen to true  # increment(text of field "Fehler")  % put item 1 of WortVar into feedback  F put "Sorry, you did not click on the " before first char of feedback  % put ";" after last char of feedback  0 put feedback into the text of field "Feedback"  # put name of target into feedback2  : put "you clicked on the " before first char of feedback2  & put "!" after last char of feedback2  2 put feedback2 into the text of field "feedback2"  6 put wordcount(text of field "feedback2") into Laenge   if Laenge is 5 then  G set the strokecolor of word 5 of the text of field "feedback2" to red   end if   if Laenge is 6 then  M set the strokecolor of words 5 to 6 of the text of field "feedback2" to red   end if  L set the strokecolor of last char of the text of field "feedback2" to black   hide field "OK"   show field "feedback"   show field "feedback2"   end if  , if name of target = item 1 of WortVar then   beep 1   set syslockscreen to true   hide field "feedback"   hide field "feedback2"   show field "OK"  $ increment(text of field "Treffer")   set syslockscreen to false   pause 2 seconds  # send buttonup to button "Aufgabe"   end if  end  conditions  end buttonup    to handle rightbuttonup  (system lernen, WortVar, Fehler, Treffer  --conditions  --when lernen is "an"   !if target is not field "Anzeige"  put name of target into Wort    .put the text of field "Lexikon" into Lexikon2  (put textlinecount(Lexikon2) into Anzahl  step i from 1 to Anzahl   4 put item 1 of textline i of Lexikon2 into Suchwort   if Wort is Suchwort then  N   put item 2 of textline i of Lexikon2 into the Text of field "Uebersetzung"     break step   end if  	end step  show field "Uebersetzung"  pause 2 seconds  hide field "uebersetzung"  end if    end rightbuttonup     �    	`    @ B �   � 
right eye   KT �on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
           ����ff  �  � �     trans  rechtes Auge      h  � 	left eye   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
           ����ff  �  �     trans  linkes Auge      h  � nose   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
           ����ff  �  �     trans  Nase      h  � television set   KR�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � � � r �   trans  	Fernseher         � ������ �� �� �  � remote control   KR�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � Hc .    trans  Fernbedienung         Hma{uxvp\cHfHm
  � Legende  #h         � . � #        �    � 
right ear   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � �     trans  rechtes Ohr      g � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � 	left ear   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � - �     trans  
linkes Ohr      P6 �5 �4 �3 �2 �2 �2 �1 �1 �1 �1 �0 �0 �0 �/ �/ �/ �/ �/ �/ �/ �. �. �. �. �- �- �- �- �- �- �. �/ �/ �0 �1 �2 �3 �4 �4 �5 �6 �6 �7 �8 �8 �9 �9 �9 �: �: �; �< �< �= �= �= �= �= �> �> �> �> �> �> �= �= �= �< �< �; �: �: �9 �8 �7 �7 �6 �5 �4 �  � mouth   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans  Mund      F � � � � � � � �
 �
 �
 �	 �	 � � � � � � � � � � � � � � � � � � � �	 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � 
left hand   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � �     trans  
linke Hand      Z
 �	 � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � �	 �
 �
 �
 �	 �  � right hand   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans  rechte Hand      N � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � �	 �  � right cheek   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � �     trans         h  � left cheek   KT�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans         h  � chin   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �     trans  Kinn      < � � � �	 �
 �
 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � � � �	 �  � jug   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � � c 3 ;   trans  Krug      �� e� e� e� e� e� e� e� f� f� g� g� h� h� i� k� l� m� n� o� p� q� r� s� t� t� u� u� v� w� w� x� x� y� z� {� {� |� }� }� ~� � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � ~� }� |� {� z� y� x� w� v� v� u� t� t� s� r� q� p� p� o� n� m� l� k� i� h� g� g� f� e� e� d� d� d� d� d� d� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� c� d� d� d� e� e� e� f  � pants   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � : >   trans  Hose     ( � � � � � � � � � �  �! �" �# �$ �% �& �' �( �) �* �+ �, �, �- �. �/ �0 �1 �2 �3 �4 �5 �5 �6 �7 �8 �9 �: �; �< �= �> �? �@ �A �B �C �D �E �F �G �G �H �I �J �K �L �L �M �M �M �N �N �N �O �O �P �P �P �P P QQQQQQRRR	R
R
Q
P
O
NNMLKJJIHGFEDCBA@?>==<;::98766543210//.//0123456789:;<=>?@ABCDEFGHIJJKLLMNNNNOOOPPPPPPPPPPO O!O"N#N#M$M$L%K%J%I%H&H&G&F&E&D&C'C'B'A'@'?'>'='<';':'9'8'7(6(4(3(2(1(0(/(.(-(,)+)*)))()')&*%*$*#*"*!* *********)('&&%%$##"!   � � � � � � � � � � � � � � � � � � � � �  � 	pullover   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � � C 3   trans  Pullover     # � � � � � � � � �  � � � � � � � � � � � � � � � � �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � �  �! �" �" �# �# �# �# �$ �$ �# �# �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �
 �	 �	 � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � 	 !')*+,,,,,,,,++++,,,-
.	..//////00 0 �0 �0 �0 �0 �0 �/ �/ �. �. �- �- �, �, �, �+ �* �* �) �( �( �' �' �& �& �% �% �$ �# �" �  � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � �  � right foot   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  �S ! "   trans  rechter Fu�      |TUVWXXYZ[ [ \ �\ �] �^ �^ �_ �` �a �a �b �b �c �d �e �e �f �g �h �h �h �i �i �j �j �k �k �l �l �l �m �n �o �p �q �q �r �s �t �t �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u �u uuuuuuuu	u
uuutsrqponmlkjihhgfe
e
d	c	b	a	``_^]\[ZYXWVUTSSSSSTT  � 
left foot   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � R  &   trans  
linker Fu�      �TUVWWXYZ[\\]^_`abcddefghijklmnopqrsstuuuvvwwwxxxxwwvu u!u"u#u$u%u&u'u(v)v*v+v,v-v.v/v0v0u1u2u2t2s2r2q2p2o2n1n1m0m0l0k/k/j/i.i.h-h-g,g+g+f*f*e)e)d(d'c&c&b%b%a$a#`"`"_!_!^ ]\[ZYYXWVUTSSSSRRSTUVWXYZ[\  � hair   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � ` � �   trans  Haar      � c � d � e � f � g � h � i � j � k � k � l � m � n � o � p � q � r � r � s � t � t � t � t � t � t � t � t � t � u � u � u � v � v � v � v � v � w � w � w � x � x � y � y � y � z � z � z � { � { � | � | � | � } � } � } � ~ � ~ �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 �	 �
 �
 �
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �# �# �$ �$ �% �% �& �& �' �' �' �' �' �' �( �( �( �( �) �) �) �) �) �* �* �* �+ �+ �+ �+ �+ �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �- �, �, �, �+ �* �) �) �( �' �& �% �$ �# �# �" �! �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �# �# �# �$ �% �& �& �' �' �( �) �) �* �* �+ �+ �+ �, �, �- �- �- �. �. �. �/ �0 �2 �2 �2 �2 �2 �2 �2 �2 �2 �3 �4 �5 �6 �7 �7 �8 �8 �8 �9 �9 �9 �9 �: �: �: �; �; �; �; �; �: �: �9 �9 �8 �7 �5 �3 �2 �1 �0 �/ �. �- �, �, �, �, �, �, �, �, �, �, �- �- �- �- �- �. �. �. �/ �/ �/ �/ �/ �0 �0 �1 �1 �1 �2 �3 �4 �5 �6 �7 �8 �9 �: �; �; �< �< �= �= �> �> �> �? �? �? �? �? �@ �@ �@ �@ �@ �@ �@ �? �> �> �= �< �< �; �: �: �9 �9 �8 �7 �6 �5 �4 �3 �2 �2 �2 �3 �4 �5 �7 �8 �9 �9 �: �; �; �; �< �< �< �< �= �= �= �> �> �> �? �? �? �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �@ �A �A �A �B �B �C �C �D �D �E �F �F �G �H �I �I �J �K �L �N �N �N �O �O �O �N �N �N �N �N �M �M �M �M �L �L �L �L �K �K �K �J �I �H �G �F �F �E �D �D �B �B �@ �@ �? �? �@ �A �B �C �D �E �F �F �G �H �H �G �F �E �D �C �B �A �@ �? �> �> �= �= �< �< �: �9 �8 �6 �5 �5 4 . }- }, |* z) y( y( x' x& x& w% w% v& v& u& t' s' r' q( p( o) o* m* l+ l+ k+ j, j, i- h- b- a, a+ a* a) a( `' `& `% `$ `# `" `! `  ` ` ` ` ` a a b b c d e f g h h h i i j j j k l l m
 m	 n n o o p q r r q q p n m l  l  k � k � j � i � h � g � g � f � e � e � d � c � b � b � b � b � b � b � c � c � c � d  � carpet   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  p8 Q   trans  Teppich     [ �: �; �< �= �> �? �@ �A �B �C �C �D �E �F �G �H �I �I �J �K �L �M �N �N �O �O �O �O �P �P �Q Q RRSTTUVWXYYZ Z �[ �\ �\ �] �^ �^ �_ �` �` �a �b �c �c �d �d �e �f �g �h �h �h �i �i �i �j �j �k �l �l �m �n �n �o �o �p �q �q �q �r �s �t �t �u �v �v �v �w �w �w �w �w �w �w �w �w �w �x xxxxxyyyy	y	x
x
wwwvvuutsrqpomlkjhggfedcba`_
^
]
\
[
Z
Y
X
W
V
T	S
R
Q
P
O
NNMLKJIHGFEDCCCDEFGHIJKLMMNOPQRSSSSTUVWXYZ[\]^_`abcdeffghijklmnopqqrstuvwwwwwwwww w!w"w#w%x&x'x(x)x*x+x+w,w-w-v.v/u0u1t2t2s3r4q4p4o4n4m3m3k2k2j1i0h/g.g-f,e,d,c+c*b)`(_'^']&\%\$[#Z"Y!Y!X W VVUTS S!S#R$Q%P%O%N&N&M&L&K&J'J(J)K*M+M+N,N-N-O.P/P/Q0Q0R1R3S4T5T6U7U7V9V:V;W<W=X?X@X?X>X>W=W;V9T7S1Q+O)N(N(M)M)L*L+L,L-M.M0N1O2O3P4P6R7R8S9S:T;T<T=T<T;T:S9S8R7Q6Q6P7Q9Q:Q:R;R=S?U@UAUBUCVEWFWHXNYOYOZU[V[^]f^g^h_j`lamanbobpcvdxeyeze{f|f~gg�h�i�i�i�i�i�i�j�j�j�j�k�l�m�o�p�q�r�s�t�u�w�x�x�y�z�z�z�{�{�|�|�|�}�}�}}}}|}{}z}y}w}u}u|u{uzuyuxuwuvuuutusuruqupuountnsmslrlqkqjoingmglflekejeidgcecebdbba\a[aZaYaWaVaUaTaSaRaQaPaOaNaMbLcKcJdJeIfHfHgGgGhFhFiFjFkGlGmHnIoJpKpKqLqMrNrNsPtRuSuUvVwWwYyZy[z\z]{^{_{`{a{b{d{j{k{l{m{n{o{p{q{r{s{sztzt{t|t}t~tsrq�p�o�n�n�m�l�k�j�i�h�g�f�e�d�c�c�b�a�`�_�^�]�\�[�Z�Y�Y�X�W�W�V�U�T�S�R�P�N�M�L�J�I�H�F�D�C�A�;�9�9�7�5�4�2�1�'������������
�	�������� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �~ �~ �} �} �| �{ �y �x �w �v �u �u �t �r �q �q �p �o �n �m �m �l �j �j �h �g �g �f �e �d �b �a �` �_ �^ �] �] �\ �[ �Z �Z �Z �Z Z }Z {Z {[ {] }^ }_ ~_ �a �g �h �i �j �j �k �k �j �i �h �h �g �f �e �d �b y\ w[ v[ u[ uZ tZ sY rY rX qX qW pV pT pS pR qR rR sR uR {R }R �R �R �R �R �Q �P �P �P �O �O �N �N �M �L �L �K �K �K �J �J �J �J �J �J �J �J �J �J �J �J �J �I �I �I �H �H �H �H �G �G �F �F �F �E �E �D �D �D �C �C �C �B �B �B �A �A �@ �? �? �? �? �? �? �? �> �> �> �= �= �< �< �; �; �; �: �: �9 �9 �9 �9 �9 �8  � table   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  r � z b   trans  Tisch     \ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  � ~ � } � | � { � { � z � y � x � w � v � v � u � t � t � s � s � r � r � r � r � r � r � s � s � t � u � v � v � u � u � u � u � t � t � t � t � t � t � t � t � u � v � w � x � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � �	 �
 � � � � � � � � � � � � � � � � � � � �  �! �" �# �$ �% �' �) �* �+ �- �. �/ �0 �1 �2 �2 �3 �3 �4 �4 �5 �5 �5 �4 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �& �& �% �% �% �% �% �% �$ �# �" �! �  �  �  �  �  �  � � � � � � � � � � � � � � � �  �! �! �" �" �# �$ �% �% �& �& �& �' �' �' �& �& �% �$ �# �! �  � � � � � � � � � � � � � � � � � � � � � �
 � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � graphic scripts �E�p �on mouseUp
  put the number of graphics into Zahl
repeat with i = 1 to Zahl
set the script of graphic i to the script of graphic 1
end repeat
end mouseUp
         � h          	       � 
set trans �E�pon mouseUp
  put the number of graphics into Zahl
put fld "Vokabular" into Vokabular
repeat with i = 1 to Zahl
put the short name of graphic i into GName
put lineoffset(GName,Vokabular) into Zeile
set the trans of graphic i to item 2 of line Zeile of Vokabular
end repeat
end mouseUp
         " l          	     
  � Aufgabe  h         m�� $        � please, click at the hallstand         @ ��     red   	  � Start �e�pon mouseUp
  global Vokabular, Startzeit
  hide fld "lob"
  hide fld "Zeit"
  put fld "Vokabular" into Vokabular
  put 0 into fld "correct"
  put 0 into fld "mistakes"
  hide me
  put the seconds into Startzeit
  send "mouseup" to btn "Aufgabe"
end mouseUp
        � O + Try again?          	     
  �            � 5             final test   � Aufgabe �E�pMon mouseUp
  global Vokabular,Wort
  put the number of lines of Vokabular into Zahl
  if Zahl <> 1 then put Zahl&&"problems remaining" into fld "remaining"
  else put Zahl&&"problem remaining" into fld "remaining"
  hide fld "feedback"
  hide fld "feedback2"
  if Zahl is 0 then
    show btn "Start"
    hide fld "Aufgabe"
    send "mouseup" to btn "Auswertung"
    exit to Metacard
  else
    put random(Zahl) into Auswahl
    put line Auswahl of Vokabular into Zeile
    delete line Auswahl of Vokabular
    put item 1 of Zeile into Wort
    lock screen
    put "please, click on the"&&Wort into fld "Aufgabe"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 5 of fld "Aufgabe" to red
    else set the textcolor of word 5 to 6 of fld "Aufgabe" to red
    show fld "Aufgabe"
  end if
end mouseUp
       T P          	     
  � 
Vokabular  �!`       ��ZS        � hair,Haar,das Haar,das Haar  7right eye,rechtes Auge,das rechte Auge,das rechte Auge  3left eye,linkes Auge,das linke Auge,das linke Auge  4right ear,rechtes Ohr,das rechte Ohr,das rechte Ohr  0left ear,linkes Ohr,das linke Ohr,das linke Ohr  nose,Nase,die Nase,die Nase  chin,Kinn,das Kinn,das Kinn  mouth,Mund,den Mund,der Mund  7right hand,rechte Hand,die rechte Hand,die rechte Hand  3left hand,linke Hand,die linke Hand,die linke Hand  ,pullover,Pullover,den Pullover,der Pullover  pants,Hose,die Hose,die Hose   table,Tisch,den Tisch,der Tisch  Aremote control,Fernbedienung,die Fernbedienung,die Fernbedienung  5television set,Fernseher,den Fernseher,der Fernseher  jug,Krug,den Krug,der Krug  'carpet,Teppich,den Teppich,der Teppich  6right foot,rechter Fu�,den rechten Fu�,der rechte Fu�  2left foot,linker Fu�,den linken Fu�,der linke Fu�  7left cheek,linke Wange,die linke Wange,die linke Wange  ;right cheek,rechte Wange,die rechte Wange,die rechte Wange  curtain,Gardine  paper bag,Einkaufst�te  hallstand,Kleiderst�nder   �    	`    @ =�[  
  � 
feedback2  h         �� � $        � right 
  � 	mistakes  +h 
         �� *         � 0 
  �  	        �� >            	mistakes 
  � correct  +h 
        e� *         � 0 
  �  	       )� 7            correct 
  � 	feedback  h         u�� ,        � 4You did not click at the left hand! You clicked at          @ ��     red   
     #  <another object that does not belong to the test. Try again. 
  � 
remaining  
         � ;            24 problems remaining   � Auswertung �A�P�on mouseUp
  global StartZeit
  put the seconds into EndZeit
  put fld "correct" into correct
  if correct is 24 then put "Wonderful, you solved all the problems. You are the best!" into fld "Lob"
  else if correct < 24 and correct > 18 then put "Very good. You almost did all of the problems!" into fld "Lob"
  else if correct < 19 and correct > 13 then put "Good, but you can still improve." into fld "Lob"
  else if correct < 14 and correct > 8 then put "Almost satisfactory, you have to work hard." into fld "Lob"
  else if correct < 9 and correct > 5 then put "Poor, you have a long way to go to catch up." into fld "Lob"
  else if correct < 6  and correct > 0 then put "Very poor, you are a hopeless case." into fld "Lob"
  else if correct = 0 then put "Indeed, you are a complete idiot!" into fld "Lob"
  show fld "lob" with visual effect scroll right
  put EndZeit - StartZeit into Zeit
  put "The time you needed for"&CR&"this test was"&&Zeit&&"seconds." into fld "Zeit"
  show fld "Zeit" with visual effect scroll right
end mouseUp

on mouseenter
  set the showname of me to true
  set the showborder of me to true
end mouseenter

on mouseleave
  set the showname of me to false
  set the showborder of me to false
end mouseleave
         � f          	     
  � Lob  �   Bon mouseUp
  hide me with visual effect reveal right
end mouseUp
  C         ������  444444  `  � � F        � :Wonderful, you solved all the problems. You are the best!   � 
paper bag   KS�on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � T � , 9   trans  Einkaufst�te      �b �a �` �_ �^ �] �] �\ \\[[ZZZZYYY	X	X
XXXWWWWWVVVUUUUUTTTTTTUVVWXYZZ [ \ ]!^!_!`!a!b"c"d"e"f#g#h#i#j#k#l#m#n#o#p#q#q"r!r rssttuuvvwxyyzz{{|||}}}}~~~~
	�� ~ } | } } �} �} �} �} �} �} �} �} �} �} �} �} �} �} �} �| �{ �z �y �x �w �w �v �u �t �t �s �r �q �q �p �o �n �m �l �k �j �i �i �h �h �g �f �f �e �e �d �d �c �c �b �b �a �a �a �a �a �a �a �b �b �b �c �c �d �c �b �a �` �  � curtain   KS�on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  q � X P   trans  Gardine     � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � ~ � } � | � { � { � z � y � x � w � v � u � s � s � r � r � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � q � r � r � r � r � s � s � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � r � s � t � v � w � x � y � z � { � | � } � ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � 
hallstand   KR�on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    # put "right" into field "feedback2"
    # hide fld "feedback"
    # show fld "feedback2"
    # wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    # put "You did not click at the"&&Wort&"!"&CR&"You clicked at the"&&GName&"." into fld "feedback"
    # show fld "Feedback"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  � U u 4 u   trans  Kleiderst�nder         c �^ �f �g �` �V �U �Y �V �[ �` �g �l uo vt �{ �� �� �� �� �� �q �q �x �x �p �c �
  � 	Schleife  �!`        # >        a    �    `    @    <   � 	Schleife �E�p �on mouseUp
  Global Wort
  if Wort is not among the lines of fld "Schleife" then put CR&Wort after last line of fld "Schleife"
  if line 1 of fld "Schleife" is empty then delete line 1 of fld "Schleife"
end mouseUp
        � U          	       � Schleifenstart �E�paon mouseUp
  Global Vokabular
  put the number of lines of fld "Schleife" into SZahl
  if SZahl is 1 then
    answer "You got still one word wrong."&CR&"Do you want to try this word one more time?" with "Yes" or "No"
  else
    answer "You got"&&Szahl&&"words wrong."&CR&"Do you want to try these words one more time?" with "Yes" or "No"
  end if
  if it is "yes" then
    put fld "Schleife" into Vokabular
    put empty into fld "Schleife"
    put 0 into fld "correct"
    put 0 into fld "mistakes"
    send "mouseup" to btn "Aufgabe"
  else
    show btn "Start"
    hide fld "Aufgabe"
  end if
end mouseUp
        
� g          	     
  � 
Vokabular  �!`      �� 5 �u        a hair  
right eye  	left eye  
right ear  	left ear  nose  chin  mouth  right hand  
left hand  	pullover  pants  table  remote control  television set  jug  carpet  right foot  
left foot  left cheek  right cheek  curtain  
paper bag  
hallstand   �    	`    @  \ 6 s 
  � Lob-Phrasen  �!`       - 3/ >        a 0All problems have been solved. Congratulations!  5You did a good job. This is the end of the exercise.  8Very good at last. Do you want to try another exercise?  /I hope you are satisfied with you performance.  5OK. The more often you try, the more you will learn.   �    	`    @ K 4  <   J 
left hand   KSon mouseup
  global Wort,GName
  put the short name of me into GName
  if Wort is GName then
    add 1 to fld "correct"
    send "mouseup" to btn "Aufgabe"
  else
    add 1 to fld "mistakes"
    send "mouseup" to btn "Schleife"
    send "mouseup" to btn "Aufgabe"
  end if
end mouseup
   ����ff  �  � �     trans  
linke Hand      Z
 �	 � � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � � �	 �
 �
 �
 �	 �  � other exercises  i(        � h q   
FinalTest �e�p�on mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
hide btn "stop"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,428
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  visual effect barn door open
  go to cd "endtest"
  
end mouseUp
       � \  final test          	       k Test �e�p�on mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
hide btn "stop"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,428
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  visual effect checkerboard
  go to cd "Testen"
  
end mouseUp
       � \  test and learn          	       � move �e�p�on mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
hide btn "stop"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,428
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  visual effect reveal from right
  go to cd "Lernen"
  
end mouseUp
       � [  move and click          	       � test with loop �E�x  �on mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
hide btn "stop"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,428
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  visual effect iris close very slow
  go to cd "loop"
  
end mouseUp
       � \          	       � other exercises  i(        � d s  � 
FinalTest �e�p Qon mouseUp
  
  visual effect reveal  right
  go to cd "endtest"
  
end mouseUp
       � X  final test          	       � Test �e�p Oon mouseUp
  
  visual effect checkerboard
  go to cd "Testen"
  
end mouseUp
       � X  test and learn          	       � 
word show �E�p Ton mouseUp
  
  visual effect venetian blinds
  go to cd "Wordshow"
  
end mouseUp
       � X          	       � test with loop �E�x   Uon mouseUp
  
  visual effect iris close very slow
  go to cd "loop"
  
end mouseUp
       � X          	       � other exercises  i(        � f h   learn words �e�p Hon mouseUp
  visual effect scroll left
  go to cd "Lernen"
end mouseUp
       	� Z  move and click          	       l 
FinalTest �e�p Oon mouseUp
  visual effect barn door open
  go to cd "endtest"
  
end mouseUp
       	� Z  final test          	       � 
word show �E�p Ton mouseUp
  
  visual effect venetian blinds
  go to cd "Wordshow"
  
end mouseUp
       	� Z          	       � test with loop �E�x   Uon mouseUp
  
  visual effect iris close very slow
  go to cd "loop"
  
end mouseUp
       	� Z          	       � other exercises  i(        � e k  [ learn words �e�p Kon mouseUp
  visual effect reveal from left
go to cd "lernen"
end mouseUp
       
� Y  move and click          	       n Test �e�p Lon mouseUp
  visual effect checkerboard
  go to cd "Testen"
  
end mouseUp
       
� X  test and learn          	       � 
word show �E�x   Ton mouseUp
  
  visual effect venetian blinds
  go to cd "Wordshow"
  
end mouseUp
       � X          	       � 
FinalTest �e�p Oon mouseUp
  visual effect barn door open
  go to cd "endtest"
  
end mouseUp
       
� X  final test          	       � other exercises  i(        � f t  � learn words �e�p Kon mouseUp
  visual effect reveal from left
go to cd "lernen"
end mouseUp
       
� Y  move and click          	       � Test �e�p Lon mouseUp
  visual effect checkerboard
  go to cd "Testen"
  
end mouseUp
       
� Y  test and learn          	       � 
word show �E�x   Ton mouseUp
  
  visual effect venetian blinds
  go to cd "Wordshow"
  
end mouseUp
       
� Y          	       � test with loop �E�x   Uon mouseUp
  
  visual effect iris close very slow
  go to cd "loop"
  
end mouseUp
       	� Z          	       � control manually �e�x  �on mouseUp
  global GZahl,Liste
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
  hide btn "stop"
set the showborder of fld "continuous" to false
set the showborder of fld "manual" to true
  set the width of fld "Legende" to 230
  lock screen
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  put the number of lines of Liste into LZahl
  if LZahl = 0 then
    send "mouseup" to btn "Start manually"
    exit to Metacard
  else
    put the number of lines of Liste into LZahl
    put the random of LZahl into Auswahl
    put line Auswahl of Liste into Zeile
    put item 1 of Zeile into Grafik
    put item 2 of Zeile into Deutsch
    delete line Auswahl of Liste
    put Grafik&&"-"&&Deutsch into fld "Legende"
    put the formattedwidth of fld "Legende" into Breite
    set the width of fld "Legende" to Breite
    set the loc of fld "Legende" to 308,428
    show fld "Legende"
    unlock screen
    #=================================
    repeat with j = 1 to 3
      set the ink of graphic Grafik to srcAnd
      set the linesize of graphic Grafik to 1
      wait 10 ticks
      set the linesize of graphic Grafik to 0
      set the ink of graphic Grafik to noop
      wait 10 ticks
      set the ink of graphic Grafik to srcAnd
      set the linesize of graphic Grafik to 1
    end repeat
    #==================================
  end if
end mouseUp
      �� g  (show is moved forward by clicking at me  click for next word          	       � Start manually �e�x  �on mouseUp
  global GZahl, Liste
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  put empty into Liste
  put the number of graphics into GZahl
  repeat with i = 1 to GZahl
    put the short name of graphic i into item 1 of line i of Liste
    put the trans of graphic i into item 2 of line i of Liste
  end repeat
  send "mouseup" to btn "control manually"
end mouseUp
        �� g  start word show manually          	     
  � continuous          k� m            continuous show 
  � manual         �� m            manually controlled show    right hand   KS�
on mouseup
  global Wort
  put the short name of me into GName
  if Wort is GName then
    put "right" into field "feedback2"
    hide fld "feedback"
    show fld "feedback2"
    wait 2 seconds
    send "mouseup" to btn "Aufgabe"
  else
    put "You did not click on the"&&Wort&"!" into line 1 of fld "feedback"
    put "You clicked on the"&&GName&"." into line 2 of fld "feedback"
    set the textcolor of line 1 of fld "feedback" to "black"
    set the textcolor of line 2 of fld "feedback" to "black"
    put the number of words of Wort into WZahl
    if WZahl is 1 then set the textcolor of word 7 of line 1 of fld "feedback" to "red"
    else set the textcolor of word 7 to 8 of line 1 of fld "feedback" to "red"
    put the number of words of GName into GZahl
    if GZahl is 1 then set the textcolor of word 5 of line 2 of fld "feedback" to "blue"
    else set the textcolor of word 5 to 6 of line 2 of fld "feedback" to "blue"
    show fld "Feedback"
  end if
end mouseup
   ����ff  �  �     trans  rechte Hand      N � �	 �
 � � � � � � � � � � � � � � � � � � � � � � � � � �  �! �! �" �" �" �" �" �! �  � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 � � � � � � � � � �	 �  � choose $�8    8on mouseup
  send "mouseup" to btn "Start"
end mouseup
        � \ S choose option   � 
all words @D�       � H          	  2 	         objects @D�       � C          	  2    body @D�       � C          	  2  � Start �E�p�on mouseUp
  global Vokabular
  put fld "Vokabular" into Vokabular
  put the number of lines of Vokabular into VZahl
  put empty into VokAuswahl
  
  if the hilitedbuttonname of group "choose" is "all words" 
  then send "mouseup" to btn "Aufgabe"
 else   if the hilitedbuttonname of group "choose" is "body"  then
repeat with i = 1 to VZahl
      put line i of Vokabular into Zeile
      if item 2 of Zeile is "b" then
        put CR&Zeile after last line of VokAuswahl
      end if
    end repeat
    delete Line 1 of VokAuswahl
    put Vokauswahl into Vokabular
    send "mouseup" to btn "Aufgabe"
   else if the hilitedbuttonname of group "choose" is "objects" then
    repeat with i = 1 to VZahl
      put line i of Vokabular into Zeile
      if item 2 of Zeile is "o" then
        put CR&Zeile after last line of VokAuswahl
      end if
    end repeat
    delete line 1 of VokAuswahl
    put Vokauswahl into Vokabular
    send "mouseup" to btn "Aufgabe"
end if
end mouseup
        � O +         	     
   
Vokabular  �!`       )S �        2 hair,b  right eye,b  left eye,b  right ear,b  left ear,b  nose,b  chin,b  mouth,b  right hand,b  left hand,b  pullover,o  pants,o  table,o  remote control,o  television set,o  jug,o  	carpet,o  right foot,b  left foot,b  left cheek,b  right cheek,b  
curtain,o  hallstand,o  paper bag,o       	`    @ T *  � 
   Zeit  �   Bon mouseUp
  hide me with visual effect reveal right
end mouseUp
  C         ����ff  444444  `  �8 7        � The time you needed for  this test was 58 seconds.    New Button �C�pKon mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,63
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  answer "Willst Du wirklich aufh�ren?" with "Ja" or "Nein"
  if it is "Ja" then
    
    put the pendingmessages into Befehle
    cancel item 1 of Befehle
    hide fld "Legende"
    set the width of fld "Legende" to 230
    set the loc of fld "Legende" to 308,63
    repeat with a = 1 to GZahl
      set the linesize of graphic a to 0
      set the ink of graphic a to noop
    end repeat
    close this stack
    show stack "Metacard Menu Bar"
    show stack "home"
  else
    send "Mouseup" to btn "Start"
  end if
end mouseUp
       � $ ( Dieses Programm schlie�en.               �             	        New Button �C�pKon mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,63
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  answer "Willst Du wirklich aufh�ren?" with "Ja" or "Nein"
  if it is "Ja" then
    
    put the pendingmessages into Befehle
    cancel item 1 of Befehle
    hide fld "Legende"
    set the width of fld "Legende" to 230
    set the loc of fld "Legende" to 308,63
    repeat with a = 1 to GZahl
      set the linesize of graphic a to 0
      set the ink of graphic a to noop
    end repeat
    close this stack
    show stack "Metacard Menu Bar"
    show stack "home"
  else
    send "Mouseup" to btn "Start"
  end if
end mouseUp
       � $ ( Dieses Programm schlie�en.               �             	        New Button �C�pKon mouseUp
  global GZahl
  put the pendingmessages into Befehle
  cancel item 1 of Befehle
  hide fld "Legende"
  set the width of fld "Legende" to 230
  set the loc of fld "Legende" to 308,63
  repeat with a = 1 to GZahl
    set the linesize of graphic a to 0
    set the ink of graphic a to noop
  end repeat
  answer "Willst Du wirklich aufh�ren?" with "Ja" or "Nein"
  if it is "Ja" then
    
    put the pendingmessages into Befehle
    cancel item 1 of Befehle
    hide fld "Legende"
    set the width of fld "Legende" to 230
    set the loc of fld "Legende" to 308,63
    repeat with a = 1 to GZahl
      set the linesize of graphic a to 0
      set the ink of graphic a to noop
    end repeat
    close this stack
    show stack "Metacard Menu Bar"
    show stack "home"
  else
    send "Mouseup" to btn "Start"
  end if
end mouseUp
         $ ( Dieses Programm schlie�en.               �             	       
 
left hand   KShon mouseenter
  set the ink of me to srcAnd
  set the linesize of me to 1
  put the short name of me into fld "Legende"
  show fld "Legende"
end mouseenter
on mouseleave
  set the linesize of me to 0
  set the ink of me to noop
  hide fld "Legende"
  put empty into fld "Legende"
end mouseleave
on mouseup
  put the trans of me into fld "Legende"
end mouseup
   ����ff  �  � �     trans  
linke Hand      W � � � � � � � � � � �  �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � � � �	 �	 �
 �
 �
 �	 � � � � �   elmani.gif P (on playstopped
hide me
end playstopped
        
  r �   3+GIF89ar � �       3  f  �  �  �3  3 33 f3 �3 �3 �f  f 3f ff �f �f ��  � 3� f� �� ̙ ��  � 3� f� �� �� ��  � 3� f� �� �� � 3  33 3f 3� 3� 3�33 33333f33�33�33�f3 f33f3ff3�f3�f3��3 �33�3f�3��3̙3��3 �33�3f�3��3��3��3 �33�3f�3��3��3� f  f3 ff f� f� f�3f 3f33ff3f�3f�3f�ff ff3fffff�ff�ff��f �f3�ff�f��f̙f��f �f3�ff�f��f��f��f �f3�ff�f��f��f� �  �3 �f �� �� ��3� 3�33�f3��3��3��f� f�3f�ff��f��f���� ��3��f�����̙��̙ ̙3̙f̙�̙�̙��� ��3��f��������� �  �3 �f ̙ �� ��3� 3�33�f3̙3��3��f� f�3f�ff̙f��f���� ��3��f�̙��̙���� ��3��f�̙�������� ��3��f�̙������ �  �3 �f �� �� ��3� 3�33�f3��3��3��f� f�3f�ff��f��f���� ��3��f�����̙���� ��3��f����������� ��3��f���������                                                                                                                        !�NETSCAPE2.0   !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��ɓ(S�\ɲ�˗0cʜI��͛8s��ɳ�ϟ@�
J��ѣH�*]ʴ�ӧP�J�J��իX�j�ʵ�ׯ`ÊK��ٳhӪ]˶�۷p��U�.��v���5� ]���`�w�*���Z4Y��Nd����k��b ��+������JS&ژp]�W�v�,�ai<���a�Pˬ��lWm�n����7sւ�	'H�_���vݨ�r���x������s���u7�/C�܁�pa`F�3�n�)_|�m�\Pć_g���g �&�5�t o�&��,�[��a�v`��o�g���QV`Ob�]o`H�#���F�A*��5/�h�}/~�;&�c�
ԡ���hdM��L*b�߅h����[��t��!��ܗ$�9e����f�.��j�W&��q	�e
I��hjifx9� �Q)���0�����@h�x�9�]r�֦�)��[r�YHint���[�0V��%���X+��v����r���ԡ��z%A��c�RhW��r��|���J�2��3�"���`@���7&��&��%Yں���ٶ�eH+��z�$�1&������r�J��v'Mɝ�chs�6�p]kH�>�F���b�^��"�lr�1}����v'�PB� ����ى��Z�����-��m{��>Zr��))�'������馂��'f��}�����h�KDO}c�J�Iv�u{5|O�ӟ��V��*�hw�;_���k��'s����fYt�b�,җ�+��eKi��Y� ���7-Ñ3��rn�>��ic�J���1Z�vԊ�9���6޲ۮ:�T����e߫��μVk����WV��;�U��zz��U�y��sS̕r�>��W Ύqi�lE~�fʟfV�[��ĕ�5�|���Ux,�}�*������Oq	4\��1iMPo�T��@!I�l	�
�~���M*���z��"�g�!nRu�<��('B]��2����	hC�\n~X�%�}L;aҜ�?y�o�y�f�Q��U鰲,��l�
�(+�=��KA��rX�GqŇ�v�Ȕ�QKe�"��>�e�""UxD
�T�^T
��.y�q$y9YYrrZ,�B�]Z��\��(@&��
LJ��uʍǏ�T��4����-�6I�()Ҡa�J�wj�C�=d2kd)�2���a$QKTJ�9�;)O�'<fE ��������&0u��u�M����y�@���)�Ȼ�u�O]҉2�_�G:n����'N��7`23�E�_.qXNR*)���S�uЈ���
�Cȹ�q-O)E�&�f��'QJ���h �).o
�Xټi�l���O2��t���-D%���Ԝ���K��6�3��*��q*H4��f��-�U8U�$O�d��a&W�Kӌ�l���V�II�Zc��؜��o�aj��6N�N��*H���Iq���H�V�*!�L�S,R�%�a%  !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��ɓ(S�\ɲ�˗0cʜI��͛8s��ɳ�ϟ@�
J��ѣH�*]ʴ�ӧP�J�J��իX�j�ʵ�ׯ`ÊK��ٳhӪ]˶�۷p�ʝK��ݻx�����%�� 
,6�h���� ��Ef6��h�$�3a��#;� ��H��5p�+�?��xrkh~l�v4֠�@��'6��׬���tcY{J`@=�Ɇp�p� �t������f��ԵR���o�����}���5�Uy���g~��� H�v~� ��!�����!T�a��wh��~Ȁ :%`�JX�����n�ԉ�Ȣ!�!��2�X�'6�a�H��"�>�#5��T�-%�Lʘ�U.5$�N���9�����RN҇�\�g�B�x��:�X&u��F��-�&�6*�d�NgZ����i�X�R��襍z��wO	Z ��b
�Q��|���'�z�Պ����}�J8�|P�*�bN�b�;N'�tp�Zաr�騢%Z��9�w��Y�t?��О��Ye�r���e6D���Y%��J(�|=�8(�H���Rۢ`6����N+f�m������=9o��R��I�*��^ɮ���m��D.�&��o�J��`�ܮe�<�T�ֆ�-�������bM�^����{��n|�����s���B+
.���7��/b��Jg��R����6�.��&�+����0���n	2� ?�3L\ߝ�Cj{��DN;�KASKf���8ц�He�)y�]�x�g������ʄ+���y��~u�M�d�@A�N�롇�'|%�S��_�{��v�z�;��� ��9�Q�(D��z�k�X �P�9�����C�T�(�2|�w�9�����8Ct�([�����ߩ�n�׎�4#��)xG���䔡0��A�s_��	�
ID�����ifL��\֮s�)�E�X���?�kT�O����i�E$$u��9�]�{���g��E�(+�$P���O{Cʨ&��`�SW�<`�Q5�Z���@:(�~y:"AG-YK(&���"�+V��`��59Q�mK����V=�7)"��G��m�8D!����=ip�Pf��F^�i,aP�Ɇ0mA"��&>(2��r�=����w�$B�+Sa��˥,��3T�Q�@�Z-=G�<��wF9���6b�2L5���_��k����
���?a��&
$l��19�<e~pv�J�:G�87.Џ
J�T�.�ynl]s2Y�(B�+d�Ԟ��̑~0	��le%�4��>�E
�,��-o" utK�c���R"��$ށ�-�'���n>��U*o:Ml��#
HE��kA>}ɂ\69�r[Il��:��M�JSWj�����8�',�D��tˬhEK9q !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��ɓ(S�\ɲ�˗0cʜI��͛8s��ɳ�ϟ@�
J��ѣH�20� 鵥M?Be��R�<T�h@��_����Y��f%k hW�T��=�.��v�d��+ղQ}���k�@ X]S �5+z;&�)ܰ�{��V����C�}-��kzv���3g���^c�6��k��b ��+�J3�|֬ׯm}� A��s##�����.�SX�:���X������h�XO�'�j�f	�M�3�񪄿7^� u �\ǟveee�_cI�aF��@ӅSH ���A�W�[�yh܂`5��(��"f0 �u�]s�e&؁YѸVk ���+��b]���S6TY���
�b�,>	%��gBu�_��h֔T�X`�b�E����\|"VU��6����Zx2��-ʧ�q�9y�
Z���e�A>�ݗ�]�dQPv�昏v��[M�X~zʇ�Rzh�}�&P�A�i�_Ht^�:�q
��*lO2��I6��V:z�_LJ0^eyE+펃B�eQH@U��v�m]�e{\GʜZ|}��]۾��X�9ߺ����N��W��+-��:�da^��o^��5WRω�����H��g���@��W�f%�l�6맺[��䯘����~��/�nrv&}����a�򡌔�����"[��5�%T8F�\��Xn�2
+W���2�>W��Lg����R���I&I��zl��M�Ml�]��P_��-�v'��ն���`��,x�]�Ԧ	��Bz�(͏갻&�7X�F^�_#�ׇ����9��꘡tf�p�}z�u�^컡���������y�乭�;���޷�q�>{�rǾ��|�����_I��_�."��W�%��Z�7�������{��<Ro�;��?��l�h�`�����!Q�k�H�E��}�����;,9Mz���Ч���/f�R�ۼԿ��}�#X	'��=IW&O�R�:o{�k���*�̐<N��������u�U�D��	��Y2��Қs��bR��8�1�fja͖B)ѵ΁UQm��/2lqF�\�.�C�e�r��V0��΍I	�Y�!&>X�Z� 	����M�� �%�9�}$B��>�QP5pZc������ͅ�*���X�XqR ub$�NXJ��R)I�+Y�I�2�u��/��,#"�Tp[�1���(�r(�q�&�I�5땋�_x>��3��)#�^SV��d\��I�Y*^g��3��duS�5�#|���!%�sI8��i�c�1�{|�x�d-8�m)igAՔ�1fS��L�V�c�,u��A�2�ȭc��s��3�}Ph��^�
�Q��,T_U�HQ_�R(��	yFL!,W�*~�D�0-r|}:�_ZJ)�1gM>X��E�g�[��z�����Y]�N�*+/=�R�tY�\V1��mi�K(e��њ��z�`K�����M�b���:���EH@  !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��H (�\�1�h�����M�)U
T)+��k�t���%L�4U�	t�N�P��	e����F5* Vע��ӥ& =)k��ڕ(�Y׬]E��P�+֢]m�U%�=)�ҴR� `���,i�咲cŌ]z��yscȑE���*f�Vd�gΛ%$^,�1萇K�f�z��ְew���6ɜ�}�f0����>�ڳ�޾�p��;w�mC�T<�`�牱+o�]8l��oO\� ��֕�������D�۽&`} �o��V�s�I` ~=�}���y�j�]��w��}-��g�E�Q���o��(bp����C�x��iؖ�߁h�|���t=���u��k�}�f�儘�L69�>�p�聖:�Ǚ��㉉~����)5[��V&�=��f=F$g���v'`|��ވ{zT�9's�-�zz��PtH�H牂f���5�����y*���Л2����f_���`u��jl�)dh����c�JD��K-B�~����!֙#*t߶�7n�}�	ޯ��[��������4��P�JQ��eg��V'[��v�!s
1��궻/�܆Y!�U"�,���W-��-�n�p:밴�f꤄Ɨ���G 3le�����Ϛ��iH=B,�e��|���щ�3Sװ�í9�A�1���e\�sWo�t��>Kh��z�+���u�"9�Ys�6�Y��\���z��.|!C2�OB�2�"�l7ơ�6fp��$~�]�)��K��}��J��	���\����[��۹��m����wھyz�.�W���5cl�g��f�C�[�2�H����7��r���]Nw��c���p�{��(oN��㓏��w��e��Y�?������g�~�K�������}����77%�"��]���R�n�Ї,8����n��2��9�v#������M�o��j_���&:c�Z_hAF4OxƢW��jȣU��|!�E%y��KK�P��T�v/���ׂ��2ƈ[`�bS,HRFl��h�>�P��T��HB˽g�kl�ݺ�@b-�s����x'��K���g��@��]�#x���HΑ�ʟ����M)���[Yt��>mt���'���Z$%��Ǆ��I�׵h;�P��#��t@��f1*��(���l}\)1��u񒂸�H+ݗ��2$��%�b���d-���N	=	����&�|8�M�=S����.����tJdAӬd i�J%^(E
�ǃz�r�@�S��r � �Qgǚqg!_6��쭣�:��V�`љ�+Y�P*�)t"�l\0�CS�D�5��n�S���wP*������Sr ���$:���-1���A'
:t!����E*���P�A�����rC"�n�ѯLo�9_\�$S�����t�%ג9/cH#䭰ZX]�P�$�)�V|B6�����zY�^iyE��hGK�Қ���M�jW��ֺ�����lgK��*����ͭnw��������p�K�����M�r����:��Ѝ�@ !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j��G C�� �k'ɲ��� �<I3�˛��D�d ++k�zqgM :=�f��ӇFIe���L�ju���R W>-���B�(�"U
(�ɒ`���xU���j.ݹa=`,�azYI�����Ǌ�0L؃t���
�+�!C�L����u5k�Zt�ɕ)Ƭ�)l�8vM��`	�g�\{�]؃[�~-��i�Ћ��KY�r�bώxj�g��}}��/g/<Q.x����n���n��3�.Q����]�]p��ہ���[e���)(m��\r�w�`0QF�C�7�\ �u�x6׊�!摋V�BZ'�\�i�����`0���|I��58>��f>לBF	Se�Xf!i�����#R�9���ٓZ���Љ�fwBt��?N6�S"��|n�d���`UnDbC�a��M��"w!��s��lw4'l���M!�ٜvI(E�Z荾��Њq��d���iBI�ɠ��⪷����`v�p�a��AΙ���7Q�2ڔk\�t&�{.
�ty�~�B�~�F�#ʖ�A��9k��.��l��"Ez�+�e���p�&߇���_W�ʯ���!r�&�|�����5"��eQ�)�۞�^�x�{���/���2��,�O��+��e�u���>I׻4���Mn�s�C)�+�<'Ѩ��+f��Yݒ�Qm��O���&�����T����5ʄ�2���H��{���W�In�\w��r�����J�k��xt�O]��=#]������s��%?u��'_�EJ��f�r\�.��y�������r��$��~�<���sĳ�C�F�����2q�ܷt\�߃�p���lzģoh�[�e��e6������Ե�;����~��P]z+Z�(t��p�y�j�x5�)�4�:O��	��j����JGB��O�#���g�0!\���v�
c����^�'�Ȯ��`�x��P�ny�%u16���3��*朔�m�KL]�(�ZP��f��Y�s3_��&0f/8<c��0�vM$��t+�+o]S�:�g���	Լ�%Oy�񡌲��@�xGs��$I��mPA�H�/��q��	e{ƣ�̐���
�D�8�B��v��W#"�F�W�܂�s>
8.�/A��O��lDV3�	'�R]r$
��h�.�^�j�h:0.��!adL�(,���"�NsR�[�L�֚���m~�0�ܹPy���k��9 o�<6i2!���17�=f*RD;c\�y��|���k~����S�#��H����P�'U���:,y�Hgm�Tg�kg��x
�˛f�#Q5C�	Jˤ"�΀j�,W���'y��3�ɇ�����mn�Nz:A�HE��QS\�$�~�fd?[��E2�!��j��^!�="�a?��aյJ�k�7C�d!�,˯�$��([���7P��ٌ�N��	KB��i�ȫ�2�l��HhcK��:����ͭnw��������p�K�����M�r����:��Ѝ�t�K��Z���ͮv�����6  !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��H (�\�1�h�����M�)U
T)+��k�t���%L�4U�	t�N�P��	e����F5* Vע��ӥ& =)k��ڕ(�Y׬]E��P�+֢]m�U%�=)�ҴR� `���,i�咲cŌ]z��yscȑE���*f�Vd�gΛ%$^,�1萇K�f�z��ְew���6ɜ�}�f0����>�ڳ�޾�p��;w�mC�T<�`�牱+o�]8l��oO\� ��֕�������D�۽&`} �o��V�s�I` ~=�}���y�j�]��w��}-��g�E�Q���o��(bp����C�x��iؖ�߁h�|���t=���u��k�}�f�儘�L69�>�p�聖:�Ǚ��㉉~����)5[��V&�=��f=F$g���v'`|��ވ{zT�9's�-�zz��PtH�H牂f���5�����y*���Л2����f_���`u��jl�)dh����c�JD��K-B�~����!֙#*t߶�7n�}�	ޯ��[��������4��P�JQ��eg��V'[��v�!s
1��궻/�܆Y!�U"�,���W-��-�n�p:밴�f꤄Ɨ���G 3le�����Ϛ��iH=B,�e��|���щ�3Sװ�í9�A�1���e\�sWo�t��>Kh��z�+���u�"9�Ys�6�Y��\���z��.|!C2�OB�2�"�l7ơ�6fp��$~�]�)��K��}��J��	���\����[��۹��m����wھyz�.�W���5cl�g��f�C�[�2�H����7��r���]Nw��c���p�{��(oN��㓏��w��e��Y�?������g�~�K�������}����77%�"��]���R�n�Ї,8����n��2��9�v#������M�o��j_���&:c�Z_hAF4OxƢW��jȣU��|!�E%y��KK�P��T�v/���ׂ��2ƈ[`�bS,HRFl��h�>�P��T��HB˽g�kl�ݺ�@b-�s����x'��K���g��@��]�#x���HΑ�ʟ����M)���[Yt��>mt���'���Z$%��Ǆ��I�׵h;�P��#��t@��f1*��(���l}\)1��u񒂸�H+ݗ��2$��%�b���d-���N	=	����&�|8�M�=S����.����tJdAӬd i�J%^(E
�ǃz�r�@�S��r � �Qgǚqg!_6��쭣�:��V�`љ�+Y�P*�)t"�l\0�CS�D�5��n�S���wP*������Sr ���$:���-1���A'
:t!����E*���P�A�����rC"�n�ѯLo�9_\�$S�����t�%ג9/cH#䭰ZX]�P�$�)�V|B6�����zY�^iyE��hGK�Қ���M�jW��ֺ�����lgK��*����ͭnw��������p�K�����M�r����:��Ѝ�@ !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��ɓ(S�\ɲ�˗0cʜI��͛8s��ɳ�ϟ@�
J��ѣH�20� 鵥M?Be��R�<T�h@��_����Y��f%k hW�T��=�.��v�d��+ղQ}���k�@ X]S �5+z;&�)ܰ�{��V����C�}-��kzv���3g���^c�6��k��b ��+�J3�|֬ׯm}� A��s##�����.�SX�:���X������h�XO�'�j�f	�M�3�񪄿7^� u �\ǟveee�_cI�aF��@ӅSH ���A�W�[�yh܂`5��(��"f0 �u�]s�e&؁YѸVk ���+��b]���S6TY���
�b�,>	%��gBu�_��h֔T�X`�b�E����\|"VU��6����Zx2��-ʧ�q�9y�
Z���e�A>�ݗ�]�dQPv�昏v��[M�X~zʇ�Rzh�}�&P�A�i�_Ht^�:�q
��*lO2��I6��V:z�_LJ0^eyE+펃B�eQH@U��v�m]�e{\GʜZ|}��]۾��X�9ߺ����N��W��+-��:�da^��o^��5WRω�����H��g���@��W�f%�l�6맺[��䯘����~��/�nrv&}����a�򡌔�����"[��5�%T8F�\��Xn�2
+W���2�>W��Lg����R���I&I��zl��M�Ml�]��P_��-�v'��ն���`��,x�]�Ԧ	��Bz�(͏갻&�7X�F^�_#�ׇ����9��꘡tf�p�}z�u�^컡���������y�乭�;���޷�q�>{�rǾ��|�����_I��_�."��W�%��Z�7�������{��<Ro�;��?��l�h�`�����!Q�k�H�E��}�����;,9Mz���Ч���/f�R�ۼԿ��}�#X	'��=IW&O�R�:o{�k���*�̐<N��������u�U�D��	��Y2��Қs��bR��8�1�fja͖B)ѵ΁UQm��/2lqF�\�.�C�e�r��V0��΍I	�Y�!&>X�Z� 	����M�� �%�9�}$B��>�QP5pZc������ͅ�*���X�XqR ub$�NXJ��R)I�+Y�I�2�u��/��,#"�Tp[�1���(�r(�q�&�I�5땋�_x>��3��)#�^SV��d\��I�Y*^g��3��duS�5�#|���!%�sI8��i�c�1�{|�x�d-8�m)igAՔ�1fS��L�V�c�,u��A�2�ȭc��s��3�}Ph��^�
�Q��,T_U�HQ_�R(��	yFL!,W�*~�D�0-r|}:�_ZJ)�1gM>X��E�g�[��z�����Y]�N�*+/=�R�tY�\V1��mi�K(e��њ��z�`K�����M�b���:���EH@  !�	 � ,    r �  � �	H����*\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ C�I��ɓ(S�\ɲ�˗0cʜI��͛8s��ɳ�ϟ@�
J��ѣH�*]ʴ�ӧP�J�J��իX�j�ʵ�ׯ`ÊK��ٳhӪ]˶�۷p�ʝK��ݻx�����%�� 
,6�h���� ��Ef6��h�$�3a��#;� ��H��5p�+�?��xrkh~l�v4֠�@��'6��׬���tcY{J`@=�Ɇp�p� �t������f��ԵR���o�����}���5�Uy���g~��� H�v~� ��!�����!T�a��wh��~Ȁ :%`�JX�����n�ԉ�Ȣ!�!��2�X�'6�a�H��"�>�#5��T�-%�Lʘ�U.5$�N���9�����RN҇�\�g�B�x��:�X&u��F��-�&�6*�d�NgZ����i�X�R��襍z��wO	Z ��b
�Q��|���'�z�Պ����}�J8�|P�*�bN�b�;N'�tp�Zաr�騢%Z��9�w��Y�t?��О��Ye�r���e6D���Y%��J(�|=�8(�H���Rۢ`6����N+f�m������=9o��R��I�*��^ɮ���m��D.�&��o�J��`�ܮe�<�T�ֆ�-�������bM�^����{��n|�����s���B+
.���7��/b��Jg��R����6�.��&�+����0���n	2� ?�3L\ߝ�Cj{��DN;�KASKf���8ц�He�)y�]�x�g������ʄ+���y��~u�M�d�@A�N�롇�'|%�S��_�{��v�z�;��� ��9�Q�(D��z�k�X �P�9�����C�T�(�2|�w�9�����8Ct�([�����ߩ�n�׎�4#��)xG���䔡0��A�s_��	�
ID�����ifL��\֮s�)�E�X���?�kT�O����i�E$$u��9�]�{���g��E�(+�$P���O{Cʨ&��`�SW�<`�Q5�Z���@:(�~y:"AG-YK(&���"�+V��`��59Q�mK����V=�7)"��G��m�8D!����=ip�Pf��F^�i,aP�Ɇ0mA"��&>(2��r�=����w�$B�+Sa��˥,��3T�Q�@�Z-=G�<��wF9���6b�2L5���_��k����
���?a��&
$l��19�<e~pv�J�:G�87.Џ
J�T�.�ynl]s2Y�(B�+d�Ԟ��̑~0	��le%�4��>�E
�,��-o" utK�c���R"��$ށ�-�'���n>��U*o:Ml��#
HE��kA>}ɂ\69�r[Il��:��M�JSWj�����8�',�D��tˬhEK9q !�JPB ;         stopsprite �E�p 'on mouseUp
  hide image 2
end mouseUp
        ; W          	        Pumuckl.jpg @       k ^�, Ǩ���� JFIF      �� C �� C�� ,�" ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? �W����!~�<G��47RjW����<3{��kF�.��?ď�V�>���]����@�״=N-:��Z�4:u�ψu?p��'�_JKM_��.����{����_�~���a�N���#��ׇ�'\�>��/�Z�:O���SH�ǉt9���Yl�]��^?��W���I�|I�h�:'��|s�o�׉���~�|G�o�:K�x�Kӵ=L�x����4[�OQ���ퟍ4�`�t��k^�ſ��]SM���5�M���ޙ��wZG�t��OV���j�&[oi����v�c�@��|k��*Y|7�h:��/~)�7S����%G�R�,n���ʭW��N�#N�)^��Z�R��y�%xJ5'J�+�ܘ�Qt<5,DgB�&��Ӛ��\�Q���&�8��x'����~	�)�D���Ox������7�f�p�>��F��i��V�E�-t84ۛ���$ Ҽ9yb�Dq��<'���h6Zo�>�
�R���G�<;ே~q��e���5I�"Cm>��_x�:K��Mf	���3�xb��:�x�M*7Z�D���zf�n��w�A5+?����K�|G��C��dҮ�M�ޛh4ho�{MGN��%����uMJ�Y���|[���:V�����I�>��Z�a�j�P���$�s���c�N�#ohFԴƂ�}i5�6����T��J��kc�<l=�<C��t����q4迬V�WB��J��Ib���I�gG�0PR:?	$�1�
N���Ӝg���%��%	�Q�nX�\��N�5$�����SX��[�f��h��#д�I�� gI�hZD��A�Gu�K��k�mj;x/�'y���ې��ϭy�W���Ҿ���3���Giq?��j�z�h��f�����k^��f}7C��ִ�o�6�w�ݾ,�Դ�����>�MO�߇5�u��x�V�|;y��Z\�ӡ�y��/���5��ڄ:|��w�t�}v5-:�Q�ִ�{M�ޫ6�{���	e�k>�6���_��� �6�͡x&M>k}OP��m�c���W�Ze����h�Om]��ǆ��r�s
t0���.��[�	ԅD��:~�*o�*�t�6���S��J�+F�*)E%J1��*J�8E����*֜״�*s䊌�ܪ�0�{�� ��h�F���;Osy��̿�n �R�U���Y�\iOĚ�.�!ՓV'Q�-�Ե+�:6��GMй�Q�ԋLh�/�wXu-.-?LҤ�y�K�$��xc���<'�=�� ��G��M��ho�ۑ����7pG��ޣ��z�ᶳ��j�Ǉ��n-��&�a�j�K�mgs���Ϫxs�����-/5�Ի��!7�z>��k�[M�;�&-SM���=��&�o�h�𵏍t'�f�/����C��m���;=/T�d�k������o뷒їԪԆ&�l,]J��#��X��T�Օ**5��J���eFT��a�s��Y:t�У7MB�u*҄])MB3�h�n���I�ҧ�%?m	���R[;�xj�K�D�i�^�Y���>���7�t7�-����F�K��M����d��K���hV6�=+߅��o��?�_	�BҴ�K�|�^j�+� 	#��:Y��tyl�*{�cL�n�Mq�k]=5[��4���D��5k�=3÷ֲy�6��]O�kH���E��$���)����˩K��>w�n�ⱡ���Z�w>��^�7�U�����5��?������Cnn�ū����5������gI��M����i�;[���o���0�����c�����4�Ys��V�W��xzR��J2^�Oڮh�@P�F�U��J��SU��(W�Nj4��殮6�ܔ%f���� �m��Я�1��z�Ž���q�+}+×�zM���j2]�~�0� bYx�@mF�KI�J���|I�mḭz	��Xäi�>ۻH�^�k��G��/�{�i��>[�6;`i^2м#u}�N���6��mu�é[����j6v��{���Q�wS���:�֚���`�v���K�z_Mq�������4ka�?ų=��-��O�D���Q2��4�x��^�{�F[��JT^^C �֗Wz<[�6	�8�;�I���Y�*8�WCY��:�ceR�U'NXu_�)њ��U�%E7N���Rʴ��U!M)Ѧ�F2���R�U���Y�iօ8A�*��n4�T����4�GH���o�[jhҵ�[���is�\k�}Ɲ�;k���*��v��д�����O�cP���� w��|'��I���:%�K�uQ��W��M��qec�����M�Ӵ��k��GN����\~<�/�,�+-����<E���If�A���X�b�|R���}� ��a��|?���A�.��iW�,��{�4�oI�𽾵a�޼/#���zv�m��޶�~�1�j��v�Ma1��u�'~����6�Z��#Ħ�{]6�;�SX���ެUo�d؎_�S��oiK��R�j�.�sN�jM�59`ױX�r��eIJ����O(ʚú2��T%B�Δ[��9VWj��zͺp���Uyj�eϿ�����'�_���_e��.����R]�> *wZ�펋uu�hw���k�=sGѠ�rhOb�>��I��;����	4	|8��h�M�Y̚׆��j��:<�%�,"�E���#zW�l���Լ.� |W�%�5k�MGM���H�>�~�P�l�5�O��B�{�[��\��=[$��YM�z[Iw���|ڝ����Z�.���3Y�O����N�y#��T����<M���3|�\��ӯ|%��gᛈ�	u�f� R]*���Z^�{ct���nJ�J�Z�y�;B+��a��R���)Ҫ��F��IP�J�u'J�R��f����:�0��N�K*��*QRs�g(��ZT�9�E�UNN7�_+�[�T�5�Z�� �O��k0�������Í;T՟�~%>?��.> ꚮ�s}�kڇ���	xn]J+���&��,5�B��Z�{�?c� ���V��i����F��i��yu��GL�,��#D��(�� ���� ���M��`�����N���e}zt�4�&��=���?���娦��m/�x�޻b�2�S����Y���G�<=�O��| ��9�|a��M�x[Ş0�l-�i���|1�~���L��:����t�兕����2�!_*[�B�ŭ���)_�WP���̹�m[��C�3��+�����������V�g������U�Bj��[��N�(Nt�Ћ���7�����G�97�^�S��|&d�p�0Tp��ӯ<-	ӝ%֍(Ju�ZjX��R�4��1j�#�2~���O�U�/�_J�m��e��?���%���MBMO��rk�z����c�'����M���^�����MG�Ѿ|=>$��O�� 4�.��ӴWֿ��k��3����K�B�c�K;����}*��@�Ԛ����X�×���Ə��^����zM�֛����keԵmJ=Q��cA���Hm� �bk{;�z����qt�][k���֫-߆4�-C�ۋ�l4��Z[ϪkQ��-�l�h��o^�N�ǳd��O�
��h��v��.�t˩�[T�ko������x�o��CJ4�a�Qu�T���'����Q�ԅ+���:�']r�ƹ��G�<�[��㱵'g�c[.jI�t!*�� {
��O�)T��V*5*;����,u�mW��]KJ��0�o�x#�������v ��=:=ú��s�gU���v�M�X��MzKk�w\��Y�ű�|[y��,��4��:��j:W��Gk--�/|G��-3���j�X��l4_xB�Ė�V�xWK�,�n���K�χ߳Xy��_���ۮ��E��-���N�o᧾���Iss>�-ֻ}�{�o&�^�+k+$��l�k�_���t3�>�$���C�� ��t�]WU�n��4U���6���y�\��lQ�����=��Z�M�󙟈�r|��x�f'�؉ѭS�R�V�Z�hǒY��P� ݿy&��R�EJ���<�O�~%��x�A���lEZ9{|���o
�xxQ�z��c�'�UX��J��S���|m�Ɠ���~(�u�*�l��J���-M_)�������h���kv�i���kע���V٫����&�y�@	b���y�Ϩi��N�,�^�s�춎�\Q&�i�K�[,w:����K��=
=<j�ˤ�jn�qe���,9Y�Z9����C����bg��p�l�K{4�_8�^z[E�(��>=x��^��W�ⴶ�?�.�<M�]�[>������z��΋���(�O�������zn�c�\<z<�,�����'�Xztg^��e��.l<�άRP�^�2m�W�Zsq�����qѣ���+qs�f���UU����5'(S����$ཝ*�|�T�Ԝb|��[��X�{���O�:��Ԣ�w����|?�ꖞ&�o����^�:�v�j&}(���L6zf���W>)�N�������Y5�GÉ����w���?u��wbtcu�-9��.���W�4�}_M>����Q�����r�P��J��O�H���ks�����-��\��QX�i[=��U���B�i`���ku����h6r�松��ڛ}~��bm+_��H!��O}zk�8Z�w�^���qd.o���M6ŒK�[;�Ү'�Ρ��lu�ʝ
���Hʔ�B�ujR�)�a�P�OS�z�?.���*�O�72y%<EIa�{,j_:�t%��"�5R�~ʛ�$�F5g~V�kݓģI�|]�h�)�Դ�������w> �`�b𧋥Ң���V����}V��6�sa.�g�x54��z��u�F�$�f�%��}�k6?����x�4Vz�Gkf�M����[^&� ����askiu<�:iZ�ޡw7&��4�xSX��M����F��NѦ���-<q�]CO��5�/T� ������v�<r�]Ǉt]:���Uƥ�Ko��˛�F�Iu�=��W��OյV�k6o����N�Q�T�5��	i���%���o�k/CS��IF�<E8ӯ8R�^�����YW��ε�r��'�*O'*�y'[ǫ��F�"�jT�S�ί���QU��ue%��F���CظBQ��ĩA�=j��� ����_/�"�tM3F�5� �uo]�g��v���SL�%׼5�j\��f�7�|!�]?�U�������ƿ�g�zƻ��Dk7�#�cѬ�So�4��5-~��~е��H����ޚ$�w����]ƭ���V�C�e�iz������V�kKM;TM}�ou���\�{=?��W�m��Q�G��^�t�Z-Ƨ���3�k�� fk�Z���Z$�����PK�iZ�����MKDӼ04�'TmB���� �4���O�n��uKk-+F՚��}CW�<9�ͥ_��*�ZX�8Yέӣ(�J�jU�^�"���)�I�xxΒ�R4c*��X���)F��)��N�Un8z����}�$�*r�?a���:��NQ��~XJ�u'O蛝{Ŷ����n��+����qm��e�{Y,m�M�״��C_�J����8���:��<!�\���_S�ߌ��y/��n��X�~��_9�G��ĺƣ�ChwZƗ��������B�WҴ]Y��&�O����0��nŴOxq�o�'��5[�#J�����3 ��%���\_]M���jOq�G����������"��B}kI���t�+�}�="�$���y�o�K[�]>�%�	t=GM����%��h��S���IқR��9,�h�eҖ�xN'SW-�AҧNx��#��B\��ʭ=W�R�J1�cV��%
N�:*N1U����FS��hah�)F2�y�R�?=�8[���2��N��o�<Y{a����.�E֘�����կP������[N�5t����������x��� ���x�Y�-����ֻ���WO�ׇ�ٍ��<C�k7.�ze�z6��j+KM:�N���𭗉���մ��u=>O�v�k��x~��z��4�
�}T��=SE���M�<C�s��^o�[&���ԭ�A�K�O�j���]4�{�]X��hz�K�=���^xN�\������y��}{�3ȺLn��!g��;ios4v�%ٍ4��Y�^Y�� &�e4�Uޭ��i�u���<�z�	W0�?y^����'l<�T�XN��ER�*r�aF�5MM�ue.nc#��ԍQ�\=�	P�[��+JrT�R�jT9=�+����
t����Z��������WX��M�K�/��R�-o�7:��	�U���<Tֺ��狯�[��i��k��:�����Z�x�Q�����j�B���Ҵ���7�ג���toZxC]Ӯ|?�i��i^)�4�� �<?�x�X�6��/��gQ�u{�-��f����o���=�:�$����խ�8a:E�힔4��Kms^���k��íMckV�Iz���v���E����o�tԧ��o������Ւg�i�c�6���3�$�O�������P�c0�	S�5(.�yΦ"Sp���Ɨ5<*O:��:��Q�PU){(,g.7W��)<5*2���#I���Aʔܩ���RNN6rS��M�������դ�o�L�ƻ�{�{J6�����k~&�5�_�7�i����-W��Mo��^�:��v�ޅ�����c��#]�d}/R�4W���J��&���i�V����M&�y���jWw3�rj�����ӣ����M'9��6ֺ��vڮ�x��Ki���Lҥ����ou��E���c�յh�æ�jޛ�5K�<:���}�E�?���PG���SҮ�;�Z�-?P�.,�K��'S�n���w>��Y-�>&ӵT�ŕ��*#c=�����R�N�*�z��S6��u����SP�R�*��U�8�����\jEsR�T��y�L.����b�5N�	�t�ԃUZr��nQ����(�{	ƕB3����o�^+�y�<3�/�&I��1<G�jSX�0]�5�� ��싩B�O�gi&���Gy�j^ �A�x{S�~��m?�M�x�������wh��j�W�MZ��ZSxoM���g���Q���K����k-�Ö�ޝ�|��7����1v����-�{��A-�;8�K���������7Z<�F->�Q�5�O�^O[O�WK�q�n� ���݂�������8<go��^G�/���>���v��h�[�0d>n�;�U���嗺t�o�XI��(W��[��p�n2T�(N��94��v���8z�����hU��U_JUa8�ޅO�[���(�BiI>X(���)���N^����u�S]�m���h�G���N����1ӵ)t�)�_�D��s��'��<?��&��d:g����<o�x�ؾ��_���OxK[�� f�:�,�U��S����"��� ��ޯ�{M�1�O�i�+���}�:��ɬi�É|I������ �n� l/�+�� ����O�ٟ�:���<qy�k���ź�<[6��i��$��6��	�����=�âx?����O�iZm]o�W{_��)� ���W߉�۞����xS�~���	����T���uo�����J��|_�/��]X\j��x��k����l�4+�g�~�'���qg�1�$0�cp7	Շ����-8R���j4��{
��:|��S�9��'���Nl��	W�Jr�Ȱ��	J*P�\Ԕ}�0�d�F��p�c�����އ�s�:��w�xn�ǚ��}׉�!uo�_^B�ZL��iZ��$:���ڲܟ���ko���X�M_��5�>K�sT���<3i�=�mN�Y�����_۷����֥�|_�nb�5���<3��B���7��B	�?�����C�������s�=k⭔�R���w�O�_
�k�v="?h�!����Ҵ�� ����egu��xqu#�j�P����{(e��>:k�0��r��_xG��%�Giyas:Zxi�iХ������Ѯ�/%���R�7��C�H���b#^���
�kT�Z���GJ�YT˥&&Jt�I��2�����:n����xI�	��:�f��xj�2�"�u)����IAӜeO�'j7M�r}\C�[���ðx6]N�P����U�-ux|;=��Ճk�z�����X�FY|-�ۋ]N��6~:�Դ��N�Ҹ��Ŧ�j�]���u_|<�}����'�|=s�E��ɦݯ�<	��#U��7����O��~��G�-t+�S^��&����9�־m�>5�c��[S{�'�WZ�-t����R���L��������w�K��W�;x��7o�[���#Zѥ����[F��@�Ʃ�G�	<V�6��݆������á�v��,:f��ۍ.���C���Z����X�9��~�-�Ut��I���Q�N9�LD�)^�xu�T�Z�aY�NU+�S�G)��I(�CR�w��?��ùQn�Zժ�^�1�F���iB��5R�Zq�IӚ�>G	�)T�)Q�|m⿉�+:w�~ x�S��g�]7J��uˍz�M�N�iV���Δ���z��}��4[g��/��Ay�� � dEs���N԰�С����0��n�+�j�𧍤��� ���.��.�R�u>���>]'�W�>�����Z5����]^h~'��I��X�n��hZM������[�:n��j(�P�4k]&�	�X��k���d��Ң�d��:v���S�i�i���ϋ<im���׮x[M���~�n��A>�^�k�Z�=����������|hڮ�q���������}f������������	x����:��5��5jn��B��MT�*��((Vp�O�5yb�?:V����cR>mz���X���R\��J4�>�G�:p�>X�Ӎ<F*���u�ͷRx���xoO�u�3L�u/[�V7�-�<]q��ԗU��-�׆�MNM;C����4;�&��F�Z�i�!�-�n-���|*��W�[J���Η9��e��%ޗ�� �y�-�Xi��ռ/kc�y��A��n�1�ǥ^�+��[	�kI��4�k�t�Z�/�-u�K�*����R+�|ml��yt�k}[���&�y�mH�隐�48&���E~����<Oi��,i>��V�}g�J��/��_�<�O�f^�wV�~����O����K����OX,7���mZ�.SOU�t��T))�4eQ�� $�*��t�Q�#:3��9sS�Z��{zx���Ƅ+B�Վ�/kT�F�XԭU��*Z�9ʢ�Gz����_��>+���|Q��]t�m����[���>��BƷi���5-/R�MԴ�CJԵ���|Sf�'������ϊ׃�m�1��$��X�x����IԵy//t�Z�T�5��}^�H���4�� 
X]���]����tI~ʶں|.�u�x��m�Þ)��x�����/�oX����Q��u����$���[�V��}�Oå��^$���^w�}��h^#���{;�^�Ú��tk�3� [kS��7��V�F��MQ�u��B��|;�jz�Z��Ş����#��u�?c)­O�5kF�L5U�[��2�S��8MN1�*���t)s�V�#*r��*yt]IJ�.EЄ�%�.U*�Ѝ���TQ���k�+➐�&��xJ��eׯ�]G�7��=u��\�jW3h�t�.�m|1��is�s�>��j6���ڬ�v�s����?n58%�����+W^��e�_�e��v��Z�'�#Ѽ�'�T���i.��闖����|?qq�Gv-"�����Wմ[��[]oF�+��|C�K��;]�5��a���z����ֿg���#���?�����LZE���O�i��i�5��Ү�&�Z�+�E��-�|F�wwW/�9����W�Z`����ռwcc�%���M�K�K�y�8���P�s�NX�s�i)թV8u$���"�t�.iG��W��tR��e��S�^�HQ��mB�իb1
�:�;�	��\a;*2���0��!�x{�|���5]UҮ�� x��-%��Sľ����[A����k��kk�[A��g[mb�y|}r����u��;� ���G��χ�$��ޑ�ݿ����m���`է�y��}��<9�^Ac��yt�r�`���u�N��h�_��� k�WX�ӭ5��OJy�Ö�m��<+�i�Kk��Q|c���姈�={C�BּE�i��]�@��kj��/Ŝ�f����ٮ�%�ǉt�u��jZ֩w���<�j�[�/��h�k��K�� k]Z\�xn�F�E�����:���qT���O,?:�*�)������1�g���M��ԥ*JK	^txg�S�a��R^�N�F�׷�I�rF5\cN�9Ԅj�3� �No)P���?fo��9�t�~����ino ���//��mb�|D�7�c�p�A6�os����߅��=퇈��H�z�+�G�ո��ռ�Vo���o�yn�Ӵ+=N;J�P{-J��P�]�|)�j�[��R�:瀮u�ε�X~�Y}_]��Ẽ�O�̇E��^�W�ԑi����I�6�/�o�(t-r�[�E�Ь�uV�.4�����֮�+v�Q�,"�>�5�ƙ��w��:��0�oӮ�Ht�m���;�k�WmV}GU�����%��ۏ�|���(�p�q8�f�F
�4�өR*��֨�sQTqQS�*
j���J�+�Ɣk�(�)^�Vs�IS���z��J�.�f��ƭc�'�K�9��g�\[�f����C^š��,�G���ͼ:��w2�[}�Eе��ٮ5���f�y�o>x�=f�UҼ	�����g�v:�mCE�������H�u�4�6��-7P���-�Ϡi��e��<��Z����:��X���-������ţ��h��c�, �t�sR�ȸ�^��]r��×�h�_i���Ũf\i:v�֩}��:#��>a��O�˓���%���L��Yx����gQ�L��}��VqX_j� ӵ�_<?�xJQ�g�哝�����u*KHK��*���9�Y�*�:^�5\eRۭa'8�T�өQ�	ES����ԥN7��*W���)�%j\�!:��� �Px� �5��.�<O�k�Z���� 
]xw²x7Y�4�mB��7��m��f��sxr�S�]խ�"��?_��CO��[�w���/�e���5C�]a-���_�7K��g�B��EЬ����U���0</a�kwZ���\_�X�>$���Η�(t;C�JO
���j�φb�i��ŵׅ�|[�j���x��6�e��iV��Wٙ�e�Y���Y���R��O��7��]V�J��_�r��_��<9����A��/i�x�����R�H�x��[H�oŧ��G6-x�.������8~+u�Z�hT�Jp���)W��V���V�,�.j��>j�����|?*�F�<���*�UgXxABU'ʽ��ӂ�����׍<m9R�
JQ���?Sᦳ�.�t߇��橩O������c�6��)4�Դm)�=k@�`�'��͊����(�Ɲe�Amac&F��?jvv76�u+O��ms�G���ֿ��Ə�$��^ֵKIφ4��%���]���Z�������� ���Y��(��ƺޅ�k�q��v��YxPY��}�i4���xoN������M������.�Ys�1�}/�
����H�|qa��A�E�����u?h:g�t�{[��Zǆ?�-�[^>����^��O�F}z��OӴ���qj�g�M<&�t�*Ն5Kb�:�V3I�5��M70��(�CR�z~��n �4�ψq����#_Jx�~&�B	�����eBʾ��:�NS��������������B����o7�.t۽Z�ć���F�޷���Z�/�����4;�4���w�Z5�o]�zO�%ּQ�������⾳�%���g=����>�I��"��e������}<Zu��,o�Z�;.�`����o����Lм��+A��ce�].�9<P[Yi�U��mN��>�j��	�/b��2��R��MRK��}9z�#X��o'/7�������C�-���l��Y�>[=.=6���{�����wן�x��iF�_��)R����q+US��*Tk�Ej��Ey�P�N2�eM�Qk��~�/��J<E���1Pua�������qR����ত�Nu%YMN�r�Q�g����������L�Ŀ��%��񍇏�z����x;I��O	�v��i��;@� ��[���5��o���k�]R֮,� }4��-��{�+T�WMKˋ�=��}R����[�>�+�*mQ���"�_Z���y|O$:�����V�secf���R�9�MVf������/F�n4��� M�mSK�M}I'��q�ϣ%�w�jVVVwn+<�l`�RmJc�B��{qo6���o��G-���r��[��M[�V���Z_�m?�9�b�����xuF��ҭ(�qh�7,2�n���z8�n���c:ӥV�#�V������\��W��s�ޝlMlEZك�ε
4��iӖ������ˑѓ��\T#��)�gំ~-�>�7ß�f��/ǣiZ��w=�7c���@�N�r����Z��K� E�e��j�jd�R{�Y>Y���eK���3k� �k���6���������W�F�b��)u�f�N��,��Dg���B��M��Z�ޫ�k��+�W�Ծ�Я~�{��� 	E���F���t�Xc����L�#W�K�`�∎�l��^�l3�ij�_����U����w���_�\��Z�ů���wl�����m^�|G�来Mcuk��>��B����ډ6ږ�o����;�^U�������խE�u'�7*%�Ԝ��4p��F2��U�IR��T�lǂ2FyC=̰�Y�����X����8YJ�\�F���T�%^��<D�js�[������"��R�.,dխ4kmMt�CK��v�um{���{a4W�N٦ivv���͛E����<ww��ZD�ǡq���[�����]Yt�;�>��΅�k�=����o�x��BK;�1G)[ױ��-t�	���z���-���R𝷀��N��B�5���,q��������h3�j�M~M>�A���7_�����h:5���x�}w�,� ����,&��gD�g��K�i�u*mZ�J��%��i:�6Z]��ږ�puI�U�5}b�O��o�i=�J��)<Uw��S���G�՚q�YP�R�a�N�niJ�f��D�/��U0�T����P��N�IT�Z��a�V�*�e7N��<U7�9�
�Ⱦ=�d����Ş8��޳�OM�׉�^������uK8�m-����Qo��O�f���isi�Aiu}wf�W�����x�ľ=��~��2/���Yտl���ψ����u�Oğ�j�S�5Ǉ|K-���Mrg�n-#�d�㸏Q�}�iV�i��)���Y�h^,��.�-���kK;�t}U���[�{L�����W����n.��.�N���$#i��;�q`g_��{�	���+�4�D�w��+e�������?,5߇I��1�v:�����F���|K�+�G��,�T5�;]��0j�懭���� �|%�ʞc��'^��,L��)Ч4�W	�F����������}Z�ܨR�I} <��p�eY��)��M[<-�*S�+�(��/R�Of�a�(э*N�#���@�w�n�%m�9�<-�'��E���&��zv����?��DumR���Eͧ��C���7�xR�Ğ%�a�R�×�&>��� �|����ŏ���kq��^j�5�|G	�"ݭ�{�0x����_�G���YѼ/7�4����mCJӠҿ�6� �lx{G�|5�	�8������Ɲi��6/�� �-���{g����Zv��隍�op�&�|,��⟉�W�}B��� �j���Ҿ�_L��'~͚_��;���Aվx�^�R�_b�։��>!�[�zλu�k�������W��C(�Q����i������B�.�5R�R���Q�Q�V"���R�t��5MBU�����-*�J�!S��~�!����)�'Z�XR��Vq���^�V��)*��>�B����R�c
�Uj:s�x|-�_EH-��M�i�VZ͞�u��~�{mú������İx9 �����u8�5oX蚟�k+���3oc���Z��xWS��t�j:���x�I�	���o���S\K��xj��C��b���5�l�����+��xb�\�������1�#����!�W��Ǉ��+���$��tϴi}ޕ��CM����8f������6z/��Q�;xn���k�6������z扫���ʚ.��-k[�|�+�g�|;��O�ܭ��i76ڭk>��w�--,?f�*WP�揥i�b8� ���Kf!ʥ8P�F�F�:�=����)ӊ��+��çJ�H5I�e�-��q42������q̣��RX�����R��1���p���ZT��J	b����x�㏅�⽳���mO[�[�{F�����1�;=Z8����4g�<K��{]���P��m-�Q��V:Ɵ�I{��r�ڦ��m���U�[-�;�������qq��������`<]ua��<`e��|7��Nh<K�H�E��1x%�]^:�x�?bO��ƺ%݂��>%�Eo�_xoU�F��_ x����7�ҼQ�)o,~'h�퟉5"��z6��a|$5)��n� S�Ǉ|S��������
���O��<5w�{�/�D�?��-�[_�:n��jZ����O���KѴ�mu=3M>���9�(�{]�s��T0�'��U�[U��k_f�V4q5.j��iF��j�Qro����?��OS*S�����BR�zu+ʽJ�*�(ѧ
��{Y�H�����_�Z���7��Iu�^-Ί��>>�-��'RZţxOU��� ���~ A�wk�v��M�ⴅ4���7N���� gGo�����H����xtG���� ����_:Y���F�Z����֡'��-{��Zmխ������k-V��-B?���x��p�)��u[�O���-I�[-7H�`�c��⮏��x;�����,|?�MS@�lN����������ݟ�u�=��B`O�q�5�����W����|+�� ����t(��Z�t��S�_��Z6�o��xWC��{�sw��#�R�+H�m�p\E�`��Ч8Qr������Q�5+%�����:���Vt��UQo�իB_�b8v���x'�T,T���\9�I�N����Ԍ��xӍKJ2s�?�U��ƅg�隆��χ�:�i����1������t+�'U�|=�ٶ����?h���5�kS�����Zޑ��SP�n�kmQ���3��|e� "�+��:֟�x�T�t�MKC�\I�ck�x��Q��_ɭCy�	t��F���v~�g����� �[�;�|a�����A�&��_�x�k�~�r��A��6V7�i^��O�<;�/_Ú'�-��%�.���?Ú�q'�m<;m���y�2|9�X�t�x>7"�?[����k�\i�>!�]�ܾ��n���G�ַ>����i�/��]�~��o�����`��	����þ|T�H�XƟ?����'UթNQ���F
�:��ڄU<DW��k<6'���3�j�YU�;օ*4�)T�Z�o�G��s&��i���\��,]������ygm�iɩj��M�� \Š麴Z����0\�������[��q��Ǭ]Ok��j�ڏK/�|I������֞�4� x��^���_������K�x� ��)>(��:߈�k;�%�� �<#��R�\�ޙ�kWo�x�o	~�xs�W�mt����u�����UK�B���W~	�4�Yj�}��֦5^�A�߆漲�/�|#�\��:m'\���������i�����<{w�x�P���ť���N����Y�V��E��D�<5�m7K��]CF�4=Cᶩ�Y��<7�kV�"�����.�a���K��Z8�Eƌd��!V�zQ�J����YU�9q���)ӄ��O��"�
�f�N�J�#K�Sp��JQ�F���R���S�T��?�|S�4/i�� �<{���+y4kI|C�m��ψu/h���?�,|4n���j�(K�;�����%�������}��A�8\|V�|�ǟ|,�p5�x��zw�� h�6���'��2�e�Ҿ	�Zx��N�߉4�7Dԯ'�Vև�n�_ah�=�^j�Kj���ÝF�/�࿶X�~�Pѵt�k�X�f}�Z]���95x�!��[X��7�|3���&��[�z�ǆt�7�^�����D�3��s'�5��F�B�Kcz�:?��e�l�`�W��;.��-kN�}]����X��t=T�e���<;�i׾*�nt__+��8�-Z��VJ�U�ӌ�}�RPmю!եJ��Tr�S�8�59cN�M��q�ML5��b��� ��ԭ�U#K��˹�RP�t�4�ѫZ��b���R5�Ur�(��Ee��3��wQ���դ��z���]z��j1�x���n��ǌ���b��Z��&��{+G-��.�F��6�i,� ��M� ��"���o|����u��s��S�|'����@��q�?��x�^��w>-�t�x�M�N�w��xkK�56������~ �d�V�pp���_�[um��] ^]��.aӼ?�k6Z�����'[�ߋ|=�X�v�6���~.�6�?�(��+M�I4Z�q� P_�B?�&¿��:������2xCÚ���Ҭ<5�_'��)� DC�d����x������,/.5	�>)����~�<3���V�_�st)�1�C^t�B)Ɲy`��V.5�jU �/��էRr�(R�gB��:�+T��g����?~�eZss���9��}������/�o�]�����/�3�_�~.�Ѵ�5˝/F�u���M�5�lֱj��T]�����h�ZA�K��Gatl!���������x�@�Cռ1a7�[I66s"d�,�V}�{���֭��T�^�]wK���Z�?�c���������y�y���}W^�����Csg�h���6Y�My�?�t�OѬ�ocѵ[;}R����o���[-O������Skz��� ���3�OF�ُK�c�U�Ԛx��tԼ����4M3V[�8��͆�u,�U�Ri��]�C��zQ�[���f�δ�hEBR�=?gs\�S�sR�$��׾�.4�<TS�

�J~������r�^����)������:?�?f_��~8���-�|g�]���cO�՗���ּMm�gc�}^��^�v�w>�q}e��[P�Q�_H��I4�Oᖭ��_x���=k�:������u� ��.��@�t�cxK�Z��q��#��2j:���#,:�����5ֵ�;�Ǧ� ]��T�$����C���g�o������a��^�{�^xH�u�
�h�>�≴�l���w�d��Kx���M4�� j[�{-��7�;T�[�i�L�Ɲ��öMwk���_j:����� 𾑨X[xj&�������g�iW6����6�>!��O[��hp�:xlvi���ut��N��hS�uV���lmYF�B\�ӍZ���s�?eB��g�U�z��S�+^���/g�?��$����	��Zw��jԭ�/��x�G�׎l�o�(Q���5�g�֛X�mn�W�Ò�?4{S2x�¶O�ޕ����sM�?�x��~�^����)k�� ����O�c�+k�h�ˤE6�6�m�vz���j�Z�V:L�#������X�����ؾ�:_h>��]:�m���I��m������:���}A�n�6�����v-2�K�m������Ɩ��<o��k��A$>%��	��� @�5爵k����X&��Mf��J��tk��Gus�T��mL���>�PK���QX�g-ZR��䫥�6���0�8ҍK�.T�4*G�(sIO�T*W�Nu�QԄ'(��իe7Bn>���*u#��u%�ڪn�e�ڇ�u��p���+ko^k7zǅ�#\[i�m�ǢZj���m�Y��!��<'&���:��K�~'��w��97�'�.�qu�#�x�Q�nm,<aa�h��~$���5$��v��o�o��:\?�����?�4�/�2j�i�F��߇���ׂ�?�s�^|E�=�u����?Y_ip�i�i^	���'�jV�>����x�����������$���� �|y��N�������c����k��i�i��6���	<W��_�-�^YjQ�3O����N𞑨^O�_��G��k:F��k�����ב�S�3O�s�QW����MƞJMS�eRSt�4��.5c͊��Iǲ���x�N~J��^��ǸR����ԡ	R�;�iE:�E*����0�C	
:�e�=���is~����=A��u+����h�j�΄�w������d�:Ti{}i�j+����_d�uK��O�~���c��it]j�L�to�K[��)☼K.��2��گ�^����/�5{� [A6��|M%݆��Y4~9�3E��V�Ť�����x"��B���+����`״u�|?�Ƨ}�K�v��ws�����:Ŕv��6��������mi����G��|oii'��+�'V�{�Ek���/B�4٧����n�$�Q���%oM�j:��5_x�]Q���9��_�|�J�6"�*��B*�%(B���"��*���|��q�L:+�ʭiѫN��a� x�)F�O�VU"�j���΃U!5`�:u�������U��>�e�h^6+w�x�������Z��_�Mo��;��O�}�N�o�'&��t�gK�t:��w����e��x�Ϥt��WV��7m�����������_ė �f��oU��@��F�w���x�W�[@�յKo��(���v�������ԭ�ھ�q�KN�[�n�="�Z���5O[���M��v��-)�Ӵ�Y<U��SOѴv���Q����->����� �W��_x3Ě�:����s�B����,..<?��j~(���5�<Z�����+�}7H�5��� {M#L���0���,<�}n�7U8**�N�J��Z-�擕Y{<R�e*�i�����g�ƨὝ(��Tq�HR��
X��Jμ���a�F�%�1U]G'���{���o�7���Mǅa�Ӿ+���w��@�����:�\�c���Z|1�:W��]2���L���;�]���l��?;K�E�2�]w�6�4�-����V��i%���E�V�o�7qI�מ� G��������V���i���L�ҼG�1��_�zm����ѵsI���9|e��a6��iֱj� ��Au��g�	x�G���h��n��N��E��#���	x���O��s�~'�W�³�O�4)��[�z�����}���wQ��M����g�4_��]>��Er����=��J�_�����aʅ�R�J�(�]�p�7:�2�ѯeVU�'�%	�<�6ºԫ�R���lE(Ӓ�'<���Т����ehÛ�I$��^�c�H��}��#N�m���h2xsQմ}{V�<H<5�j'�ֵmQ�<C�����j�� �5�^��cU�<;�$�2��?��>h/�a�����Ӭ#��n��${/[h��5�C±�5}�RK;�aq%�儚���vPxF�Y��|P��|I��J�5K�>��'�5X��Ms��	��>%kz-�k��E��֗��./��+ٵKQo�Gn�?������?���~!�6���!T�4?���)��5/�^�����W�,�$��Ǟ�spt/������Q˩��|D�xb+o;��儭����NQ��W�Z��YԊ���2��ͪ~�j)�'Nn��f�Ru0�Ti�WS�F�%Zr�R烫E9)�m�*/عrD��׆�3����|Om}�����~$�k:~��&��mx�~$�^mټQw���j[kZ�|S�K�o~"�B��N֮�./������K����\���:JCu;��u3ź%��|Gk��v(�&�EѼS�%ݮ��x:�W�mǍ����I�� �E׉���k}b��Ě>���	{}���+���þmǍ�����+O�n�o��ON�.�_�]_xsQ�z�
��~)|1�����x�\�~��K��u?���O�i��������������i���t{?j����+_�ZB^xvK(ya����8Ma'��	TT��*u��*RXu]B��Xv�M���Υ9×��~�YJ�ՅI�8S�0����z�x�t�Q���t�熌�ǖRS:��|-��#�|U�\��|wr5�Uׯ<Uc���/дhW1ϢA/��9���:~�s��\O����'���U���R��i�\<'���E��oĈ5��>}cO׵Im�>|I��6��զ��Z�0���w�����}wme�!��op���������~=Y���P�G�-$�m�I�%��aյ�E�F��%�֡�\��j~*1xb��K�{i�6�{�?��'��m���|+���|G�����T��|Y�3����O��q���}i�������M#M�cԭ�-�k�z��εm�����c��E���[�Ugy~aF�*1�5J�%:�u�[�u.�,<eN.>�7^�Z�0����e�bk�F��j�ܣN���jmI��sT�� h�9��앹��ۈ��V��Ť�X�@�|G��[�����w>��ޫ�O��m�Ěw��Ue�-Ě.����x3O�M�V�b��7�h�mb��𷆵$׭���ˏ ������]�Ƌ�kO����kzlzN�.�w�hZ���$Z��4�G��K��D�x�R�"�Ю�п��<Y��{\���%���X����u[_��	�7���kWw>%�,5�iZ��a�jV:X�͈��+�,��9�o�i��|�Q�6������u/�����]�ּS��//�l��{q{���&���>�um?�W�=�ֵu�M���}CV���W��Y��
���L]:5f��r�HUu#
��}�b��W�Nj4��y��ETxw��?�W��XHʖh�-C�UV��7;F��y�RQ��h��u�d��M��d��iv��� �~#]j����״%�P�llm'�ZޥbZ=.� �25��V���V��:��$R4�D�%�5�M�k�Z$'[k��b�{��0��-+K�����C�i��O���t]V�@�#S�.��_�� �v��j.�r�`v�4�i��{H���u)��4�ӷ˦趷�J�͏��&�ź6��h��kl�p��L~��~"x���7�|;u���]����-������h����Ù|[k�x���|{�h���%��c����A�j��F���bԿ�� ���|N30�b��+b0��i�*���<5&�F�R��FJ2�[F�!*���O��7�~3α9S�82��p�[�����R��a�	S���Q��+(֊uHCܢ���a�iZ��}ͼ�P��Q�v���qqg��na��Z=F&���^:}��a�X�Z�OD�y��"�\��-'�f�u�+S�_�5�KJ���ލu�A��g��hw�Z�B�PЯu�=쥗�z��R�qeZ�5���͎��׭�;�|Iu�����Iqm�i�&�ҖAm��>L���o��F��HE��ͧ'������O�^�4�����Z��i��ǋ5]k���ΑΥ%���j�+��5-oE�=gZEѵ�����ml��P�O��:t'��aZ�R���Bt����BR�}��>Zj�i�S�Q�%*qQ���x�ToN��NP��J�w�b��9jJ�����)BR��	�H��/��2�Sץ���$�ti2�Mͦ�1xgİ��^7����4x|Ya�xgF��t�8u�"��.ⵏR�P�.��C����[��}�^��ڬ-p'����/��e��C�%Υ��(O�-�Uf1"�i��*���i�jwZW���)$��qg�[��uV�X�:�ޭ�wP���p��6<���X��0�]hZ�宥�h��c}�4Z|r�5M3�NC�M��W�}V-P�i�d�,���l�sH��Q�j����R�Z��FUi�0�B�5���4��{YMצ��M�t׹�U*(�j�Z�uV��<��F�kb)�:�������]Oߩ��V��I�Ӯ�ĺe��c<��F���z����ڧ����m[i�U��l��m���8�ԭ粲� ��tG�Ms��5H4�������f�o�2��Q�V��MY��/�z�����z�w�5KI.a��$�5{/����%�5	tM_L��� �]��leЬ��)�[�j���U��J��[���K���^k5�Ԭ�='Eӯ�Nn�S�×P�:���M;������/��~�UŢ���m�����;-']�m�_�^д�����s᫞̣��U�K'QF2����qT�'
��N��`�lB�7R\�g7St�J��S��iJ8|N7����g*��ɷ
��{:4%R��¦�n`��{9'��������{T{����n㹋R������'�(����K�ib�Ӛ���� +�&�g[�f�P��$��Ж��+H5{�CV����I��%�:�ck���2i��H������hVW�'�-�kap�Q�x��Q�֡m�G��oy��]?���.�c�l�P�O�7�w{R�9�E�.�{y晦��<+q�����{>��� T���K�q�jqD��;��������B��T�߷�Z�1��۪�EQ���J�cR4�)W������4ܩJ�BU(�Xg(�R�VҧJ�cN�/j�U̩�c
s�9)TJ�8[�қ��\�}�p���[�����\�6�����W�i1���j��ͦ�{�^i��qϠ�� ���TP]H�{rh:����=/V���mu;9��!�� �i�`�y��Rv��Y���o&y��5�8�W��]ܖ����N��c�M֟��xe��_��-��=ޡg&��a�i67�����k]�����f�mkS�MB6��-m9����s�%׉4�Xi^O��GS�59�4�5=N�T��y�I�;����%��|)?���uOi��M�u�z�t+SXZ�X�T���<i9ʌ���K��qXER.hJt��*t�՜�S�*��"^�Jo���,Tp�]?~^�����qR��*���q�`����Vk�V	&��P��ԢK�.Z�P�����;+��kk�n�m6�HZ����ō�ո���	�i���h����/��"�}��7����o<��i?����1j���&����MCCִ�� ��Q��I��M�:���k�!�쬵ش�I�M�X�?�uM;N�m&��g�=SQ��y�������Ӯ5=S�<�rXK��Z�Ku���jIup�[>�sb�Gq�Ox
K%ͭ�P�x��MWK�-�d]J-6��-u������+P�*�y�(ך�JT��Jiфc]ԝh�!Nr�j1Q�jrr>F|p&GŹ^'�exL���oiJXy�)�T14�
���*�,:����jR�%Ο�����N߅����σ��(�[�Z��>Ҡ]\Ӣ�-����j�����kP�z%波�ַ?i�4�no6����Ϸ�_ ��$�w�~%j�|?y��i��ci��>��<5��3Y�J��n|C&����z��L������/AԵ�X�<I_�����R�Q�}6��Z���M�ƺ�4d������v�H�}KO�5V�����]�}��E���x�-<_��L�$��� � ��|�E��X�,�/���|�O���[�|A%��cᇻ��}���H�t��k�����N��kE���:6�q�i���K�KmRI�g®$�0\K<�W%
ԣ��P�^�11�R��F���)֧��*T��G[)�����\1Ĝ/�c�\�1��3<�:��ԓ� �K����S���b�R5!��E�8�<?><a>�>��?k�;��p�����&����4�\Cg�xsE��m��f\�-���Z���?K��n�e���7���a��zW�����v��C�U��3w�io�=fxl,��SE�k�c��v���CĚ�����<5y� 6�s}��GD����-CE�¾�� f?��O�� |O����=m|;�C�/�u�B�gø��W��Ь5�Iԓ��Ӵ�\jw^Ѽ{?�m<=�Y[Yx3F�<I}�X꟱�<㟌-to����&���Iic��/P�|�\��۩��W�f��;x��V:G�*?�M���<0�6�oc��/���^�L�����1،�/�b��Z�.�
,EHU�B�)bj,D�M*qX���a�;(��K�8�Č�7�#���-j��6.�>QXjZ�Z��J��FQ�`���U��R���B��D����7~�W��_G�b���ZE�MZ�úw�dڮ���/��a����j���|��{�j���q��>u�~��� ��ς<C�O�A�K)S�^���]w�~,���Ot�g��n|#-� ��zu���c�x{K��P�߈t��>*�<Is��x�q&��_��!��G���� �U�_����m��|1�|)��QAwg�o�z^��Y��(|3�Ŧ�|K��O�tCH�o�-S�����o��P�_��x�?���7��<k{/�4�|1�-C�:����j�xv� ��iZ/��S_׼b<9�]���z����]��y�~���O&�|��_�c�(«�Z^ί�e�!,-E^��t��w��(7��'��Y���$���V	R�九:W�UZ|���	��J|���T_
����|��ڷ�_��3���/f��%֓�h����j����+��u�֝��-�-OC�.����,��nn<Axt�O�}[���g�����'�l�u�SӴ�g�qi]}�����u���jp��&��,��].�Z��cS����e��Z�_�?�o��>.���P�}�¸�b�<3�
jZ�x*���-�-<g�jֶww�e�<k�x"��o�MC���cB�D�=�ĵ�� ��hm^~���_��ag�>�����՟��/��}�+=[ķ�:�������+[�:��ZM?R��fg�n.��N�u��FU)���g��Z��e�:t�a�P�P���QUe��U�9�uh�B/��O%)cp�J�)�t��):x��(Pp�Ւ�iFJmC��N�"�O�O�Z^�n<I	⫽b��7�%浩O�ޟ|T�մ��v��~���}]�,t�CVC�1���� ����\����O��9�ߋ�>������<ac�x����'���q1��G��z~�s��jPx�}z�K�[�'Y��+� ���ًMw��_��~��߳֗��Z��M#���|9��	�M� 
�Z����qo隟����#�����f����߉n��[-[еK�R;k}�����Q|H�߫���㏁�8��V��o�&��5��t�����hPxgE��|`�߇uOxs�o��/w��|L�G��u�ST�0X*y�i9��^�������:IT�QӌjY�҅HS���a'*r���EJ+����ѥ��
r�]<B�?�J0�ҫ�Z5&�i����IA�mJ�}�n>"j��[]|0����g3i�sx�G���S�d�|5m�]��{ST��~�@O�Z}��� ��ν��|=׭�|&���x��zf�|M���+�/h�<>7�n�?�j�7�5�+�6'�ځԭ<�[+����xeh�;��n���t������>��⯄4��k:G�uk�M3�~8��#���4�/F];Fе_
\�#���5Yg�K����4�k�����׉#Եo�s�<Ukq���^�[�J���>������k��oU�շ�?�7��ω�|_�\�t��?
��)�S��w�~#�4k�[�B�L��ټ0x|.W���0��qSj��څ*�i�Ƽ���*��ڥ8U�
tg��WV�|3R�lZ��5�V�J��[�U�V�8SVP�,���� ��¯���}o�ǌ��I����g���5Xn�WM�^\x�N�[�w^$����oq-�Κ�3�F���^!��k��C� d�W_�����[ள6�s�xD�<U�0�O��P�-ǈom�m7J����R��m���KưEu-���2� ����K�.��HK������➇�����w�=񝮓�Y��>4�5�)���AԼ@4��w������=.�������=���4�����пh�{�	�h�^��X���
f'��ᏈuM;⟌4�?W�e}�
��Z��ү$�<Q��A���z=�Ɲy�>�w���ys��3�)��8a�9NO��J�
�X�R����2��%()�
JR��W�=�����g%��O�F��NJ���M���X|	����x����㟆��^�~%�V�m&��~�Y5�1�k~V�,�ڞ���]Ʊs�XD��7?����M� ��V��	�o�w�:񗊼3�{F��E���`��ye=��amh��%Ѽ+y�����1��!��_e���Éc���� ��R�~�w�e�~�:��|OӾ%��H5o���UռS������U���[oڤ��R�^(�t{�5-?Y�Ó�ᤴ����)w�=�X�|D���ċ-T�~ Š��TP_�.���~U��.��K���YD�t�尺�<Gmf��_��i?��38�����J���c����V��S��(������,G�J�F�UZq�){8FJX�G��J���T��)*n�NuR��\Ο�~۟�Ǆ�ψZ��w�&���ǥ.��k��[�k�ľ%{��[h�Bi�q4�xe���zv�ke�=ON�ͺ�<c�H~$i^&�O�O_j:E� į��PK�kk��oo}����+��m.�Y���=[��|6-�d�g��� �0����u+_>(|c�Oįk�!��������ֵ�{1��o�տ�g�|���wwwy��.���Ok��>��k��:����^�ֻ��A��;�6W�^ �t��P�uk��>,�l�|Ko�]j>�������~)�Dռ9�E���8e��5��+3�1�|Z�zRp��.oa���lEt��{:4g
r��Ua'ʹ=��;�\�(ba���R�'�ʾ�
��J��I��(��ԭʽ�N\�ӳ��c�4�~�;@�%���ݭ�h�*ҵ=S�j>(�[��D��M>���	x���e���k����
�߆b�7��5X�M#��J񮅦�/
�����+��i�(�_ִ[+��o�3j���Qg�b{;ȯm5K���~�Zl6Q��+k� u_oWZ���@��+��/i��:կ�4=+Ğ�Юg��z?��m��᫟}��T�|%���<�xoK�o��>=U���>i����~�v��M%��u-_V�ץ����A���"�`�����-z����m�T�.-<;&���l�6���d��,.U�וT��J��Qs�8Tk8�:r�����qj|�Gu*�Y)A�T�Bs�Rv��¬���ʔ�(F��8Ŵ��w�*l�KF�m�z�xt��S[;-s���{����o�_��g��{������?Zj7�x�)��ľ#��/-��]SԵ�O��?T���<=a��,�=恧������wu��c�� ����ӵm��'𷋯>�R�� �o�^�Q��м��,u[��<=?���OR���W�� �4����7����sm��ɨʍ>����w	֗��i� ׌��<U�yl��WY�.��x�-s�t��uM�Oפ���sF�Զ��Y�o����~.��?��|O�j�ߌ|I�_�jq�xkN�5Ǐ�-�?�W�5���9��}a�aa����&2��P��B�Z��Mb'��I�ф`��*�)�U���E.og(�ք�c}��J��N�H[:���b'8e��L$+P��)NUiF.�I���i�mƟe�Cum���\h6z�&���>�y�j�,ڗ�.�5��&��Z��l/�<�n�[/Þ"������Kc�x;N��|��|?�� g�5� �t���7�O�k��b��/����[�7�6�-7�]�ׅf�4�/������
����<Q'�|-��[xzǐ�yg���hl� �-յ���-�����^�d>�uT���6W7^�!�|=�h�Ѡ���5?�r^x_P�� O�kF����k��?5��5�ޯ�źwÿx_I�Ö2-ƛ�cX�-�-�8���J������l>=�ӚO3A��MZ+0�0�x�q�F�<MzPj��(�R�IFq�Ԛj���#)>EY�O�{3��S^�VᏕ?��>����rI
��T*sJjU��X�Mr�������A��k7s���ⷆ��Aqai�Nd��� o�ek��7ȸ���7:v���j�Gc}cg�,������S��&����#ԭ|;�h>��/��]x׺��cy�Yx�]x6��x��y��Yy�����^��%�1�yi�G��ƛ�M��-�&�����w[үt�#Ú�{���ˠ��ƍ��zG��mu��t��}$^Y�Ku�������Ms�|p���x�|M�� �jw���t-T��,~�s<VַWw�WT�tY� V���M�i0� ���-C�,ʵ\��xL$�GVq���V�%�R�ҋT�'UT�Uӌ�	*�!J�<;��[�ХVU#T�U�(ӟ�N^�$�:�#>f�V�G�*<�'���k���߁|)�	�>񶵬�K��/��[R𔚶����ēk��F�����OK�[�Z������j�*�����ˣ]������焿jO�Wg���O�ń^)Ҽ#���x���y��<�������׀�<A�x���uƟf�X�մZ��:/�����}� ��O�i^�?��A{�G[���(�s%����xßm���4���G��]�|9��>�a���_��Sk�V��C��&���o�~)MWC�֕�7\�H���xuo.�����T��	���Οe&🇴�{[�t��,XE��ƃ�x���g^.�U,>��ʝU'F�0�*Q�S�z��"ۖ�TmFT!�qO�Ue��OɆ���s�.HUt��gcBPJ��gJ���C�3ƾ�|A�v��O��=��wp�!�ּ?ue'�-<e�ɪO{a�G��y�j�Z�C��x}~%&��׶��%�)��?�����f.�<d��ōOI�|K�iWe�7?��+�wB�_�4�+Ğ���t��Zv�g��×ˤ�n�;K-Vꚇ�~͞#��������|?�mSK��6:��|0���-�}�%�u�h�_�<i{�(�aw�j�i:υ�sc���<���/��K�hG��!���������#H�_�oces�i׾ �u�o���
�MsXմ��Oxw�~�Y]wÚ��o����ڎ���2��6�jt䡇���T�:�e4�猕�ҜhP~�ENi(J�T(�ǟ��1�1�ʗ$�<j*Uj���Z
T�d�9{�9�9Q��p�*��?��?�����O�?����.�[����Ꮑ���o��j�o������7��6�N�}��w�|5�_
�W.�7��KT��wZ=���X�>�y��;Z�ׯ?�E|O���φ�.�wi�����7r�i񎸗��t�����,��?�5{��V�����v����u�kZ՗ō:�_�յs��»��5Ş��^�O������O�����7��>j���?
� �G��A�u��zO�$�0Y��O����1����ק�k�5�Ø/<_�|Iдh��O�~��������w���M������k�j���֫y�Ai��:�����?��..\w�`1�ƍ
ս����
Ta,-%MƭhR�즯F3t�I����ע��ʾ�+�T���F~�F�j�Լ�U�N�(S���ʜ\p���n4��{;��� f߇�-��⏋��D�	Ѧ��mwR��/k�_�S��u����Շ�4/_x
�X��|3�U֩w���V:�>#�<@��gI���~#�?�_����|as�8|���!�Α�;�M�߉q�y|'�i��>��߈��n���N������\��m.OM�j�+��<Es��M�x���g�O�?�I��8�� �����k�����������Oмq� �4��G�]k�&�����]�H\j>4����GD�q��_ٶ��Z�-�ci�.״+��i�.� ��ww��i�rj�ֺg��q�u�C�P� `����P��:(��ٵ�o2�3�n���P��d����T}�UNj�h���������ԔR�hWqjpPp�FT�a9V�X׍5ZΣ�⒔b���IU�V�ӟ��^4���?�GƟ~"�_�W��D�'�~#x�������xf���ƅ����hz_���V��g�?��%�·�s�i���K�O���� ���E���<?��/xGO����M���յ}>]W�+�ڤ�֛p��׺����Oa��o��>��ť\���w��	~��*������¿h�U��g�MR�L�{�x��R��5��U�\GR�5='B��<+�xw·����tH�Ӽe�;���s�-j;���ͭx�Ś���/4��Oi���J�}OQ�|Co7�m�D�����N�oV�ŗ�Ix��4%�P�������D)U�:�`�a���0��"���Z���BXZU*K��%J���a���a���u�':0�0�U�&T�
��8�T�J8x�K�rE�V^ד������Z���I�/4���=o⎋��ͨ@�\^�X����ִ�m/�soc{���/i^'��8|Wc�ɤ��\z~���2����K�Z�����ZF���YA�+��-���]�>L	%��u�=�{�o�y�ӵ?#����xg�(յVKF�[S��A��:�>)�5�:]I�4�FK_���O�x[Q�B{�5�#������4d�Y���a��+4�$I,SĲ	R�夈[^�I!�x� ė�q,����%��4(O��N�<=�L0������Z4�ԡr�ѥJ|�)�2S�%
p����x���bg�㱰��r��Y�j��aUL5L=XF�c���uV*��֠�a�'B�
j���̝��
�1��g+*�Yt�C$('�����Ks��w��#��X$� �5��tx�V�]j�,��Z�7ׯ'�{v�Ё�5$���?�:.�l m&�I1<U��3��{�C�Bu��ݏ�<Geg�x~�[��xu��r�+�i���Zƥpb�M���X ����ω�9�<E�<1�?�.�g�8u��Ρ���_���i��W]�τ<I���F�7������ե���z9�!���r��9��g��H9�p�=�k�UJx�Ru!ƍS��|�ҫ���*�)I��:��QZu���7
�uܥ�/kJ�*5gR��7QE�s���}���?d�����_��t�u=��\���UW���o��W����S[iڂ��#�V������5�ײ���"�fn��)"�+9�d�������6�^^\���Q��N���G��;�v��}��)����lE+����}V[�t��G�5�bR4}3C�N���0V�"4�=?�.�m�O�]4CU[��C)����?��?�&��?�O��xw�񦑬kˡE��Xx��H� ��������J���S��YE�&����,[D�L����Is�N���q���l�p8�m5*u+J���^ʔ��h(ӄi�J��yӥN�"j4ۏ�����qOp�	��ˊ�����f�����u9q�5��{)cgI<>����Fx�ai�5\�Ub�4~<��=�� ��?Gk�.a�b���V��������2�M�����N���������uw��XDw���,3��W���+��F���!�l�1�{C����Ћ�q�j����ǎ-u����^G�x�X�l�)���H�V����1�~��4�� �m1m����ʹ����H���K�����>�6�n���n��P����_xc� �k�D���Ꮛ�?��GG�u��| Դ��+��-͞�ℸ�xu�/�R�Cӡ������|Q�[詩��a!��d�r�N/����b�UՕ{x���P���	¶.��U12�J�}�D�������_��kS�W�e�̪`��*�ZĪ3��������J*�LMIQ�i*T�Jn�u<�����[��tz�:��ep��^�F�H� ���� K�G�j3XZ��WQ��k���뺁�,t�]�ۻ�a�6�m��'ĺ��c��Ο��ZŔ&�{clZ\Eo{�-�H'�.�H�i�4�~�|Q� �sx�²���<M�C�[���G�S�����,~-�<c�Q���!�����鲼0�V�݇��K�,-�?=����u�enu7��{�-!�/4;��Í��]Yk	��V�{.��Gwaxl�B�G��Ls��ߙ��l�&�J�mXU?X����҆c)R�R�b�:���5�:��^��J�j5�:�
�;��)p���L^q���
َ41��<�b)�tqU*�iʝ*j��W��f4q��C�Xi��խ*�J8��3H��mJ=?K���M7����d�N�Ҭ��m����^Ms<�:T"��� �u��[���$l�������5Ǥ\��ß�ŦA�jw�N��~1O�uk#�N��
x^x�n�3�+xa��ҭl���u�:۴:\��p°i�V�V�����%�������#����w{usn��QX�j�������	^��+��l��B;�ڊ�i�kg�%��X��N=>��&{�gd��6� �����?��g��=�V� Z�*�u����F��eZ��V��N��xZ��rq�R�)�a<#��;�+)���Iԯmi��q婊U*���Э,Eg%R
�(TP�:���3Q�Z�;?�ɬh�9�߈u�U�0>#�f�i��h0�H���.��E֕�?隍����z/���u����{���6OF��DQ�)V�i��_T��.�SZ������f���a�:f�a�,~i�I�6�ֿ���|:X[#�'\��ܳ��}f������z��P��L�Ԭ#��.��meO�%��3��X�+��h6�sC#ϫ��X��Zx�_ң�M����Q=���h�I)l�^x}��D�n$�� Q��.nd����ln=�0�0O��t0�Z�x:~�b#�Vxu��a	T�qO����a�WD0��mC�ѡ^��SP�V��T�F��Z��
u!q�W)�P�T�a,>�_��|uӵ?|9��'�~+�;@�|���Iu?�~4�Ԇ��-KI�sq��o�6���Y����.���X���M�_�c����(W�����
�S��ͧx�ƾ�ơ�-&�E�ߺ��_[�ǁ4o	h>�DU�� �=�T��h����	x��A��U7�!�7�7���p�*����ǚ6�7�$������!�O�|7����qxp˨ZM��f�9t�.+�bWE���GMі�S����� �_���C��V��u_jz~�����0x�I�o�t�k��&��"��׼-h��h����Et�?.�� 	;�\�aùn{�gԫ�e�t�R�������F�:r�
s���G^�)AT���:��5�yx��q�	��'3��>�*�!��fTi�u���a�8Q�O*ج_ժB��a!R�QƲ���T��� �_<��i� �|/�[�������z����AN��k�������� ��4𦭭��5����i�@���s�E���[x��/�~�E�N��H�[�^"����W�C�~�k}����O��$�3���|E��gD�>����{��z���x�D���u�l�a��{{�B�║���0�/��7�[x���h𵝌9�ޫ�Q/�<L�ּWƃ|5�[Ē�#��-���k����|?���w6����X�`�.�k�GJԵk��p�����]���z��~�i��:������O�I�)�xv�౶����O���<n�>�1Ӛ�B�`+M�T���R��j�囥
�!µz�婊��9w�����e��W*���+�k��v�Aԭ��a���q�*u�U����<=)өW�a���xW����-��`�����Ή���h� �k�5�/Ľ*�O��ƚ-�ǉu;o@ڮ���mK>��-<C�.��׬�૟e��;����?k�1�;��_F���!:���o�x�~+��t�x_�|[���F�K{�I���k���4,�֠��O$�/���~��M'��5��<�tQ�h�3�z���I��u=+�A��/�I��A�&�����ޖ��Ǜ/A�vmSB�_�W���_&��C�h��~��ռM�/M�;j�,�\�������7A����F�C|4�|_�7V��-���w��fX�-(G	Br�e:�)6��X�,-*�#MթN���'���ԥxs?���,>'4�mJ��Yү]J����Nt�M?�I�yjS�V�|B��	ӥ�uiӣ[���������� ��N��i��o���y�s���5��>%�x��z·�[���Z���jZ>��?X]�M�Ե_��jZeߌ<Gy�[kP���)� �A�d�k¾0��^��KY��Wg���a��m��%q�5<]��X�kS�e�,uMW˳�.��w�+�M��&��]A-u;_���� �~�Ƒ���n��*�^��^���o���>$�/�Z/��sj�>��?��~"�/�E�G�+Aa� ��!'��]/�xc٬>*�{����\�o���GO�/�uO�t��I��57�m�,�ٺ��ڞ�3�/��T�M����*B���9�0�2�S����b+B�U��i��+�_���Д���B�-JЍ*�֌!
O96|f>�g����?f��!
ӕ9Ք�J�1ya�1r�Q�N�eJ�hb*��0�cZ��?h��^$�ÿ�-�[�o��i���^���姆��_`>�u�gK���.��|Eq~<-o����h7^ �^��X���};P��������������9���ڇ�g���KĞ�4?|>�R�>*G�_�a�����R��.,,a�D�C�T� :��%��u,-k�d�~���"j:D�j��]������}@x/K�ޟ��^�k'T���j&�h�/��|5�-��z}�]������;�Z���w�jzf�w�in���^��5=c�	6��o����-�=����^���hm/O��_r�������QX�����K�N3�Z�<0tj�IT�HՅZ��eJ1���ߏ�������1�<\q��|=9S��#J�:R�V�Jr�JxZ��pJu�A{D����B�5ώ�W��_�F/x��L�8{O�������]��di^���w�U�d��͹�渟D��<7+�%���|@ӌ>�VԼO��9~��7N><�ޱ�k�x�ŚG�n5sB���:v�i��'�tM�Z�� �uK�=Hj���O_h�:���Z�,�/�]'�m5_�L,|Z�冉�x���3�w��,<U��k>�ԼW��xs�w�-7����&�w�ֶ�-�?��{���ާ�;N��Լgaq�h�����O��,|㻋C<F����|%�����?�x{R��-�5]W^���K>���?����
u�:��VuU*��Z����8c)O꒥8ɸQ�G���ѭ��CMF�x�҂�Z50�t�q�Ss���Ϊ�m:�*��n��>NYJ�|Э#���'�<�x�¾�o�/�p]k�vZ���~��dҵ�"�� V��P�<=.�`�q�}��OT�����j�\_��G��^�~%����������Z������Z�ⱥ�N�.�5����~�� A�~���}�_Iww�[K��u=r/�C�V�$5[ˉ��Yk�v����S����6�(>'>
�Ҵ�o���i�/��{�� �ml���}�ڕω|��4�Oğ�D����/�'�a���3N���|Cya�8tQ�K�~*?���\�}��Cw�x�R6�z���[�
ߦ���x�G_K5��GC�U�GJ�Ў+�A'��:n3���BXxJr�_f��/9c0��Ԇ#z�^�x�%�4��(�2�}�i�\�S��RM5~�� �O������3ß��?N������/�<!�;K]Qd��ԙ�AΡ��)�o��~���u?���B��f/��W�d�W�>,[i���]xV�C���b�?���j�Y�l<G����L����h�&����W����֍�+{�=������xJ+�W�����uܐ��z����ޯ�۫-L�Ћ�|iס�෶�o�h~麜�v�oa�ү��KW:w�3��u=;Y�SG���;�^N���`𯌬�mZox�O�ֵ;��3iZ���wy�-b�W��M�Y�m��s�I��k���9�p���)b(���EgV��)ӝG:���(N�=J���g'':n�jFU1X>e�PUc8��Z�O�S�є�Ƶx*��N�]F��*�P��{_�o��x�@]i������F�|���Mo������ڕ��_��*����3k��K����.u����x�y5��%�};Q��<'���Y�$�Z�{k�3Zӣ�:����޹��.��=KO���i�iQ��U��վ��3�;�m6� Aω�kgwg�+��+o뺭���b�2ۡ��_��m_X�,����7Ri�g���������e�����^*x�	J�c�����h�5���7Rť�����N��iu,��C�l�-&�i��P���ݤ�c*Tk{K�IV��;7Z���!Nq�U�̓��|����j���(:i������c��*���u0ӊ�ǲN�	P��u ���q�gm���څ�����oY�6�v�qk�mu�xR�ƺ���"7H��j�O�|�)�m.��S[Ҽ1yo�O���X�3��W���WLk�i�]��]�m{Y�eƚ����m6��� B����Ҽ_�]:ɮ\��m�;�<Sm�_ܤ�^�[�>P�}�G]���Ě��6��w��ͧkZeƿ૭
�L]GU����o�!�Ěd��� �F�c��S�|I�x�Y�-��o�}��xw��i���o���xG�Qh�����;L�NڤW�>&���Q��R�Ql��*}3@��:ɹ�������;	O�jXZ���&1�6�I,3�i`��u�^���{9ը䒷7e7�T�8ЩAS����u�%FUk����y�)ÞPjj59Zr�C��޳��b��iw�x�_Q���N�B��H��E�2j�"�tW�~���������1l���<ea�m5�)�Ş��V�w���xP���t�,<cc�[i���6�E�%펻a�á�[M�u�S��&h��|Y��Z�������:^�-��g��M⟉><�<'wk���]�]���ݬ�#��u���s�R�<�Bk�C�xwN�>�yi{=ޥ�G��j6zZ�iy�?j�S]���G���a�x`� l�KA_�^o�x�}_���?QҼ-��k�<?�6��@�4�F_	i:����Fk����a�:J��zӥBҗ;|�ݩ{Z�UUJmϛ�8˺8�*׍*f�C	��5�]ʎ�)Z\��ћ��V�R�L=Z���j{��}�Zc�o�m�hZ��[����'��@�\���\����o�CP�RKoxJ}O��6��<�<�wR�p��Ք��ĺ�-������#T�f�����B>-��$�ZT��͋��R0k�V�O���$7�g�4�1��kx����/�xgB�ƍ⻏x#×~"�4�/�>�|+�i3x�����,���h���:n�6��[++�mK�}B]2����Jҵ?�:Ƨ�im�����Kү�PK�#����
I�x��� Q���t]+�,�j�W�m��w�#O:��^'i�M�rX��u�r�|$��J�X�]�6q���S�OJ5*�
n�j�jF��t%K	9��ן��R)J�$i��U�V3�'f֒���VS�8�?�%����e���������!]-�+��uM�]j����������WѵM�^�U:U�(}SE�/ÝD�o�\j�t_+Y<c>��o��`��5K_[%Ə����j�"���t��m��	�M�|1���M
����?e�?X�� f}w�3A��׈<�/�^*�#j:Ι�����Mγg�YK�q�6��Z-��Z�=*f�{�:�z׈��-8��S8мM�|J�|�j��E�MA�K�wy���X}�H���^�ՠ��o��-D�nto�i�����I�}&��}c�����LN>�U?gF��J��T�څҖ'(��b*%	*\�T�
Qi���b�N�U�v�j�V\��2�*p�ҍHIƤ���iN�W鏅|Sm{�M6ˤ�Ч�|Al��Z[�x~[��m#P���kۭ[YY��*+�_őxV�}F�ž�o�h�?>3x.�N���!h��x�C����_��IO\h�֧�x����5OC��S@Ӽ��"���?�-V���Zn�>�����s\��Z�]x�÷��W^'Ѭ�/���E���gqᣬi�s�Ciw&��x{ǖ�E���I�ִ�{�;L���b��$����� �Ꭹ���F6�ӵ� �*��/�:��.���^��=_Q��v��x����X�Ӭ����� �����>/����ʵz�i��=�&�J0�O�FT�^�X�gY�~Ӗ�Q����J��U���*�0� �jΥzUhƲ�G�.5(B1^Τ��Trvr�`����� ��A�x^+H�5�O[�����n[��E�<m}e�E�����~1�^���髮kQ�N�V�ť�b�I���p����c�?th�L��� �&M�m4�jW2k��?^����M��s�^��c�_F�i5�̲-����K��N���C����>�:-G���&��]F���H��wV������I-坥���-��o�k�SN�kɯ��]:Dq�͍� ��dԿiρچ��z��>#|[=b��:���O ��]��}góx�[msA�\��h��~�so��]�~?����2�;T�_��eFi�J��(Ɯ�JX�Fݠ��֩NX�P��*�u#YҍJ����Q_5��ᄭJ�j8ZҦ������:թ�>�S�jT\�9ы�9J�8SNg� G�����>;�B+8��S�� ��F��B���Ş�>.i�o�����-Ɖ�fKo���G��3k���]���W�V��
���YiZ'� 믨xJ�7���\����i�!�o��<+�k~��gwo����>"�$��+�X5]�qj1j����V_�_��|?��� �5o���/x�Ğ(��W{�R���Ş+����?��v�&�4x��V�$�kKkoI��,�u���ԟ�ڷ����O�{��XG��7�*��[�sW׼U����ඥ���Z��	w�Ůj����!������wV[�6�#�I�{�w��g�s�U��lv&��P���Q�$p�HFX{Ԇ.�iS�Js���KEz�X��^[�e��]N��^lXab��ӄ�x|\1���t�H��kۧgr��ؿ�Z?�>7O��G�-SZ��}n�W��W���9�o���}ZOA��7�g��W��Si�,�Xg����`j�x�?����e�j�x����]8}��r||����[W�=�X�jW���5���_�V��m�ѵ/|>�ƹ�Ț����ߋ/'��}vc����_|��m��Q�4�[��W�1i�x?X��v��xB���Zu͖�o���G� ��kV�~��Nm>�O��U��
[/k/m�� �Mg���>*~���s����zU�����7���W@��-�I��x�R�<3���h� �����d��u9Q|ii�h�>�s��e�:������+��cB��
�)ᓠ�NU�uc��R4뺐X�nS�Bttq�V�Z���G�e��Iζ*�X�Ԝ�.F�jT�FR���΢��:����Z��/���}�C�:����|G�>#x^{�+�sF��<[�{m�C��w�\k�#Ҥ�����C_���A��;[���P�~��:i>���[�Z}����4�G��GFԴ]>_kz����p�,ח[�c�Ǉ��-�jZ[�Z��4���+��>�'ׯ��~�v�S�~$�~��įx��[���G���t�
��F��+=��,��� �U��wP<;�h����oa�Y[�ۍ� {W��Z'������x�����u�?��M�\ꚍ����� I�h�k���퟉��m"=?ƚ��|C�O�M�mu<'i}k�\\�� �:Uh`2���,;���ޓ�����c��V�S���:��aOS���*��(?�QO�r��2��e5p����Ԅ~���Uj�9�/n�R�*�4kB�)/oӫ{xb����+{k]*K�8�}2�mOE��mJ�V�P��&�ǈo�-GE��ִ����.����R��U����m�x�� �Ye.�kx�P�d�I�*�o�Hm̑ɼMu_��~&��������\������KS\�L��,V�����?.��e�E��<]�x���?��/O��<<�ҼA4�h�F�߆�O�Z����I�[�m�ɴ��������������
�m{U����Br�����\�L(��S�m��T�g��N�*�1R�]?��{x�u�*5cN�aF��E�q?ؿ���E<F]�Tr�5Ha�X�<�_��J�*�7J���qQs��ԣR���^i�@�?�Mat-?^���k�}����5_��b��>��.�M�J�5�no�J�^2�#���ךE�����֝��h�[���F�6��j&���f�ǟ���X��5�J�<X�b�����iB���5�Kh�P��P���Ֆ��C��k��Imu��dm���<aek�kѦ��Z���0�hz����[Vx�9��Z�us"�
��N��o?��;�_jz7���u+����:\I>�m2;�;;�~��]�4SXٙo.�[vh�\��Y!���Q���:�(���F�"c�êt�ӔҩN��S��Ҍ��՝��g�N�סZ�s�8�aUJ�gC���Ҕ�~����1#x�_e��ԓl��+J��.�����L���;��]KKX���/xG�|�O������e�x+^�u��=F�m�����<E�M
�G���xB�G����ލ5��>h�𿃴�G���K�����6f��ZU��<W��r�xv�N���T�[]����Mӭ��_ٟJо#�ӟ���ޗw� 	��|�K���֭n��=��?�?Os���[��A�hq�>'��K��Q粵���A�"U������U�ᮙ�/�.�?�|6�_k#M�x�>.Z��O�����O���z�g�ƛ�K���N��ME4�bO�K渲�����w�,]J��a�
������i:�K
xMJ�x�P�KB�Jx��"P�NUjV���� 3����~5�8w��x(e���W�᧘bqUr�=N�(W���0�l^�J�+S�����B��TN>���[�����5Ѣ�G���Vk�P��v����Bh.��
�^"���2��q�
��:�4�b[�l�F��xJ�M�|a��[K�'�<ie��G�~�v�}c,�ɫxg�v�:������Nm�m3O��m<Wb�{n�[���� I��kĿ�����D��� �v��[�f��K?��F��=?T�|a�^xn����X�r]��B�l��.Z�M�� �����i3Oq�]G{`#��c�I�>.� b�����^���=OCx�Ef��^��O��v�k.�?�����m'��z�:l�����ub�,n/����KO�����n'	�ȥG�t�կ��Є����V���a*a�KTcE�{ZX�G�������x]��8n�7�8��b��F�X������Uq=�)ԩ�a�J8*�N���ԡ��V���j�)�S�e��?���F�e.����.�ֹ���.@���m�i������*�R�z�i�M���Ӷ���� f�����/�G�=�n����� ~i�6����=g�^?�͢Mw�_xr��P��-֜���ڿ���7�\k�톂� ���K�	�A������ �"��a|%���n�/��� ���z毥jz�~�-����[��k�M�U�|i�G�H�V�K�_]�s|~����S�9�u?�� ��>�?��)|�]7��e��oB�� �[м%���[���+mH��7�_xo�:��f�1��yk�������M���	�^���2��eC.t��+���a�Ӎ(*�2�&�R�
q�%975
u��x�E��\��o�ٗ	b+ࣄ�J��e��R���xf��3�>.�ե��90��M;֜*?��T��Z�V� �t��cò�h��ڥŖ�mƫm}�=���f��[Ft��d�C�'���;}N��S]Z�U����ֵ6;��ɨ�[��� ���]�KY����j:b��kGԬ�.�4ڥƎ��ۏ��=�_S���#���O�xW� >8A���;�K�����^֮������E��m��}c�V�'��ua��M�B�t�s�z����W�z]���Y�k�^���A�[�=�ş���΁�i�ol�����&������׺-��t%ŝ����X�B�o�^=�	��<ʦa���X��b!aF�+b�S�R�e��VU���4��Ɯ*�4��C��<��xZ�FK�*f�1��5��ȳ�,�c�1~֍%N4����ju)��*Xh���4q0U~2�����J���[��\Im+_\��ֲ�2%��]5a����yt�	!�Z����$��kf'O>x�".������x���i�K�x�Vr���Vh�E��!�k7��ωn<1�,�ű�b�7qhcT�Q�94�'_�����=I�]*[hN�w�����uյ�ͭ�r[�Z�[C=�Ť��,���i!���)�sn�$S,�$�^8�-���]������)F��⤣v�ҫh��q
jnj.r���,ک?�R�%����AV��5M�uR��J��	�F�䒃�
�
.?��R��[#6�>��O6�e�-��ͤZi�k�]E=������x�n�X�I��𸾶1�=�f|M�����v>��������[�<ies�x7S�|u�������I�][Ěŧ����xV{o����o-�����mL�d��k�M�4�.$�F����h�$Bg�1A|c�9�7s���Mo=ҳ+��7x[S�~x�D��\�x�T��u[tԞ���j�f�m��:��"���L����{��u�6�{�����̧�Qxu<G�qj��bk�*��7,*Q�F����'���B5�T�c��y\끳
XlR��r�}o^�*ؗ����8�u�t�2	�*<<iթ��RN���*~x�@񶵠�� @�|+�������[�q�xCI�G�,�-SO�/e֭<A�}�qI�cB�N��}_V��aq�i����'������ߏ��;�{O�мU�?%ψ��	����x7\�׎|+�-2?�z��|;wm��_���q�?��u��x���#����Zx��&�����ѵ/	���T����xvXj���Z�f�Ė��XNȺ���hp�ͪ�E���毧i���\�>�%����+�.��������/�/|A����UԼ7��!����T��M���*�5E�_�����3��kz�{d�]�� �e,%j�+���"4�{Z��éF��EХK5
�xh�T��&�Ҕ��N�?�׃x�1�d��*5�:�c����|�d�ѣR�j���7A��ד�sT�Z��S��<'�/�/`�mG[�ό��M&�f�ɤh�(t�[K�:������m��E�5֑��˛�!�k�2�&��O'���$���5_�iZL����ͫ�qx�Q�m|%w�H�iZ��6�^���d:΍�4�KZ��������S��jG����;H��w�hz��-Z�Þ�����4�_��h^}cN��'�gկ�C_��U���i%妭g�\�:m�>���,����n������xL��a������|5�f�H��am���A�1|G��kN�[��� �5{}WJ��MG�z��}sq�f��YW�ciМg*��IP���^q�g�ueBx�*��e:��噽,F3QG^�:��N.��c��T�����&a~ҤpR�J2��BS�O�߃~�SH׼Mq6���B������"�si��,�g���|O����{;o��:|S�����K\�<q5�Α�G�����~��t-R��Ƴ�v_jMR}gS��hKssoa��}6�m��u��Ն��E�ǭkQ�.o��5Y䶹�~����-�w�ώ����U�dt_���B� U�ᧅt�o�u=+Z񾛣�.�� ��K�;خo-<O��Xj:歪ɧ�5���#�č��xcH��I���l4����tٗ�nDܭ������=6٭l-N��&�n�K��iw��z��/.���a1��֥V��%�t���:��S�0��>�u%_BI��ѩR��⢰��j���*U�w���*؉bkSU�9�U´�ӡO�z*��:�ʴ�Mc����m�	�F��ӄ�V��o�mFmgÆ�T���v��+%ε�E�	��d�MΏ>���M�-K�VzǄ�W����O�i�L��T��L�վ��Z���Y�-�}CI����f{�-7�V~:z�OV���^_ɡ��0x~�]�6�"���k�ں���x�����|7�}3J���+��i�ڇ�O��E�+�6���������%�i��߃�Ug�'�t]3ķ�����_���|i��y��^�.��?x+�n�uo���~9��8R��ᗂ���b{O�6���Ɵ���<�?�<c�{Nג����w�/>���b2غ�ԫN���u�F��Qs�	Vq�����8ƌ�8�sp����9�rB1�ah^�r�����uw�m�I�ù֥>X«���sU�2��'�X�K��t�W�|=�����~"x��z��5�����P���}Am�@��W��a��9�W�<%���%��a�M^�-��($֬��{����	aѭ-�u�����K+�SO�|ZLs4�����]�����W�<)�Y�F��[@.�K��5�C^���W3��+�zm���G���?�,�+��[}E�W}�k�f�5�pG�tt���1뚾�oj��WwZm���K^�.V��N�"�]/N������pT���S�/m�]l�:M������[�=��,�;���6V��}����x���a�S�O9:���t��%�MT�2�RЪ�iƔ�ە(�/���/g8�������Rp��3Ws����ME��P��R�m�}w�&D�W�¾�x��?��!>��zlp^��h5ha�6��5�栗�<חjN����jw2������i�}cÞ��K�.�.g��5f�=/m��<Wks}�$�(�.4�m7�:߆��Bx��G�&���=K��n����%�������%���f��f7���+��=��ԥ�a��GF�SW�hd�~z퍅ť��ge��t�=Е����s�[iЮ��=(Ic ��F��>�����R��n�Lڼ1��x�&_��z��������j`�NU�*��:�P�"�M׋�%Mҍ*�j:�S��V�E�):�c
ҧ	:x�
�֞��d�r�u�Mԍ�(�EK��C�h<u�W�,c��φ��u�gӯm��<?�`������U���oL��\�O�M{��h����x��:_��ү|E��A��W�^��u�x��>*�Ѥ��W����Ïys�o�?U{�]h~	��� �l'�}KB�,�=��v}g����7�5嵹�>T�%�إ��^ɪiz���k��}<��^Mg6�ij�f[h^ic�g����fh��y����[� ��7��f�?�o�������׋����ҭ4�6�S�l�n�� 	����xNoxlʗ~&�ﭝJ��*�)f8�>ʗ����{,>��ּ!�o9�ú���<UjO��9�p�S̯�я'$]z��t���V�Z����I)�)�R�V�G�9?i9A��>	��������'��q�k+mOS��i'��M?�P���z6��˘|=��:֭g{� t�.��i�b�KL����� ď��1��_��Z��-�<A>���㯆�����.����ߊnna0�k�kZ��| �O��BK=/���_N�o<),_���ZIt�f�.�A�jf��[,�Ь~G��/4H�)eyk�� �� :��/Y]h7^%еh�^�O�Gwi_QY�3k>�s�¦�i�Z�����vWw��>�#��yf�k5���qk5���ɋO�.�{>�XLN]��7��֗5HPP�ʥd�EM'R�n�$�N�i�xx՗��P��6�J�)%JX:XxέZt�Fj5*�0�7)���)��.WR�,L+W�YK�?�'�ת�h}�����x�N��V�M��E�������tɢx�v���ŊXh7Vf�Q�氹�<a����Oi� >kV0Css���?�b�Z����gR�E��q$����gT������}CO�c�%ͦ�����^��?�S���P�Iյ!k5�N��Ƨ����)5;�l��inZ�,�x�,���WR=�YAm�������Mi�ȥ��X`�.t� 6�,��[�뺭ܖ:=���R�GTԮo��U�Ԯ����� F������ԫ<F"�"q��bU�:q�jPU0��:p�+֋�*����U9N�G
c~ʤk�N�V���u.�~�3����e���8Sr�:Q�T_�s~ɞ���:��ƽ��I��5�����m�iuVX/c��,b�ԏ�lu���?�[\>���!���K�4MAc��ͻ�����<B�jkq�:��֋�E��,�淿]'�^#����j7���3I�:��΄<=�E&�ι�-R���{��CFO \i�}���.t�c����]z�Re��Aa����mḴ������a�E�b_�������T����#�4��Z�����|��)'�g��mn"�Uէ�)�kyp�I|Ay��6�:���U�O7��8�Ys�GNU�u��G���8R�U�b:�b)�B�Z�h)T�8�p�P�b�R�T�9B�9�]ӣRQ���/:��E֫noi���C�Q�t�g���vv�_�4{�GV�k;D��߶��kY��\:\�]6��A�ϔ5hn��K��⿵Ծ��t=F/٫Xյ���:=>O�>�%Σk�V��Zӵ?-����<Y�kwzm��ڿ��/����<����-� ��-�{����nt��[Tִ�&���յy-4�[\����(5/�w��{�@��=��jV�ԥ�H�#�����$�w�{o�=j�ƞ��ֱ&�q.��Xi�Xx݋�'̛FӢ�aѴXk��ϡ�G�Zu���#��)B��_W�&4�*�қ�Zspt�5^�7�Y��A�^�_����cqX|DUH��*���n��R�VPsp�q���._iNU.��*���W�>7�/٧F�n��x��\�������.`��Z���[(,�Ҭ.F��o�--4h<Qe��n��U�z�:>I~��Eѱ�Y��v�@��&���kZ]�ŷ�oV)c�d���M_K� ���OҴ����|c&����kwg����?�4k�(��q���Z=
�Q�I��;�"���AԼMvu�kڊ�$x;���ޥ.����n�T�6ږ�2�d�o�z?��<A��j�5���_[�s���(�q������Eᘭ�1/�|O�KC7ӭ�k�_�z5����c�P���<�C<n	B��cMוZ��UtT�e&��EP�jB����UgA�ӧ$ܣ�t��Xj�8ST�ҟ�<i�*IB�ia�9)F��8;�T�ԋ����xo��d[;[{�|7��k�g����F�cl������îr�EԵ9�$�Q�5߆ڎ�e㨮�{��6�]D�|K�蚖�cc�]xbhn�K�g�FF��z����v��}-�&�XGa�:G�5/��V:��3���Sľ�-�q��Y�|���{N���ǌE֟{��k�!4+��Y��ޯw}����-KT�$��a��.u{ac�O�w���~.���O����_���_���Ǆ�,��< �ωm�G�� �Z·�x�����[���L����j,�_��5M�A{mVMw����e��L',>.8h�*�\��:���\q���rt����I/e;�qJ��l�-�b+���:T�	(F��x�Ú�ns���i�S�d��t�O�9�:�~ǿ������{J� �6� �O�M:]���������k�x�W�v�q{b��|97��t��j��Z?�|1i�[�Eyk=�ݗ�����9�c�>��3�ƾ������|C�|3���/���i��?���Z��f��6��h��$���m�^Zxf����ٯ����_��g�l�?�� ��%����h�|�m.�_ѭ!�&��CE�����A�xN?�M��u��u-O�Z���yu��~x��0�~x��O���4	��I�;Z�ׂ�U�� �j^!��$մ'ռW�}4���bִ�ϫi7�Yh������<�-���jy}Z5hI{Z�R�^.P�U4p����XΕ_k��^��T�>;�>��)c򚸗����iS�<#^)W��Vt��IѣR��%Q֯z�wJ�1Mxwᯃ>,��� �� �<+��_�>�e�k�_��핷�<a�-Jo�����k���2x��]ԗ�������D�E�ߌ5%�!�K�5[�;�-|y'��	�Y�!���x[⮁e�������V��6�	�j_��]}z[�~]oA�g�����M.����_����!��.t�wNе<'�
Kc�X��h�Y�xN���jY�qmbu�������{{�j���%�t�/Dk���4���Σ�|B�>.���@�ͦ��/H�v��C���>%�����|Ek�[�jZ�妥w�[�t�O�>��K�h^������v��*��-�y��W��Nxa�q���߱��֔}�Tk{���jQ�P�JJ�8ɩ���9>��,J��Q�^��ц���^yQq�0��:4�Nt�*0������g�O��7�<'�]�}�|u�n���/\xR�ľ��s�k�ǀ4��7�nn5cÚ����x+�z@�����F�H������K�� �~"j>������?�'�f�|9��
�>#�zh_.m~��O��/����]wRּO�5������kM7��*�������N��j�����i�G��}�)i�����ih�-|S���ZG��kz�巆��x���qm���(����7�WQiF���� g��O�~۟�<3�{៉|	��M񘺽����~.��Ky��n-�'��ƣ���kUO�>У�uU�uOYZh����ؼ��rj�W�cSK�^AҎ>�P�+FJ�X^�9R�
�yK���	}F6�8Q�YK	��j���#���
4�:��P��ԧx9ҧ)E��V��?���~ �SX>��5�{q�G��C�֚ϊ5�4O���&>����]�>�G���������^׼S��^m����t-kN��/
���OK��ٟ�5֠�O��,^9n����%�ӵ	��--�����N]ı�SV��u���Mᛋ�b�~~���ў8���S�r��F���� \Լu5��5��|7�O�Y��xO��V��$�.�It'�Ͷ��m[^נ��4o��^>[�r�.�_�>�|}�X�!j_<]���0�Y��Z��ŭh����մ'ѼAse��J��� �\�i��o�&ԗE��Ԯt�gM�o ���1T~�C�S�Z���*םZ5i��֡��G*qU%:|܎�%9(�K(�U�3	�ڴ�\EU:t�ƭL�V�8��
P��JUa
�H��:U%8'?g�_�Ƨ�������7�n4��v�[�u�_Q�E��t�9<ss�x7�W� ���b�.�=��?N�O�5=o�ڀ[�S����x���V�������M.���P)�Ⱥ�d��`����C��K�����M�����"�g��gj���|�95�N_�Z���m�h� u��EǇ�_T�F�~
�����n�G��qol5;�+�K�b	���>M���>�_��q���_�Z��?����gH�4+-t�_P������{�]^Gf��.����]Q�E徙�E-���Oigm��ru��c��x�x,>S��O]�s�\,p��	P��)BT�ױ��/��U�G���:��`�/��������b�s��U����(G�կR�*�b��A^��֗N!�.t�����M��o>�O�{hTԭ㱽��PbM��ċv�m������x���ܟ5��
�{XЭ� ]�t���tXx�N���n�a��K��e}�i��֫y��RX�#�e��ml/�.������������'�W�u���2]TxkŞ��/��}r��h�����)�=�xx7P�� �"�G6��x��.�V�4]/u��2�$���8���o¯x�8�5O��?�|�-F�Q���Mž�^�����A־x��m4{;�=CQ������G��g�>�8�2L��\fO8嵧��\qT�S�^ҝe��F���J�8�өKU8��R�z�=�}��6��<c����p��4#[	���bj���*JOI�w��c�78ե�W����������/Ӵ;�� �ߴ�_�<?�}X���a�k��ρ<[��x�U�m|1��C����O��o��^��6��i���m~�Z|$����\���:��o� �O�k� ��� m�	�x�Ɩ_.�Q��Z������C�xw�� �mu�A��JG�}'T��X��߱���?�7���B��������~��Z�5��k;}�F��U���ⴳ�q=�Zz���v�]�[�G����v���>�����-�����$V���k��� _xj�X�ݿ��u'��M�I��xZ}7�������|a�	�9>O�)���S��Q�Z�x<�#.Zq�N��og*��8s{��=�O�W�x�?����ͱT��a���F1����3�$�*��������*Rp�"��z��OUK�~:|Q_	|֏���i�'�|=�<I�EE�υ�>��	�߇�7�ߏ����񵏆t��<+�_H񖭦YK�����#񦷦/�,��wg�o���x���c�|2�쫭�5�ߋ����me��Q���>x���^-���Q�-;�O}�|D��-ǈ��J-CM�VM5�]��Gƿi_������xW����O�����=� �q��4�������/��t��2�?���u;�~!�'��Zε=�j�,��J���|�/�|C�g�>6Լm����������\��^���/�{LӴ�"���ǁ��a>��YI��\���?o֣���R����l�=��Hb*�qX�eEեIΞ����sR����:u=�.Z
�h�έg'V|���.�ęT�֭��:����+'�֍(G/Xh��t&�,e9�����aU:T�TRS��?|]�[|/Ҿ8����k��h�w�����`�w���k~�q�X�W��R���f��kZbxg@����Xn�N�5+c�Z{/�o	h_������O�~�� Ş#��a�-o�G�+�i�f��z,�ms�?<]�x���7��_�~8�ǉ� �����hz6�&����� �����!�������������
x�F�M��O����G�������B_k�V��2\h���&��k��hri�5մ�/uT�᾽����i?�|W���</�N���o|5����^-𦑤|!'�7�n<s���P���ğ|e��W�ti�-J�O��>^i1��]��� ҵ���5�W�`㇎	>�T���i�IT�����ќy�'g�^�?�Ǽ�dq�ӭW-�.U�����sK����aV.�9aeTS�ӫ>z���nEv���������MԾ�vլ��7�t]b��Z���>x7�>-2�X�{����oA�G�tk�&�[N����m���څ��~y�D���/���-y�H�����Y<q���A�m;]�}߄u�6Qx
� �7^*�<��i��ÍoR�t���5;�Ҭ�o��r�ߥ��b���VW6�� ���z&��+���,,�S�6�<�j����<$-uáx{L�T�Э�m��Y���55-M����
���?웪����f��"x'�~�[<�u�M�xl����6���h�"�^8��D���]N���>���\)�C��7�᪺��V�:��8�b�EBT}��E:�)R����#Z~�ل��8&u�)��:xZ��ѩ
t��õ1PU�M<U|-gV�I�_��i׭:�����Ǌ�#����x������^ivj�'��/�u���6�V���h^�t�Ie�^����,>!�l�+M?RԠ���P���;��lm�}��bkxf�H���$71X۬�� �n�?���>�����?u� �'�_���C�[Y�{�o�_��:��u_��<�߆t-:�_W��$_?�5]�J�_���b�~#�Ӥ�����_>	~ў+�΍�|)������O�Z޳��_��[_x��w�rxy/-u�ּC��3�:v�{�/I�m��5��wW����!�l��J~bk�8�y���R�Z�T���օ~jS�:>�J5#G*��Hԫ�`�����L��=�d\B�Ӆ3(�(��V�pج������j�jG���Lʝ<L�ХV��U�'���� �xW���7m7K�5C��g����U:̲��wP�u˯���7Nv���÷�8u�I졵}b�S���KM;]����R�Y��>m3B�g�)��_ő]��]�[�k�ZK��Z[Eg$��C���;{�?�� o_�[���0���u?�6�h���_T���|E�^�~%�_�������a���>����ۻ[����i}���'��r��� k�.4τ񖓤���<5�¿�j�jZ���� �v��v�=Ծ)�,u�ytx�{y4mSƺ����,�z���<Q��p�7��f4i�楋�tkr�o�,i)Δ�*S�<%���hF�"��q3��_xg	[�g�Y~1������ʥ��p��ʜ����RU�8wK��"�*q�8,:��!��u?��o���]2���
�S�x��66�z�$�o����y�>��柦�Z�Ɲ�S�|K�k,���.��='���߳ǈ?k}3�?ؒ�+ž|	�Y�B��g���zw�5�{ᶩ`a�4=cķ7�+�~#���ZG�I������"�����!��i���� �O�ׅ<u�&��o�� �/ýv]�~��<=s���^9�߅4.�Z��sk>0�B���j�Ğ;�����Y�n��U՗���o�����aК��¶�����M��jO&���x7�v��;m>�� m�2�K��z����x&�V�4k�mWQ���}6��<G�� ��S�e�
u1޽J�i{Z���	Ƥ�a�>Z���S��d�^#*3����Ϭ���c�ҥ�{<�N�����Q���Vj�ajT�j�s�NS��*t�.jnu��Q��KC�<ig�xcU��Mf��m/�?Go�i��>����(,���o�iVi��~ ��ԭ�3��yq�]�e� ��Ή������xWL��������u�{�\ٯ�|O�*x�T�֣�xm���	ɩ�z�%3�HK��}F��b�Q�;�
Y�B���'�]e�G�����O�R����4�z��ZXx��@�5?���O�w��?����C,�z����𾩣X�z�:��O��V��/��"���4O�o�GÖp ��>��k��mP����+�{��X|9����[/��_֓E�����s�/GV�L��U�&+
X�J���=9ƥ*8X��Н\G�P��L8F����]9O�b��q��q؊�]HPPj��Ӓ��
�S�RU��t�F�w�:r�������|`���{��d�ş�����,u}D>�����o5	bӯ.΁y��>�v^�Ԭ�Q���i2Zj��ڎ��������񕔺l"u�c�Э!kx<5i4W>�y���[7���J�f��<v��7�Zi	}7v�m�Al!�㯂|_ge��)���:���5柪��ɨ�Y��Ζ�O� �3١�,_^���,�����w>�/�!�Z�K�~$x~��Zo��s��.�S�ƨ��j+�xu5]�z�%Ӵk�j鶀�Yxv�m;L:��\�K1�����S�*x��U���}^�eMRm�n�U*U�U+֬��9���9�&UjV�ӏ.����H�%^O�<)M�Fu��9J�)�Si�A�x���D����^.�d�ƥ�� l�q�x�O���ό4}� y�� ���g��d���]������OC��e���G��ſ.<��k��ށ��?���]�>$𷆴�E����������j�'��4U<��_�Ưo��/jv�!M2MSMl�e�E�]xoƐ^]x�iu;����B�[դ�G��C��ir�Ϩ��~(բ��z�����>�m%����g���?.�T�$����mn~X�-��׋����:�=����t���5+φ��kwz�ֺΓ�hV�ҭ�=�侹��_�eO��p�ʘ��ҝj3�i��x��59�V��Y´�ҡUR�8EMb��#/0żO���Usʧ�tUz��s�Nhӄ��S���X������y�D�MR��q� �1k�èj����{w�ɤh&���-�\�]xb?.�S�M}Z������x��KKE�Y�m/�G������rk6�z�=֓�jW���m��ji�#����{��F�%�-�6���pk��z�����{i4�/�����7�O���~�L�[ME<Ac��好�]�ml�:~�6�a����MS\��ԮaԵ�^������YY[�6:L�1ɫOwq��.M�i�N�&��,���d-��>��Ϥ�H��$��)�B�R�kӅP��XlL�����F�Z�gS���	E{9S�^4�8*4c*?)AP�R��h�T��凱����V���4������:�\m�Cn/&+�?Ya����c1��u#��ms%�տ���Z#�ƶ��� �A$W)��E�����ŝ�On�nF�s`o��V+���;[�c+C���%��/6���{{>�al�6�v��5�e������K�ad�}���{�,!d[;kM1.��kS=լ�j/��!��MF����{D����$�%���Z��������ˬ\Y��=��K�$�n[JMR{KK�c�^;Y/��x~��+ѩZ�ԓ�GKFu}���J�HV�R�UjqQ��8NӪ�*��S
r䧇��5=���ƥ6�4�}��R���.t��(KV�"��#�p�4v�$Q&��ho��wPJ��8�k�Riq鉧�p��Y�����;y������m&�(5��-�C�H����|G�X��W�խ��/��j�6���$���Ÿ{��-�9�x�K�MCZ�������֫�o-�vZ����O�8��Ӡ��YF�v�z�jw�r����H��/���쵽%l�Y9�꺌^+��&�iiuچ����k��=C�ڎ�=��ǦM�j�M���Go�zd:a���Ke�E���o��3�<M)T�ER�I��9N�9��K�QP�RP���Wt�Ƅ��:��8�4�ᢣ�'V���Ur��Ui{Ghͧ
i�J�e�yM>c��u�"h��"�+�M/O��x.�V]z�a��D��6�Q3�6�w}o�F4;M>�t�[ml^�����>��8�>�iz'���G	6�[]�^�͎�r��Gr-��&��֣�H�������j�:�ޙ�y y�MQ����7R�����{����O�5�0��#���SZ�Y�h�P�<�7zvˏx��m�I4�>;���K}?÷�_�$���Q�5����}=դ����{9�/}���OO�ҫD���)Wj�"5)Σ�R5i¿$T)�/z��c8�*��͆]�T�ƭ5=*��ԩQ�T��4%���g�U�B�#I9:�t�ij2�yf��&�]EZ���w���5x⿒�^�\H%X#�ō�ZEj�Ω�ۢD��N��K-I�4�omm�<C��j�d���[H���Q� hA�^�)r��֪���,7uŻ��VV�&K���G��[�I��H!��u�Xc���0D�f�����/�`�f��&y���/.�m����v}#S:ΊT���l�WZ���5���[^�Ese�;{65���\��R������:0�Ö�ʚ��
�s�:�'�:�����t�(����B}�X�իIV����(Յ?kQ���I�7NUc	{���-=��2�]���v��wN���-�9�jzLZ��������iڌV7vv�\��$�(�Ǘ��:���=a������Umskg>�e��K�f�j1_�N����Iw���.���\x~?���<@�%��4���F�?�m帷���oc�C�Pi���G<�Z��t��_Moo$Lmn�m��Vҧ�ԭ��u(����Ŭ���;k6��}@A>�y%����-����{_i�zN�zDT���}}�I�6QV�2�"��K�Z��(B�j�LD�קRUS��ҩo�*xx՚�W4rʍU�<��h��A8�A)*M����\eirY�5
t�T�-5���-:C���������(�����A�&�}giq��ڄV׺�Z�R��ꯩ��:��mk�kz����mmg� Ϭ_���Ǘ�}D��[����KԤ��{�oS�Q��-V��k�t-n}q�RX�H���GI5�Я��œ|�_6�m���y��y�ѩ�>%�u}&+��1�A��Cq��k׷��Χ�_h1X���Vj��1��MB=SN��8׷�X�t�����������^�7:��w�Ƌs~������%��:�ZV��ݥ��h``�p��Jt�i��(�N�/aR��G�.gN��J*��N�j`q��P���q��Y/giF�H´%W��ޢ���:m�_�����]Z�n4��>��C��[�k�嶇�>.]q��n�O�u�x.5�xf����Լsq�᛫�;�F{O���1xGT�G��9�_hv�+м�:�\�Sk~���]Ԯ�o�N��=G÷�&�|u��� �E��Xf��o��i��auw���y�hZ5֛��I,R? �x?������h�/�յ=vo���H�t)ui��ןپ ��[�?W������[�]7Cմc��V��A��~�F�u��k^񆗨뷞�� �|K{o��ɩh��Qk�~�/��{�Z3�tk�Y��^~�#���V�Q�R�E����U��x�RS��c%S���T�*�)N��9ө�a�(a��n��KF5�ʭj���8yՎ&�U*I9�iR�*o�\�i�7�9��?i� x;�_<7�[M����oᇍ�u�T�>j}��4�}Ş���[�W�|Y�}��:߉���7����Ɨ.��ڛ�����a�;�e��>�E�O��U�f��}�Z���|<��f�P�f��E���-�_�2oxW[��߅��/�U�1m��e��H|7�/�"j�k>>�y��6�7���%�C���T�N�yw�� ����7�
���x�_3�v�I��tX�.4kO�^%��kM�z<�m~�_��>�D��N��a�x�Ǳx6�9u��U�iz����{]O]����ᯈW1Y�^_�㉣�$�E��ek�G.�}r��Y��b�R���rөR�eEF�d���0��*��.ir�BP�V���*�||ƥ<=z��b+RT\T�]Yׂ�F�5N�IJ�:pt��$�WYJ�z�g�'��$�x��?i� �0�]����>�o�:/	�L�ŋ��xk�v�ǈ5�'I���h^#�|K�	..u���Ѵº���� ^>�{��CY]Gڿoߍ�
�k��?eox�]��_�<O���G��:���>*Դ��
�F�n�!֢�4� A�^���3��v�+�jWڜ^���-������O��%k�+�u��^�Ǟ!�l����X����O�w��~���=Vy���!|�&���4�cT�K�_�7�?�zw��ꖾ�Y�2������޵���� MJ�� �ϫ���Ǉ�k�c�i~]B�j]։�#�;��U��s����� e��Q�`�����Y����JV��Q�<�-SRT��ƥjp�:��!RQ�y���N[Q֎4�R�]m���J��:��W���IS�q��Y4�k܏������#ᥟ�������u�x��7��[��\����)�'�޷�OŪiz��|7�Zx�<w���i����_R�A5O�?ڻ��o����a�[�H��Ok|_���.��u/	xj��ţ��������k�O��x�¾���|1�_x7H�մO��xS�����'�O��.uO��$����(~�KD�����?�x3�/��i|���x�_վ�4�,&��ڥ�x����N�n-�b��_�(φe��3�S��{�|;��ڣ㇆��<b���%����E�����G�|Mo�_hZ�6��퇌�9�C��j:DZ~���~��5?럛��f�]B�/[��+O��Z�!�|�,-K�|+ү�xU:�������g<?�����x|=r���R����ӣ�T�{I��taQ�P�YIP��8�iJs�
R�~���?n_ �x���E�55�v��Ky��!�u���g>�����x���Y����mQt�/�|?�A�V�o ����r[�7�����&�����Ri*�zx��>�o�趚��,x]_���j�5��'~-�Y��v�
� �B�/���k{�/��K����/������ o�k�
��S�_!�|s}�=?X�������zn��%�γ��Gq�]���j+��v��_A�kz��x���]�]����ƿ�#{��E4�s�z��)��xS��ֻ/�4�x�� ��>!x�T�t{C֘�z���h�k�/<����߇�Q�μc�Y63��09�J5�����	P��u�קVXyU�*��*ʤ�˙T���y�\8�X֜�MJtjՔ�J�,�R��<L׳���\M(�{�
S_	�)��_���7��k��������7��Go�x��w�4� �?ᯇ��忊�=�^xW���ϥh撾)y�ҥҼg��c���*�]s���8��txs����O�CQ��	^�Q�|�f���Z^���to�h�"�x��:i��� 	��7�=-o�?�i��>�����]�2x7��짦Og��
� X��u���/<%���0i�x�TM�N���m���X�\�z��u��O�:��ڮ��,�t�]C��6?�__C��� �Z������^��X�M.����$��/��3Q���5��ΐ_W�����=^�ɭi� g���[���gO��X�x
�T��2���^Q��qú���J�eEI�ԍZ��*��g���r�����0ҟ�NN.��N��N��4�N� �%Rb���Ԃ��j9~1�u�G�O���t|� ���ϮM�:xcT�t�3Q����5�zn�������}�W�������xwY�x:)4Kh�'�+���-ψ�7�_��<��^���b_ͨͫŤ|#��:.����:F��?��O�:"x�O_�#Y�o��ij?2x����o���/Y�O�6�o/�l�[�jW~-���+�����sT�ƿ�f��M.�N�l�4�4��5γs���K�M�Zx�l��Cھ���W���^��|���bվ�;�:�<໻{���|Q�m�}+í�O�cž,��Q�x�C�<I�k�n��/Zi��궞����X������|7gx*��a�]��IT�=6�*���*��E��a���W�N��NU����ٟ�����U��0n�'$��ф������� e�c�J�	�-,|^���U9*�U�S��� ��c{���G�����ත��ž)��G����m^��w�gӧ�n<k�?i�^T���5ֿ�m ��f�F������_�?<�s���G����ֵmi�?
�a�M�h?|U��� >j��&�ί��wZ��M�k��ٿ�a�ox��:U���x���:���-���_�I���=�[�L��%?	� hO�����������Ï�>��)���^;��'U�M�g�;}F���:��`����Dt�7���K�Ɵ |N��شX|4�D���^Ь4�����կ��#X�x���O�n/,�-2��M�M��ޙf���,��� s�����<W:X7,&�HIK����:��5*aq��I��{,D�S��⩩B��� x�eO^m�a�`����\D�T��p��T���t����Sx��P�,J��:x�I>k����~��U��������L��S��՞�5�o�_Bյ-cKMOY?h7�7�V���U�2ͪ����l�W��R^K��'M�/�Mw�B%�m5)�[ы�{(e�o4{;%3�y4�k��K9���$���X��}��X��,��M+�W�w\�[K-����]{º��V�F�r[OҼ!k.���qqc�[+��'��0�è\����KI��5�D���Z.�f��	m�6W���ռ�@R��[�՚�[��|�?AR�:8�L�Ɩ3X�� gr�(P�D���P��2�&r��T拧?j�J?�`re�|~�XzNy�R*t�b%��K?̱YTqR��\Dje�R��Z��F����'
ʗ��f�e���_�� ����x��W�#��Ė��ռ%���5����il����M�=.;R�]:�h��6�f�'�g���L��/�l.����� ��u%�u��6����'����������3��m�O_�^���^%�luW\}E���x4�B>����ڵ�R����iҋK^���y:�D�mÛ;+{�[��Xt��u->kO��_O��T�5�گ����gſ��-2����x{Z����-o4M�~�ľ
]W����_��?�/xkD�σ�`~x�Rx�[mb}?�V���^����!��04s9b���\��2u�'(J2�J�4�m�9�K����җ'���o��]�˳�	V8�UJ��a��������*a��gB��^tp8���n�lmG������+��7�<!�ρ_|s������g��� �6�	$׵�;?�"o�^���>#��͖���xsC�I��#�����K���5K������G����Q�A��>�g��-�͢���B��M+��T�F��S7����r�ֶS=���M,Z|�ka}���o�^� �����G��� �����"���}��L�׼_�?V�-e��e�T��,��R�M��ė�}��� �d�U��i�ǧi��P�T��ퟎ�C.���n.F��^Myr��mo��+�mR���.Y4��4�mY��\��:D���^�C����㽗��J�P�`kb�)S��'B*���U[*�j��J�e�#	>G�\o�p�:�apX
������B3�J��֫{SV�V�����S�OB�#*8�,�a��n%��ͩ����Ӛ->}Bg��g�����[�Q>��uimgjB=��i^t�[��훮^���9��i�MB�?��tkK���lu �#��=>�^��F���d�/d7����-���Aii4��q#}�����.-|�=;Q��4�>I�]Z�v�m�n5�/���d]
�L��m�g��x�.�>	� �������'���Z���M�;㗁��}���izǉ�M�hqM�iZ��Rxo�~w�t�B�S�|O��p��sxkP��X�W����F�#��1�\V'0���
�1��O��J���xyB�J���)KK:�\iԧ9EA~���)e�r��ar��̧>ʱ9^��ORT��Lejp�Ss��U�ҩK����%8J�XFR�������	�Y�^�JҼ?sm���~���� �� �����ğ�'��7�V�y�S��ڄ�N���vzo��SZ�4�[�${_�׺g�T����s���x���x��Z?�c��:��M/�� �M���p�kך.�qks}b5𭮥���A�J�n!�U��c��Ε���4_�Σ��q�1�����v��^��6�������M'B��3��q�����-l�/���S��G�\%��`~�����Oxs�� �������pjQkZ��^�<G�/�v�.��m_�Z���<_�<-��wU�i��^=��(h�Z�����gYWdJ*ae�T�ԩS�kf���Ӕ��z5��G�b�δ�T�ƕS�'V�~s�p7����G(ΰ�E\�7�3� ��Tr�\(U�]��)�8yՆ�(ᰮ��D�X���<(ө*�� �TK�����O�__��E���u灢����oQ�m�5�� �����x�ROh��Ojg�Zχ>���	���/���/�]~�� ƞ�\�l|K�
��?�Z����Oc�,:g�����K�m6Oi^���5�>kVV��E�n���G�>�x
�n��'×���G��������9��[k~$�-�i�Ě}�� �<?�MC��
4iZO�og��ƅq�x��z�n~��O��g�����4_�k0h�7R��w�/n�����[�����Gִi�����(t�/�v� 4m
�V�5�S��E���[��4��'�/_��v'����kb�b�*�j��Ԣ�n�qQ�^�	S�9������<<�ѓ�rΰx�/�Q�֧
YeO��)b�Fx���c��u
�t��Vq��x�=Z3t}��(�w�0�>�����mKU��:�Υ�3B�E��m/��s���[�_E���;��w�߾��_�cN����-Ҵ� ������ oۏ�?���	k� �������ߌ&�l2�K�_|<�@񅟉�jz����̉w��^(��X��L�� �<5ya⋏	�U�
|o�?�X�����k���N��i~�<m�oj�&�%��y����� �gG��)�{_�#���95iZώ5�i�������|㟆?jX��iB�Þ��5v��Z��mc�w�il�-cİh^.ӓY�|c�xL����=s�Z��|e�K�_���z���a��Q�b�1���ԡBS��P�.XE���Ue:S��B��U%NT�Q��� !ʰp��R���51�Y���P��.HAB�{Z���:q�nOiVr�J�r~Y㟈~:��:��~+��ž2�B���U�K[������ďh.<(�͍��Ʊ������׺�O��5�<?��i~�/�yuO
Y���V�O�W�I࿍��y��P�ׄ���<65�ּ)�x��^�/�.-�%�g���t��M.���<>0�4'S�����!�Z~�#j/��,�l�爥��~&h:��m�5�j7_u/ksZ�A�ׅ��~�����
x�/x��� �zT����H�O.��T��<=�"}nC7���w�F���� �|i���ƅ��w����\��Y�����wz��k�Amq�k~mWĚ����CԼ?s�j����O��Լ3w���|5�EZ����z2�J�AӯYQ�Tp��R�N��kF�}^���hT����Fp�^[KN��R�)�	������4�J�J�ㇼ処�IʚOUF
�}��)��{O���گ�|I�?[?>�:6��)M��{�C�e����W���m�{�6��<V^ ���O�tF����\Y�w����|Qs����U񍎳,i���_Y����a&�����n���x�S��켛{��_	��v�E� � :��-�x��x��;�F���s����F�eѯ���K�ҩ�%���MJ����[��Oe��{�g�>ѧ�MT�u�"�=+K������7�4��t�L���|;��'S��;MB�R��QKt�<W�Gy���Eޥ���k�Y�N�����<7G���R���^� S�Щ�����56�.Tg6�FX(Ч^�pT��j5�jfcW��t�RQ���+Ó�!sƴ,E:qn�]ե^�����B�(C���ɨ6��Z���'��3Zh�/���������>���Əe�x�췫�xE>^�,~<�.����]
�Z�<T4�P�w���3��P�O����n������|7M��M���k}��i��{k�MKM֡�7�n�k���ZI㛈�F��o��dZD1kW�i*m��t�0\�̗�iz0�����jvP�[j:��搾�77zNn��&}='G�� ������ƇJ:���k�:w�����h��o��x�'C��)�x��J�Ö�m����ԭ����gE��H�I���K����׫WAԢ�F��ӍW�S�4chU��is�a� yN��R��K̯)P�P��U)JR�qXZ���R�*8�R�'NsQ��o������_�~���7��W�f��,�x^G�_L>">'ֵ��"�DԆ�o�x�N���o��<9{��i���=x��q���mIM��^]����h�@%�ᥘ��R���[�oM����ۨ�mC���A>��8����l|1{�G��S\ӧ�oG�xV[5�]B+ŧ\j��/M�����e��/�ϋai8Y��[t��t�$vZ������J��Z�n�`�w�m<DֶV�Q�Ι6��ִ��zx�?����a�J�y׆��iҞ�t)Ɣ%��Ɗ�R0�|f'�)ל���9�=��S2�*5剛R�՜)ҍ7F3�T��R��:j��*��5_U���*U����ud[�6�co%Ƭ̟𒦑z��mex#�-d��5:|�p������)Vh���kkY]>�k�2۽����,���S�O��xn4[z�b�����k�x�Q�Xִ����t�Q��m��F��!Ӵ�����G�]}[L��:�����$�V����o��{K�?h�y�5ֽ���������sâL#֭h���+�n��k��Q3y�~�X��BQ���pO���ҫ��r�%Z�F8��ʞ"TqQ�hʥZs�*��j2�X�����4)�� ��V�g���eiM�<�����RW��r-ov�ݏ�����������)崂�O�_O�)a����I�[{�k�>�-?H{��ww-������6�	bԼ)���__j�:^�|_�am����0ãIk���hZxv�Y��S����J�c��y-,'׵};��om,f�x.�l-/���md����ig�N��r�Vڅ��Z�� Ӟ}V{�}���d��.���ĺm���c,�U�v���mof�}8�i��[k�z~�m|8�ڇ��ޗ��nd�]V� K�AMW�Lҕ\Ez~���T�
�����i�Z���
`����N�7O'u:���N��^��7/h��N�S劓�94�ԝ�ɍ��N���E��%��fn�)%��s��mf��D�Rh�UC�;[5��V�X6�=�����Dr걮����|�%֫f`��[K�U��d�ɮl��䱶�������h�;e���qt$��ӵ_������W�Y$���Q��{B��e,7Z���xr� N���1��:կ�����[ZaM5�ד�j����1hVw��h�� O�R�4�K�y"�|�ۋ�z�j�Z����$�&���+�m*�晟����r���ȣ��p�W�b�8KV�Z�t�S�
.&�AJ�婌�����Q��W���\]Iӂ�RT��Uj�$��хk��w$�V{�1�mE��h4����Z�]˪iZ�:��p�$�W�(�+o��lm԰M kv�d��.谋����P���u��K����m3Q����tS~V	��!}gj�q5��;H/4�ߴZ��}J=�{�B[�xR]2;[�K�ְ[X�:m�^H�i��Q�zl/a>�/�4�B+�w��q$�[=6��Q�]n)��=OT7ך��q���yi�3Fn|�R��+p�2&�O�(ahag>OmN��W�j�kI��)�N5y�:��U�A%:ҧ]:��r���S��a�9'9��*ԭNQt�HS��:�R����{>xMJ.}4[��a�?�n��0��}��c��s���e6���Mg%��l����˧�-
%̓[�>�e�^�\��xYma��,^K�{�ZkV�����-!4�:��|HnR�}U��M���4q;�]���W�s�� Fu�G�ZE��qwq��q��4�e�m��-�g��S��^�|qkF�R�A�a��R�Jּ94�j7Z͕���wg��{_Ҭo-����h[���L���)h�Ě}�:�x�AW�x�����W����151�CW�ƅ9К�Q�4�T˔%
.ʔ����_���
}8X.X�ucZ*�U�p�V��Ҍ[ptd�MCX�-��|�'�kv���:]Νsm{�Y�kl�^��gj"��R�[��-R���L7�,�s�j���W��������|��\���'�q�6�v�ҼJ������5�����L�s��;��&��v/]뚆��������ү.V����o5o��)a(�}i��w:��w$�W��?��ʼ��4�n^��j�*����݉�_�_Q���?Mд�ٻ�:l7=��w���`����G�E�7�/�\Y�����~��j��ե�����Þ	�u�|G�}��j���j��3�JΤ'��V�����1��=�1OJ�����g��c,;�J�p�����L-L%yrI:q�����%Q8�A)]�E9�T�N��IA���#�k^�<��Z���;���T�|c�j2�5�u��_��jv�VZ����C{�qs�_jZ��� �i��i1]}�Ŷ:?�o�?i��~Ӽu�_�x��P�F���Դ}A��-�+�z��n�$�7�4]��Mki��[i�3�J׵];�I�i����q�e?�%��_ړඕ�3P�<+��Z���4������~���t�WK���ŰY�����m^���G��\^�W:Lp��Z����A� ��>1u���
����֯{{�|T�V���-��;J�׶�E�\]�k�Ԡ�Y!Ե=:��Q�Oi�h�:����=�:����%�2t�ܩ*.��#��	UT*F�J�e:T$�o���3<J���8b�I�X��*4��B��,�XKΕ:n��5�є)������S�_�u�+��x��z������MV�<#~K]gĺ�n��%��eƵ���� ��<?��_x;�V׾��A��?g�]-u�}'ǧG������_xf94�>�M"ݴ}�^G�|*�O��m�x^�<�VO��~��� �~&xCY��?q��G�^�ܴ�-[L�F��6��<Yqk��xo�7Sj���-���6�n�M��n�L񎯪�Z�����o�����?���C��ּK��Zf���~ jz��4�T�z�>��� ���vs�k�`�֛�xvM7E�������.f������eÞҖu#:��Rue���4���*1�v��OS�Ҥ��T��+V�=�)p��Q�Yn&�0�t�����j��EK)ԕJU�%�r�)�t�{���G�7�M%��B�ufK�KU�OM[���o%��n��W�z�ҧ��B�t�tu�M.�ÚV�i��+msV��f���_�]� ��.<1��^"�Q�u������á����"���;g��	Mwj�V��x�}w��z:��n��i���=���|*�����	yq��8��z��W���X\\G�-B].�S�f�w�_�->�k>�-�]��O�kWv�N��]���[�C��㟇|6~&���0��o�_
<	�|9_��Ҽ;�H��xoO�4-S�^8����x�Ǎ�Z� Ɩ����~!�w�������mu�q���-*�l�
��K�e�$�z��*(��W�i�G���tܡ9F���Xw
�ң:tn�u]�vPR��*p���s��"�7N�����z��3ƿ5��������8�庺��^*�E��!y��L����=G�V��1*��lZg��S�VW����#��<W�� �@<+�����:�������ƚN�u�iڜ��%���G��#V�$^!���=R����-���K6�N�4�Y�M��m��G�.�G�\�.�[�"�U��?�~�߁��c��cqk��j�xo�q��">��_�q��oB�4��]4I����\xoF�t/d� ���:���d�	|;�U���XkQk������g���_ٳ�ڞ�}y�}_�}+P�|�x|5�麞���>�÷�:��5_��K���U���eU%S*r����XM֧J�=��B���Qqx�U]7�QP�*C��Y>�T�rƺѫ����:n�i�J��o�T\�Bq甫B�INN���ʏ�� ���ǟ��w&��ὖ��WJ��o����+(�?�:{;�"�ᧄ��_a��e͏�]���k�x{I�:���y��~�h>.ҼY�?\���>��/�TӾ(�CM�<A��7Z��4=K� �/��j~��mt�	e\�z$���N��T�<7��W�o���/�o|{y���'�M[_յv��zŭ/�>(���/�^�ž>G�<7�E�_��>�q���]s�凈u;�]K�Wڐ�v������:~��ۋ}�Z�y��e߉Z���Q�4+�*}KC��,o5{��i3�VZ����bԼ�?@�.��qn��� g�p�	
��x�J�iT�MS��S��0�ҝ,4��*�p��P����.�xQ�^D���ҫV��uq?Z�Z��V�b#U�R��C�(a!F5$�&��5�_� ������9Ӵ��jpY.��C���P�K9&���?���;{M*��W�*� ���Z��A�4��v���i������s�{�c���|?�i��=ާ�����g�Xiz��������{�����K��]4[��-a�ܗ�;=J�R�� ��������>��zn��E���w���%��-�ƕk���/Om�_��U_��C���!���1�����CP�������� ��kF�� �w���ˤjr[\x��K�Xj��i���-��Lv�Օί�隄ֳ.�|57������)����l�����\.#��U�,])��t*b^0�S�\�y��wR�9�5���g�(�y�˰3�P�ϙQ�J�=��Rxw���)V�^U��5)S��S�O~rQ�˿?��>+�G�C�_����>�l�>�X|K�~x3@�ǅ��%��_�ܾ
�����C���W�գGuq�\xS�CX�� ��k�j�zY��~��λ��A��.��MK��鶷�Sk�����1kz&�n����'�t;���t���j���u؛W�3��z_�O\����t)~&���5�<5>���������]hq�kwz����V�\Լ���<Er,-�	X�i�	Ӿ���-��~�>6���c��K��S��Zx�F�|E�z���}��m���Ĺl��";Y.��>?^[�z펆�a{y�fMRX�{n2�f�*8*����Ђ�9�T�L<j)�P�NҫO�>z����i����\?��0�lL�N�Q��Ք}�SQ�V�g:��*j*�)�rF��n���|\��l�g��=gE�>|Z�L֮~ lx��<G�_��zǎ�K��so����_���O���Xּ=�z��2��z���<?�B�>�w� K����-����*��������/u{�-[Y��eb���g�iuk��Wkk�D��X\��+�-N�?�~3x� ��/���s�?�>:�G�M.�%xw���<7�-{H���k���z����Wsa��Pxz��z�7"{�}/��	|wa�O��_�<-�x��P���KxSV��ºǊt���m{Q�k[��i�����贻���J��O�3\j3Ϧ?�8�,��n>�\����N6?��P�eJ5���'�iӇ��s���N�O��xY�&N4�p�8�R�
W�s|q�#
a��K	�e�uUWn�*�U��ңW����~#�~.�c�]�M2ž$��J�Cq����Zu�Ϗ> ����*��ٵ�_��4��6���x�Z�|M���=k[� �.�Q�����g����w������&����%��$�E���lo�ӧ��j��~�5��VV�z}��wm�[h����:��:����_�_��u��^	�<S���M՛Q𶠯������Ś�
'ڥ�'i4�6CF�o4������
��:���g�k�Xo4
����.�ᱦ���V(_�궞4մ�^�'�Eׇ<36�� :���k�� ��S�����ߐ�><�.�h���cSN8�Sp���y}��y(ӡu#F��Z�cR1�/k/Ӽa��2���0�|��5+媾.�q��.���q�<D*a(Q�ӣ<g��&4�8zu�ҭ��~��Y�?�G��_����\
O�W��%�-�:3M�_Y|?Z6���W�΍q���`������m>Ǧ�,R�R��� �����]�����~>�g��G7�`����1�6�������:��_ɯXh�ƕ�_�:���/�.�S���������^W�o�C|'�g�O�W���;�W�O���f��m;�S��0���-&�����Z��RϨ4k�_Lc�9���k��t�?����w�%��5�i�|cu��/a��޽6���~������-B�NԴ���S�L��>!]��4�N(��=�A�?W�a0�\n���*4*T�UQ�$�9Ԟ#�J.�T�QZK�Fu%7G�)U� ȳJ/��3����昸�e|�����hS�KO��rs�W_J��j���J�)�_�� �w�7����I�"Y�#�>�������C����W��gmKÖǋ�-K^�n������t��h��Ěޏo�������� �>�5O
h�鰥���k���P,g6�$��G�;v��2Ge��Ze�Ţ�\�H��K<_���fO�$G��� !�o��E_�^�-|u��^�O�þ+��������h�V�6�u��a���o��x{U�jrϠk~!��=4��?f�!�C��� ^���_�aӴo�1_[�c�K�_Q�*� ��X�Zi�jZ��q�o��:|Msu*Gken�$.y}
8<eyU���R\f�T\R���ru!J��SN�J..�9�nS�/3��p�K���L�1�"�O�c2�N�OZ�7=�S������Qø�JX�z�J��>x��cW�`��D���%�5���<���2yv1]�ez4i%���sy��}%5KȚ�_̟����� l�C�w�5;���*�>6��iS������5��妯ic�h�n��
��Ӯ5Koͨj�;_E��<5�|C�?h�O�>=���/|=�f��������Y�[D�<Q�������|O}�?���|W"ͤ�$��1�DѬ<5`��E�>�ߏ�1��
��_K�x��`�Եy&��ԃ\��t�.un[�]iV>*��寇5���@��R��N�j?��ه�1��=��׍Z���UiQ�,#t]����8b�<6S�yT��NU$�(F�$����<���|G�U�U�a(��/�ӕWS ��˝E~ �^yz�c�NX\-\�Ɩ
�/gK��\>�CA�!񾋤x{��uց?�'��D���Rx���6w�M@�˒/x�D�Y��kQea�i�Oa5�������~>о|(����tO�h_t/k7�n拏F��|'����O�5�CM��"�A��Zx�;kk��vCe7��M���E��r�� �WǷ����Mv������ot��4�.t��V�qwu��$?���.������~���H�/�1�h?���o�*'���f����B���Ꮖ~�mk�����O���Z�RMrm7ė:��uOj���yg��|c�x3�kq��R�ե����R�ນ�w�帬\�EB�o`��4U.z����`�U)b)R�U#J�xX�Sr�$�?gď�.C���_^K9�Ξ]���3G�	C�8�=��/gs=iԭB�i~��7,5O�~/|B�g�~(��Q�f��{+�_�x�GԿ��-j������x�h���.�+����C�^	���:�>���|i�j>*�M��g���Oku7��׻��/��-Z\����x>�|Y���h�,џK����fb��U�����@ִ� x�Pִ{O��9����[O��]l���m&���ZT76���;�t�X�Zn��(l����k7�$�����ok�'�5nf�]�>���_��9��ҵ����9y�-3Ŷ�N�g�{�<A��5mCƶ��x�B����>)�o�_��d��h��yv/�8Ԅe
S��)ʤ):ҩ'J�8BS�Z��(FN�J�N� �.+=��K_	?��j(U��t�%�R�SXe&�%
��T�'ܷ4�)�M��z���-3����������O�4�/��+�c������n��#ǿWS�ƻ��:��<Yw�{�[�uO�v#���մmG^�!�� k�|⯋��^���;o����-ӼE���f����]��C𷇵/�5�n���3��u�	�+����g����E|���:d~�5o迕6:m����>
������:��?ċ�ul��t)��q��5���O����:6�}�S_м��j-[�� n�oipi�?i�����i��>~�	�)��>,���/����|7��/�z�?�V�4����jq�5�4��\_M��WvZn����^��� ��������@oc����1x�X��*tSu�)B�IJ���W��A�Su�Q�Z���9%��:�� T�N5��J�z�^�(�Q�8ҕ*
�J�t�κ��8U~ދ����8¤��|�]��O�G�^1k|9��\� �BiZn��%�=��<,�� a���OZ>��u����}^��U��mZ��ݽ������k��� ���j)���T:��}����]K�� �~$���+�E�&����i�^<����Q�I�m?C��}Iu��X�����6Z��_|<�-���q���������7s�x2x�I��=���~�m�-��z/j�:w������+��Z� C� ���%�~X�)tM�L���_�+�J��u�F�{��+S����� �>���}���vB�H�.�&�������WS�mŘ�ٶ*8D�LM/d���}V���ᅭS�RtUIIӄ[�^�Z��y�[�c�\E/cSR5�
ʝYNi��r��jp��	F3�C,Dk����	R����� �.��𝾩�[��O�6מ�O�#:��O�߇s[x�5Vg��4� �W�>��,<E��i�^��K�G�\��/�ˏ�����d��.��K�Ƌ�O�h�*�V�4Ʋ�D�<a��=si&��K�x�x��>�|k�i4� ��[/�E����7�� �ß�|h�u���mo_��~|6�𾝨�+T�%�ֻ�������þ��'�o<+�Y���Q�6��k6V>���7�4��a�S�'�hrh~�o�[�OZKc�^E����Éa���i�Ea�F����sa�v�Zl���}[�i��\}|&]�eR�*��	�n!��J�|Eo�Ԕ�Z�Z�*b*�/o��y���O�2��B�:�`�K��.�8�t�^Jo�AT�=�#9bcK��X[�����~��|_i�C�R[� 	x~�Se�^k6zd���¿�D��f�৹�.|E��P�>"�~/�4�}+��(���I|c�'��i���?��Gu���k���f�K�N�·��k�-k_��cy�+־�CG�t?ƭ�K?N��tѣ���>�f���x��F�mt��K��o��t��t���-<E�x��d��f��|{q�h~*�_�� �9����_x���'�j?�Y��m7��7�U��uFmKJд��uv��!������m/Z�淦j:P�_U�|]��[B�χ��t�0x~�/e��Y΄eF�����c8᪪r�L=8���iJnT�E'��qs��'Npŷ�φ��Fxj8z1i�����:��1�V0�i�r�%%��sw��P�H��I������WL�-V�S���A&�����ib������=SI7��d�7i���Z�Y2�A�v�r�����i�[�ZCsdf���4�h�[��w�9�l���l����S���,���w��P�o�E�=f���P�XԼOs�X��w2x�T�����ws���M�鏫j>�6�k%�~�-�� ZI��Cgi/y�Z�<�s%ה�i0Z�7ְ�6����skC*�������6H�z�����Z�P[8��/�ʢ� �1qp��ԕ8Fw=*����*ʬ�8�aQ�Fr�Z�:�~z��R���ӅR�aM��n���	+NS�����C��QB���R�wג���]�s���kP����e�żP��+�J�C����7W�����ѭZ��W0�Y�F������[[�my�ڕ���e����KI����Z_kV[��a����o<Ijѹ��Yݽ��Y��3N�{�Ϡ�����Eã�v�5�څ��<�F;K�}n��S�MGS:��??���[ɤiv������zC�X�yum��Csi�jV��u_	������]]#���~k�O5����G�V���&��
��:��S�ea4��(�m(��P�����3u!�p�W�)�j�m+(JT��V�y7J.�F���~��Ao����^�[iqGb�&��jWW���;��Lk���'7w�9`��6�h�|���+�E�^��kƁ�hr�jP޿�e󠶿mOR��K2��-�X�热t���5������ҠK:8��o55��-���ikre�[2N�Yݯ�pZ+@����3�j����c���˅�����z���n���>/B���j���M����7T��b^kR����uޭ񺵶��<Ia4��׹��rx��U)F�ƕ*V�"Pp���F��J���Z/��W�J<�.�Vu�N����5���_<b�7+IKh{��')J���w{����k-դ~�I�e��{�4�#Wi�-��m�A�ivZo�mb6�m��N�YJYÒ������7,t뱫O.�j�I-ԚS�A��]���.���}�{���0�fevgj#©�i&��B-R;���N����u��].�$����r����� �^-7M׏�l�"�ѭ��u�6�ŝ�^i��se��-.X\�jQ�.�/�Ula��V��e�X�yn�P���m�_�)��c�c>��Xz��G:�U�i����*t�<�/gR�.u	)�U��^0�rr�EO�T�S��*��J�?eźMԩhB�9T��$��T9����t��M|�\��{"�ܥ��E��k��4U��#ӵT�5�}�kZ��Z���R�G����^����²[[�695v�](-ng�aYM��1�w	��O�]���'���/*)-���mu=j�Q��ִ��� �2Y������$W>*��	�X�+����M�}b�Y�ҭϛ�9�u���[���6�:>��j�R���z�B�WP�:���i�'��^V�T��𞳥�6��]%̟i�{}�[�~�k����]K,�8�߈hF�JN�2��ܜc^�Zt��g
2���ה�8:�p���	V�=b�ҧ��Qqêt�ƴ�{.y{Σ|�W��5J	Z0�Z�}�Uo@]Z�M�(�������O"j��������{-ƛu�_�����s)�#��ԯc�K{)�&�����[�5���+YZ�=Ti�˦j�K�]z�����1jkq�ۿ���z���"�G������p��k/ksu=�l�|�h�2˨�i���u�ɫA=��Y����ծ��:���Ag�s%�Ž�涙r��p�#U�-�	��f����5��\Mey=����b�_�F�.��?	Xi��4/i�O���-J�r�y}l^WxWU{<<aB�:|��C��ߵ�9Ɠ����%Z�M��rƌkr�T*G�Uu�*q�|�5g
������N��a:o�N��-��k���Zv�6��������:.��Eu��2Ki������"����5�lIo�?m�.�L�-�^i���/t���ln��/�5�?��u{=OYԠ�P����N��/5R��k:��<^��QC����m�^\�ߋ��쫉m.5�x� H�,�I-�a�燬-|[u�I-Ɵkk��x��i�\ڶ�%���W��t����<�hїǲx����W�u��um2�KҮ~ߤxOA���ź��cL�4	i�WVz���-6/x���6+�g�<[����*f�j�Z�)��N�:r��U�	SJ��V���ÖՔp�}��MƮ+�ԍ�r�6�K��Ub�j�}�J�GI*5�.�:��r�Uc0Ѕ
���V�J��߱���B��1�+�Lz.�z��֣��5����Xi�_��m�_\��G��,th���7O>��x�U�m�kOX|B�޳������}��~� ��|�/�/���I�E���tMk�z���F�ӄ��� �Eϋ[�6�~�ug�&Ѵ�J�M��4]]��sswe�Gq����H�ᗇt=ST���Y]V�W�t�+��������G��@k66�#���<7��zW�<'��ok>,�O�-�:�ƞ�4V�}ƭ5�.�<M��w��� �C�xc�7�,������:����xbٵx�I�Ӣ���&��|?�ǌ�[���3���^�J50�hҌb���zmUT��4�<=9΄)U�s��	Ѧ�P�.����e�*xy�0�iF>�Xha��Ɲ;��_���ӣJSt*�B�i�I�*� �V��U~�_��	���hO�oG���x��GԼ_����ƀ�mܚ�=���۽6�[𯃴�o����-o�+�k������K��o�e�=o�������M-͎��O�~���<7k�X����������W��K{��Z�jow��r�Z���Y4y��c��<>�����w�м t�tO�Sx�Dծ�7o��A7�<3��$�+���w��D������sX����K�>Ӳ�!��#����Oi?�?�j��W��+oOg�$���~#��>k�մK� 	�n�Ĳ�>��u_�����C���~g,\�J��(�)����P�ӯQSTq8O�|�z��
T10t�R�	��_E�ͥ���U�ա+`�AF�J5)��>�S�){Ib�R���Ԍ�E^?؆�����4��2�ƙ{�	xZ#�����o���Ht}QӼ=�]xr�k+�'��e���u��xϠhZ��k�hZ������y���_
���@���'�<]�gP�3��4�k4�L��ς�	���t�K}*��v�zi:���+�k̃Z��]s�?	�_�/���嶹���J;d�N�5�Y�����O��߈�m��1x��$�.�c��0��� ���/�"�����|=���O�~�� �t�K!�X4��O��!����?���)���\�wT�c.���M�4[�3C�X|���>2����}�k�2�|*a���c])Q�zʜp�R.4��:���5'*t�q䊋�-56���7�<e�G:P��ҧ:�a7�HM����I��4(��R���O���Tc���ūx��_����G��O�iַ}wy��67s����WW�"�|=&���-7T�u?Ai�]i~"�w?��g�=6K���������/��x�Z���O�+�C��V����~i��Z��V�f/�M�Oi�:7��m����L�jZ��e{�xV��څ�>���[�M>-\��67z�V�����X]�o��|8�!��K{� @|�j�]�$:V���G�7z����ck?�.�2�O�(��]
�	�-=&��ñڋ(����_�	�-��Û}g\��v��y��c�j���~�����\Y�������W�^n�U[农ҿ�(�t�֩���cJkBP�Ut���T��K����aR��f&�"n1���TcG�u+���Z��Ɯ[�n�)��J�M��|M�k����|;�ǵm3L����!�E��c��A�|]����h��͡�_xz�L�^�d�I�t�X1�Z�g��u�u���P��|#ߊ4�J��?Yx{M���/��s��/��X����ҼLھ�a�Ge�bo�r��
��Lx�P��6��K�i�0����+�� �Z=����ZM5��/�5/i���$��-��|L��Ʒ���$�4;84;������ l]M%��'�%�6�<:mt��^�����k[
������u��|c�v�V^���2���F��]]V��+�t��q�ê��ޒ��b�*�Z�
Rt!R��Ӟ%B��u,2��^1Uy;jq,�*�ju1T�a��U<�u}�)R�F2��U}��tiM֜kb��MQR����>�ʾ:>�&��}R���N��e�o�d���=f������U֟yp�5��7���O`���l��V{�:վ0����m�q��t�_U6W����Lм+q����G��V��-s�\�I>��_i��2ϧk1I�H���D�.��Vi� ~(��	a���O���k��h|w��^���Rk)�-gc>��G�k��Y����xKK�5N�� I�Z���zR71��h6��j�!м1�5�M�Y����Ν��Kq�_���ɮ�2�g`�.�u{�K�k?x�_�-�姝���^#6Uq2�����z�%XV�HsWU&�X����U$�Ӥ�U��G'KN�<���*ѕJ0�*�z���ĪXT���N�	CߍIӅ(�\�ΥեR?�g�57��cu��w�?쯡A�8�\x[ğ����n�B�C��2��Ē���h~��C�[%�_A��S�7W7W7��o���#�� m��{�w��x��(�C�K��x��]׵]S��Ӭ�!�B�l�gi�x:O��Ö�����7�K�A�X]x�Q��*�1��H-u��S]��Ԛ��,�O��tY�ä���줝�)�m��޷�$��:ާ����ׅ��A�S�>�C�>���4+�K�z��>����v�۲E���O������F��Hm�6�$Kk�?N�²��ؼ;���7�<C��s4�ej�m,E:�xі�L<`�5c*��7R�
�e,Ft�𰯊��kԧR'��3��N��ʹk�Iᱲ��9|9��Tq�P�^ڔ�Q?w��7̥~��c� ���#�<1�i����x;�������Y�׿�.�7c�j������2��MM3ĺ兆��(���x�Kִ��J�F�� ���T�1��^#�G��y�=gG�<)�|K}r����ڮ��i��]��{i����b�X����^�,�W���Ox�l<-}����E���3|E���o��/x����	�G�|>,��}�x�7�|A��ߌu���������f]W_Ե��o��_��`��� �`���_�?�� �_S��<�p�-З�υ��@�����|i��.��MM���߃z��?x��V����Y<Y�����^Ҿ�&����Z��^-�ViOJ��%̩Qè�5?d�:��R�g8S�Np�=��Z2�8�>���Y�as춵���HAa�x�ԣJ�E:���p��:4d��b%�ST�%^��=�Ļ_���t]���S�#u�������j^5�_O��o�i��2�+�h׾$���kA��<*�>�ớ[g�.'���4A<W��i�hC�ڦ����h^%hU5�jZ�����k���O;:{K��tM.�u����>1�U��f_�������-3�b�l^����3o�����O��~j?�/�|C��\�����-�uo|e���w�)�5?�v���S�?�Hq�-c�V����_O�t�/�XPI��^�ޟ�x�����o���^���
<U�x���:���K��Z�M��qu���C���cV/N
�]
Uqt�ً�9����:��U�<N7��,8TP�(�kW���iC�_HZ�l��icq�ռfQ�8ʴi����b*�r�A��N�x�s�R�GV�S���i�+�_�"xw�v��<A�˨����~���K���z?�o5����翿�M�|��I��/<�Xo��SD�5$��~�� �W�C�C�eo��$��4kk� ��?~�����V�>$iZW�<���G
i� �Ս׍�W�}������ְY�a��[�%�oٗ�.�o��ŏ��������_�~мwa����v��iZ���߄s��k�N��Zռ6���_d��v��O��ޟe�6xJ�����x��|C��U����7�t�\�S��^�⻯h�dZ�f�I�G�u۟
_��}��^����sm���� V�����s*y6?"Ũa�^Up�*���\f.�Jt�%ZN�z�z�*}iPP�^iU~ΤeW�>;�wǭ<o��[���F�g���پ+C�Uu1T�W�R�#
�Ӎ:��Յl\)�T9��p��?�'�A�D�����������S��u� \�+�� ��;�>��e�iZ���i�j������沈�4���������f7��#�.�����,���;��WN����z�����-��Kws�;�F�j�Σ�h�FkK��+J��!u�Q�a�5?�J��|4�o�n>O�2�ﴻߌ>6�R���km3T��M������K���|.�ym���xgRԥ�|IyZֻ�K���|5o�x�>�ŷ�l�?��'�Z��:=�ӼIh4Km'[��B��V��>"�+���oRX.dA��L�����[�l7�2\�e��Z�]W1�VX7��}b��Tq+IbgV�r���JЩ:�˂�S��q�br�ἃ��BW�	����p�*8�V�:��#WB�
8��+գE\FVN�?��ߴ���$|y���?�Z���*�@Ѽ)�O����Ě���x�\��u��h6������xr��Gе_[j� u�4��k�R�_��_�� �j� x7S�Ǉ�N�w�_������=���ѤX��;��=k_���U�� k�5}N}jMF�Z�ݶ��M��.�A��O�c��� �d|��>|B��w��� ï��φ&�<#�M��^�Wk���?�x&8�|G�6��7�"���<]s��׆=;O��K��Ɵ���Ş/�ř�4�o��1h��)��4+&Х��I�5_�z�Γ�jz^�g��k�� ��;�wp��� �Zu� ��i�<e���0�V�kp�,�əf���O�Δ�j��p�#M{:���T��O�>�W�<�.����yMgɚR�}_٧���S��ג�^��U�jwJ�"��牝�C�MKP���kԴ}��T����N�����g�5	��u���<q��s�ڹ��4�H���è�r��Yi|I�umT��d��i�彞�����$�/��t��[S�G�Ɵ�i0�we�ZxGT�-����<R�벭����:���WǇe�?�n���_��t)t�+�PM�i�n����7�林�t[�k�x�_��v�m���ֿ���7�����2��,�K��W��c��Ӥ�ֱ��|&�5�v	�y�-q�K�Gѵh�K�x&[���F�D:���:?�Y5	f���*����o����*��R�o��^�sb��P�5SS�<F?1nK�F�ܰ��;Ӌ���4�Q�Tt�$��776|8'L�Yă]�̚����/mw�x���3�Ň�4�a�.um;P������ G������a��]���-����rMw�j�狴��;+�o}�Kյ��wP�|M7�u]+�~�H��Z�'M���ቭ���E�tۿ�j2k�~����H�4��CX<@�z�������s��j�z����M.-KX�/,���L�y�>�:-���"�t])./%��+$��qnn�-�<7m��QԬ/�� ^�ƽf�G�����3����&�o��Qi�x��[��2���o�?�x6����0�0��ѥ��Ɲ.j�Y�F���y�S���b�*�R���*�t����Uz�4�<<y%V��S��*�䨨J�)�FU(T���Þ��R�R���ޙ��>�t]'ķZMчPմj���u��S����S���_Ò�XjZ����Y�N�F{�i�~=���]S¾2�T�#���'�O��+G�N�'�KJ���{m7ŚO�K}/�v��u������xu>-�ž,���a6������C�O��H4~Q�i촫;�KU��I�4�iu���uGX Ѵ�n�Fԯ������6�2_�Xxv�R`��zƵ��o���+T���dVZ΁j�7ך�ƶ�R:���<9��zn��xGDֵȴ/�Fo<A~�	4��>"�}�����W���qD��r�$��&�iֻ��Ft�*p��UjQ圦�R��Սz2�Vtԥ��խ���S	[V���aj���:��
t�R��P���K�~��WW�޾�ܿ�� �֗��x/H�g�5}B���=�+�Z�2x��R��4KME��)���}N�]���Λ���?Q�|2��^�&�� 4��4�t�A��˨j$��lv,�.��/���|w�� ��숵HWW�cu���k�6��]ּe�����$�M����~�s��T�5MK��^!�q��iM�7x�-{��յ?xwW�ψ���x����V��d�=���rk]�R���Co��ρ� ��ï���/��5�ï���֥�?|a�ռ3�noj�z���/h���⏉1Z��m3���V���M�5K�F�&�m�먾+��<ή>�n��/Zt��'8�*G��'<M)b)�Ej����iS�i�*�!<n'���4>��׊�3
����b0���R�.
��֩7Q�՟5_h�Z��R��c�
W�Kjg�|J�h��z���K�Þ	���5�Z��:����<W�Mq������Pmg_��L������:�_~%�g�ݗ��1�x/�?L�{�:�G��Ƨ�hW�+�$��� ���z�υ/m�ť��/�uO
/��om�;}3�~�b�n��?֝�;���iqi�#���ٯ��a��Ï�B+Oj�񗍭|=aoq��j:��ݶ�}�.�|$�h��/���S�7W���f}_����k���� ���;���	t_� �������W�o<]�xZ?�O�o4k�b{=��O�����[�����I�5��Y�f2�f�x|f&�|B�찵�Z��u�[B4\�VrR�S�
s��Y�Z�8�-��Nx�]%
Ru�NS�l2��'�4��{IN7�g:4�UU��HF����?�m|Y�G��X��o	x+�xB]+Z�-�>� �W��v���j�6�f���-��5�<[t,ρ���@�<�T�4� ���|%����B�oo�{�V��.�m�\�A&������f��':���<+�`����kw�m'��l􏦖?6�iq� ���������=��!ok�x3�z��-�;�i��-<'��a��|�����K���&]&����s6��}��[9��K�5R�D��������,,��ӪêKw�j�j�eΈ���}�Egc�����f��:��VU�W��iJ�\p�|;�ڼ��r�,(Ѝ8�a�Τ�zN����i֥Z�R�Q�#R�ӓ�M�!V�΅e�Q�]L$�Ӆl*���N���N�p������^Z��\k��u[=J$6�Y����gM���ե�w��Ѧ����s�j�:�׈~Y^���z����&���V��wҾ�4I5��������Q��C� ޛ�/5:;(�4�l�
xb�Z�˒����������-.5�:��i�P���)���/=�槯fjmc�kp��.t��<7wf�m�+���Qե���x4���9�����$��Q׮4�>w���}U:�Ʃ���גksX���9n`]C@�A�Y��ߵ����!w��7���9�a�,<�ҫN1�9T��z���s��
3�V)Q�:3�h�Q��a���t��8YB	(ʧ2��(S����XEsET�W�e�(�x���[ZE4�lwS�6����wV6���<C��-b���P�F��ɽ�H����6��J�Q�&�.�w��uicu��5s�iw	���i/����[\xv���� G��>��_�[��d�,:U��ͫ��Y]];��鉬x�Y���K{뻛.�J��o��ൊ�^�|:5�>�-#J׮uJ�J�Q�m��w:n�%�V�=�����+�9�u�n�[�g��mt;���Z>�t5e�'�mn����O��CY���|Zx�⣧�U�T�(a��|��F5[u'VR�����FS�)�t�M%��?�����/j�a0���J��X�_��^��P�^�D�f�U�*r���iec�j/4v��BbV�X��=J(%�gYt�-�4�u+��F6���Z�.��w��b�V�-��J����+����q}���k�"�ol4�?x�S�o4�{M�-�"��Jk��|=��kS�ZY�'��O��i�ۙ�'����k�6CurVi�x�,d�QH~ߥ%��d� j�Kx�|C4w6x�Z��!� ��|G$���$:$�G�o4y.��t�WQע�����}2��>^��~#���c��<]�}b�츏���yUh�U0��R�8�և�S�9:��r�ƨ�1��R�jr�x�Q��ʍZ������T����V�Zs�ê����*<��R>���eq"\Y^^Ʒ�dڎ�v�v����Zv�e��e����T����IW^�V��}��p�É��sfcҌ7�<E��[�V��Ea{�7��M݆�wk��igws-���(��&������&Ѿh��M� �|A�h�4��򦩫j^!�R��O�4?���᳡��N�}O����-�=���WR�>��/��ѯ�<9}�j�����q�/M�]ر�����X���A��COM�V{m7Y��G�׈�8������֟�w���NZ�I�^�?mVs�����&�YR�l?��R�(,9�j%9���\��kT���*u%'V��I<D��C�����T�\p��� /	W�B�B��;L�ѣ����6�4h<2�#��Ei�h�ZU��n�4Y$��}GO�m�&��ۭ��ھ��i׷6:f�=�~�ԼI��moQ��Ojp�Om�xGMt����QԮf�|Su��f�-Q�'�5���G�爴�]b�_]��zP�x���]z ����-��5���>�>��;�6�-;��������Ú��Uu�x�IOjwï�z���\��|r���[�7W7�r�e,��p���}<�V�~�זZ��lڄ&a�ɻ�V�x��K�o� �&���hT��L})<#�]9S�Jq�9Q�nz��
�i{_g?eyP������7��5hJ�+�BKRX����8YƪT�')�g)�ϞUaJ�U�����:~�e�$�E�]ZI��דkV=�4�|ײ�j�Zi�	p�wڔ�m��O%��t����)����}b��?*{v������t��Şy$մ�Zc�������國���m&쮤�O7��d���bEq���	#��:Ɲk�y�M�=��k5�^A��)G�V�$�-�Kp�95Y�SM�㺇ι/>�{k����h�5�b�J�f��J�/�L�� �+m{��18��'7^� y.uJYT�����x`���IUU���{Γ|�\�����8J<��.��%8*q��y��R殥J4�;F����8��Ù/�<eg{�x�B�<Wu�x��Oּ~�i�f�ntMD�ᤇNkx��i�T��.�}sW��Wַ!�A��'����ÿ<c�*+���!���t+-b�]#@��������ZԵo���l'�֧_i��V���
��T��ǅu�o�^��)l"��/<Q�uh�/.���<?ǅ��iZ���h��o�� ���m%D�V_Y�����E��numOP����矷�ٗW���;k��^�|q��gJ׼:���ᕲ��)⻋���Ė�"���>�ZN�t�~}V=+G��RC��Y�a��<%9W�)U�F�*�nY�FT#MYS�S���XY%N)B��T��6_�k�1Qq�Q���L��4�?��N��<M,J�5N�[�ʵ8U�.?�|�c��{��u�=oT�V��:׼%gaey���P�o�<x~�n-vy���ӭ<E��DO�7:e����KH� �cE�-n���S��)��֡6��|S���.��/i�~#��u���K���Ӵ�*�<O�èx�_�5h<ye���Sg�Hu)�~;�^�%�A�:~��+᰹�g�ol����-2�kQ��Lբ_�@[;mr�N�d�5�CiW�.��x�Yм�����]<�Lҵ]F��Ze�����Q��"ZM
���Oa�M����صO	����
_xC^�.��=;�Z<&����F5��ӆ&�#O�����\+�R�T�V��N��B�tԝ)B�+(S��.a�xJ
8�N&1�e:��U�ʥ'(�#/cFjj3�z��Bz��%�7�&�,%�5MG��;?k:���+S�ׯ<=������M�<os��\E��A��1��#����ޫo�#�u��$~*�ީ�k�k@2k�SÞ+��F�⨵���m���߉5}6O|N�����_�V�~��Z��A���G^���߇~���~8���iȺF�������;�2KOA� �nEd��埉��s�j�#�5#�f�D��4�g��ڿ�<U��~�ŃBҺ@���u�_�^;�a����oZ�����U<=�km�����i~�5/��QX���>�,�M�}SJ��L�g���W���Iή#�W�*5��ѫ'���8��F�J���Z�eӧ'��E�R�D�H��5jA�n�c�t��%�QK�Zr���bG*ͣ�kjF�K�oEu��X'��'�n#�.��@׾(M[Y�x�P��.|Ya���W���O���F��]#ǿ�߈�w�Gmy>�l��$����}SV�^����� ZY�m=���]�[��O����/�<?5�����F����F�6������6�m�Ggo�ɬ��A���<7v׶�~�qk�ۏ�~7�ZM3Q������{�o�>,���w���k%��m\�E���W������ޣ�o�]/<G{ƽq����R� f���Y��kY�"��;+[�Xu-C��}�m/��Mi῔��c�ƭ8ڬ0��WJT��Z�:��(Ԧ�:����a)��!R�T��asV��N�<<�7R��֡F�)ɪ��w^���9JS�Rs�*Tb�=8'�����{/h� |e���:7��(K��;U���Ρ�ht�U�a>��4s� �G�^����L�5�x:��W��q?è-/m�������:�.��m��.�G����b��-�O��\��IյO��GW��-#Q���9���#�&�]֧�x���Y����������|1�]�J|��a�$�Q�^�<Ae���!�4-W�?�u[M3T���:F���zt~��OӟE�5�;��M��?���R�7��)��
�f� �
��<E��ǚ��t�[Ŀ��[g�Y�|E��x/��=���<A�x�� �:���?$���K�����D�y�I��3�&YFX�8JR�1�^���HԵ9OT���	8W��ha�a�R��4����JS�<DiՆ&�c�Q��'참hƄ�ڧ:�p����)Լ*FUUI��ۿ�2��}+�m�\|<�ƙ�[�^x��'�/���4�_i�~.� �7]��Y��S���%��<N|7��Z����ƍ���?B֙��W�W:���k-Y^��Z|����?Z�-�=��i���k=J�M���]�g�~'�\�_�7����SM�&H�7/g�n��:��t���e�ԓX�K[��	��J���ȝ:i����Ղ�.��,�z�� ö��^��h7z݄^$�t��k�x~;�|C�A��>]6�×�z��0Ե/��ya�q���;[K)T���	�uܱ5}�(ӥE�N�9�:��*�S�_��4�.G�O��$�F�㽭XGW���U�V�(G�Z��*���Ч��[
��ڥ�Z�ꦥ�x_�����^x����++{4��u+�KźͶ����E��]�y�/���[��������V�Z��
����Zx�ſϬ������~���xn�B�Z��~=�u�&+Io�z�M���귚5������/'B�a:����I��x��K]3Ŀ)xKş�����k�d�
�������m�z��L/���w��VV3�뭡�牯�3��K���[x�N�ӛ�~"׿B~~�>��>8�|N���ӵ�}Y4�j<�MQ�<G�/����G��G���^3�;���;Q�6֙��k:V���i5���[M��1��d�R�Ug7KVR�
	�֡KR�h�U����J�r�~2Q�T�J��V���)bhxju�G��Jx��^x���9�up���h���h:���|]��E�M'�2� �$�H������B����7�4ĸ�u���"�}?C�O	Z[Η� �S���~�� �=� `� ��6�c�|Jt�;�ռ�ߍ[�]��j�F�d�u�����X�Մ֚�7V��-�A��?���i:d�7�� o��7�/�?�|e�x�B�� ��ũ��q�z���絴𕿉/'�FѼO��[ºw��}G�J�ƻ����lz���t/����?�m6�� >*|g�]�����7G�t_�~׵]�)�ڿ�W���x[�1x"=D�H���5��t˛�7K׿���q���2�CZ��V�h��5�J�#.iP�
���Oz�gJ�*Ֆ&�O��U����ƍ,fa�U:t��N8�A'<-J����Ԍ��&u"���*T�V���?�o�g��������A�b�j���/xsöG�L4?h�Ҽ[�{��&�ki��M����q��/�^�~(���M��V��v>"�E�Ctoؗ�
Q�x�H���fMYԼ;|5O�6�w�|3i�x��|%w�-K���� m������sƞ�|V�Ʈ��������gD�����������������g�Ms�^���U��I.�a��_
K�԰����x
��O�1��d���<7o�hv��iV���]C_���]	>T���w�P�� ��������h>0�]��|y�x��������mg𷉼?���5��Q'���� Ԓh���'�xs÷�3�Z�|:3Ҷ�kbpyCI�gV8U�UT�S�5)�u!��G
��� �'9֧5B���P�0��4���8Ҍ�A�4��Ԫ����.��eN�iN2�	�*��?��_�o�3�Z����������������������v����Z��񎶾,խ��S��$� �O�<y�v�`��%���׋m>!xyn����M�s�~����_>�+�wĿ���.�Ƒ������kO��&ӵ?�:����ǅ�C��<�Ŀ���x����&��xv+R�_xV;6��߳7��/�����kU��7��ᇌ�����g���� �>ѼY�=Re�>M��[xO��-��?�ާ��xc�����o�<q{�[���'Q�i��|M� j�*���k�m�}D��.u�����j��-t���&�s�|9��|I�y'�<��<-����Л�^+�&ե�����xk�4���0q��1ym<$hb��7B<�\��ab��ѧ�ԍ7C:j����LV>�|�Np�|5h��Jx��q-ƕi
��5�	֝wZ�_��#У
xj����#�Z��:��?�7��&x}�����~��m�ߋ��[X���i2&���������u?x���� U�4��&�_��c�o�g�����2� ���߀�0��gÑ���������L�o��������N���/ŭW��^9��^���`�Ѣ����]�o��c}�O�m�|���P���K	�罵ҵ/��[�>�n�����Z=�Ŵw�Z��-�KKc)�k�ϊ>��>=7�߄~7����U�o����u}K��6��?��YѼi�o
/�#h<t<u�#��k���E������B��z}�~����ǈ�I�?Q��WZ2�b��15kKOx�XL=Z�[�7)��jJ���S�e�eX�t)b%:��؊�+�hFX,5
0�zӧB�u9�ڴ�7�Xx%VUa�9T~�,����<E�^�`�ټA��[i��������Zv�cc�=J��������R��n��_X�����^�������
��|.f�|/�� �ߋl�(e���_����[]V�꒘u�������u,Z5�����@�{;*H4v�g��0����o�ן�����Kk� ��"��� g�3��zE��u���C����!���O���oiZv��E㘵7��O�,�]+FV���yu�D_� �:��Z����=�2Koo&����u�q��ڵ��Mi��mGT��k�[���Q����~��L�`����|.Yü;��ZoR�_��S���կN؉�j,C��¿,��.t��K��C	���1��x������<���,3�E�)�M%S��F��8�������S����|i��ĽJ�ޥ��'G��3,I㟆��|�h��ms�2�1������m-o��t�fF�77˿����_���w�V�*�i���k�$�ŏ��O�/���~*�T�x��:E펽�x����A�/���h��� �R%�tZ�K��G����Eƥ��𗇵�t;[X�|9��#Y���W���k>�c�Gwq������L���.��Rkw���W2�� �oٛ��������i���������/�b�������"��𝇈����� �t��!�����o��mm#����Y� Ͱ9�_N�_
8|4�B5*��#M�T�=jT�{Z�uQ��iM�,>�Iӣ��p��<����Q����^�����*b�і���jx�T�Fs�i�ίyxm������z��<Z����{Y�K���o�����E�ҵ��n4�koi�^����%������.��?xW��ɤ�Z���SG��tI5	��X�7���Z|2˪x1����x�l/��m5��f�ú��� �r�_�[U��Q� ����>��?mO���߈��'�&��'�׆���b����O��C\�Lv>};�v��xs�^*��5�}�Ю���ߊ�;� ��O�~x��-Ğ#�Y�/�nOk��Q_x��m5��j:��c�^]x�W�tk���L��-oB�lu�v]KW�����W��_���I���3�5y�˱�J���	`���5^�i*t�h�kJ�W�J�iΔ#DUZӟ��6>�u�:�z���R�7��q5�F���骊�4�Q�� +h
5(�P����ͷ�t�/�sC�Oy��Mse�iڮ�5�ε��ׄ���]����Ğ!���Z_k����1�mWW�5���<=��	|-��өj�:&�������K���K�A���qk��V�n���O�~��t�Y�.���<3k�g׼h�Я�i��[/i���l��R����5+�Q���ⰶ��4�k�www�p��{�i�c�ZT��֛��k�_'|F��>4�����g�4�� �7�^�F]��A�!�֭}~����:'�|My�/u�Aon<=?�N���^k�]*�8�9�p8Yӣ��Q����"�,H֖>ND��(�*М�5V5"�>z�Z��:ҩvn�*���ˉR��Rr��Ӝ�sJ!R�3�-2��I,���5��ގ#�%��</{�Aw�Ϩ�"{O-� ���;}sT�5x�I�A�}?M��/j>�տd�?K����L��s�k�G��[�m��.����~д�w^�C�<�Y�o�<����ƚ9���?𞵪^^_���Xқ���ůM�'�]{K�\������>$����wH�L��|1�]B�L�	�5��4�F���� dC�m2�G����O����x�ž'�ꖊ��ց�oE�^Zk�+�~|ia�?\� bk� �񵖽�xk�6�,�.���~��5M�<!����A���=���_��^�q�?ĉU����)ӫƥHN�Ty)��1�)sN4�J~֟.!;�Ҽa���?�Le��%�R����%��K��*|�TgWZ%�y:u�F��ܱ�U�9���^������ŷ�����'��_|a��g��xC]�4�|,�o�~i 뺧��7�_x7��k�!�b����Q����\֢��A��_�>:|%��~�_��;m[��3FOxv��~���Z�GF�<C5��0�����f��'��<l�����gy�Gs���?�	��2x��|zƏ�xf;�<�s�7���/	jZv�y��K}WS}#U�D����`��߇t�i:ׄ�3u�[��-��^����j��_�օ���\߶�zv���][���#�Z^�?�n��U���>��-��7�|(��ԡ�>Z7�|Oe������R;�OG�<�>�he3�^�\]Z����T�՝5RU��G.�uBt�	{:��N�%�{х5��g^�/4�GW��ӫ^�',De��N4�*үN�#S�Z����J)Vq���&����'�����D�>���c�>+���� ��Ӽ1�&���[mZ�Z�A�����q��XX�{��a�h��.��};S��a�xG�?�ǉ��e?�[�_|��{�����x����{P���ƺ֡�w��� �+����-�������~��-�='C�ZH-.|;�k�q���o�Z��������1��� ^·�kڥ���k?k��t�-�}
��k����5/�H`�h�3e�jV֐k�ω�����G�� �w����|)�.��~��V��f�y���L��~%�ńZ-����;�5���E=���$m
}M:��5�>��xr���R���Ƽ�X�3��P����a*xZ�yQ�
�j^�^�x�x��UUR�?��,.R�)KY����U�����Jr�,=��y�E�%�?�3�� �5�x���w�~�V���
[��Z���XxKM�WR�� �n<'w$����.�ek��GH�Ƌ�'���ZA����j~Ҽ�R�tO�C;XjZ�x�[��������kH�omn࿓N�<Es����#��w�V�v� u�(4K��м��3@���Җ��!x�^=ލ�����a��/t-_�׍uMWF��D���M��O�Դ��s��_���o�}�s�O]Cy�x���¨u'��-q��M�j���[[�ͨ�k��K+�=*��ĺ�ӵ���:�����Y�Gs��G�ulizw��S���a�q�T����W���AP�5J��N��M�cJ����qt��T���c�`�JT�U��R�S�Fn�)87VI��N
pRr�Pua�g(0[�g��w+�s\��sKemym;��\i6px��Z�� E�ҠH|G���߉.tMy�I��{�xTi��u��N����i�<SZ�y�:��ڽ�u��N��M{VH��H���:W�,��#�4�2�dm����7��[�����\[�u�Io��R���T��6?�k�&��Eueur���̟f�k�m��yw%�A&�5}GBK��D� �t���B贗:��yW�w�Z��j�����`5�+����ok[0�,S���5%��Щ%MS��B����QP��(�Nu"��\D�
p�bc(:1j5'���iB�)�EN512���ҽv�jU��Y//th��qe���o�i>!�[��Ef���c����.��w��&h�4��=SW���(�����:o� ��}o���O}N�A��C��F����OK���.|Krn�u�4;�CPm2�m�+��zn��=����Mj�X�-.��[[�=6��X�����H֤..���s��p_���D,�Ү�V+�b��}3
[�4�b;}8h����Ʃw6����.��h,��*��^�G��`�t��K�m-��7����
ҧ��[	{J��+Q�
���J51�&ӧ*���u#F�9G�y�5��֩*�jI�
�0�4�J����Ft#N�TcF<���T��)T������˥}�O��K��n%���ᾶ1iA%������.��]x�Ӵ�4]&���\�]j�(�\��Ҽi Ѥ�t'Լ;m��m����ͨ���i�[j�/�^i� �)m|�x.�ö�/�f�4k���}W$�^�f�N׼:����^�H���5WQ���ۘ�_��zLwW�J�M�����{�{;�
���ax�/������i<W:�^M����� ��2��\����ٟ�֍;x�ľ��N��x�G�ͧ�|�$𝎛��x���N�X�W��*����~�^�J؊S�ʭJ5'��Jt��g�����:Ԧ�)ҩ*u��n4�I��a ���!�e*N4c��U�*t)Ӥ�:�Ò2k�n.5�8>Z�0O�xr�F��J�J�B��x�U7�k���??ĶR�]Esc��.�$��Kk������������fJ�@�<��5?iq�~n'��MW^�z'�4-#O��g�j�w�ḽӢ��\mZ}&�.{\��9o�|���tө]�x�O��ml�_�h^����]j�i��.��|!}s�3_�Ԥ�SP��=ase%��ܞ �'�-/Sԭ�U�h��`��5[�h�84/M�������uMn� ���.��
���M�|?�\]iz4�v�{��v=J�x�-Xa(�c�*��AT��Eн)Rn8���5UIT��*��T�7l�8zS����ª$�Z3���!7A8ʔ��t�N
NU��J�)J*��%4���/�:m�Y�Ƃ�Zf��{�ty��o�9<(�skG�֬�=
�º�z����[���>�Ӵ=7��H�.K�x�� �P�J�[R���Ci�a�Ɵe���W:Ρ��?��B���["ì<SI{��Co��IЯ&���X['Լ9e��'_k�0X���z^���C�;����~�-7E��=�x�V��V����9.�=��6�����Ώ�b�U��}.}GD����	|7�}Z��{+G�~�x���{����xF�t������٬u��2��jJ�Ws�ahUR�*��c:"�;ׄ�J�
0�k�T�c!K�o����
�����T���<<*K��S��j���jtە'��>)j5/,���k���M���έ�5�i���±Gs�6�ž!�4o��տ����cou���� ŉkQ�O�0ռ3����u�	��z�<x�'�𝆛���ºG�Ο�xsQ�$���-_���I���~�����r5φ0���藗:��� �V���w����S���W^�� ��U�[x�Y�tk��6�&���C��������!ե?g��5^�DЅ���m*in<'e�ϫ�:߉m��粰��O�zO�5����� �o�"��eŴ�V:��Y֓Ğ-�tK�N��~�Zx�W��V���Q���2���0���z2��2P���:��+�X�����AЋt��(�,DT�<?,��t�
U$�ZIS�	�U��R�*t������*=_Tմɼ�ϥ�R^Ec���G���<�������8|O~|)�������]��Ǌ�=/����n�g���J��-�m��g� �v��G��8]��K�Zj>%��(c�G�S��,�<+��cK�|M�?Z�>9��<g��a�۟^Cu�O���=K�~�b�94M��_5H<C}�i��&���D_���4�?�:u��//�o��5�CC��V�����ԥ�յ[�gK��{ڏÞ%տf_\�ѵ�f��Z߅|/㈵�iz���~'��־-ռ[�5��4�� �K���i�N��m+OҠ]?��~Mo�V��5oy���y��,S���y�+�j��a�xJz�Z�a��6�(S�a���8�'��F�4� f�������&Up^ƭZ���&�UF��JgRq�C��^�Z�)���P��iG��kZ�)�_¾N��iQx��V��W#��h�ɯ^K�w��Rx�J��),�Q]54mF���NЭ�OV�V��:�n�.��kz�����Zeׄ�ke�./��g�I<������R��>���}3S�/q���/��������>5��?f��W���Yx���$z%���j��օ��X���K⯇�ށq�o���^
�u�#�m���~[�<?Xy�[KM_ڣ�g���x����$1�&��� ������,4����}[�^�e��&]�{/�7�u/��w�%�����������j���3�1�<�Ę���"2���JXO�T�
U)��O��U*��R�(RU��i�Qş��r�^#���UF\�����1�WN^�R�P�&餹`�3�V(��.�i!�� �֙ae,��5�*�TizΝ�jЛ� k]����M��&�a�E�x�R�5]3��Ya��OI��M����\[�����Mҵk�C^�U�ޡo��xkN����W��.�J�����-�'��,t�YE���Ѥ��4]r��Ě�m"n���z�C����F�e�մ	��j�7���?�Z���{��*k�+}R��:������zN���MƵС�U��,��Uſ�4m[�����B��S� ��?	�]x�D�u="�A�w��5��xoĶz}��+�OR�׋�����?o
2��VT�BiTMJ��Z4iQ�Rs�	��:�����d�����.��Ml+�-<g�Y4��>�
s��M'�!��v�>HJ7�t� j:y��Y���K��M��\h�%޷��ᛯ	h����x�^ѭu-<�j����C�T��5?^��>��֥��k]�&��ϣx��>3�n��"]x/H�Xm�e�����uT��ޯ��W��k���O�#N����o�H?�<���-l4?��a���Gk���Km�ǯj�4���*�K�����}�xWZ�4MF�Y�Ƨ�ئ��]K�x[V�L�/K/K�/�S�A���]x_QԼ8�E��ZLz�ǃ���F��>�v� �<q����OGҮ�l�7�,m4�=ĉe�;�Ma�Ջ�᰹_o5Z���'���s8�a�R�Q��AΤ�8��%QյpX*[���*���TaIrb�թ�J�"��F��M�ۣ�VUy�mBt��� m�_�_�s\�u�P�n95v����|{s�o���^3� ��O�Z�>�?Wo[x�P�4�k���4?jv�!�eҼE��>"�� ���*�~���FxGF�׍�K�M��Q7��/<o�Mw\_�-�N��=#�~���x�D��W�&���z��t]gMo����mo-m����3|w�4�M���tV�2�~����7�κ���+�B�_���u�%�:V��=U����tk�6�M���r�U�M�꿙��*KXk�O�c�h�Iy�/x7�Ǎ|g�|E�u�{�OÈu=ZU�|?�ݍ;�ZEχ�5�i�:��s� 	W��Og���*-��ÁjG0�q���iS�+���ya)CF�T�d��NW��n?U���{z�W?��e��N��+֛���&�'B��Q*^Ƭ�0u�\МW%;�BRj��?�!/�m�m@��Q��kK;kyʹ:��u]*=r��pjRiz��.����Z����,4]cV�Nֵ{h|e�kMs�?*�_�R��l�}&�N��=�K]3�Zu޳��]A��xr�v�+OU��e�Fkk&�ᇴ�=�����j�����_���k�}*�Y��mM����mO����o�<C�V���eŖ�4��߇��-�� ���K�o�5�>�.���G����Y�&��Gg��9�<7����{��#Q�|Co�}v����W���zΞ������Q��#��i?����ګ��0P�P��s���q|�);ԭ
<�/���ja���S���/�7,U'^���Fa77Y�+9F��J�҅Z��ӗ��/ӼH�ίg%烴�[�GCѮ��-��j6	z�m;X����Aa��_��^����=�j���.��z��������J�������9�5}W�������c@[�Z]��T�����4�N?YOi�� x�WY5�i�AҾ�F�Ю�[�<T��y���$����o��Zh�|5�_j�(����V}�����E�v8�4�	5�>�n�J��5Y�x�)�5�[�V��ֿ�O�1�~��m���2��WA��4˯k��k���񷅴O�2}�S��~(��:����5�����mǌ�^\��\>]^K�K�����F�j*��W'Qʬ��+}Z�gR�5�'>jp�_ޡ��hסNtpJ��ԡVn�i�N�Z�z5#G��JQ�>kJ�H���-�wx����a� ����I��|9���#��|�����'➩�?|��g��/	خ��ip�ww�煡�����|#�/���v�s�i�a� �;>7Z�~���Z.������<S�[�xK����E�{�cH����4me��R�y��%�x�����%�.gդ_�����<��3�|�<K�C�h?�3���z�>���u_jZ[x�����Υ�t����:)�<I��o}�	4};V��g�[�o�$o�[���ƽ��{$���P�>&�I��o��ij���ľ$�mf��5M}��θ�5� jhZ^����z����^�7�y^[���bs:��?eKR�_oZ�J�aZS���0��Ɲjx�j�*b���M}f�+B�iP���N��B�(�ԫRkU���TU�R\�n�EcJ�R�4���k|K�|!�)��]M�<b� ��WĚ흅Ǉ/�Mc���+}�m:��.��5�sS׾����z��oq}�[CҦ�,�����'���3�߈����-{T�߈��'�t�+|�j�f�kmc'�m�Ɩ�������� �X�Y���ӵ������|x�u/�v&��K[�?�o��\��=���Z��~!�s�Mo������kms�O>;mf�M��O�=��#�5�����W�-��<k����:N�s�ckω����� �.��X�l�M�����ʒ[+T�H��5{ٓT����;�R�O�J�#��Z�q��3�Fj�p���biK�u)A�R�Q��st*S��I�B���ҝ<d��Xztc*r�ShU�Z�-:8z8���Q�T�%_�2���J+��� B��������G����x'�� 	�xo���W
o���mI��58�4�$�'�m�/������^���-��;������l�K�I���{�̳���:ưV��sDS?������Z������ӿe��� ����ÿ�1��M�>,𾡡�6ԼI�O��t/]�6��|3���x��K�7��5��tMb���_�N��v|6��p��� ſx�M�<U��M
���]_�^��.|=��jX�KA��W�藷�����f
_���σ�� �Lv3ti�r���Qca��l>.��Ƨ*�3��{���j��F~½NC��_��F�����Ҝ*(Ò1�F�j3��YF�jR�
�u�TT�������|c�?h���w���Ф��S�o�uk=ÚT:��Z^����Mi�X��S���4��Y�oRcyM������/�����o�:O�|=�<x��~"��~mS�|/����iz���_���k�7v��-�SЭ�Ś���w�Ū��<S��>�W�;�/J��k���}���Z��{��K�>ռk�j����Qm|�{þ�����cI�f��?�|K�����¶�ni�A��ȱy�權��s4��o#}�d�ks+�pS2<?��٪ጶ�\>5+V�c"p�Qrbk(�\,(Ճ���΍w���Jة�Q�q�
��䄠�
5q<���9�t��N��r��*���9��QZ�G	5��]OźGƔ��Ƈ�[O��A�3i�?�g�><�L7�
����3��?[�_|;�mkC�X��NԼ/{me���F5;��.�p�Tw^��/�>��ҏ���}��N��G�xS��Mb�F��K��7�[iZ���u����m�}>�dK+�:{��͹�,��"C��rC�ar������_5cO3s<R�L4Q�>6�f��]2�/k]CF�u�k��Ox��ݓF����Zkk��<7�N��O��E�&9���sΣ��֨�Z�*�z���4k�U"�Д�V�F�a��R�I¼T���Q���Ҕ�MP���JJ�8эZ<�t�)B�%��*�׼hҌ�E7B\�MF�N��mQ�eI�f�Cʅ�cLD�$���2���<kdx�����ʄ9��w21��6*Fхv�]����g�K�i<�2����6��<�Z�e���6���e��+�J�ě���[�Xj::��#N�ɱ��=F������ ���V��|3�� ��<-gu�sP�v��j>8���>�����o�~!�<nu�� N���i�-/����ϩx�Q��/tkE��~�"����'���qҌaK
�S盃��%�����	R��Z���U.e9�U���L^+�^�*���,E)9sJ�ו<d[p��ja\��T��\�� ���7��C���B�ĒZ���M���|B#D�/�D~/����k�:���f�xk��|Y�����h���·��k��6��ٿ�����	���t�7J���5+U��o����h�<sd�EѴ�?��{�mR�\����}C��>ԭn�> ֵ�;�[�:��п~7�K��㏉� |{ᘵ�j�5�z��ƙr'��3_��>�L�ZX�kM�k�Χ�o���Z���6�>����[�t߂��x�������ח�k�G���]�&���g$x����dv����]��&��˧���2i:φ,�����_
�Z|�\��:Ν%Z��a�xu*xh�V����1W����~�;�Xt�,�j��CB�Y�M��8(;�<�F��Z�^�IEBwR���S�O��)!�]ό��M�Q[h�Ş�m��j-\����m�Α��e��)}>��xz/
��(�����G�	F�{�]{���q��O�~ ��?]_y��!i�Yk����6m*�Q����|�\iz��h� m>�J�<3r��!����ք���G�&��΃������M������Z�6Z�~"�^�m.$��z�ԯ4ۯì���R��:~�i�o�>3�ǈ�q���?��i�<+o�6�s���A⇗S�������[�Z5ލ�}_��`�,�7��	�{]�x9�����K[�u�ոn����J�*:#T%(ǖ�i<LR�_k�NR���MF��Z��<M7A)�XZx�u��G��z��)6���':0���+N�����3��Z�4_x�E�������F��/��Oմ{�;�Z~�e����[/����<Qs�?|5�<"u[/j6�J��qo�j� �0g������� ���¿���[��7m�Oi��g�?���|=q�8/cj����+Úo�u��wυ��V]cV��ڧ�g�}SN��X�)�g�� ��|7�k�Z��:֛�Eq�x�Ě�����CԵ�i^;���+���n|p�Q��ű�o/��C�� ����Q�(�����kRh>ֵ�o��S�\���^�?��P��>������#���~ ��V�;��5�C=���tK=���uq���U�U���(�UhS�ա��*t)N�*t[^ʴ��թ	ѡJ4�8��ʸ��f+��(�%K
��P�NJ�Xz8jnt�JUaG�.�8�kM�ezQ��T��������Zx�V�mnΙqr�-6�l�~�i%�����4�B�	���G��=Σh�%��ZG5]J��8�Y�h��ѶQ�XE?����mSXmgB}N��L���*�:������:��ޞo$i��+�5�Y&�� ���;��K�[��ux/��{U[�I���/��O��� ����)�P���ڞ��KJ��5q�/ھ��j�ض�aq��u���[kz>�k�Xh���P�N�X��uk��۬,a�4�{��8��e�T+a�
t�.5S�nHѕHQ���F�I(�8���8�ԧ���jx�}hSP�EsޥY��wv����	N�1�R��%Jj\�E���ȿ���|S��������{K�4�Z�����nu�j6��IttkK{M~�Ó�ZE��k�G�A	ӢӌR�%ռ�����"|���i�~/x���~#�c�5�<=��/���{]/�~�5_M����X��Z��.o#��u�{��9o�n�{.���jZ����+�Xo��A�j6�\z��������PGys5�\è=�� �/�oa-��Ë�n�V����/�)w��~�?���|}�躧ī�=O௅���RM6_^�z��l����[��j�&��t����mq��j�Z��Ksmo��'N��(ҧK	UZ��
�b��M�Jp��a�:\�B>�N|�9���51��%ƍ*��p���(b��ET��^X{��^gN�>y�5&��� ���^���
�;}oG��5�+������� 	�g��-2o�wI����~����5OxMuk�+J�D��u>�o��>O��G�薾":Ə��(t�R����� ����߈�}y/|=�O������<�k���y�N]54������=:};��Z�_x}o�mG�^,���}K�<�ox��	�d��7�C��^�|Ew2Ixv!%��4;ox���?��¾*�}���m:���S��.��|pڗ�&Դ�%�мW�j��:�����~(��/k��x��:�k8�q����d��,��kb+J��QF��rIRS����5HU��U�J���ԅ.XS��I���2�URT�cS���p��e�M�xjP��isƼeS����҄!	JJ��e����B����xsE��A��+èY�WI���!�����lt�K��װ��7�� �M3L� ���Q�Ơ�����7�tv��jh��M��ڏ�u�KMauq,Z��_F�Ѧ�w��h����/'�F�$�z.��Z�������i�6:ė���+��Ӯ�=B�J-�6�/��B��q_x��K�Mԧ��t�n�um;-[R��:t�V6�D[��dڠ����tkS�X�֧s�krj4��v��h�N��k�?�Z_������дŜb%K��AU��j4aC��V�xJ���gRQ�*kr��^xҥ%h�[7N��|�1���U%S���^��':�)S�Ia������OI�:;�=9d��G�;�1f�����k��)m-��VPZi�֙��z������n/��eK����Gm*I��nu}T��4������t+?���U�V�T���uh�x�R���G[�����d����9�/5KK�/k�!�ѯt��#��%�:������?�j���Lm����Q�\�n������hMa��޵���V1����_�5k[��..�S��xkD�����F��g�c��w�r�O-�:���#�ri����v��͠�Z�����0�]j4��e9Q�'
�*�j�eC���8��5*T�Sڪ����(AW­J4�
�U۫��N��F0q�*U9�*m�G$��H�1�|�\�OR�L�SA�Я��0��ͣ�k:^����u[��{������jڅ����9>E����Ǉ�T�|Ag�4��iQ����]=WTگ�^jz�zg�$��UѴ�<S,���uV���߆nn���@��E��F�c�-F>
��b�������v>�<7t�!��W�l�3���<��i��u䲽��4;{�����N�-�m9���KK�]w�xt�]2�&�KĺF���?�����I�xR��/]��Ǩ�S�6�wZ�5�X�xZ�kM]�ּG�[��ý=Z�S��P�����T���I6�%^��JT��NS���֩ʪ�kg:�cS�(ףT�5*a*���դ��8�IɹQ���e����i��߁���!��X�6G�x�����`��k�S5-+�mΓqo��� ni��<~.�5k��t^��R�\��-�������Zٵ�5��&�����\]���V�1��=r�o�3�Cs������x����m���Ѵ?�t�k�x��-;ğ��ڍ�� �O�&�uޟ�}U�K�)#��Ě� ����mJ��|%�˩��\���ׂ�&���m�O�k���^5�O�H.�xW�'Z8����o�iZ5ǉMֱ�F��]�&�w7^ �ĬElW������)ת�NR�(�鹤��y{<;���eI>hSs�"�!T�i��bܥYԃ�N�aRP�X<=h֩'RT�u0��N8�%w�U4ĸ�ƾ3񶬖z���!��^�[�i����j�M��}�ť[�F��M�G�v2܍;W��Ys��R�k^�z���'�� �sk��bmb���f�M0�a�ksxf�[}/]��D��*�I�O�Ӣ��4�,~"D$�F�6�ԡ��L]U��x��אY�wV��|E�M����B��Y�Ѝ��F���k�6�=��ژ�N���{UӾͨ�:.��e�;þ��y�y�n</4�cJ�I��go�h���>�����B���R��ũ�ܮ�������z)�9<;�(ӭ��5FW����J�e;ɸVR�9GܥKH�NR�R���P�n[�t�֣��ܡ윰�u9����*��9���U}���S¿k��W���-RK눵��7öڍ濥�M}j��ֱ�������<�]e4�J�4��ۈ���
���4=Q�t���<9�B��Y�X��n�M_���$���<1��mg�x�Y�I��_� �%��SN�t�j6?uOA�$��Ϩ^�]^��m6���f��\Lfվ'�Z���%�[E�/�u�5�����w�z�:��-{S�����g���O�F4�A�	��Q��>� ���es����J����~��e�i�>��K�uf�U�� T��<�Xx��P�'���s���u��{m����T*���\=eV���С��Z���5�R�B�:�T�':���Զ*
8�mrF��K�*8h޴�q�7Ju)r/zs�Z�G��M�+�3������z�����:��R�<<t�
^�c�w�~!������:���|�M�F���G�Ծx�xҧ����7��q���O�(�<q�x/��.��6�:}�� ���<3��k�iq��=QnN��Z�kw(����O�;R�U��w��5_
\Xiw1k�o��"j�<��z���u����o����MO��1�s����C�<����]k\������\�b�-ށ�.���y� �!g<�&��.���������R|?�|g���9|Me��kx�/Os�YAkiq�j� ��Ə�[x�S��Zo��a�8��>Ҫ�2�&�U][ʍE*�C�Fp��Ώ��v�&�(����b��.1b)����������X�.INj�7M��1j�\�%Jp|��7��:o~��J�V�D񟇥�5���_��mN�ƞ+���؟/d�ums�e߂5s�Cx�������:D��� 
x_Q�R�$���� ����S���?~�� t+��]C���oqyr�*��u_�_�|�2�M�<~��v��/j�J����s�q�5{��o-{o�&���K�C�m߆-5j��\���Z���.���|W��X�ƛ�V�_𽶭��߉^���WM�,��=����ǧ^!�-�i�� �G�/4��� �����b����I��-�+kkdд_=���U���/�rY�g�S����ǋ<[w����_XҢ�'�;Y�I�7���/���j\A�a����~*�ᆫ<�BU�B�.1_�n4(�fs���Mb������ҩ�`hbV[��C���
�ISX�\���VTkQj5�sЧVRp�cJ��Jj+�]O�}�_������|Kye�:�����c��z�i�N�&��Y�Լ?>��Z�O
5��4�[��\��jW5�KO���|q�8?�
��e�|Q4+��:�A�ԼO�i� �O�<7���X��-��Ok�xb� D��~�4����}J���>'����k�"�5k�SZ�Ӽ7�Mf� S�|S����kz���ޭ�� 	Zn�4X����I�K��I��_���K�^�&v���-���R���W�a�B�R�,<u��\I6��Ms����	��|I�~�^�� ��f��� ���5�]&����]��[��*�������M(F�:x�����
U%)T�,=W�:���uҏ�Ru1n�+N��Ǟ1t�1��ԍIJj�:�:�a�*r�p�F��4�ӥ��:Ν{�K]���X�-3��7���[���>���5g��[���kÚ��n.�q��wE��ּG��#YԒ�L��q�[�A�o��Q�#�s�j�s����^Ki�j�>�$ھ�ic�W�.�÷���k}�Ա������?�?�y_�{}K¡5I��-_�2kW��4�G���V>״�iZ@���%�.�+�x#L�_V���$����A�Co����ok���{%�����G�k�g�����Hts���wL�|q�������x�5o&������Z#x/������zN��/�GV�U�a�S�*j�J�h7R�>IC�*�U+F��N�:Ns��!��I��ӄ�����$兩W�X|$�Frx�a������<,�<R��yT�'<�4�����'��w�_���t��־�Z���q~��Z^�gs������K�h�,������Ѽ=��Y�O��u�iV��o�|�Ѿ���?j�At�<#k�7᷃u��%���h��𿉼?7�u���)sc�]����Ğ$�ޡy�Z��U>Լ?��w����H��> �)�uׅ!��,�)>�s�Z[���T�.���X�.<G�x4�K���i��Pּ)������֥��xSO��K��!���Tk?� o?ڗ�� � d��?<S�h~������;~�>��,g�k��{ŚJ����j�����k�η⋭n/x��P��.�t}i��NKleg��a�Z��<S�
xR��%���Ia��4�(Btj֝:Ѧ�NwG�8�͸�nl]J���MT��<+�0�R�*ա�N��N�%[�����~ ��n�˩�.�.���<Ai�x��I�t���WL�������?�ՠ��xWP������[�7�E�?t�
x�����o���%�+MR+='R�5=KG�?��n��'XH4��B�A��omay�-+K�d:���u��U����/,t���x���G�� �����c����i���Z�f�{[}@��f�_����<Ys�����L������x�G���� ��T��<3�_��P��ي��?���!���?�W�i�G�o~i_~&>�����L��U��GJ�g�>��u�k�X�-o��t���wV+ys�k���=Jxu."�k:�h9�����,<Zq�B�N�y�:��.T��U�E��j�[�N�Ε:���R��R�}�W�+Մ(Ԩһ�������Ï��'�W��b��~(�-5-V���5��5j^"ӵmj�M>/i^�����w��v�t'X��.tR�|��5� �k���%6������[��tE�i��}�_�߂|3rn�C�ɴ�?�sk�zn���r;��+��n�wu� \��V��6Wx/�� ��.���8|��~~�� �'�_�K�&��W��ω��������9}�o��a�K��4��=��wm�i��kY�.�i���H��z��g�_�[�Z'��c���V������=Cºŷ���_��<��j�&�<>�%ǋ�������	�z��e����jz��/u{�oy�q�T05�S7,D1518:��T���J���Z��i�/e*��XYV�h�)N�ַT�(�V"�*�*�zU�
<��Ycc������N�"-�T����n����M�� گ�>���J��7�S@���=7D��K�v��|OռK�Kk�6��6��� Y��&�=�zU��7������^���b(�� 3� f���-�����d��Ǎ%���Ѧ���O�<�M&Ů��j��vz_�c�|�O������MG�V�h_��-� �mK�O��|Qp�?�~�_�$x�S������ ���|a���L���2��V����*���_�7e���G�|Z��M.�[{�<+��%<s}�����~�����._A�>xw��Ǎ|G��i���Q�O���O����-��ů�h���x�N�w��;�KO�u� h� ��I�𼲅��}�7-��u� ��P�����D3
J��XV�iS~�Z�K��M{%�\�3�W�<N#*0Q��ብ<E89(�P�rn�'/i�7��߳�&|���ú��o�µ����������x�O��[�Yx��Əs�K��v�֧�-WJ�լ-g�e�������v��Sy7�����ώ? ����7�g�����:�ԑxjK�x?ǿ��Y�𿈵	�-ǆ5��&��k7�>�o�-Ʒms���v�w���� �5]���z_�~x���}`Y��E�D�t_t-#C�υ��^��2k4��ҵ?x���߆�Q&���xQ~J���b�v�Ǟ?�������������c�O�5�i3\���֍6��/�~���tsD���S�����~5��x���X���>a��c����D����
Ҫ���I�qu!9�Nt�9Jtܽ�)�rN4�A�����pӭCQP��3��#��U�t��E����(שMՕ*���S۾gG��$W�y�����\���$�5����+� ��i��<?��TcB���{[�/�m�G�z]����i�?�tOꖺ^��h�4_ѧ�?�� �׎,ƣ���M��r�z>����������i�X/�.Οs-���O�$�jQϧx:O�0f�1�O࿌���-/�/�5+[�f���^�zD%���j���F�cd�~!����Y����~�����T��������.��}밴��4]WS�<5ch���|;����mw��&}�T�|?��Go�M�iWz�����|u��������H��д�x�B����a⿊�'��/�<D���2����2���'����5�N�8ԣJS�:�Ք�{*p�����5���G)�1x� �Z�:��B�\���T�Jժ9����N�O��*ԥjMƥo�wM���g]J[{}#�����FX��z*�Z햟s�_i����H�mt�[���]m5@����]\ZCp�_�G�u��-����n��uj��>�׫5��w�[x��M��]����$s�-��+yn5'��U|2����R��������ȗ��w�O�j>ֵ�v�[Zj���<Y��K��Z�u��%ύ�=��������D�t_������zE͞��Q��!���ŷ߲������:׈t��6zTW~����/�-�;�M/���f� �~��?�<1���I�� Q�U�?�xac�(��
�}�iՅ9ѩFIV�YM֍:)ѩ)�%��}&<8�]V����y��Up�+����MJpӣv��R�*R�� d�~џ��wZ��~<|�մ>[�[I��(�;Y�U�kmk}��z&���O=�휺~����=���C�ۙp����s�� �����[Q��3��Ν�f���7ZдCM���no4�M3SӮ�-5;�cL���/:;��gC��~4��u�l~�z&��x���"�ׇ�e�:�k�����t���"��G״mR��W�ӵ�B�� �����ohv��}����ů��^+�ƕ{f���:]� ���| ��eo�^$��n�?�k\����G�|ih|�B������j_|/��`�;�x�(��-�R���/N�����q�W]*u���V�8N�
�����R2��8a�}'|>�V�F�<�W�Vxj�3�N���>Z�.��ɮ�a�K��BJV��>&� �I� d� ���^j)�W��������N��ڥ���U΋ysq���i"���b�Ѵ;�{MS�����յە����� ����6� �P	�
�6�W�Xxs�>$��.��Ǥ��o�K�I���/��(l��� ��<���gIY���:��~"���Z�=��^'���L�v�i�������I���I������^��?��uMcT�⏏g�.��࿈��Ğ������� �CM�\��~;��^�{�]i�v���> x�FK�'�|A�_k��l4��%݂�_k�)��o�,m�(é�1𾣡O��Ú�n����:�Ć����U��s�9�s|�0�E�~Ə4%졇�9�h��1����S�R�ңJv�R�(x��^iO.�0V+�ƺüeyG:T�ԡ(b%,M:0��F�=�r�9S�ۄ�_����>9���5�K�>�����R��۽�Đ�V�Q�_��|]���/�/<1zF�gom��'���/�x�~&x�S�ϛо|L��g��9}��A5x���âO	�V���4oK�j$��C��gI�u��Z~��xw��=�u�X,���Ϩ~�G���=���O��e��,�Okz��a�_h�I}��Z����Z�<��3H�փg����5��簵�I�ֵ�t:�����#S�[�&��?�� �F�B�ټ'��7pkv^"�/'����[����mk�j��Yt{[MV�Ś����}��P�=M�U�JU�Jn�jӝ8ҥ:������EӢ���R�"P��1��kR��]WR��
��N�'8V��T*�Q�Z���
~ѩ�?�_|���[��Ě6��h:_������^���5�?ľ������}3��\� �� ��A��4�iv�����ɩ�x+��3|S����-�{8ƛwk�i���V�,Z�,��Q��v�a�|s5��t���Ԅ�������5{�O�����Z+��|9{ټ�}��k��<Z|]���i������]6�i�x[��xwA{�j�ψ�+{�Ԯ4�SAױ�)�ٞ��>�u�ٳឧ��ĶV�Q�_ú�Żj����_X�|1o�r�G��.�h����x�����|Aq�}~�tow���IVR�U{)T��b"�{j������B8�{�^h�gp�RI�t������iG���CNN�YS��UThW��M���JP��׺�R�YT�.c��[�� �	�h�;_	�k�E�~+�G��~x{FO���K�掗����A�跖ZUχ��u�KS�]��'�<S�x{�%�g��~���	�4�w��������mN��}BkXu��J��cT���K�_���{�x�P�X�\z��5MJ�mg^��Mf����u�|����	�xk�΅ቿ�oot/��x{�~M[D�֬�>���/L�<�xB���w�^$�o|H|?����kz���4}N�ľ[�� I�6�y=�i� Ӓ�m2;H��Kx,e�%���t�KY-
j0jVr����{����}lVs��*�1	Д�Aa�ԇ-JN���+{��(P���i9'�kN�O>��r�N�G^�9G��5W<ܪa�;FRR��)ԩ5�K�qN5#YY⿋�M��h�P3j=���]���xm4}E�]&������i����_�"7��χ`��Ěn���O׮��OD�������|�]��}��Ek�[x��ޓi���#��\qiZ]�������?\��Ωg��6�7�h�����n���S��A����x���]�t��j���ƣa���Z��˧�h���%�}&}F�����-��<9�\��:���j��u��lv��V���zV���cC����7��7^/K�4�;T���/<��:$�|�XV��p8IT�N�N�%V��N^�qúь*ө���U��	P�J��5)ҧi*+5�VU'U���(N���>YQw�~�\ejnppS��i�V�J�\�@��η��[�c"�l$���t�W�n�67%��ȋu��n�X�gg����(������?e���3_���~5�@ӟC��>Oh֞!�5C��x{����K_�Yx?U�㴵�Mo���?�>�� ��׋|#�����<Y���v����'Ğ#ԯ�/bOxkM�mCT�5hb�mz�=?J��nƟͮk��R�vRMq-�q� !� ���~ҟt���'�kMGOM3I�|A�|U�C�8�Aҵt�ơ��(�G��<��7�ÈF�c������xG��ĺ�ji8���xlYR�T�:t�Tt�G^�:n'�4�B)�ug
u�U�����~�xj����8�Nj�MJ�ӣg��4�R1�P�H�1jϥׇo�`�MƩ����{�]���N���|Si�K��T��t����w.�����|���S[�_^Ӿ�j_	4�+�7_�i6�Ω>�����]C,�o��<w�OOq�\Xiv׾��^4�t� ��x�='G~;�]���]���a���΋t?G�_L�xm!���m4]N�U��YܤZn��\�wA𦫩x�"��lo�+)�;�%�K]I�ma��+ÿ��mm6����>,E�Ouh�*�~j�.𖡨][��q����;�k�`��N�m5?\�Q��w�k�XI�k�b��Z�+c�S��N5#��VRr�T��Jn\���t�ԩF��W^U��d1s�:r��a����IFSqTS�:Ш�:)AS�ܪ�S��:|��)�n�-gQi��<3�e���8���M�ޔ��:%�����t-K�sj�o�2�Yx�SЬ���Xi� '�5���<U��i�e���.�]ռ7w�\�F[[���KL�V�$���a�k�8����;+�K�j>Ե�mmmB�:k�6���]G����m���)֬WҮ�Ky���+&��?��/D���U�l��%Ư���Y�H�t������[}Z�VK��R���-�]{^�h�t[��Я��u��ރq���c��sϢ�k���Fm3�~"��yny������TMT��8�)Օj2��T�Ӕ#���"�rR�Z���8�¥<ib%)�Ц��K��#MUX�eEGU�J�I�J��ʭ�Ћ�VJqC�p�si��ޱk�Oks%���j�ֻ�li�݄���:�֣�������N���D��=km���<9����K;@�ES��.����56�t[K�[Lц��x�K��׈|3cu����;k��ot�}SZ�!�J���E���zl�:U�m�6��,/4��~ZX5�YB��֝sez5�;i4��,Z����L���<G�}�!c�_���%��ˎ��O��5DӢ75�7�:b]�V�E�Ѭuo
�Zx�I���Ί��_A�)ռi�x~�7�<B�6�{�ؘ��d��Q���R���+&��yrT�%�U)S��>��F��J3��ڎ�j0�b�(�R2�*��ѧ*|�k)T��Z�xlR���J>�5!	rY�[Z�V��U׮5[7��SԼ;���� im�^!�����֗}c�k�!��ֵ�iW���+��w⾙�� ��.i���N��2h�$�,Z>�������C�{�|1���]���jW�)���5C[�@��n���ݝ��Z�f]Zĺ��4�(�^��ކ ӵ=OZ�m5ɯ��m/PX�9�I<Io�xw��5���C���q�U��M~
��?��ϔ�q%�����ҴG�%�м3}%����A�ͨ�U��ψ�S�W�Ѣ�ӆ�����.��P�u��z�އ������b�t(�hΣ��5#�Vt����gQG��s���)EQ�[��4jN"�a�~��1��U�)5N�!ԓR�t���e*�գQ֧��)S�$���?P����7��״�<�ʑ��-�C��-��uq�ZYM�I�on�,�&�K��M��hw���\�q.��iv�^0񕞥���uM[W����}*���j��2؝[������E����ph�o�ۻ����=�}%η���j�4=v�G��V���5͞��?�U��9���}"��oo�]KP��N����k}7A��b>��g�Ò�����<5�����x���Z/�����|O�izg��� \�|V���w���֥��_lKcu��^�C�_T��R�#	��|B����#�N�:��2��T�!N�J0�*���8E�5M'��J�<Taa<>-bT��������F�*NQ�g<<�*t%F~ҝ��W�4�_Xj��x�q�xo���`4~(��~�� ���I��tmr��%��g�^꺌�4��<;�;ץ�u?�oj�#�N�y��q���z��x�(Ե�ˣY]�n-ǚ��|K�k��u���<NtOi��[ZA{����ѵ�Kм[�K�x�Yh�w�1���O�[h6?-�Y�\K�/	Ǩ����~�-�k�u晫[x�=z��I���-v_���?��u�;I�6��hg�.b���7�<U��}kŷ��ko]jw�,�{[��6�>!�F�yaf��ڮ�y���j3ukb^B��:��N�UF�aN��G^�T!Q{E
�hʳ��ӟ��(�6RT��t��z5*:5�UmI:�T��:^Η�!V*u�JR�E<��|/д[y죛L�4�F��sg�Ķ��ksjO�k֞����<='��<%�|3��>+���^[_Mc�Mo��Kჭ��</u�x��sxm�m~*i7^*���@�{[]V-D����/	���i^,__��kV�Ώ�������&�S��U���W��1��Z��?͢4��sE��Οq.���cV}[_�&�t�<!m�ZF��~1�o����-;]_�h2x?��c�ok���][�j�Þ�F���b�T�u�N�5��F�����{x��"֖c_)��x�Z�tӡB~�4�*IF5'&��л�&�w	�Pk�wP���JR�W��R�:�h)�rUa��ʭgW�A�(�q���*!:4�/l�ό���2��x��L�g��.�O�-d־j����q�_����C�i�"��4˝�1kP���þ�o���o�^(���_�kT�ѿf��R��Y��߈�������ox&�F�Yx�K�X�k�6��o�����Z��m4]���-k�{\�i�/�t��gğt����?�Y>[�q��>��Uޓ�3�gD�����|U�OT��L�m��a��Ҵ�^�Q���m'L𧅼wm��ؾ$ӯ�g˝.�(���<3�}I.$�V��'�����-�׀mt����em���x��6Mc��̺��+e񗆦�2oaG��A:��C���j4��TᇧB�F��
�jףJ?X傝\K��_�p��߆����J�'.D�px�}Z���(��J�+bi�IbgF�5eZ�**��?�Mx��ÿ�z��E���/jz�Φ�����Z�Х�t�.�K��5W�]:�x����^���/o��K@�� k�.��>4�Y�����w���oA��.���s�x�R���U��E�)��CQ�l���|��\�蚵���N�������� �y^�4�qi�	C�r-��HѾ�x���[�f��O������PK�\ZxoGI��\ُ�c5�]M���ɮ�� 
���� O�E���k�7�5�խ��� f�x3V�d�Ρ��S��zw�~%M�_xP��-C��]���<)�Ꚗ�'��sq����zT��q�1��ghb���g:�R���Մ��]7(ү���&+��#R�=�(֋�T��i�����a��qRU=�&�*��*pn�4��ORu#x*��Ɠ��)�ة���7ýw�~>���/�Zψ�ÿ�%˥j�ռ�|:���q����W���/�w��"��qyt��Ү|1�H��/�8�5_hMo�=�������aqq�����I�}��������u�7�W�F�4vVN�q�����ܟڞ%�� ���Z����K� �%�ֹ�h�Y���o��-?Z��g�� ��o��/Z�|W-��>�zdV	�Y�𧇼Q�i>�&����A�柫���ko�k�]SO�=���7��� ����}6�Y��m�ۍS�w4���xcŚ�����x�²hW�Pϡj��Xx{C�=B��z���<@�K��!��q^o��Eֆ���C<MZ8��e��B�&�.���ʥZ�X�N��?i��
~��S����g��W�a�ԪR���g�SP��¶Z�-%:j���P��$�*P\���wt�����P�|��w�U��l��������C����md����x�B�5+��=� �$_u+�[h��⣣zƝ�� ��{�k���-H�_�|ui�_�~�ޅ����@���:��ό4K-#Y�׍�;;�"���}ύ5��7��no=8?e�Ke��|L���xK�V��G��Oۧ��5��Z]������ωg�|U���²�xSZ���a��3A���q�]?I�Z� e�����A��������qg>����Þ4�����C��,<����o�f�_Mf�J�g�#�5���y�_�[�r� i��%����5����I�^'O�8��*a�,)S�J1�M�R��*ޕzpU�J鵈����ԇ�����
�ZMS�$���{:q�n�#�5��Y���[���Vp�U?�����𮟣�"����C</�����m�;�:O�����^#k�W����'�����OG~�խ���$6�~��mc�����u�����g�;������?��ZG�-E�ke��5X���e�m�|D�5ko����k���k6�#��5m#�v� ����|��	��^���� ��ۻ�B�ǆ�w�{m*��X>'���nƭ�_����iS����H_��v�.ҴKo4W7�~ս����e�g�>)>��� �R���}B=/��֋������i���G�u����V�������-/�^7�q�K=?@[�Aq������l���XL��˩c#':�b�F�֧�k�9��ԣARú��G�х<K��g����ƞ��؉F4%5��U�Nu ��)��5Ԧ�*m�������>|1���gش}#��������A�~��x�X�5�~����� �\�6m�w��O�O�-/]�ee���pn^�E����/��~%�w�]c��������y����υ|=�P������<o�?x{��Nx�E�Cd��zg�t��zM�1�~$��~��^?l�	�ρ����lt����4�%�}J� �z&�yk������ԣ�կ��,D�i�]=�g�E������px��4o�?�^��EI�i��n�:M��<�}/��Η�t^�x�S���'���֭�+w��׈�� ��M}>��]_�|9�է���3\K�13�Nӡ��5EU��9/
�i��V����p�fxG<>�TiS��)*����r�t�.Ne�u''(�˖j'꧌>|s>���� �'����(Ե8u=K�����g�x��� xW�Z����E��,��C��}B+k����^���_�P��>���Q�e�Lj�#�A�ѯ�Aa�|���xQ<>t�-dk��u���Լ$��5]^�Z��:ν�KH�>�t�u�>��� �2|{�3��ߴW�s�k�%�����-�����R���W�� ��<+���|��V>"�������/�<=�xv��ݽ��5mw�������{�	�� �x�MS�Ķ�k��񗉌r��i�=���-?�?��������l���|;�x�FK}J}gW�������G��Y΍z�ڬ�R�s�ҫ�T!����Oz8X�^�N���c��e
Φ%a�F.�XW��EY�iB4��qU���J�rO�M�ܫ�T�a<�OY�G��P�'�� \j~4�� Q����|]�^Ci�k��s[�J}L7Bӵ�@|+���Y�q��B:��6�_�� ��o��+־+��Z�ޅ��cN�m����]�I���5�M�������I����'�W�ڽε�ͩi�e���<8���Yx�����'�[�|��<q�	��+eik��}��^��>!x���V:4���o�����J��M;Y����狮�/�E���i/>����Z'ۺ����-�í7���z�2��b���p���]WF�%��%����}��dw:\�=����[}L�妽�:͖��9�Z�Z\%:��,gZ�~�5IQ��J�
��P�*�3�':u�c��Ͱ�ڔq�ʚ֊�p�4������Zq�׭sT�֥N��JT�5R��[�N� �A�e?��>��ï����g��>��u�_�$��/�+�x��^�/ë�� |B�n~�k����j�]���5�[�q4�j���uo�^�wí^�L��m:���G�z����m�K�Q��6��i��j��@�/���KK�-���^#џ�6���}CI�'�Ş�@����ze�ڝ��༴д�;Q�tŅީ���K�KF�4�?M�T�:���'��fϬ����j��~�>M3O�E߈5M:�[��4��C�ړͧM-�ڭͺ��SKE����$�}���9.%[m^+]>K�����a��N���5O�R�&�RnT�Z��M�JӋ�ܹ`���5��Ͳ�89ai`1��U�*���>I��Г��Q��*�!��c{F0JQ�ru���)]��Ǎ\��mFo��x[T�47_�����ළ���sL�4]:?��@��}o�zo�5��#¾6�Ɣ��C�L�ӵ���]OR�N�|3�Ma�I�jF�i=�ލe�^��W����g��1�߈v�φ�Ox[����v67��)떚��m{G�|q�w� ��!��'�W��:�K��?�/@�9�$4/GFo��F����_�;N��d�ou[���
����A��_��߆?�#��/_]�L����"t��ɤ���{]B��������0�N���wG�>�$XX�:�����|�xO�߱p�#�if8��V�cVt�&����a�QG5iS�����V��T"�V�.�z*�b}��8ʍ��
��U+��[�{^^֝L=J��>[a�rj5eN��'�𦣭U�u߉>i�<w���D�5�+������]'F��5�\x�_G����w�~����>�⟊�.�����]K� 
�>�Z�L�|9��3����Ŗ�q?�4��xN��;�棦|8�׼9�&�����^�W����X|>�|g�?���\��W�]F�����t�7�3��d�w���m5{o��/ҵ�;�?oප�����x������2���4���mr�X�� ��<�߃.��M���O�bO�> �G�4��v^��:7�|7��E�n��8�ƾ-�����6���G�~*�:��|��{�gG;rjugWڸ�jѭe8S�JpP�M��U�����F
�D�?�u�Н<�.�����Ʀ�<��u(�y!J�HOQ�I�T�jJ�Iʬ*�C;�&�{��/C����UƟ��:?xsB���°6�����:=������h~�&��I���F�|i�x�\����� ��}[��CW�>�o�{�Z�������|)�i���ze�����h�'���;mZ�A�ť���6���F_�+��Om��k�ҵ���^�u����ŭ�~��~1�$��Rx?��^�Sj~м%w����^�Ě���}o�s�%|�]i^񧊼��>"�|M�
^��WZ�)�Z�<9�kIe�hSj��B�P�5=sB��+����<;���}����\��5]7�z(�u���O��q�m3F��Yz��t���"�T��S�9b�J�9֧BQ��Nnq�W���Zs:0�#W�ӡ���K<%W��I�r�N�*a*��Ԕ+U��9ӵ9T���d�F�q���B������!h:���YY����5O�>>�f��%�yw�hߎ�A�@�u��Ě���O����3�%a���Ž����1gu�X�T���a>������Zx
� Ěuݤ�<E��Ms�x�� D��>Gi�W>��֫��'���e��~?.��t��r�H�Z���jڶ���A�5[�W�m�����<=o�}?R�.��ϊ���oP����ƃ���^��_�?� k�φ�a�'�-��ҵ��9�,h���/5��,��X��ŗ��]�Z����o�|1�������t�gPյ?������8�UeU5U�n[bk�
x_u'
j�"p�$TmJ~��)9}�9U\ˉZ�z��9�_��J�!F2�%*��q�i�D_gO�T�J������c_��Ƒsi��� �iZ����ZF���7^	�W��}R�Z��C�mÿ��׵�x�=bX湺�G���<?&��j� �ɢ�MJ/�M���Mķ�x��\oI��B^
�l?�ax�HмY��M
�Ěm톇��kZ��i�}�F�ֵmS]𷄸+����֗��+���6wK��oS�m���X���d�u�Ml�O�xF����X���/�k��� ��5��[���㇈4��/
X.��jSk�uދ{��xB����.��Y��O���k�
���x��^"�����]��I�>�e����~+4q8��f2�B�&R�\΂�.Tԥ9׋�J^�W���#58J���]*��
�*��x�N���J$�^8�4'KR��T�{���F���eY�*�����|Cy�x���^�q�ӣ�.S���zz^X|;Դ�C��y����8��m�ѿ�#����{�x��6��x�W�I�G��%_��x�D��M�Y�?��F��ZO�����������m�d�&���,��K�Ж>7����x� Z��|3i�[۟�4��Q�mG����r�>�t.�,t�;Ox~(�;$�յ�P�lh�G�&�����!���~�O�[�͝��,|U�x~�F�~1$p,�t�cM�m5K˃�i%�X�ݶ���Y��?jVzm�k�I4��b�Y����?��xJxWO𞲻f�%_�0xJR��>h�b\qN�!Z�j�x~x<4�M��t�A��
*�N�Q�*Ӟ"�q�]S�:t�9S䧄t�9�0�)ƕ8�ԧ��(ԩZ�=j����E������&ӼY��Yi�Z���C�7�`�M�Ȗ��3xz���&�� ��G�q�-W]��G���F��7gᏃa�5T�.i�2�Û��k�?�M\�Xּ=q�[���j�w2�n�uw���Yi>�"�4�'U�|;�}ŷ:����C�xz��'���A|~l�<��MѴ�J���Y�cB�yl����{2�6f��Ť���k)��4��8����T��L� ��߄|A���~|B�,����R���%ռ'��#�t��j�^�}�xC�:��j�^����6�g�hMh//� �r��a�Nn_xJu�uhT�ƥ?a�E^Ug9��T����}�9��u�N�u�w�OZ�n|T\��£�v��R���i9,G��S�T���m9¯����)7�k�6[x��_=Z�i�4�~%[�f�F����K���⁦�z��Z����e�j��A�k���&���� ��x���<W�������i���~&�x�����;=;T���n���e���;���zEߌ#�����Z��ou�m?�?�?�Ȣ�>��ω^9�֒��X��o��)����-��.��<;�Sxt��+Eym�/m�t�C������ռb�Ꮓ�K_;V�>2j��t	?�����qYh:$^�q�7I����)�|Su��
xwF��u9�&��������+�3���స�X�F:�=oeOB��/�V�QFt�U���K^prm}^Tp�N�_h�S���p�"�z�R�H)ƭj�F�HӌyiJ�}FWu�^��F��)Ԅ!*t���������O�M|%��W�ش��Z��[o�O⿈>���^���o
xb��{	�>Z����}KG�R����\Y��u�� �V���x�����Y�,f��on�/t/�׮n4XG����5����$z׏��}ű��R��s������	��<��r�ö���]�4�"�<G�?�Z݁�N�@�}v�C�E֫��.}]B���O���2�A�t}/�:W�/���^��?a�ا¶3���1��<m�k��������ǋ~M����k)��^��u��Ǭ�i����>]]�t��^�6��y�]��%S9�u$�Jr�Z4*ӌg��Л�U����*�(��t���f#���q�,di�ҩIӭF~�*)�4�q	b�9�NT��2r�%V.��?5_���w�~|]��4� ��P��xc��o�_���� |'�5?���V���F+��V�y�h<$��_�k?iQ@�ޝp��h?�+��o��:h� �!�O�W�[���<��h�͝�:n��j�ۺ����mS�~#�׵+�k��g���Ե&�R��FX��������������/�p�?��7�t/| ���<9�����ާ��K��n��kF���wヨ�gSԵ����}���G��,�拝��"��H��l5�CJ�]��-5��U��I��Z����]I%��ki>�{�E,6��η�\1Y�z�UP��R�r�4�Ԍj�Z5�iI*��J�G%�t���4*Z�¶#(�FT㇓�V���hN�J����ڍ�9N
��?e(�	{:T�4��M�&>*ԭ�N���<=:�5�4����W� �n��-��k�]>Ů���o����<Z�4��[�z!�Om�]{O��-��k���V�����\>!��=s\�×wg2j�>��d�Ú���V�c������ ���;z�Z+��[�$��	���U��}���x�^��5���="=Q�SĒhx=��<i�?�B�׮|]�_,:�5��$wv��|���i	�u�K�qYk�흞�o��I�	��x�G��Ǆu	t�t���<Կ�<ci�x3���λ��WEN���AӨ��4�7(�t��,:�=ے�9�aR*�a
>R�U&�S�88��Q�Վ&T%��z���AΜ��*T�J���r��*���o܍^���6�J�M?œj�7�ǂ�=Iu���+�^�O]cŏ�b�L���vl�N������:�G�Gwz���xf��:�i�/���an|Tt[��RS�@�(����=N��[^,wwmg�[x^4�^� _��k�kM#_��)c�+��N����ͩ��W��/����M��-4�
�꺶�%������|ck�i�;�o&�k-�[ֵ�S�oj����5��~.��Gm�jmk��S�F�l�	����mt���/���_C���V�4���>�s��ޑwq����X�gZ�Z�[JT�R��9G��z��Ӭ��T����g
q������O�\��:�*U�$�*t��8��I��/d�4�"�Ηm���wv���t����O�~����o|9��s_M6}2��þ����x������\j��{�t�;�R&�󧎵k{��/���t���j��Z�Xռ[���^0�o�x�\�M�t�z����k���R9d���MGJ׬��k�?���[]#�;��hk��+|i�m�[�� a�Z�G�5�^?����]���v������Y�e�����B�\�D���&�g,��l�{�� �2֗�rK�4�\w�z���R�^���ë�x��Kd��>��/a�n|y���!��V�GJq�<
Ϟ�j(�J�9B�wF�G?c��R�Ө�� �ԫQG��r�ʯN�:N���U�J�u*~�
5!)J�V�J���
T���sI�%M,�5[�W��~�t�}qcGw�].oi�=�0��]�����^ ��l5��n䴶��>�/�|:�g�\�i{c���*�B��c��,5+-WR�,W�g�j���PӼ`ֺ?�cԵ�ռ=7�'�6����Y��V�'���c�JחWv�C>�6��\��Ӻ�iI}�n,5Mu���m�_Q����>�}�۟�ZF�� 	����l�=��Φ���O�� ��j�Zu��5��L]�Pӵ�	�k:�<Bu�jzv�5Π�� ��|C�hQ���oS��,JUU$�:jP���*2p��q��No��\��Q���ᰕhʤ9p�u%F4=JsJS�mN�����J�W��N\��M��u�m�^0����t�zK?�Z���%��=����
�K↬���֖�6�v��ʹiwt�ݫ�\���O�<GW�wڬ��Ӽ<��G�s���i�,]KP���� i�\�:΢�W�t�kM�]>��� K�Ԣ[� ��o���kz�lp���>���Q��ծ����{�GԴ�5mw��p�wdӴ�㷰:��u)���2k�j� �&��xZ�n�TѼ5¦�O��H���^G{�6��A����s��io�YK��6����I��c����K�OK���iAN�e����r�J�H*j5'>z�"��ڋ��*�>Io<+?��j��9)B.1�Q�����2�J��)U�Z�1�t� �-�O�(���Z�����Y� �l�X5}_C���ú.�=�C��qEw�	�.Mՠ���-��l��?��|9�����o'�]��K�g]��񎿩j��~#����7֢?�.��x�E�:��|-�O�xn�to\6��h6���3��E���w��Q���O��|e��?���n�o��X[�ג���G�݌�.��K�bxwS�4�A�t��&�ŷ�MWT�~��� 4�<[�f��4�n��k:0�.���x�_Լ[7��{�;X��/������h�'��Ar5�e�h��˟�V�^*�1٤#ƬR�R�"Μ�ˇ��rS��?mEMFӔye9(J��<1�O���(Wè8Ss��K�^2���%MB���%sO�)�?m�A��&��i�8�t�|a�MÍ�گ��{��F�����&��K��z����
��\����w���Z�����.i�mk���oMl�����.|M�Mi.�e�7���WR��b�ľ2��5���3[��OA'�u�i�|I�x��>}�RI�F��ľ����~*׼co}���> �
|1�MƏqo���x�����v�W��u�o�W�>Ү-�����aᯉ�V�n�/��/ x�\҇�~޶z��� ��_�M�����9�m���Dm��<�G�t�}.<]�iV:.�a�}��F�.�5�ß|,��V����4>��Ф���r�Ys�xn�#SإW=nY(�P��Ҕ��*�R�>"�9F�?�\&7?k�4�C�t���i8cTkΣ���՝*����)ЯR�,L>�N�J_����G����j��H��&�G���Uqk����oG�մ���zW�V�M�4��#��/��\�jVϩk�����'�&�����-��7�� |Z�m�|s���|3=��α��sj��~j�#�O��7�4w]����!}ö�ڧ�|=�x[���~���-��u�"_�n��+��z���(��X��g�i�ukG��'�7�O��Շ������O�I�Ic$�i֎�O�?/<K�^|��<awᥳ����éF��:����]�6ZZ_�����-{�z>��|=Լy�X��`�;վ&_j��u��s��(�2T0T�a%F���5�q�T�IAգ�©Я'^��֏�$�RT(��j��b>�q8��ź�]:�U��B��'V�"��J��Ԍ����Z���bgiӇ�����?�uK+��'��ގ�(�&a�h	��W�� O�]���S���-��"��A�uX�K7��lt_�ǈ<U<��Of���������x����4�Rx&��1�a��,`��i��V���h�iZލ���;/�qyky�k��k��c�Bj9��[j�SYմφ�ޏq�Ky����)�Zx��{K�a�1�� cx�.�g�j:s��G�?�:�������	�zV��_x�L𮁡\��Y�"���/�t�o����zB.�*�lx�E� ��n���Pi�n����ڍ���<�1�0S�eu�R�b��V����j�V�����Ɉ��B�Z�T�B����Q��|>!b+a0�q�:X�G
�Zq�q����cR�J5T���U{*K���� |9�����_�5��^��¯�?����I'��_�<E�X�����ukOx��@�-��CG_���E�O�׭`�׵T���E���)��ͩxf�?Ae�˛�B��6��]�Z��>#�<3�_������ ��M��������Uo��Ǯxb���U�`��Ү�j�k�m{w�^j� �����/��]i��W�sj7.�>�iu6�s"]h�C�+VӮ��Ե�=CQӴ�m3�_��SL����������>�u+�Z���^Ziz-�����i�A%�}O[��ֵ��ބ�����#�mc�,�Z���G��єh�џ��p~ҕ_d�<=iR���G:�+֋�V�R��u�F�)�'[ɇ���J�*u������'���4儦�s?z0�h�.<E�b/x�Q����&��Z�e���Դ���l�Xu���/�<ewo��k�Y>��jh<U�x�L���B�K�e1��-��\� �I�;��i�k�W�/���1x���L����'¨5χ3h0E�C��w���w���閚$� �Q�A����@�uM_�6�e����.���ŧi#�֩sp�L��^,��׋<K�x~x��mc\�����]]k^����jW��iV�(��<=>�����x#��崷|K6�o��z}�x3��>$����.O���-�ZI�x�?
��&��s��W��uM>}G^��x�S��N�,�����e9(R�B�0�W9�i����ҍfzu!8��Pé�4�,jfy�"Y�f"t�>gQa0�F��"u9*��5gʩF�Ry�C��D��� e7N�̾�����Ҟ�N��*Yi��x;B���O�x����N�i#���Fӵ[�{x�|C��
���(u}r�R���Px� �ޅ�Yh� ~�O�|���Ǭh׺e��/��K]k�Z%��ψ��]�^���u.t�5K�F��K�d�X|#����ose�oY�R���t��x�Z���iu���w�^��붯kwt���4{i�=�x�m?U�$���>�����~���O����/=α��b]j����3��� �N�����]��Z��o�z��ǁ�;��i����Mk�ht�d�^��*��C�:�Ҍ��U�F�����_W�u5����c�JT��YΤ刔h��W�:1i�Fn��U:ӧNnUi�2t�[7����-g����MGI};m���_xOK�햿�M����_�4�K�wG�����ZfY�z-�w�]Ťf�_}�O�+�� ��0\Zx�����u�[xj�^״��+V��uM�����	�Q]���x��mĚ��	gl�wzV�.�c�# �ˏ��\���ҟ4�+[�F�&��Yx�¿x�f�F�j��W�, �Q�͡�z^�ᗿԕ��t�/Ĳ��XX~��o�K�⎉��� ����X�j�=�����S��Z�ߊt��|Kx�.����V��·��^��k~%�=O]�4+��C�i���Ȳ<6�10��Z�98J8eC����xƥzԖS��QV�+�\=<MP^>cGS�M`���gR�,4�R�
�凌��Ҍy�F1��:N��E?��?���߇��x�ÿ��9|;z��1i�+���^�;�Z��j�X%մ���r��R����f�������U�#���(�>#x�J�5�6�O�K�Ş���/k6z�_h��^�|Y�M{�ܝZ�_�u}�[hڃ�;ͦ�-/�9�x{M����$���+���Qth�ε�h�-��Ҭc�4d�����sk��x�L��|#��[V�R:=�����z�Ř��/���-���U�x�P��M�M����<g���F�r 񖻦�i>'_*��tyn<?��������<!ot��Q�t)Sͳ=8a�T����(���Q���z8��t���V���J���9�X�Z�9��ʞ/�ؘ��֫RxlL*F4���ES�
���B�"g���)BP��s�&�g?�_� �^�h�o�k�� �����_��;+��tjI��KF����M��ֵ+{mK����:e��x����/A�=6��!� �p�!j���:�S�t�iO�hz��C�_x�]jV��6�M�-.?
xnK�}o��E �t��..�V�ő[����	��+�v��������s�j����K���A�mo<K�/iz4���&���	x_]�Z����ţx;T���_�\˯�[_{~�� u��<_�]N�Ь��/�MK�z���Kq�MO@��Z,�4o�>'m2�4�������{;���x��K�Io�_k��*x�NX:q�Ft'/gF��ӕ(Ώ;��BJi:3��9S�*U�w��t�N�j��Tg',7���e:Ma�5F��8Rm�T�Ug'R)Q�c:�>��k��� �	�<�<u�x�É���K����ú� <	y�|R�������vo��Z��:?�uԼKs��s�����-{�ɭ�K7���WA��P�[����Jy5�J��=�|3�x�R�a��>*�����O����������Z<Z�� ������~��؟�J���_��e�����>5�|e�GL���4=N=G@�����5����
���g&��Ϫ������I���I����7�����~'Z@<�^��N�����yr�Y��W�'5}�ܑ.��.����<�h:��<%�kz^��t_[���0���ψ�k��F�o �'�T���[��Jj�P��C�;U�,M	�УR�_kET�t�u��ӣR�e���N[�ҫF�&4���թº�x`�r7^J5)���O�S������<e4㭢i:m׉n�E6�o���Q6^)���K�'��:.��H|[,��f�����5�;èi������<�����[i:Ƴ�����a�m�9����/�$ֵ��n|#��۝'^����1���F���}?]�펣�k���|@׭���Zs|/�3����0i����F�n��/u[{��oG�z��N��Z^�6�q�t�� ��U�3��hZn��x^�_�����z?��C�4h<㞷�� ��Ծ'�>=L]i�l:΁�� fj>��gC�<ck��+��|O�Շ�MV� I�𭗇o�;x.�� �B+�x��þ?�i�xq�s�KJ�<S�A^xi}Z���T�B�8�P�8(�ҭY9ҡirFNJ>g��ҩ�\�'V�&�j�x|4��ytjR�)W�MR�^��5j�F
5�S*N5�3毄7�M͏�j{�j��?|EsjOu�������d5��#��N��mt�Cᇂo�բ���_�uI�A���Кv��h~�������<wm�Q-l�g���r�J��Ǉ��߆_Ξo|-�_�"��zַ�t���)�W�Rx�h�Zi�/���m��k�E��Z&��������-�'�/g�N��w66�M���hPi���O��>厅�ۏ��&�z<]�/���V�5n��m:��0\�qc���z����.�sg�/����_�������?��~����񟉾�������zn����l�]�>�J�;���^5+FqJ�;�1�*F:S��KVR��	�N�i��)ϖO�Ω�<ƾ8�a�:�h�˩Bw�NmJ����%(�P�N�h�)���9�R�h�Ҵ�7]��;+�V~���N���"�^Oi�k��g��>)h~�<A�O_[��~��OC�O�ω�G��D�^��y�|'����^��m�x�<?�X�V��K=^��X�a���n�O	h�^j:]���>��+O�=햩�-r�oI�RH��v�_�"�ߊ�Ic-����GWO\I�?	�������H�Y�jzO�t/
[xc��(�|6���e�5�K��G�����k�xF�CּK�MKN�w��;���?���otiZ� �4-&�<!�D�..�T���+:�w���BxkZ�-׃��.̥�`%��R�"�-C�Ԅ��jU�B��ԡ)O�%	�M��=��4d�Լ"��p��W_MV�B�/�)��iW��#��R���*�R�N�!S�W�T�Is~!����^�K	�9tTмS}�x�%�w�Γ�x������M�����,N��]]ҼA�Zo�z���^jZ�����]�����Y5k�rR��c�K�صO�Z�o�O��H���Z>��&I�O��lt��<����uk=rۤдlx���2�j�尺��M&O	�G��k��V��PҬ5IW�z7�F������t�r�C�<1�i�E�6����7G>���x�=���~"���ɢ�� hh�������X<��[�z�Gcqk��Q�os��yߕ�a�T�V�2��*t}�IEQ���%*�g8a��*���%	��5RqҘzמ5�*���Nt��N*q�,+��(��|3�&�F�Z4��c���~��E��՗��}��]�^�����JӴ��^'�<Y�R��f�ݶ���YZ_ϭ7�#:v�w����+->�ݾ�:����T����ß�~�Y���K��x;�.��O���M:�M���h~��_�>!�Yҡ��;�ͣ���^��k[!�2�x�I��@�j�\Mal� ӣ��������H�t���v2n�I����i���B��o��J����΁�M�ο�?�[Ǣj�V��� �58,��-�=Al����K_��K9���o|/o��8�|!%�i3Ee���`�LC�R*�7�qT�S9��xʴ���%�N�XB���f�*� �0�ML<�έX���璩8������2�J���j�jb%Rr�=JsnU��9)G�^;���[�:����:��x��:ׇ<M�Ǻ��c���Öv�(ҵŹִ�[�hVz�k�O.�j�Y��KO��ۓ]��٧��ό� �~��9�<o�?�:���$��j�>+ѧ�X��K�Om���x�Y�V�t����4_��ǫ_Mg5���w~%��F�i�|>���j7Q�j:e׍a�Ƴ�{Ȓ��[IJ֒{{];_���X�R�K��#ks4��O���O�����o�� ��o�߉<S{��yd�d�Z=���l<;��~����� K��i���$����7�:k�!�]��𝿈�H�۱�S,����ƿ�V^μ0��t�KR�i��λ~�5'��R�*n�qX�;R�֩YW奉��T���E<Uw��E*P���)�\��i�.U$~�h7���j���~�0�v��B�O��f��Ѵ�"���a<�m���&�<�I�����ūKl�'��L���xc��)�:���h�:���y�h�]��}:�·�U։��w����̞����|>�5���t�cX���KM�V���+ğ��x���{��:�/�t�OH��� Í�^��	�\譪h�����x?Gլ�i����^!����k�^��ZOX���~Դ�>����In�����edo�յC���5�1N�ɨk�lv:����1����S]��Ti-aԧ��ˇ��4kb+c14���AS�R��JXj�}��jҥ�HV�J��a�WF1��:
_O���mN�i�e:t��R8���:~�:u��u#:��ӧ̪((](R�'�4��_��:V����v���� �5��櫬O�I�
Y��x.�][M�<!�xR�P��i�W�O��a2_��x���(x�V����,�1�%��Ӵk-]_��j��C%��gt��6�#���Fחmo������Imcܴ�]&���Me��N�"y��}2�����1��A᱿��Ήy�sqsm���_F��Y���� ��.�em��iu�C��XO����י��6�����7p�٥�pC�)�mR;�*�闒�(����,j����Lli���F�|\*O,F.*R�B��*4�W�(ס�*Ɵ��0���ԝJ���nY)V����)R��˕5�8r��˕>X����>���].�_iW7��pjp��Y���ɢ�:�����.f�X�4�[���-���@��֠��[�6��|V���H�xj=#W����R���\�^Y����:���kw�jR]�#F�E����ƕ�eF�Mm��gS��l��|3�%�ح�[��~�5J{�=d�5(�-�Z�xSM�%�ң�c�j�~;җ�W�|;�^�]�x�o�u���i�ǫ�:]��[[�v�}�Z
M2y�mq�E����O�4k�͡k��ţh���w�?Q�m�DxLL1t��*��y�I�C����ԕ�;��R�V�����:W��3��U=�3�t�:���:��J��Jy�&��Jp漣Nrjtϟ�v�@��N�j����������O?�-H�_�t�/�q]E�x�/�m°Yh���v�S���5*Z3ͤ\j֚~��Z��i�g�O�ض����W�76���������|���V� ��[9������'�O��{K�
�~%�OZmG��m햟w���x�S�/l�}_Z��u�3�"�t�����WZo��Y�+~���[��oE�_F���H��x�_�<9q���K��f��ؽ��p��Mt{+Z:}Ι�i�vzt73hzO�5?�ڗ��h:_���`���Vm�+�(�gN�X��}n�j���J�4�T�1�[��ĺq��s��զ�U,>a�Oݫ�����D��W�R�]N�H�N�����y����M��5MOQ���`u_�wW��5���"W��[��du����k:f��[i3Zx��z�����=D�s[P�zhx�S��3�E��km��5[��ž�}e�k?	7�< ��k�Xx�Y���7��/�j>DV�~"����ao����_i��&�����k�M�I�_E�D�6V�Zx\��.���h�Z���?d}K@�[��^�:����o��l��|	�����m+ǖ��,ԡ�����_�x���(�6���^�[h�0���xg�a��^*��RmKP�Zk�������02��_W�:��R�''���x�������N0���:��2F#0�Q��u�J�9җ�r��Jt�R��jx�r�W���7QP�%NU�>1~�z��/x�~����F]s�6��qEw��N��V���5�i�؟�S�ze��≮l-u�ĉ����K�E������%���g�[�u� �:}����.ѭ�k~�f��x��M�Ь5�t���¾]:������t�x�U�5�-[Þ"��I������/�lo5�B���zjTx�[I���V�E�o�j�)��Rj�n��xJ�Q�<%�iW��[X_k��������b?��`���%���S�Λ�VՒ<U=��'��>�u{��\��:�څޝ��:���ƷW7Z���~�^$}+@�����V���:��*��=9W��瓫Ti�Tc�R���Ҏ"�&�8�5eN>{�Q��N0҂�
���/kB���M)�����U)�^�tԕG*������h� υW@Յ�����p�U���iZ�ÝVլuK+�CNԬ^�]KVҧH��۝3W�[�,�I�C����o%է�>'�ެ�s�����tX�G�����w�ھ�������/�O�V���,v�:�oo�+�2�@׬�G��>�4o�+Y�XѼQ�M�x�R��^�е�R�uxu��f�x�&�u{{]n����z�eg�j�|P��y��KZ�P�l�w��n�����Zhsꚤp�6���|@�s}��^Hukɮf�����˄�.^�����-n�K�g�y�.x�O	]�U�L��ʣ�ҭ,G2I{G*m��P���gJU#��ʘ�*s� �J*��Nqc
�O�Rn0���S��p��8/i(mi��>
j�~�k6��:췚�=���EƝ�i��<su��k�#X��� `���}#T�Ν��yu���W����x������G��V�m�j�I��-7F����b���l\�~�+������X��l%��m*� O{�,��+�7��^�}�Y�=���1\��� jk��gY�ˇK� m^�WG�����K��jZc�Z��u�uM^��[�n��O�ɣ��;ӯ%���<]�\A�k�j�L��7z��i��մ=^�f�9��V�����W�|v��w÷w����_~�YNp�J��m�ԏ3rq�F�8�)O�PQ�c/v<���J����%gF�jф�F1ju'Z��IRP�|�}���^	�Iu�6��ִ߇�V�w��ǡ�]�7J��Ҵ�c�:������o�O�~{�{��ŭ���������P񟃯<�%�:� ��9��|c���������xo���E��c�Z���|^'�u�
͠XY�	��hV�x�Z7��σ�C=ޗc�OZ��7�Au$z�����|Iw>�����v�M�3\�� ��i�7����akuc�^�u�m{ŚM�K8�h/��Qb/m�+�i:]俽� �K�ٳ�>>��>��J�ľ'�ދ����Z�zz�|�~����H�Ǌ��o]ɫk�w�4K�eu	uMV/���-J;{;M3��ibpxE�����C�Uy:��Jq��r�/`�lD�S����J�Z�'��[��ĨѾ'�߼�Mc'���ƕ*q�T�8��xyIM�b�$�'N��?���� 
��s��:��A{}N�[OͨYZjwz���-��tD�������ؒMM�+�B�M"R�|��]৭?	�a�DMC�k⟉�l��.�/|9q%������=G��j�%ͼ�]#E����<=��?�W����Bz� �:]�~ �m�mV�A��kc�O�x~��3xb�mCM:���ȴ�S񥖼�dr]豭�h#�I7:m�ӿ�/�)����񦠿�5oik��Я�X�q�k֡�k~2�����D�GX��SQ��.�G��C��č���d�19�ӭ,F���IV�ܪYNUe��p������J�g�N�4��M�X��a�k����
U1�9FQ���1~��*P�B�J*�lU�[R�?n��qgS;�`���>x7�%����[�J�F�-������� &�4�u�-oKKy�ͪ�/�u���4�U׭�n�Oz���^�������@��?/�n��G��W������WO�N�m���?C֎���H��O���R�VԴ-MC�%��m��MW�6��>�Z�~Ο�����]���s��=�ޥb�<_s{����i��_�[�N=?DK��70��:��>>�'��[�����4Ӽ�躦�c��OB�폃��xwG��-��z5����ѵ�mJ��:g�o�+�-Q�?��}7M�8��y�n ��Q�^�;S����!
J��R��(� �5*2�Ԕqr�J�9��|�M^�eC�Օ*P�+9P�ia9�B�5LB�$�]S�I�T��ͨ�2;���xOVі����_�K�vz̗z���_G-��WX��|W����a��6r�mzs{u�{+{�\�������U���߅�	��~#� ��]�R�4��q.��(uM[M~�/x+K�񾑫k�f�m��r�A��5#e�O���H��i��U~*��jW>�w��S��� ú����K^���D�M�/�|J� �����ym
�x�Q�uO��V�������-���+H�Y��|l��u��,�g�+��l�o�K�� |G���7�.�ua>���Y�D�S���ů�g�xb�H�.5=^���� MN�K��#8������C�P�������=�7_Z���Ka���㉜#B�9ҩ_�AI�����,���bq���Ia�Q�R�~��%QՂ�IԩS�Ӝ��ԝ:Q�֒��A�Z���w��x���j��Cj�m��,����Ү�D�n�����Ğ<������z/����5���u�-�ǯ[�:����+���F�5|9׬��Ae���ou]�:V�����#��f�̶�P��Ϧ��sGc���j�}|��T|q�Ɖ���xk�)�Cյ���[�_@�I�%���SH���
��ܗ��zU�����Z����>Y�T�m��$�$�^���_�<>)��|>�4�~"�U����mΡ�Eq���[�_M�f���Cд��GÏ����|+k���6�u/��3<��5#��С���X�LG����*�aV)Q�B��Zꪘ�èF�J���V�ee*4����S��)S����(����jWJ��1���Q����n_��gÿ���-n��hS\�zw�&:m��_�-��մK�cW�����ԯn"��4}3WӓQ��e�MB��>(�������e��>ԥ��"�.��ͧiS��ZV����Zh^�c��x�q<Z�^����q�Y�ӭ��M#H����$x�mY�7�-��Z��z� �<?�[�J���;�M^�^�ĺ���x���� n��ۍe��Ǉoo�����F���Eխ��|,���xGX��]���'\е� �V��P]�&��ž�i��_���9$��+�j�XKms�Y��/�58����YG�TƼF?2�a�B�	I7R�XT�F�2娧F�"x|%�*��zT%[�)�\�\Fw8֧���#�Z������*p��"�������[~�-^pR�?�3���,Y�%�`��t]r��xint{�+�l5���t;H�������V��h7���zE���_��C�O���X�E�k��
<E�h%����"�����}3ºLzR��CT�o4;���AҼKu	�;-wN��1-���	�}���[���X�Q�'���<o������ �7ÛM�_�g��P�.�-���Mf�ƺ���<�"�T[��\���soe����7�~#��A�-�xcB��f�u,�չң��7�w&����so�������}g��m�o�:V��άWp�7*uV*u�*<EIb3�O�7oׅ
K٨եS7�N��Z,��|K��jo���叴�a�Q�R�9�*��U>H�T�ʜ�����E~�>�jo�~9���]��k+�H�/xW�>��ao
�G�_x[��2�^���a��[h�e常��%ο��so����?�������yo����:��]Z�߆�K�[Y��>%Y[��隦��ǠX|b�5}\���O���^%��[�OK�:e�c}�D�CL�ͦ�s�I�xj���1iz���5*��W���K[I��]��*,�osa+��maic2'W�iz��Z����6���K�u}���S�I�0�zu�$�7:|s������4t�Ekqk-���<o�i�8,��#	^-*�V�j{iʭ'*��$�?���ӡRK���9�ic1�B8��uahP��E� �{	A)J1��&��q�J�6�UԿ|� 0�EY�|o�h�� _�5�������_�����Q��丹����6-FK+�}3�څ�u/	��O����:䚴�?� `��G�k�&��G���WX�}V9��M�x�P���װ\B,�lo�b4覺�6�� �������V��Db��R��ŏ��7U񏈦}'���Tk�ɵ�{$�.]y���.e�Tf��r][����l�tӚi��踯�;�ZVڍ���OF,V-�_�l'���i�_�_ذˣ��Eq���ʖ�>���,����8*�j�ʰ\E�R��ULD��0��w���R�W$�R1�產�sN�����eQJ7Q�i��d�OWJN�RW�G�S�=^�]�F�$�&�s�ïC���o��"�L����	1��ɧ۬�)�Ut��T�>��5�E#�-�>��[�����;p�E~�H�5�f�����%�����s~��Km;Q�Ou�-�7�S��f��c<�e����+�d�yZY�4��Q����ZY��԰�h���I�o��t�LzM�3�C��j�[Z�u%�����m��β\4��*d���K��"���h��A'�C1�sL|iV��*0�q�
Xy�Eӓ��FN����i(�8�t�E�˟,��*J�d�ԅjmJ�4����R�mK���K��)����
M�/��ߵ̏���:g��	x��n��Hl,��-[ᆗ�}[�����R�uO	Kল�u�{�Iwzu,n5	4+x�M�!�|#��6��ڧ�7h�.�>$����m�Mo^��mI�%�g�"�Z��?|n�����%�w��u�����.���(�_�� �)�c��.�aᯉ^׾�>�qw�i3[������>h�����[��[��B�WHg����>٧� _<�����k����x���?h?����-T�<V�N�������C�XkO��k��#�t^�.�e�=A�>�ῇZ%������}��N�'���T�V�ԟ����ΜۣV�g�u]h�Z�T���/j�%J��N��5/���c���>0�	a!>Zk(�җ��U��	^t)��ԫ7BxyF^�>+�"g�֕�x���:&�y��jz��.��o�5�ɏ�%���įk���U����{A�<Q�6��?k^'ե�@��4�}m�|�?i�گE�>��xBC�7�~+�t?��ߍ4k�x����tkO�
\�x#�Sx�J7��S�5�펯�j��%\Ekf|#5���_��}�I�x{���v>��n����#����5�B��~%��_�:φ|"txoJ:���Z~�� ��.�o����K״�B�����s��ׇ//5錚֓�� ់�A����"�Z����wQ�К-�'�o�}:&�%ǋ��lz��9]%,l����u%MT���HB��F�UΔ�<���u|������嘜n6�&�|E�0p���FtgZ�JU+�����jT�:5��P�~�F<��꪿��eMG�e����|}��4?����ރ�mS��kZGŏ�|or�g����^9x���4�S��|E�j��Ҥ�G�/u��]k͵9�_x�n���Y�D���zé7�4�+]�F�ǈ~���Px������%���ί�x�H�W������+��O�?F���C�v|t���ǈ�M;�/�<;��;Pv�&��T�����G�}?�5����|�7ľ$�¾�j�+�����/�_�ܺ��C�Kw��x��>_��������YZ�W\�қM��h� �|+���W�����M[�� ����i�&��+�#����0��j8��j'�Pq������T���S�/o��8Ҍg�X~E
��_��*x��0�0�i��ka~��a��QR�WJ�5gz0��8Np�R��yЕZr�wmy���@� ���(~#��#��I<M�}�W��9�Ogs㖽����±�����#��#ѥ�׼A����~O�<A����.jxa�m�𖭥K�k���ye�]$�����Z����#_j~�To�^?��~j���Ė�w~�~��O�߃_
|/�$� �ˮxz��6��i��]*�F�N�s�iz���^'��u���:����_�x��ᦟ�O�^�}��>6j� �� c� ��-%���>��%���\$��޽o��oX�^:�����>)�B𾵪G�燬t�K����/$������qv>X�ʖ��I:�t�ba:��ta*T%����<i�|���q��:r�������*x�Z�%G*p��,,���p�h��UXW�F�iJ�&NX_�ΥE�����מ'��G���h.�>��_Mº���h����k���q��k��d�Lеv��Mi��O�������+�zj�s%��Ӣi��=���W}q�-�Oo��;Ԭ��J�����m,�4k�;!5���[�[Gu0K�)!v�D�i���xV���{�x� ��ޑ�]LjǊ�u�2�Z� �wS��>+��÷��3|B��� ��ŏ#Pҍ��_��E<q�h7� �� �-�/��;��4�OW��lumE<%gz힗��9�֯��K�pJ�k�(������C�x����G��+�ȵ��ÿ��p��)��Z���
u=�XG�����S:�be'S
�����ugN\��ԧU�%B.�u*�\�i�R�'����璜V���w�&��w�\ͣ|,�5۩d��-{M���x�?j��2�z��c��{Z��#j����e�jVw���u���^%������K񾃤�Z5��r�Q�SԼ=��xGC�n�oŬ��6�-�o�:����/����xM�~����ߋ�n5�?�#��������6�_O���<}�i>&�?�6�������e�������gÚ,ڟ�಻��և�|B��o�����޷�����~&�v�&���kQ�^��OU�֣�x]���oZ��\z�T1�~�a�­*�Y��]x���R�����������(`kթ8`���b+�]*���U��kt�g[J8�b*�9S��h�N4v�L-����:�T-��
R�ܜyiʻ�?m
��y�G��߈zݏ���.<5��m�A��ԇK������$��ѯ쿷u<=fo.[Śωu�ׅ�i��5�γ�g���o�O~��A3�j��E�u���񀾹�J��$6W�w�.�%�g�4�g�� ���O�N��n��,�Y�� g.|$�T񏋭|16�m�٥��>�ƺ_� M�x���z��������.�浩����>+��t�M#G�!���</i�x��|E�OC�=�߆�/
x[���x+�徟i�����t��CP��w��G
���:ޓ?���u8uD�Ԭ�=OV�й2|e�/aO���NU1�HT�Ъ��{i��ᠨ��<)�祌R�IBt$y�LwN��R����XK�ԭBt+MN��h�F5cV�*Ù�ϒxjp���n�~/]��ƞ�<K����5�����X��M���y��]���x��\��:=֛���_�W0x�sW��� ��%��z� �>'|U����_�յ
m��W��>!҆����Í%΋ߊl���[�O�W�A�|y�Zܾ��v��J�jRx�L�2��x?úUֱ��>����=���>�g:|9U��Z��������kz;j�5����jpX[�	�Ot�����5#�޴^%�j�ɦ��ѣ���}{��xR��+��':��� o_j6�0�.��j�ǉ<9s>��C�����D�b�ʲT�<���biҧF�ɉ�^�UG���Z���
������n]G4������a0�uaV���BNq�	���FT�Z��:ъ�F�i��)Ƨ�>����-����{-z�+� �jZ����1�)�T���ލ�����i�׃G�<1�O��x���/�?J�ݥ����w��1�Jo6�c�����h�e��k^�K��|Ymu�UլV���_�</��nl��<�Cˢ�#ҟ�J��[��>0�R��n���n4�������m'@��\����?Y�(-�n�Ot�����,,,o4]K+�[Aw�q�j6�߉����ү�{��<����e�֭4�{��Xo��w}� ��Ŧ���q�l���:>�yfS�Q�p�5�KO����r�H�`�U�Np�b�:����O�JP�)C�
�+c�ʤ#F�Rp�,Mj����$(�2P�':�ʥ9s9ҧh�I��i��<��@�x0k���O�d��Eq��g����j�m�C,Pi�m�Oi�Tڟ�m��;\�~��]Y���o�8����zY��m+N�a��,c�,��SG�u}7�z׶v^4׼Gs��M�^����5�-c���^��N�u�6<V�w�+���V��W���o�`�q��x_WԼ#��q身����x�6�w��kڎ�ڞ����뚞��mo����;�i��u�\�_L�uˍ'@��E�~�k���|5g�%����%�5���oĚ5Ƃ4CU��Y�4��G���Ƒ&��=V]7Zh��Nx�f:X�?X�`�N�QF�؅���êp�j:Q�
q��f�*F5�G�E�M�S�>ҵW��R��Ea�s�
2t�w�N5�`��f:K�6��x���i�+E�o�S�/�{{;iDO�K�fW�-���~���<]=���'����C�|Dmƚmk-[M����+���-�����-���'K+��;M��P:&�.��\��_x��v�����i�xoŞ%�ּ''�^��O��~���o-�l���OY:n��=[P�-<S�"�T�[9<E�4�Oj3�{��N��x/�kH�׬�s���rOka��j�߈��sZ�<Uq���\G���]��7I�|Rl`�����[A�W�������s�~&��C��晝(�S�ac��zX�-��.��:���)IbiJS_Z��������'�Y��J��V�d�	�jƎ"4(�;��*2t����F�:���W� �ixA��v�eu�ۍWR�t���u��oac��W�ZB��=���� �+�[�#X�t�
ӵ�t��;@�4He�v�t� �z6����B�'�����A��u=+OIu[��m�Gg��k���Zi� �5�G��Y]�j���ӡ���� �/ٷ�'��f�]�N���������58��k���m�%�𞯣�Z��u���A����� ���{%�ѿ���Rjkm1���I��7U�"���͂��� f����u������j�V���_j���6����D�qv�dti��B4��\������p�7QW���R6\�JR�)R��'�X���N�8ΫUU&��e�[u%4�s�|���e�j���sE��#[��D־ͣ�9��?Nk=G��i��F�C�l�����Ƣ�_�V��^�:}���B�&�n���� 
h�<����'xG�[�SC���4�Z��߲�sT��M4m^?A���� �ڃ�]�����6�~*ִ8�t��[����]v;���N�c�-s�kM�����"����Z5����4�=R��O���l5�OS��4�..��:u�x��ru}"�L�*��-�K�.Kp�I�il����k+��G����[=R�)4�5K�B�-.��/:�W��c��JYfSJ.a��З��Z�"�^iA�{��(�JM{hJ�����ʊ�'�es~��eUB�W�U9RXj��
�z3�N�I�j��F�W*����?l��N�}j�����A�jRh��k�$6�kRj�O����i�Z'��!֭��&�� IҤѬ|��o�ޮt�mcX�����}~��o�4=/I��5?O��'M�:���jq���e�um.�Z�n#]'��+xu[�|1ያ��#L��au�h�0��~%�i:g��)��eӞ��躾�o�'�-[T�?�#��Z���Z��t�=���:����-��j�(�R6�w�x�Z>��o����V���u=i�_k:�w:<��z�-[]�>�H����m���v���*���ǈ��œ�wj/=��=Y�u*R���U�h98J��^Ʒ�L�T���
�v�^�)�SIW�&�_)�/����&�#W����/u(�T�J��N�"�-I�Z�oR�)U�Q�Ǻ��4������j����#�wz����c}�i� ���ZU��Ḃ�[�l&�=����^�s���{]k�z�Q��� �5�F� �ދ��!�ºκt���]\A���V��ċ;H�-
��S�׼-��9��>4�_I��oY�}{X������^'��.�a.��Ku�O�:'����5e�;�|Ks��jk�V����
kzw���+ȴ�&�Тҭ<K���V��C�|`�/�<#wǈ`�����W>=����uo���='M�tOM�++K;��b+��V�/��t�j�Ě���s�x���� w��r��0��ejp�'*N��S��Z�Mɾ^y�A�{X�N<������Qx�u�c:4���Sxu��
�!A�rF0�W�JTy�Ji��)ʭX�,[��������4��|5���h�mcS��凅��o�ڎ��ip�^���=��<}��\��񍎙�iS� ª��k�j��:� �&� n� �#�����s�ֿ�C�h>=Mb�-[���~���\E�O��?��YMsK��ԼW��-JK�B����O쩬�m���1��w6��<E�je�؍�P�/���Y�����R�/�𭖡�i�Y#�E����K�-"����~������ ��� ~�9�m�����|W~��u=SI��~(X.f�$������ռK�O>��[��M}�隞�c4��%���s��C)��t15��*�k*P����l,�Ƣ�V:p�'U:0u(�{Z5;i+ԣ�����(�Q�T���ׄ�\<iϞ�	F�*��#(T�S)͹�{�����>�ź���jG��� �N��e��e�msV��|Q��>�`��t�/�h��fk�p7��I�4�C�H� ���h��eԭ�E��\^|F��MҬ|3�$��� ���Sjz����6��t/}W���B;+F��-���4д]O�l_�7�v�E�σb��5a���=cO�ޥ�k�&S��ֆ<e�j
��:��ĉ�#yr|C�e��Ś=�hA��"���� ������࿏V�I��׆,<s�x�Z��m;�i�	iQx����$�5Ҽy�F��z-���Z��^k�������^G��\d��F&�jѧVN��Iɪ��*UjJ�e,,�!BU��t�;��?�pѡC���ka�R8�+�RkO��UoB0�I®2Ruq2��iZt���]� ���� g��s��㛯xS�3�G��?i~���x���|�m�=�ωZ���:����tmSN��<Ayu}{�jV�����ï�����|cv�=��c-�ޝ��R�R�}�Z��Zռ �^���
=Rկl��Oz��e�I��g�����7�	;�w�#��~�w�?�X��_��ω-�D� Ҭ�*��[�k�;���+-v��g�uY�O�X��o��?�� iY�{]>�]?P�ֵ�I�'��m�����x{*j6b���m����/�4ox[F�`�ǅ,�--��u]OB���tt��R�?@��kH2�i���U�G:�W�*��K
�Pq��S�ZW�iP\��M�\ͧȠ� "���d��T�R��d�F���0��B�;+/�)T�Q{��߰��MsX�!������V���xr����> �-G�,[�ǣig���[]Meq��=��b����ÚlMq&�n��������x��C�;�=j)���|7�t}R;�i���m~ �Tڮ��x_Gծ�]:�������)�]k���_���x�L�}������6:��xUe���[f���Ww���F��59-�o5;�u[���3U���Ⲹ���;��E���������K�[�햣�ǈe�k8':w� ��躽������W��7z�������V�˧h���qu�f2�70ͪ�x���qӭ�Kj4k:t�5*So���i�Q�j��>ЯZ8�-:�è����2�hӕZ�%:3�O��*��jp�G�A*��{����
\�������~Ү�	���<e��?Ȋ3E����+x���C�R��߈tM&�ú7�m�)<)tl��/�"�_�����������`�B��Sӵ�F����Χm��A���v������?]���>�R��*��̽���ṵ];ĚmΣ����l!��g�����/k�����>���u�i� ӤӀ�t-S\k�C�����]\��Ǉ΍u���Q�'�� ��森\�~6��O�h���<#��ڵ���<=�ϥ閷���ް4��U�'�Tq���'F�:��4�p~֜'���58�6暅V�yo~����P�̡<�a��W����jQs�I�T���Q�	�)BI*��H/�)|G�2�[ɪ|D𞴞�������Ѵ{\�K�[�^({�x����v�"��^mkđE�hB�V�W�&���?fm��{�$iu@�Z�[K����Y��hA��NC���V�zw��:O�|Cm�^�bK�cK�N��:�Z%�����V�Z�A��x�K���,ഇ��i���b��l��h֖/�����֩k�jZ����z����;�=��QxB�Ğ�㰰mcG�c������[�_L��w�隝�����	xwA�d�L�MՓK�l4�{o�x�ƞ!���r����0��5>e����U�ԗ��N\�ܥʪFP�S�t��h�3/g'O��8��RJ��jV��r�{U��7)Ԋ��4af�꺿��4�Z�D�m��6=*��[�{EЯ�P�5}r�u�h���֍{oi�jv��Y��%���}Y��|;g}��|u�Y[���4��d�/t-3I:�}���Ӟ�oL��^�Me-�4��Z�os�e��{���fnu�/H��M��/
�67�j76�[Ksn��wou`�p魤i�znt��<�SB���]Mi��j^?���.t}g\�/|Aalڅƍ�jzR��h�V�%��w߶��zZH������m&�.���n��6�Jr��4�֬ܰ�Q���ӌ��s��*>�p��a	Bud���q�e,-:3����V5gQ�IMU�N�	s+S���q�gV�ս6uM^��-���� ����t�zk=R�O���M�M���?��[�
kS+�ںOy6�����izzizu�A.�i�yak���.l���K�xDVQ�y��Mq,R[A�l��;M8-��\�Ch����� ��&�ށ�_[Z��|���UΩ��cs$1�F�����%yf��[4�P�*m�T=6�q��鶚��a��b��{�cR�ӯ-���.g�6�e�ݤ��kn���}�E�%����:,��:?��N��Z�b*R�J�"4�#
�*T�i�>xҕ����P3t�V]Iӧ7I����=bی�"Ӝ)�|��nI%�ʥh�z��7R-̗��l�Ϩ��\=����]3$�vq=��s��qA�jQ�����]i-l��6�K�- X����$�'F�X��x$�Cp�\G"Dd�an5�Ηĺ��&��,t����}mj���Q�5�76���h�V��٪ZOlax����N2kp��=���Jk�W[�f���Y4y�W��4h]Ȗw#�ry�C2H��eĺ��5��Gf�_C<5L,�ZP�R�*T�(���R�T�EIF*3�N�q�9C�ԭ�0��F2r�IBq�b���J	)A�ssM{�|�(�&�a�[���Hm���a��3C��,��]L ��x����k���kR����B\�GR[�;U��n�{�:���U����VLYG�Ea�w�Y�>��跶�ڄV���^F"�Դ��<�R�5�Y]^xf�Z�����&�����b��li�m�Ү�c��MB��墚�[��ux�M�v�s���]KK���M>�H&�mK�z���=��������hzͨ����)�#�Il�b���3�>�."��㇃�
�=ʔ�B>�4ܜ����Sߓ�/���S�Ҥ0w�tq�YI�ʄ�4��#�ݥ�գ4��W�<S��P�I��b�47���B��X-�W77&�}�����n�����B47�M��}L[����^�ߟ���_����|E�{����񗋥��S�>���g���5� 	��x��g��i�x_[�5�5��o�]xoR{3��3V��5�k�aag���ɡ�5}c^�Ķ%����0[�7�?�M.5�ӯu�B��<4����%���w��[��^<�t�����>'�6w:e�ސu�f��������h���2�z��.�'�m6�a��W��n��^���X�P�K/."�-J�R�"�S����A_�a��*�NU%f�q�0�:��
�TW�1.�!EKyMFT�OF5gUT���[���m�k� ��o�ߏ�������=�ǝ+�CR:��ci�j�<���T�MSA���|�%��++�jw�|E�X4�M3ƾ"��K����� �9��~��ڟ�g����a�����n��V����:������*������=
o�o��C��j��k�hڞ��i:��4��ř�9x� �_���ݣj_��:]����x/㧃>&kz����+��?�8���5/���Px�Jּ%����+�|@���|#�\X|A�6��Z.��� �)�¿��&��x��/xsF���?���Qme��X��U�߈<)y��]ܱ�NXu��K�;^� ��u_�F4O��#��0�hԥV�j�Z�ק)R��k�N4*9�U"�Z�c:�%&��M����'��4]L�&��,4��0�#:�%��_<T�#MҢ���Ys�9I�iF��?�7�����u���h��/���X�.�em�x*�Y��M:mC�v��c�����K��P_\���w��𞱦j���C���C� ����#����	4��3���l�f����>�u���G����mu�����kPh�׼O��\jzW�t�kP��<)���(�t{O�� x#���T��������X���������q4�M��G��4�,����>$�����M�A��[U�U��1� �������"���/�������+�kwze�ͭ����k�B�h�u=WC1����A�[Y�n��ܗԼ'y��QL�$0�<�3̲��ԯD'/kZx�T��VTp�\��;T�I�j1�刯�9*ABd��񹋯����N8�IӅ:��%	�4�s�jnu=ڴ��(Uu%6��5��� e� ���u�;D� ���޷u�W����o��2�f�m�k�� �<G&�g��G��0	>��ٮ����K���]������}�Y���*� �:w��'��m�5o��!�ӯgE���'٤�&�5+}6�i��dWi>	��4/�ˋz�O���˿�l���~3�����k^2�O��+�]'g�����Z�+�/5MSĳ���� �{����~!�촯
i�9ҴkK�k_�ݿ��s��{�i��e���WM~���g�~+�W�l5!�鲃k���;GZ�SW����T�ӭ��k4�����?��3?�st����KV�CF��p�_�½)a��i�NN�j���
1pp��d�#�b��hƞ���Ǝ곕
n5������U]gYV~�0�/g�f�?�+�xwB���k��������V�i�d�ׄ�_� ¾�Ǆƅ�ս���΍��V��o��n��B�O�d������F��:��~���ς<s&��[{++�|�W�υv~�ӥ�-m�?�]3S��t]k�zݭ��f�z��k�Z�M�����'�o�nn����cI��t��l�=eu�8<=��{YMB����[�4k��@��4ox��vQ\C�{MO�)����ma��s|D�]k�7�<G����X5-G��4�
6�yq���t��wR������}KB�����Kr�-�]c��gX�ގ�Ea�J��MU�|���p~Ν*�S�\%8�u+>^z�ʚ�L�f|?J�>��S��N9�H������B�eR�fӅ�<B�[ܻW�,��� d�i����-k���i/��xs[�f��=_\���I�<�,��4B��/�u=b��^�����<`�֑7�{���?���N��k�x����m��>���B�O�r��0i^"��tK?'�t��x;�~��<=��k���g��a&�y�x3\����K�_�úg�<'� <!�+���qs�M�C�k>)�]�^{�j��]��%��isjr�6�ZX[M-��ԯ���(����F�n!�V�ʹ�58��_H��]_����~0���t�F��1u�5n է�Cq�� }�}:�R�ẽԿP�p�2������}n8ArӔ�Tu�T�O��U��Ҝ��P�U�j�R��8jj��rV�)V���?�5B|�hAԤ�G���=H(ӫR3�Ru�UZҔ+7T�c���Jd��5
��mA�� �}����	59�5���:ׂ��I<N��U�����^����4���t�o�Vz�k���F�'��#6�>��[\i����mL���Fд����)�47�m��� ��Ե/
�v���wk�`�^� �o|&��i>��K��k/�m>k|C��wyyo|�� �_�6��Vɢ]:Z��/�K���{�˾[����M��3�.�i�G�c�x�T�l�[/��>��|Me��x^�M����Z�@ҵ?�w6����>�o7��cD�meo
�'����jXl��+���B�9P�[�S��ʥ^8�5�M"�N��&�����%'ǂ��JJ8���j�J�˙*��$�%
j����Zn�RO�.�ƞ7�%�:ޙ�[�׫,���Q�:����D:lqj��Ëuewcoqkgk���Y���\�O�\��{��v�>�Lז����MCJ�_����[G�5m[E���V��L���e�����kE��.5�u�:M+O���c�o�o�s'��=;O�|=�^�oL:�α�Kφvv�.�ƿ7_5�����.,�Y��T�\��|K���b�L����tؤ������W�����{��'�|K��?�����o�٠�>�m�*g�8C�+�ˢ����Ş(��{�xRmB᥾�����,�,�8�,=7	U���WƧ�����Ӕ5��Z3���Q�zQ��9ʝ#ic���a���t�S�K��e
�%M��Μ�ԣ(Qs�Y�jR���u�]��Zf����|e��n����=���ko�}����-5�!a�|��K�4�G@�D�A��kHu-Re�o�n�i,m4� �_S�[x^x~�w~�A�>�������(�Ѵ�N�P���������5O
x7�z�厪���i�+�6���a�� �4�_[�[Q��������潀�%Ծ�S���si>��-WQ��h�n���\|9�tyt�U�`𕧈<���]x�P]����.�5����SZ�m�|=�^�~����MC����z.�l|g�����/��0�=
T�<F*�zq�bh֫T(}R�?i�_���eN�W*U��F�ড*in�J�*�΍:��M�p��)8�\�:Mɺ1rQ�7ZN�SJ��3o�SY��҉�|+��ZG�t���1w�i��m�����N��S�ߋ�{��.�\�5��>�u���g�=jm]�����-u-+��_��t�J�]��|3�M,��׌�\hcT��V(�����޷m���.������k7Y7��=����v+������ͦh������O�j��Oua��W��-[YMoO6�+��jWn�~b�F�"�����j�f���m>�OH��Wִ�>���wͷ���b�����h��kk:TV������増������Q�ၫ��E*����*Ҍ`��iRt��`�J�I8�JФ�"�5U��:ugJ����:
U�%'����:qM�+r�r�_�v�:�������k����%�>!�v��i:Ǘ�������|'���� �O�Z�i����Q�U�x[T��_k3k�������JРя���𭾷q�+v���#�^�5M>���#DU����m�<}�a���:��Αqi>��OYu�ŠZ�/�贫[bX5�֮<ao�x��z��x~��N���i�~.���Ο�kV'�|S��~Oh����+�dZY]x�?i~ ӵ�����[��Q����~����_y���I�4�#º+x�[��C�x��X��W���#҄��9��O8�)Q�Xʄ,�J���ҕGO����U���I(U�⤕JQ�p5qs�Ru�Ӌ���Aӌ�YF���*U�&tn�:IR���+����]g��[�-[K���6���2�Y5�Y}��u�mZ�O��V�"�ց�C;ɩ�v~*��}'¶�ͅ��v^&����� k��I�	���6�7��~����ׯ�[u��~�OB�a��������Ҵ�C���F����/������ٟ�OL��� �^�tC�Z��l��	�����7��Ƈ��'Ѭ���³��Si�=���?�i�w�,z���9o�u?
��v^$����.�u+/
k鮝P�5[��X&��:{h>����=(j����N�oi�-?ĺ���SG>�>4˩晆'K:��q�:Δ`�T��Vk7��(ƕY���ܜ��S���$*T�gZ3���iӨ���p���JUZU���5N1���� �[O���4	"��zE�ԋ��2kMj���/l��Y<B�����ֱ��F�T����gq�xVxj�>��֓��Yx��/�V~�l���M;�^-�݆�o%����@��νw.����χ�麟�E���ŬϨ�Z���� ��Oxf�F�z��>=�w�1i��� ռ{ḙ5;�/%����X/�=F���f=>�_��d�x��t�&�k��#}:�+�uڬ�X|A&�Ŕ�Ҵ����H���F��/�4�i�@^+}C�zv��i��%��=b�F��61�_���1��9�K����1N��5!	�x�F�����|��ʔ�F2���J�V�
8���
�֥J�\,aV�Zu��5������Rj��E�p�Y&�5{�Ǐ�?�<3�x���::�^='�zF�����mĚ��5��>�t�n]��=u��5i��_��7�tY�9��K�'��Ğ+�> x��Fu�x>Oj~)��lҮ�rm~-h\��e���__
]�>��Z�j��Zk��[��I���N��[�6��xv���zDz%��;�]ۉu�KJ��׾�f`7z���5Ɵg�Ţ[^\Fд1��,�o<G�-gϼ�h%�/�G��o�h�U����<U��~𯆴�R��_��/kldm_A�Η���Y\�s}k|f��N�zxg#���q���1�S��ԧ�Z�N�%:��Ь�ӫMr���䔱U*����2:X��x�,Mz�z�uB�.��0��:U1)ԩR�+<U%%I�P��¢�����'������4/�G#�l�M>��6:��2Z��x4�ͦhv�}���Ģ�}7K��_
D���_P�����_���	ٯ�'�>-�>7�$��� ���/5���+�x�L����P�Y�:�[�ڒ\�R���N�z5灮WE�Y��<� �o~ʞ>���0�f+ho���ֵ��p��X�iZ6���#P��z_�5Y��m>jG��g�A�m*�O�l�Uwh����W� ؇�� �$/�/�� ��/g�4H��:o�%߈�c�{��u�a�5?Ϩj����6�s�%֛����-�Ͳ�A�-�矟fTqx��U����RPxxR�	S�'JS�s{+��ʜ(Ҝ�T���'B0�Y}��J���<R�N�.s��{N��5Ū�Y�1�גҥ:J�*��I�����2~����7�_�������m'D���Tk�kW�/.��mu������6�g-���MWQ���-ƪ��������h^��[��0��l���j�Aam�emg��\����v�V����)kv񶯨�����]9K�<�Am�4�yֲ	����WK��s�3�F�`����y`�;i.�]޳����R�&������|�q=����R_�K̂h煃ڦ�5�6�š����Vku��_���P���NiF�)V����R�T�i���I9EK�.�mB1��9F_J5(��s��s��QI�r�NW���S�R|�r�T�i6~ �Eu��t�-���_YI��oM��}� �|#	��>$]Ϫ�Mƫw�SI��o�J;���ƨ�D7���eo���
7a����&�u�zu�ŷ��X�5��
��G�k\���tY�d�մ���|=�����F-'@>���������� ?������E���|�>&�<K�G�������dU:U�Ʃv���4x�K�����[�>��Q�b������ !��v�u�7�Ѷ��A�j����[\�xBo\Ki�������ދ�^�Z����Ϗ�=N�H���,n<=c�o��� �i���yW�R�Ybj�(��QUiB�棈���S�匹=�֭즣o�ڹL��y:�5g.LF'G���n
�
�N
�,U4�a_,�
q��UT��? |���?���t���Ѵ�m�2�˝n��^�k�)t�_T���I_�Z͒�����i˫[N�zU����[h���$����ۍ]�o�Ojz��wk��i:��~���U��A���5����X���� ��]M�l�<��$������ش�.|����� ���t�2��0h��N�n��ߋ�S�k�tizDzm����+�����Ǣ�O�:�4�[N�ŷ�<Aq�Y�ٵO�:���v�u}�/���H�4=[R�� ��/��x$Y�Vx���:<7J�i��Y���?Ío�zf��z���t���F1��yK^�1nT�N�"�gS����.j�#V8J�Q�:u��:��[8~�P��&U�ʥ8��՞#��ƪ�R��S�ƽH*��N������ .�!����k��{ƾ�<7�]cS�ρ#Ѿ1jw��0|[�n� I𮍩���� K��l�:�x�]��*�Ѭ���ms������R�[�h4k)n'��G{u��&7#K����5;������}E-��q�xwQ�54�yumcL�Z�6��&������[��C�K�M.�]gM���t����k4����W�������'�l��3�2?�|7������Y�|W�xW�����/��/X|Q�ӯ��íwM�>��G��>(�k�,���隽��in�4�x��?��W���퇂�Gc'�<o�mE� /��dkV��`�U|:�H����Q����(T�9ו9׭Yӌ�0δ�7Q��̰�p� ��t���Fqx<:n/Oj��NS�'h�jrU��R��N�Tc�������{<�3��ǋ��n�c��#�]�p5զ�<)�Z�e�k�=��l,�t��Ƶ�Ec�]��r6'�G���j���յ���G��M�-z��:�Ge�G������j�B�����E�Sx^�O�������񽗆�
?e?�v?�^9�̚����i��?S�?"Ox;�zo�|���"m}</�iү�n���Z�<��>�Z��ޅ���Q�O�__�4Mv?O}��wZ��D��Lzn�y&�7�oR6w3�K���i6*4�{�!��R�_]��H�Z�9fj����7�uqx���V*v�Rt�R���֝8s��rNjp�p}~��B����)T���U�RxYҌT�N��B�^kS��TeS����$�}�^���F�����I{m�i�w2E/�.��|;Q�m/ƪ�ֺ���]�� 
{V�t��(мOp-���+��g�5�3�N��6�xQ�4O��[j���1xcSo����#���|F���a��S���-�y��Y����_|L�A{��9�4I�m:](_ܟ�kZ����N�!��V�4x-Vʹ=B��[�oD�����.R��X�mk�� MxkT���[��#45�ݕ�gֵ�mSW�e�t{u/�^%��n��='V��>)��}�t�>;FmF�J���#�3��.�Orҧ��	OصN�mt���"�\_�iT�z������Iʕ��eUb�Q�	��J��)����xHTm��툑���O��4h"�|;q�D�E��/5M;HӬ��h�ԣ�׼s�.t;�-Z�@��{][S�����{���=��f���}��|?o)�����,��-�B�oc��֞\'m徝�D��O&��0�?���:߅����ǎ�|1�houO��~���W�]MO�����MB[�$�,5=GK�B�� W�N� K��{�Z�<_�O�oM�Tz��C7İ5;W�/�!�H_T�:�{���N��m��߬l�������-RM)ƞ7�����Q�9Ƭ�b!^�a�Ƽ�J�G��J^Ūp�*J1���h�Rt�+�|ehS�SޕZT��2����\�7)U����'�hܓbAq�^G�nm>�"4�i&�5�L��4V�-��5�1��a?l˾ۘ^����Y/Y��v�-��o�Q�+]i�mԴ�T�SV�Ɵ�\�'K����Ox��ui��Q�⫏�_��a����M��p�ږ��ZO��z�X�o��
�Mm��K����n�����P�������[��[m~��:���h�דN���?t�y�D�-��-Ï	�hWVꚆ�4�l�C�^�<=m���^-��Zu��kǟ��N/C���µq��7�O��ú����B*N���V�'9nIJ>�p��Z|���UJX��R�}Z0U#N����'N�
�W#��yF����t�4Ϫǌ"�����m5i6�l�n��=�i> mN�qke���oo-�-����5�T�mN���n�{>��%�	�ϋ�.���u|����xk^�Q�΋yom���On�i�Zn��N���	�iv�ݘӥ�RѬl���~U�������*/��I�ң7rh�����˩k�'�#3�7���K�5���=�\1kO��M�6���6���:���� k�	�-tmB�W�fԯ�{���Y[���&�{yİ|G���^�V���I�j����M��{-2��O�V}���	G	N*(���2J~�Ս8�_Q�V�Fn�k�4��Q�*�Nw�$�AJ��U���^*T�T�/���Zt�r���R�����*S|���h�,�牭4{�� o^�Cy��������0�ͫ�c|<�+ʾeѾ�ws��iZ�\ym�;�J��NԦ��׌�m����|^������|&�]�:}��u�x�ŚO�����-���r����Gi�̺��rom[���|W�̞���\XX���Z?�u�M~�!�A�]��5=P���ե���m�tņ��-^�t���}��π�(4ɾ+��죞�P����<Ks��t�S[Jte����������]k��k��!�O��>��~u����k����Zk�R�)U���"��I{Y{(C
Sxj���I�AN�T�����*������(T��Z��A�S��T��*�/J4!Q��1�{/h�Y5j����h(��ƾ�Zǅ4}¾���o�?|=b|<�:�wy��o@ռKk�};Ao�7��z���t]&��ǉ쵭���(��K�y��>|���E�O�4�'�_>5]xoľҾj���"�����kM$j�%���;�����Z7V���x�����E�ў��� O�!��� io��k_�.>�ξ{�w��,�����zG��ǹ�՞���ׄ���}O���]�Z����R���i��������6�G�߃�D���m<7�j��� �|O<pkڦ��_k�-�뚾��kW�]�md�n���7H����s��z>�k�}�UL���9�NO��W��,E�)���t�:tj�s)ͨ�¹ʭ:�cj~��
�PX9���T��St�-#֍u�T�T嗳u5*k��A�S�� �� �:�~�GN�k��z��5������7vzO�4�}��5-VGP��� ��_]����V���I%���|bмE��]��D���_���Ͷ���7�!��\�\����&�G�����iƭ��F�������>����{�5�W1�3��)]y�#������L����/"(RF�o4�����M=��׳Y�_x�Y�κ��-u�|/�.���<;}�ks�[Z��v)i�j��7U��mM^�F���F�sĔ�P��:t)�R�,|](S�Z�'�t�6�9�J����Tj�����F�b���*�`�eN����9�JU#�����Y6�����|��q��?�5=?T�ϊ�l����6��sY�Lz�>�F𯆄������g�/�.᷷/-������2�Q��Ԣ��&�Y���'����;��6�)}e}�#~�z�PX�?c���/]G�{�-���K{�wr�k:��K��K{��V������/����>����D��o����o<U�9u�N�V�g��+=3L�5O���|y��\\h���0j�{mm�u���8m?G~|=���/���x>�?��}������}F�+]�Z��O[Ǫ��ڗ�e�ZB��F�m@�?P��Yh���HҖOO*yu9���x,<ݡ
����j��pю�J���aZ��J\�j����J��:���*�pt��q�?�`�{%)ViߑM��.�D?��x�"k�k�]S���U�<N5�k�v��I�uZ�Zմk�K�/N�v��E�k�F�.�Ӵ�uyWӍKKo�4�:ߍ�[��:���E��^�_ƺ6��aiw�<�^��l�Z�_M펱��7�^���z�sN4}��Ǽ��J�+�{�[K�t��[[����@��{{� ����Z���mA.�� կ'�R�MN[+-J��|[�P~&Otl�E�xG�Ϥ閺v��sO����5���-�aa���D�����^]h��E�^xw[������=f}�`��6E�Ա��up���?j��c���N�*�#8�*Vq��UK����*U#Şe����*�%NT+O9ʤ�)G��5hFU�t㉍j���.�F��&�Z�O���2�V����9�񞚖�^$��?&�ll�$�6CC�����X��ƺu�zr¾!�mo�m��t�-M����|�mB������&�5������P�S9�+�CL�O�8-l�֤�N��Oq�i���`��[�:ֵ�և�X��H��T���/<W��7W�5� ]��$��⃪h�x�m���<:�)H�+��D�φ���/�h��=�x'J�/�M>��O�����KWMo��𵾏y�h�f���z������h�^��� �WX��|5q�]\���S��� ���L�g�ǉ���բ�.�������tT�5WJ��:�U"���%%W�UP�!,:T�Z�=h5���ra�V��l4{ZpJT�T����7t�F����L��{�t|!���2_[�����k�;�=N�������M��ڟ�F�5����G����<e� G��t�� �G�Oڳ�'�O�2�?���ᖽ4z�t+��kq�jw��Ӵ;��5�Ϧx�_	<p\���]B���6��� ���~����~'��Tפ��hv����j���`mkNԬ��'N�X�"[�=��Z$s�ɫj�$���w��Q]G��?���qm�v6?��1�O�|A��KA�f����um[N��^׬�S��t �<q�ڷ�-����Ɠ��0kW�$����J�O��#	P���V��º��:�![���A�Jrm{JM���x(`��ך�xө
x��1�jՌ"�x�1��NPP�:��T�Ԧ�)MQ�%� ��~�W�����/�ߵ��'��$o���io�Jԣ���E�&]ibӴmW��;M'�:6�y�im��Y-�Q�ǟ�����񕿆l|�>��~>��֬�a}��Q� ���D�6����'�t�c�׺mֱu|�*������ƅ��"�J��'���
	���aw��g����4�?�֟������E�~��^w��m�|9>!񆷤�w�����-�����4z��|9}{�]띏��/�|]�ß>��~����/�������I� 	]�ίĭn��^)��𮧬_Z��վ�>�\җ��O��|8u?	j�{�c���\5
�z8��,DjW���n]*uZR�i�ީ�Ԥ�S\�9a�;OJ�<�MB2�B�I�57_���z���T�R�|='B�e/�O���f��z�Ï�� >�����_��<3�����U������F��ދ�[��xWX�R�5Mj��u8t�M`���������,|(���֛�]CAY[X���q�W���_�i�^�E��MsD��̈́е����E�g��������Yi��-v_�+ľ%�����u�x��a5��χ~"x_�����H�=2��?�G��˨k��� ���[����3i�����H��u�Q�W�ƿ�����:��� j�O�A��t�/�U���|+}�>)�<1��U�<#���¯��.Ӿ �߉���?5߉�ŪxC�1�<D���<�6!R�P���*q�V�UZ�)Uxyڭ:U��.��{*���5C���ܶQ���R�E�^��}]:S�ӝR�iU��hI�¤��N����e��4����5������!��{ú߂�o�xP�/�
��]���^��x�y�+ƚ׊�oYx����#O��g�,���|[�#~��4�����:v�y�Cs�x?XO�R>�c�l_��WԴ��湵��.5�<;�i��x��G��F�G�߳���w���[�/�~�+������Ⱦ(�%�|g�a�mr�ᯯ�ټE�}&6����ǯk�3�~ �&�e���ڞ��4��� I�5��:��ˮk�dQ��z��z׈5�:�$��xn���x�m.�T�WW�����I�?�-� �m�="�Q��8�\B�ĵ%��b'K������w(R�Yѭj���Hԥ̣JJXYS�N�|U2*��<iӪ����t�lU
p�j�֔�_hWv�\$�R�W&ԅ:T�?�۫�Xj����N�Ú^�����i�im3�����Ecst�hZ��ƥkm�]3L��e5���P������|���O_�V� �\pX���'P�6���gPXt�X��iz?�/5�gN�W:�z���o
�ڏ���<N�f��h�z���� \�|�1�#U��|��x���o�F|%���i���������=��
�W�]�i.t�5d�$��+K}&����
��_�� �/�� ��;φ~,�5�C�������d������ǚN�gͺ�Z'�Wz�n$����u᙮��h�s�g�CV�,>����B4�\-8STeW{g�J�%NuT�V�7R�_��R����kS:8ɶ�O	F4q�8FR�&��R
��矴��Vv��#�n�(o��3��b���V�P��-+J��Σu%��ͤ��Z��a�/�KA�nmn��xKX�g�φ��
�gD��e໮sR���ks{�i^=�����	/$�λgc����Ϡ��K�5/C�i�e�u[�.�Y����-t��4�
�[�Y���}�A��OC��4��f�����^]Zh�O{a��]�:{�Y.��O�~��v�ڎ����
�i��~{�YYM{�{�O�x�(��_Gs��"��z�z�_iZv�y<����N�n$}_^�5-���_��uǚEΑi�+�W���b�Ju0�T�Ў&��UaԨN�Z�cKڇ���:ө�zn��Ƥ�ǆ�R�"���ᆤ�b�s&�]j8j�%F8Yӊ�����Rr�`��*꺫���v:m����zV�����}am{6��]jPk�&�k��]��"�AԵM\�}�R�ZF����������Z��rk��j�SԬ�=�\�j��v��y𮑭�f����Bծ�9��������\�{�?N�tK���O�y�7��z���/��S�+�-�����T�4��v�E��^�w�߫�Q�uG�5[�j>:�����^[?����[id�x55����� [qey�j��xkMԮ5�˯��K�/
�iz�Z��e�3����<Qe{���.h���m�����fx���U�ceMW��J�AAS��VkuV�X?aJ5"��m�iN:u��J�\q1�'��b�ԯZ|�N�gOVJJj�����.��ja$��E��<!�Zx��@�.�Ѵ[	��m��d�t�oV�5Ko�)+�M47����u��z���W7z޵��}e��~s����-���E�|m��9�49�kq�ir�:��uo�Xk~3�4�t�{uЭ�G��ᖗs��lYi�cAw���^����4tM^�]�}����R�x��	%���-��:����jV6R��|'�e��|g���ak���w��lƾ/��i�����4�4��:ͦ���j�j����T� �.;�F�B��@�/�TԮ��;�Wc��
�<��Ob'��\F/	B��cR�hWh�R�hS�X��UR�u�p�$�p|�Ư�P������UT�YW�j���G	VJuj�?}*S��
�eET�'V�
�����Z���S�xkú-���f�I3.�}�j����R�H����!���"��{=���^� _�&�.4�/i�Z0�-w�h��/<S��C^���<[�}���{�x��I�� ��Fk�74����[�7Zv�q�Nm>��~�U��\h��֟�K�-'��?��mO�ގ�l�1���5�T��_�:���׏�6��.t�];F�7�u	<?�^��H�����u}�چ���gq{�� _�����W��5�>�)u�������������F���#��u>�C��:����GE� �{�ޡ��u=����@�>f�{OBp�ѣB�����L2����Р�s���+֫Δ�A�b��%)t�y&&
8�r�e��J���ኂ�*P�,4*Ə�~�ڹƜy=�E�3������׊>	|�&������i��2�Q���-��k��
}*�M���������c��.��_[x~���I�מ]�?��$�4C��e��ܭ��v�q����[ȃX�Ƒ}qa�j�~�F����zn���W�����z�7W�:��x"��z���:M��4�/BKm/Oў�yn�͎��0��զ�A-�v�&�Y�Ʌ�ԧ}Bo����ٍGH���R�����6��GK�������.����hV���ik{�k��M�mj�S��J�m*X��>�/gS��%'Vp�	U�9s�T�$���Q9{)�E�U����m�:u1�%�IJ�����R�k�J%57ViՌ���{���_��Q}	���F��Ox>�i��及�u� �Kȴo�ZRx�K��i55�c״�J��L�4;��j�A�_����j٬��}�g�k:���ϭ(O�i�t�퍦��"���k~.to��7�-ԑt(,��םm~"�g�<G�k�Y^G�h�x�\��76���3�E%��y<w�K��'�7:��g�˨\j��#�K�m;[��'�?���ڦ�k�owx\]x��Q��n��Bi/ ����X�s��� 	�0����5�U��:���mỽ.� ŷ_)�r��u�MР�^� ��Ծ(V�d�NS�x�G�S�źN���pU�IR�	�j	�B�HI:m׊���W/4a9r�NT�NZ�:U>o���1^��W�u�Xx�G�L����$��� �~$�T��e��~��t}cW�G�����[-�G�X�hڎ�i��X��{�� �/n���#HӴo�n����ֶֺ�|[�KY5������Nڮ���"��i���� ��l5�x|#��z��_����^:���;am��k:�tHm闗��l���t�U�� �^)ӵo�.D��Ť׬���>�c�_	�����?���Q_y^�ׅm��x�o�~MCL�����~��[+I,�]����As��;���'�ִ��}?�%֎��B��Z����m��xF���}B�a%^���I�T���B�I�Zrt�9�X����a':� S�)� M�N�|6�y��ӡZ8�,iakR�?i��ӝIʓR�jKNp�U��:��B�a*UjKʾ�:�%�����n��>;��~��-</��N�/�.�E�D�n�]?��+�xT�M\�u���/ll&��t-Nٽ)o4��?�R^���H�-�<�h���R�Ӯ�,�5M{S���bҵ[�"� �vVZ�׀|g�hZ���4�Ea�%���Mm�+�g_����A�Ѳ�|E�]����E�^���5mC]��m[B�5),�A�x�NKO�x���'�\S�^�����%�ou�Z��|Aw���ỽ
i�M��:�=��}/���I ����?�E� �xoǷZO�|�o�7�,�w�~�,�5� ��r�w�.5ϳ��f��M:K������Zt�IA׍8:jԔ'�S�%J�:t#*�U��Ä�T�iЯA�؉WTҩF��:��%R�g*xzq��=E:2N)5*7���5�GX����<=a��/u�wS���%����(�W6���w��}_�Zn�u��_���L��,m]Ϫӯ�S�85��M��6�g��|Wo%���=6�G�����MV�^���>)���񶩢�?�g����o�ϩYɣ��jv�.�&�5X|y���w�����B�uk����mQ�.n�o�e��Co	�fYu=��~)����.|Y�j����,n<Uut�z5��m�E�˟���|?3x{[մ���/�MC�V^}3������촘<ⶸ�=����I���c)��Ѵ�:���U0��Qa�ԩ�tUШ�����7֔�Q��C��I�ǙajV���}b��V/��/i9�J�¸��p�ק�k�S�Z�i9��h�s���7W��xfCK���ճ���@!�շ��3����^���i7$�f�q�m7C��|���n<y��:>��w�~� �����q|�K�/����U��m���=V�W��_����?I�K�h#�1����h
���.�t,�9w{om=��<Dl�|A�����������:�ŏ������w?ặӴo�����w��� ��㱃Öqz���?yov���Y*Y�ͫ���L�Z��o�L�G=��y�q]��=�w��K�b��̊�hӖ-��*Ƽ)�S��-�����Ӧ�Ju\Bu)F�HE�jJK_g8T|���r&�QP�����7F���4�nX�9TQ\�������c�_�'�_|3�������H�=ߊ���V�S���)��{T��P@�#�\��ϭ��ѵ��O���~����o~*x�R��w�j>�X��ڶ��xw^ѵ4���;�W�w�"W��.tàx��k�o�Z^t�/� �O�j�e𾣧ɪi�7��xb���?��j�{m>��D��.l�{}^�k�gH����/_� j��[����o�oڷ����	]�=���Լ)c�^�i�
i<[ib�~+g����|Q{�n	5}^���k~6׾����k�U���+?��a���^�d�Irab��ҩ?�PS�%,=z��ӕIS��,Y�Xn���i���R�O	5�R��ө	Ƈ�Qӌ**i�I8{:��7(V���׈�O�>#�O�~��=�i��v��xb�B�Ƭ�-�޹c��ƙ.�i�A��L��Zj�u}w�i�ŵ�h���V�S�5��S��#:��M���tX��}N�=?M���w���P��ݴZ�J�,�m>�JMbۿiO�麅��F����e�o�+�ݢ^�r��g��h�e�j��j~��W�I��Zh�m��~!�g�f��B��4�Gâ�C}B�������K�S���O��)��|=�w��(�g�h�_<�ZH՗L����+��'��_h3�񅏉��o�j֞�<9w���V��5{�>���
��Q^�q~�q�G��B�#����R�ISu\�ΜU.X��ߖ��a�J)՝Z�)T�N���:�0��a�I�/�|�p擜W4S���|4�շ��j����XYjWZ=�Ǖm�G3_h-n�,גi�5����6Sss�-œ��]�}�P�O��k:���w>�gu��X�����_�J��V��]B7צ�q%���;�K;�{D�^�y"��?m�	 ��_���j�>��ͪxOJ��vУ6�C� 	����I�#�ws^A%�ͤ�r�I���/N�/��(�k�wG�/��*4Wz��K�
�G�-�G�׉/4�[�sT׭|7$�֫ao������ge�������mP�>�+�S	µa
t�ѥBԨ�[�i��F*�T�i�x��N��ԧ
M�&�/>�1�S�Mb�a��_X��q�q�N8�{(�����VR�-�F�K����&ֵ��]���[�F{� xR_j��5���֩}��ҭ��ۯm5��Q-`{Ht�nt�th������h,p���8��u�$����{�[x�hn��2��S�����,����4��nT���~���Vڍ��Ý�\����/jz����ð�k��n��}6����=.F�N����^�v�
� �rmCV��+��'�5i�&��� ��]��:di��+���0�;�ĚZ%��k[��Z����� ^ꚦ�k�\Y�_�0�XҴ}&�� Y����|��q��i<;�\-Z�$�R�)by+U�7��F�t0��)9:�UjUe��8F��)���R�\���10U�5d�(ƍ4�>x�sN�8~�h���:_Ï�zǍ�����Q���N8�4��9��M�����֚�TW�Rk�md�)K��?�?oM�� �4H��xc�:�G��=Úf����k?�1�s�.�u�=r�J}3����tko��G:�Ԛ�D��i��tqi�6V��猼C�v��P�<C"k��д��<F�Z]��kke�i��<]�����.5�2��{_�G��ۭ�M��vZ���ZY/��%�z`��b��5xt�]Cþ)��{;;�����6�E<7�賝H����\A�F�JP�T�*z��2�[EW�^�%(Eӫ88/kR��|�Ч��q�}j4g'9ЩЬ�9){4��w)�Z�mR�Ni/zq�W�� ~x7P��~2x��[���Y]k�5߁�~*��� �<K���S�>	h<Qm&��υ��|?��?�:��4�;O�S6ou������'��
�����"����uy�ڿ�~��B_�����5���xcHҵ����=��~i:��m��v��]χ�W�Z���.���M?�V���/��׉t|w�m#�zt~>�|�k���i��ߎ��u-}�DӼC��>���ퟃ�)�ْ��(o4|;�.���o�-~��ԗZ��f����MZ��I����3E���y2��aд�-mo~��YE�~q����X�Dib��8a�
5iB����*��ω�ԣZ��)T����+��qNoF�*�"R�VX\-	U~Ν)a�N��J��U³�ua�N�/
�S�l�|E�H~����
�s�;W���!i� ��j����$��>~�<as��K����E�^Ѽ�߁z���K�|?�-<I�����~��}[��s�Q>%j?>"x;^��o�jϥ��^������	�}7��� 5ox�B����G� ԼC�-F;�7N��|Rڧ�|E$q�vz�߈S�{�v:���o��	�\����z���?|3{�M2	u��#���}SƑj:�����a�k��V�#�L�/o�>񕷇e�¾�օ���G�4�	��]��iB�}/JKmZ�+�	��W�[x�5�85K�];����aKR��x�-jx���u�(b�'^���ʥJ��)IZ1T��b�$����J����Z��U�����[	ӍRnq�*V����E��rS���o�K��ψr~�~)������_� l/�u���C�?��z���o�����0�=�#Y�ҼWw���۝	-��e������W����k���~џ��?i�C��|E�L�u�7�I㿎?���y>?���,����?���}#����c�����]�{����������o¨����K��m�<�7�e�ߋ5K�主��H�[;��G�N ���/��h59��?ö�\I��n�x������ڮ��Z� �����ZMkH�m����x�\��X�K�s�i���3O�.�>��	f��֚ݭ���b����V̱�K	B�_**�GJ8ŉ�(��,�
�ڲ��:MV�xלe:��J�S��G=T�����GNs�N�9U��V�6���QN���NJ1��U#�L� �|F�=�?|5H?b�� i/�_�&|h�� ��9��_���߈���n>�a�?�o���񧆮��֑��{�����z�������e�S��|"���=|o񖡩�#���υ��x�$��4�����N��Ě���f�umC�?~��^x�ì�����h��-�ux�ۗⵅ�ֺu���o�U/f��*i~�е�J�^h|o��b��'M�o5�؆�Vm>���-*���k�> x���ťK����^�����We�]�z��ڕ��,a�~k�(�^�o����ê��Y��d���[5���Ռ>���id��kb*�X�1O���NT�^4�Q�*��צ���F�"���t��.U�f�+b(S�!�#�
��8�S�ۧ��R�Z5�B��5�U��RjpR�9Z�� ���&���;�ڮ����џ��t�:�[�������!�k^K�#V�������'��m|��"�_�K�>�[�+�ץ_/��?s���ħH�3MKS�+���:�Ҵ;I��Z� Úl�e�YA����"�n����v��8�o��u9N���?�X��X��T��<6��m_H��t�N�|;}a���X}����Q�.�-���k׺��Y���3��u��� ͮ�zl֗Os�ǫ|Aխu���]h�ǭx�S���5�g�5u+���"�=�ڞ�i&�e7ࣗ�ft�СV+٪�ʵ��^�9*F��5N4��jҜ��Ui��>c����r��!��'Es:*�zN�yGV�jK�Uj}b�b����/N�����[x�K�ּs�4�E���l-lZ���K��Ԡ��ӿ��έ\�p�w��wXR������_>�������~�C�N������Z����.��>�M?F�B񦝧iVzE���Ym��\Oms���zF��������O���Z��啭���ݵ����]���G��z�����[�I���O�X>2�]Ϗb��ۋIt�D�6��͟}��*X���M�]n��Z�Q���� 	]xKT�ŕ����t�u�<C�ٮ���/Ra�>&jk�V�u����X��^t��M�� g��j�jT��c7	�{wQ�W"�5'NITPW�����7Y��i�Ԋ��~ʒ�ES�V��sP���Z��T��rS�#_��	� ��K�e����?������ֺ����Z_�?�ZO��{��>,���4�����1�mL�4����ko]A��Y��ż:Zj���7���A��_-������'�_�w>=��4�|1񖥨i����	�5�/�zī�"�K_|;��|	�}OK�Q� Ҽ%�x��2�׃|5���Σ�'�t� �<V<O�{;�j^1��g}l�r[E&�|is�;�|,�4�?�|Sy���YK=?C��<E{��|q���M�O|(�¯��	���㵰�Y�ƚ���д˝<iZ�R�R����#�B+?YcB�Ԡ�D���uFk6֗�yW�i(a�f5����N"�M'8RU*ҫRI�U!)��e�^P�����T�Uk���sN?�u&�)¤y!Z��sʪr�>x^J2m� ���y�Os���j�
�<1%֛}������U����ռ/�\G��qi���9i���6����������*��h�y����-��֣{����7~9oO����L��gºγgw�\���Uѓ]����@����/��t_ޮ��|O� ��J��?�u��k��w�+��Ҽ=>��};C��� ������7�'�g�-�}��V^"�K��+s���D���iu+��?�����e��������.��q�����>�T�</�o
�^ֵ]B��w�/����{X�M��� ��V�F��X|+�H�B������)�x[���ҕg�Ԕ!B��N�8�ܫ���+_K�}f2���B�����l*JJ���V��
�,e':N�8T�:t�(W�	*��J�(�J�O�{�߄��ό�6����k�� �_
�S$�~�[Ǭ����w��^��� �#��?AM7��:O��/&������Ǩ[�p����sy}�xu/|#�k��ú$7�Z�V�6�-���v���B�i6饮�c5��XI��]��=�����b��*����7�~���υ���"���_|`���ɴ�i^W�}gSҼK��q=Ք׺��Ω���3������xz��A�����B�?���o�/����p���4��,�n�S��Ӽ9c�?K�o'ûQ���\�4mI�C�K�[�'��@��M��_��1�U�(JO	BP�	Ќh�a���1jԄ���R�	.E)IՕ�B�T'OUS�Q{Z�s���9iוGJ>��J���<ujS~��_�>�4�C\���%������k$�F�{oqie�����iV~(�������KP�c���ڌwW�OMk|� ϟ��?��g�y�O�g�|G�[|;���h�/�|]��e|7g��hv�u����;�r�&բ�ռ�X�h�%ŭݿ��X��a<s��߳f�㻟,z��%� �/	�q�k�6���jj�,վ.�V�Pk迳�G���O�u�'R���,/>��?�� ���j'�i���~����]�~)�����[��|7�^����wa{��3�|�>�.�,pi>�{3j-d�=?�Z��Χ�����'�T:������|���HJu]G��*T�7C�ԫ��R�(�3���:iAR�ԕYT��p��*ӝF�:��C��>�F��r����I�cO����ԣ���m_ĺ��X �Ѵ��A��jڭ�ڴw6P]^���/���]=����<Qom;�������zF�>��Gk���?�g���u��G�xJ�;�
j��i�vW�z4Z�wa��K�v;�?ñ����:���Z���/�k���Mu��j�0Ҭ���_��f�`/-'�Y7��'��+�:������j��\p>#�}
�^Ӽ7�l�)u��;J�u-����x�Y�_�������V�g�kvzޝsw�I�x�E��nt��i�5���抭����Z��jS�
��S�J4���T��ΝJR�m({'3q���1Xz.J�/Y�b��J�N5k�,<����8խ��7z�S�R���y����u�GZ����O��z����)g���[�մ�����ޟ��]-�ǛÞ$�4�^��I���:����ai���p���ҭt���Yt���	,m��xK��w�#���ZLj���|�iڍ����wė��Z����kY�׵K�ƟLԴ�Zk3x?�:U���y��o±j�>�0����~��-�=cᾟ�-"�I�lb�<s�i��i�yx�$��5M��K�B7V�t:u�����Է�����h7F�X�4�wZ�<)���Ѽ!���[Y�T�m!��0�X<�*5e��+Ϟ�ICC�?a9�a� {���Jn���K�U#ɇ��r*
�L<eE�r*\�*�ʝ�Ԝ�	Ԍ�N�,U6��̓5�j~���8|]m���-]}By�/u�]j^���_xz��<q>�.��xF�ëk���������.+�~������"�C�����&���5��6����_ju��7:~�3[�Z�ږ��T�����q��{P�zjb��g�Z%��#�� �:T��6Ri~#Ӭa�t��P_x*������m|!�G�I|Ka�h��h~�U�E�v^$ռ]��v�g���CO��}{mb�ލ��_��WHl�<=��������6�u��gE���dק�-�7�+h �M���@V&o7�x߭T�Ss�ҥ��
M�Ѻud�T�&Ч*1���j1Ul�AS~n"jx�9��MӎЌ���J
��?�Uo1�lC��9�
�T�*՛U�/�%��%��|1��^���������j�[����4�f5�//-4xK���3�x�-KX��?�l��}^�Y�<#�=��7�h���M�k�ׇ,��;�ke���&���kڎ�w�k_<'��I|?f���_�4�'˺h������ _���1����O�}�O���� ���͠x�Ö��./���qY��8��xdx~��<�6� R��Q��e?�,ŏ�>?�ׄ�2�:񕎡�k-gU�Ѽ/��ھ��i��.��_&��hi�^H�;�w��/���X�Sٓ�����q6M�b��FT�޽=%�Gˆ�U|<��W�:��|�y꧇���)�fXI`ptq4�*ƅ9��F��Fp�+JP���aR�Jp\�����x7:G���}V?��������c�i�tZv�l�N�n�������.4��M����+[k[����$ǣ�ċn���g�~#h~>���捦��~�M߉��"7я���{�m!�U%ǈ,�c:-���I�[�}�n>�6����!�f����_gO�4�����1�4[�X�}'��mt�i5KM! �����u��ż��hڍƇ�XE�M�]��ivMc��5��%{mGB�-�Sc�B��V��3�j*lg�n5?ŉsg�iZe��!���T��_�&:��f��ד^�/�E:0��T�U���作$��9%ESPq�sm�F�j�Fr�	Q��|Ӧ��6�9ߙF��J+���>X�8�����������sJ�,���ke�'�|#�gC��"�:���:���6��|?�um(��?�<W�����Oy�B����ޝ��������o�%����^��{��x�k���j֛�+/��g�'�|?-݊E�,M�Ξ$����Ww�-�q}�k֝�}�Y�&��j˩Y���o�d��i�GE��m�_��e��6z���{pz_~���E���WT����~���ц�s>���x�T�.�K|�u�1<?e��H�tmL������?�M�pe�LM~�
4�G^'A�O���R�iΞ��
��/E*���a���x�9�%C����"�	��Q��iS���0Λ�e,5J���aN�:��5G�W�]|[�o�|C��~4�-4�o��<3�+	�^G����;�Xjq�Zj����j��Oǩh�|�)�N��S��y��¾�5_:� ���[�~5�5���� ���<e.����[[�uWмsq�߈�g��[7w>7��5��u�=+C�U��|%�&�����~�~џ/oo<!��߈:��koee�Yxf�O�<Qm����$�/�l���g�t�^�vA�x�O���<1{}V�w��[]>�}�]i�9���h��I���Ѽ7�j�K�4U����=&��v�|;�_P��5��W�����(���}2x���L�G�p|p��0���^q�:P�G']T�NTTy!�J�B
��w�9)Z����x�����P���̱*Bx�L�ҧƔ����ԫ7��+֩��r����V���?	m�u� �W���C��x_���8�������:�6�Q�-�y4�.gēG��C� � �M���f�������c��2[_���ڿ�$����;�4m7điqɬ��K�$�5�^��,�P��4��<��_�����Z��Y�|��ki��9<E�G�tMsHѴ�gRKGú�ʗ��:����z���Z��{�K�^x�D�&����M�Ϧ��I�T�};T�&=����k�E�_a����Ǎ�}Jhn����T���e��n�q�sx����.&��D��5(�,�nm���_�Y��X���z��G���N�"��7M��S�J\���yjIs�Ɵ���Z�<?��JkT���H�<='����n�WS��S���$��ȪQ��.���H��M��������^#�P���u�o�]��:o���zE��m�^��#�iڔ�W�{�xR�ִ�Lux���5��)��Wf�����	���4�[�ҵgTmF�-N=2���O��]3H����y��Y�u���[�?t�+�����r�U��ށ�h\η�iگ�%���mnd���66����;~�S�67��@��j�u_������k�W������E��|_�X�4���I�f����n���I}J�K�H�������9�U[<��ѝ40r���1.�.3�������֍X�b)қ�f�[��E^_�y�L[��^�*��J��N|�ϫF):NnVX�99N����9��
���Ɠe`-�+����-<?� �hm���[]�6]ji�].K�_[��>�����S�:�t��]�=7��֩wᔾ��>���u����|(l�-�A��gV��#խ�/&�����Z��������\�w�m.M>o������t���G����/M�C\�76�v�i�x�íe}&���Zũh6q���K�?C�o��~�t}gE�/�z�����=-��%o���h���ky����_�&�8�[� �cԼF�jl�uH<Aw������MR;�#�����1�=�a2nj��-ER1�M)b_-:��)��ƢN�t�8ϓ�����x�O�ў*j�R�
M����O��q��e�j2�\��1iT�?�-��_��Q�|��,Q�Z�×�=j�U���KԮ�ۛ��ka�+;���ú�Ρ��K�Gö������?��;�Z����M},�u����x� �v�x2{;;���O���^2�n��"�Y�֕�� �},�0F�#�Z���,��h�oO�&�X����u7Oӯ��ҵ����I�����ň���ljI|���ֹ�[Ȟ$�d]g�I�j��y�x������_�5�����]*�*)�H	�<7g�ǆ�B���C�������:^���v��:E�����0|~_�U2��q�*a�K��V�)έI�_J�9���9)��՞2�I�9I���]��֣�aq�15�T2�Q�#B3o1���ө]J���R�N�7:��*B��˟���;h5����k=e4�N�U����'6ڝ�7�:Ă��kMF]Z��H�.t���v��1��oz�}��[����"������<}�� ���G�H��1���>�p����5��,�_�����m&[�x#�ڬZ��?�� P�Ҭ��>�i�j�q~ ~����|I�N���o�z?�>"A�ćH�m>;�^�m����K��Tl��Uy]g���`�A��]����� ~�v���ot���Ѫk���Z&�q��>;�w����w׺��q��u�O��m$�o[�ъѠ�t���8o3�s<4#��Ƅq
��_m:n�
�i{jxUEP�Z
���z���kIF�*'��ɳ:�7��ZK��YNq���T��F�y���('j��9EM�	���H� ����o�F���>h���������3���5�;Ox�K;�GR��5�k⏉mt�	4;�K�f��W�}��^{8�ͽ�������|��<K㿃����.�ƕ�Xx�C�.���|Sm��=R}>� �C>ԼA}auu�Y[k7������x�úF�m{.�eye�to�\��&����&K����e&��������Y5�"o�.�n�-f_h�j���hڤ�Mcq,j�'���؞*�o���cG�����k�.��Ok��� 
��Mĺ���h��iW�Rn�7�K{��]4���'��	c�T*e���7��,Ebh��M,D'V���u(�J7�pj�j*J3����~]l��*s�&�L����_�sź�L-j~�r��Z�kZ������F���� ���C����>Ox��Ė�;�V��l��W�嶗�M&=�:~��^�_�z������T�m5�$�PM[Z���-voB��/�� ּ�ukۭG�0Ak�FmgR�u��h���k]8��Zݵ����UŌ�ZN�y���CM�k��'����`��ǃ�u���&�.��=s���x�I���eg�������x��~�<e�i����pxf����k�}h|5���Y�iV� N�� 	���/����y����_U��>��n�-J�T�T�7w�Z�ÝB��y�.$�y�ɖ�Yg�i$��s��x*r����:8|-xV�Ejҧ^���:�ӫ*�Xs�NJ�R���)�G��c%UI���*LLiͨ8Sĺ�AԊ���99¥7):nr�������a������o5���5�]A�|�k6�����K�e��-ŵ�kzn�q��*��m3Özε��M"��|;�G��C?�u�;Jҵ+W\�d��k�mSO�,d�ܚ^�e��ZRG�mn��R��Ѯ4�wI�ӊj�G%Ň�S�3�
y�u�[����>;���]xw���ݤ?~�Iww�|l����1����^jwC��{J��[װ�������7W3P��
Y�rKg�� ǩu�oꭩ���?
~����RX-��"�<O�W�~�o,�;ƻk�(�r�l5�YVI,�4up؇��Z�Z��q�'����F�N��2NP�\�Qq�cG�2��a�c߰�B�	A��F��q�j��Ft��F-ҫS���
��o�$�c��Ȯ�k���~�F����O��ڭ���x�B:e�����Q����hɧ\��&����Y]^x���J��g�cB����������Y�mӼ>-lο�O�fht$��on�#�ױJ��zͭ���l��,� �n��y~ֺ���+@����[x����h�hkq����iZe��Oë;�KJ�`X�t=*�k�;C����I������*~ � ��~�z��tmg⾋�iM��6�c����!��CӠ�t�\�?
o�h��f��E2b�g"�\��W��"���bq�J���ԥ	J5c��0�F�R�>gN�#)�^Xa�K�Nq�9z���Js�*s�5JO9I��AJ�]'�P��FN|�S��I��|?�����^�S������9�l����]x{PX��æxG��׳�='RHm�K�;�	,�^k ��/h��O�v~�_�!𖑧�ۥ����)�ƖF�k�8�w���,дtҭ��ﯵ�9|�[h���kp�Am�_��m� �����֭�)�/��/���Ak���o�VS���� �,�O5���Y5�	�ϛSk��Cq4�=�G�_��߶�m�ͨ�cY��5w���cx�~'��rў>EMo�Z��G9�ͺ��sw�;��N#���ѧ����Tq�'(��t�ss(�j��E*1�%;J�iC��c08zX��xOgN�3�b)��*�օ\]
j3�)���M��S�hE�i?�#\���-X�5/�z��>���Hx_B���ojw�P�_Es��M�x{H���M[�Zփ��i� ����kȹ��#�z}�\����v�zU�K�O�����Q��a����ߙq=��5Ֆ��ɬ�^�zW�tX� �?�e� r� ��j>ӵ{��V��R��6���B��� ����Z��� �[{�nt߄vsZyv���6o	5����{����� �R�o�4)����X�������|A.<=���z,�]ᮧ$�:}��]��]�U�i�Zׄ�G���f4�h*4jN��Ns���Ɲ*)E�we+��k�����J��G�N���t��%y{J��:��N��VSs�U�$ۏ-I-����=��5��k�Km*�&�}�Y_j��@Ĳj���k��ͽ���E���gi$S�_O�i�������> �cia�\��VM6���'Ҵ-_I���еK�c��~"��f���%��j�Ec����3O.������c����5��3j����[���?��j�]s���Mn	��x�vӵo�ךbZ�t�k�-2(��;Tk�cN���o�o.>���x��wo�jG�F�i��e�k�O���Z%ƥ��z�+y��^���6>}ƥ?��3�-"8�4h��5�f;� 3?�q8LW��x�g��#�%RZ����%:�_�p~��R|��rO���g�p�.�*��F&T�%(:8ZP��w�鵈�E>I[JܪU#/�����<���gQ�q�R���M�h��oþ+��&��� L񦟫4+��^_^Ay���,���M[���;�C�����ǟ�:^��|c��
�>,���W~���}�~���{�����x�Oկ�D�u������s��C=����[__�� *�� ��� �A�&jv��ѷ/h�
��lٯ�?�ٶ���-FKH>Eo5�X�$y�\�^;��]�ih_�RۏW�ǃlu?��7��� x�_�[���5[	�]"�N��-|�t�KN���W�c���XT�����A$E��3,��������Ӯ�Q�Uᆕjt��ѥ���i֍NX��.yr�Uq�p�ΌeN�e^R�^�J��RmR���Jj^�sJ������?ž�G��nS���o���閑����u�mmo4?h���k��[�v��>�� �^�-�.��V�5���<=��÷rxgľ�i��CU�UǍ��A��)�����q� ů��[�G�Y�!��ll�ٴ�:9n4��4���$���kk?���
!�b�w�w��_�ߋz_��A�i� ����>|�-�~�����/J�Yg�\i�X�t=RM&���K�� H��泒��9��'�?�
	y�kq�K��ڿ��x�K[o|$ӭ��z��(�W{�$Zg��$�I<G�Zj��b�H���I������9y�.���.�2���5㉖+5B��9��%YK�I?h�%�Q�ſ*�Ya�MF�:��N�8�q�O�u��5M���9�ոT��)����ޤ|3��>�Ş8�f��C�i�-����kv��i�_�i�Z���<v1Y6���[iz�i�E߈/$�ib���o˟���PO�-Ե=*/	��g���n,�~>�M����|9�X���	�a��X4��k��]cHմf���/,�����o�?n?�� �?>�<���[�>�Ѭ��'P�U�3jڮ��{��5:����^�����Mk{���{A�kCP��h�ϋ,~�x�/kM�x+���z���w�4�kR'��<&���}4�1�Ϧ���yv���>^��y�bU8ƛ���b[��I�iƤR�=J�t��UTy���(҄���sbҔf�mʖ�5��:�1Q�YC�ӵ���e&��W�5=�O�#�o��gÍV�\������7�M��R����,�}�-��=��>#X�ZLr�������8a�����t�j��f��T����� ,<+s�蟳����%j�:��5�M�Z}K��y�k6>���x���|Akm&� �������iڎ��h�32����� ����~*\j�N������?����>�'��-�5H4�+ı�h�,���XY[�X�F��ZB�-����2g���nt�'T��ZY��-KS��?�_������Hu�������Ub���Hu{�����G�K۸g��\�F+���4�*9}
q���J��*���S�x:���RIӔ�:XIƕ��O��1��V[�̲�D�x|v�*n�!,F'Z��)�iG���*N�c*��R^+���>(~�2k��u��zUՎ�Z{�
x[��|Ia���ǐ��>�n��+�+���-KCҴ�O�]iZ�����Iq���K�|'Ǿ���-/P��N�/�,g�|+�&���+J��ӵO_x���Ӯ��Z,Z�h�h���$K��Y4��[�{�c�yP���?jߏZ�4�g�ZN��E�x�I������ˈc�����w:l)'�X[i����X����ɴ��������(-�����_�n��h�Q��,�K-���|���UI���)i{��xB�YMI�׵�[�P_� h궚�ծ�u{�+����Ez�i��L��WR�:�S�Q�)S�	��X�`�5)�Q�{*st�)��N4��ª���Xa��"�X�ӭ*|ܔ�s�)E�EEB���R0�I{X���2+OѼ/���M��I�|aw%� �/|]&�a��kO�-�Ro�CİXj:W��u�sZ���ŭ޷���3�����x6x�úǇ��c�^мMwz�Q\h��<'��OS�ψ5M[�3����
���Ee��͡�Mψ�(.--�-O�o���մ� �ڎ��}��^��z���-�Amw-� ���;�j�^Y����Y��<A�\_�V7ڴϫ�*o|����������.�S���Ƴ�ͣ�?��k/��#���-�j�����^�+�m��%��XAp�W����j���~E�f�8��Q�J?U��r������{�7E?v�q�M�ȧKV�"�Z�#Ic'�n����54����I½W9�JPvQt�:���E�_��d��vZ߅�5�y�?��3�K�����Y�Tx������ �|9�����f��MWO����~�B�Eo�B5m�|6��/�cmLSQ�W��-u��SV�'�"�t[�
x{�Z��ǈ~���%r�F�u��-��<)&��mWż?�c���x�N�|Ksui����� 	�Zi�sh~*����M.k�K�;[Ƴ�M�׉�N�qq6����B�Z���.KH���Oh� <E�kmw����}#�:����hz��g��_�~,1��6e����aqp�W���V��.nu�:��W���N�AS���ֆ��N�JT�XÙԌ��*|������Ս�gV��ى�խS�����ge��!_ZXh��
*�\e*S�^X���IGNj���_���?����}#B�Эt�^A�3����� bYˡ.�my�C�i�m�O�x�?�t�3_��u[�A�t�,�~$�x��ՙ&�O��>ZXç�Z���P��񭞧�|-�|!��M�|K�k_�|Eg���G���j������	|F�O�/�o��4=Sn����4�K=/��w�'𵾟��-���I�/�<Wnolmm��l�V������������X���*���~(��K��7��$�In�����5�?�~jZ�7�m���$�Q�5�J�[	ug���n����y"���^+BxXVURU+T��X��M�*u��J>�5%�&�\\���a1���ha�)ӧN^έOy��:S����Χ.J�)�F����I{N���r'�c��φ��� ms�~-���;mWL��Iuxu�R�PׯcYt=Z����k)n�O�X\��w7&���i}a�-CL�o���C�kW��t���l/|N�lma��P�$�����/K�����d��VЍ���|��ߌ�._Ú�����z��&֡�[U�g��+X�����h�u��Ӽ3�Ceem �ͮ��A�y�jQ�;����|O��/�����:΃a᫭5#�[{��N{[��s�p�[��+���-�,��.�W��Xz���9*T���u}���ӥ��$���Џ-%%���-98�0ҝ��\=Z����U�Q�V�s��P�%S�7:Ti8ʚu[�mBm�z��bj�0���h����Xj�E�Q[j�/��w�:=�����ѡi>��Ojڞ��^Z�Ӽ{��=ѵ)��u{�A�_�V���P�ηcwe6��#K�|1��d���;I��k� ����SX��֗�y��Ɨr��6�ıI�o�������ZY\����a�o��MH%�յ+�Aj����� ���DԼG��gQ�5}"=-ue�Sy5-F׭ousP�����M3^����Z��(#?lԬn���E�s-¬��e�t�^�P�+V�L=O~�_��rׂ��j*>ʜ9�T��S�cir�0�
�⧆������HB���e�t�3�u��}OF�M�5�%
�����������%��|��"9���z晤j���߂M�^(Яo58�M���ȭ�I�j�v�V�ako�m`�1���o���Dx����+G������k �e�<�/Q�u�<iR�� eG&�i��s�]��ݾ��k�����N��� _�����^�s���ך����[����Ⱥ�����x<S�k��+��[��1��oo�n�E�?�"��j� ��j:���+ǯj�E�����8�0Y�i�fo�<'��P��wQY�_[\_�[\�kms��D�-�<=���^��N����SuXF.sp�N�+J�Y�n�gU+Ɣ����?^�Mԅ'W�������ΥE��?`��9�T��r�eJ59��*���E������������7w�#������N��?�/t��'e�;�,���,�tx���h	�?�x��7RX�h�i���_�� ��?���n4NMkU�u}F�ĺ��i�W����N�<}��C��X�������Ϡ_�z[����a�hl#�6�Lߵ'��/D���|I�u	ci����F������].��H�񎃯Y蚉���K�SG��Ե�k�B����"���/��>�59�Q�#u:j��5����Z'��|_�^�Oէ�O
i�O}l�>�e/�~k��Z�Gק�Q6�9e�|MLL�R���Z��7���e2u':�J�<Mhb��T�V��N�:u�|#�<�:���k��Ӯ�ƌ�R�k�_RU�N�JkF�Q�u.��)�4���/�"�mψ�뚇�X|;׉4��s[���Z-���/�<D����;W�<A�|��޻i��� ��X��]��?���ω��~?ҿ?i��-��~�c���Zg���4V������^�Gҡ���n/K�xo��M�0��c�um
]kP�d~2�/Z� C��h�~ 񭧎��^�s}�7��|!�v�|5i�O~����?�#�O���o���i^�z���������>:���Ku�x��z���Yi�6��V����X\�V��"�\��Zq��Cg�\iP��^j0��h0�ǣi�6� S�|=S'����a-*ܱ�;Ԫ��|�\����8�e�Q���RQ�9�R����H�q�;,�R��_�*��0�.niΧ5:�*Ԫ�ם����ԩƌ�����         pumucklBild �C�`       p `�,                           	        pumucklBild �C�`       p `�,                           	        pumucklBild �C�`       p `�,                           	        pumucklBild �C�`       p `�,                           	        pumucklBild �C�`       p `�,                           	      