#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  � answer-ask  �  u        Black ffffff  ������ white ������  ������ 	darkgray    � ���         G"answer"- und "ask"-Dialoge und "if"-Kontrollstruktur     (Sanke 5/01)     ����     W 
Helvetica   W 
Helvetica   W 
Helvetica   U 
Helvetica  W 
Helvetica   U 
helvetica   �    	@          ��  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  � Answer-Dialog 1 �E�pon mouseenter
  show field "feld1"
end mouseenter

on mouseLeave
  hide field "Feld1"
end mouseLeave

on mouseUp
  answer "Welche Hintergrundfarbe soll das Testfeld erhalten?" with "green" or "red" or "AliceBlue"
  set the backcolor of field "Testfeld" to it
end mouseUp
   ������     R t   einfachste Form mit 1 Variablen          	     
  � 	Testfeld  h  "  ������ 
AliceBlue   � - � q        �   	Testfeld        � Answer-Dialog 2 �E�p�on mouseenter
  show field "feld2"
end mouseenter

on mouseLeave
  hide field "Feld2"
end mouseLeave

on mouseUp
  answer "Welche Hintergrundfarbe soll das Testfeld erhalten?" with "gr�n" or "blau" or "bla�blau"
  if it is "gr�n" then set the backcolor of field "Testfeld" to "green"
  else if it is "blau" then set the backcolor of field "Testfeld" to "blue"
else if it is "bla�blau" then set the backcolor of field "Testfeld" to "AliceBlue"
end mouseUp
   33����    
 � u   mit "if"- und "else if"-Abfrage          	       � Answer-Dialog 0 �E�p �on mouseenter
  show field "feld0"
end mouseenter

on mouseLeave
  hide field "Feld0"
end mouseLeave

on mouseUp
  answer "Hier folgen ein paar �bungen mit dem Answer-Dialog"
end mouseUp
   ������     % t   /Hinweis mit OK-Button ohne Antwortalternativen          	     
  � feld0  H      ������     q �        � SDer Befehl "answer" wird hier lediglich zur Einblendung eines Hinweises verwendet.    �Mit "answer" with ein Dialogfeld erzeugt und gezeigt, das den nach "answer" folgendenText als Hinweis und einen "OK"-Button zum Schlie�en des Dialogs enth�lt.    Das Skript dazu sieht so aus:    on mouseUp  >  answer "Hier folgen ein paar �bungen mit dem Answer-Dialog"  end mouseUp      
  � feld1  H      ������      ��        � Das Skript dieses Buttons ist:    on mouseUp  d  answer "Welche Hintergrundfarbe soll das Testfeld erhalten?" with "green" or "red" or "AliceBlue"  .  set the backcolor of field "Testfeld" to it  end mouseUp    �Hinter "with" in der 2. Zeile werden die Texte f�r die Auswahl-Buttons im Dialog eingegeben. Es k�nnen damit bis zu 6 Auswahl-Buttons erzeugt werden.  aWenn einer dieser Buttons gedr�ckt wird, wird der Text des Buttons in eine sogenannte "Zwischen-  avariable" plaziert, die it hei�t. "It" enth�lt also jetzt den Farbangabe des gedr�ckten Buttons.                     F   ]Mit der n�chsten Zeile wird die Hintergrundfarbe des Testfeldes auf diese Farbe eingestellt.   
  � feld2  H      33����      �� �        � Skript dieses Buttons:    on mouseUp  c  answer "Welche Hintergrundfarbe soll das Testfeld erhalten?" with "gr�n" or "blau" or "bla�blau"  I   if it is "gr�n" then set the backcolor of field "Testfeld" to "green"  M   else if it is "blau" then set the backcolor of field "Testfeld" to "blue"  V   else if it is "bla�blau" then set the backcolor of field "Testfeld" to "AliceBlue"  end mouseUp    �Die deutschen Farben der Auswahlbuttons m�ssen in ihre entsprechenden englischen Bezeichnungen umgewandelt werden. Das geschieht mit Hilfe einer sogenannten "Kontroll"-Struktur, hier mit einer "if"- und "else if"-Abfrage.        � Answer-Dialog 3 �E�p8on mouseenter
  show field "feld3"
end mouseenter

on mouseLeave
  hide field "Feld3"
end mouseLeave

on mouseUp
  answer "Jetzt haben wir die Titelzeile dieses Dialogfeldes ver�ndert! --> Fragedialog" titled "Fragedialog"
  # am Ende der obigen Zeile ist nach 'titled' die neue Titelzeile angef�gt
end mouseUp
           �˙���    � % u  mit Ver�nderung der Titelzeile          	     
  � feld3  H      �̙���      ��        � Skript:    on mouseUp  :  set the title of stack "answer dialog" to "Fragedialog"  S  answer "Jetzt haben wir die englische Titelzeile dieses Dialogfeldes ver�ndert!"  <  set the title of stack "answer dialog" to "answer dialog"  end mouseUp    �Die Titelzeile "answer dialog" ist ja in den meisten F�llen nicht sinnvoll; sie wird - wie in der 1.Zeile des Skripts - mit dem Befehl "set the title of stack "answer dialog" to "hier steht der neue Text" ver�ndert.    �Der neue Text der Titelzeile bleibt f�r alle nachfolgenden Aufrufe erhalten, bis er wieder auf den urspr�nglichen Text oder einen anderen neuen Text eingestellt wird. Dies geschieht hier in der letzten Zeile des Skripts            � Answer-Dialog 4 �E�p6on mouseenter
  show field "feld4"
end mouseenter

on mouseLeave
  hide field "Feld4"
end mouseLeave

on mouseUp
  set the decorations of stack "answer dialog" to empty
  answer "Jetzt ist die Titelzeile dieses Dialogfeldes verschwunden!"
  set the decorations of stack "answer dialog" to default
end mouseUp
           CC���� Aquamarine   � T u  ,Ausblendung der Titelzeile des Dialogfeldes          	     
  � Feld4  H      CC���� Aquamarine    ] �)        � Skript:    on mouseUp  8  set the decorations of stack "answer dialog" to empty  F  answer "Jetzt ist die Titelzeile dieses Dialogfeldes verschwunden!"  :  set the decorations of stack "answer dialog" to default  end mouseUp    �Mit der 1. Zeile des Skripts wird die Titelzeile zum Verschwinden gebracht. Die Bezeichnung "decorations" f�r die Titelzeile ist von den Programmierern von Metacard sicherlich nicht sehr gl�cklich gew�hlt.    3Die letzte Zeile stellt die Titelzeile wieder her.        � Answer-Dialog 5 �E�p�on mouseenter
  show field "feld5"
end mouseenter

on mouseLeave
  hide field "Feld5"
end mouseLeave

on mouseUp
  put the backcolor of stack "answer dialog" into Ausgangsfarbe
  set the  backcolor of stack "answer dialog" to "lightgreen"
  answer "Jetzt ist die Farbe dieses Dialogfeldes hellgr�n!"
  set the backcolor of stack "answer dialog" to Ausgangsfarbe
  answer "Jetzt hat dieser Dialog wieder seine urspr�ngliche Farbe"
end mouseUp
           ������ Bisque   � � u  <Ver�nderung und Wiederherstellen der Farbe des Dialogfeldes          	     
  � Feld5  H      ������ Bisque     ��3        � Skript:    on mouseUp  A  put the backcolor of stack "answer dialog" into Ausgangsfarbe   K  set the  backcolor of stack "answer dialog" to "lightgreen"               J  answer "Jetzt ist die Farbe dieses Dialogfeldes hellgr�n!"               >  set the backcolor of stack "answer dialog" to Ausgangsfarbe  E  answer "Jetzt hat dieser Dialog wieder seine urspr�ngliche Farbe!"  end mouseUp    �1. Zeile: Die urspr�ngliche Farbe des Dialogs wird in die Variable "Ausgangsfarbe" plaziert. Als (hier "lokale") Variablen k�nnen beliebige W�rter gew�hlt werden; sie d�rfen aber nicht mit W�rtern der Skriptsprache von Metacard �bereinstimmen.   2. Zeile: neue Farbe "hellgr�n"  d4. Zeile: Die Farbe wird auf den in der Variablen "Ausgangsfarbe" gespeicherten Wert zur�ckgesetzt.  >5. Ein zweiter "answer dialog" zeigt die urspr�ngliche Farbe.        � Ask-Dialog �E�pPon mouseenter
  show field "ask1"
end mouseenter

on mouseLeave
  hide field "ask1"
end mouseLeave

on mouseUp
  ask "Geben Sie bitte Ihren Vornamen ein!"
  if it is empty then
    answer "Sie haben ja nichts eingegeben!"
  else
    put it into Vorname
    answer "Hallo" && Vorname &&", wie geht es Ihnen heute?"
  end if
end mouseUp
      S U o   5Ask-Dialog mit Kontrollstruktur "if - else - end if"          	     
  � ask1  H      ������     , ��>        � Skript:  on mouseUp  ,  ask "Geben Sie bitte Ihren Vornamen ein!"    if it is empty then  -    answer "Sie haben ja nichts eingegeben!"    else      put it into Vorname  =    answer "Hallo" && Vorname &&", wie geht es Ihnen heute?"  	  end if  end mouseUp    �Der Befehl "ask" erzeugt ein Eingabefeld mit den darunterliegenden Buttons "OK" und "Cancel".  Der eingegebene Text kommt zun�chst in die Zwischenvariable "it", dann in die Variable "Vorname".  �In der Skriptzeile answer "Hallo" && Vorname    etc. wird der eingegebene Name �ber die Variable "Vorname" mit dem vorgesehenen Standardtext "Hallo" etc. verbunden.                   , x �Mit dem Ampersand-Zeichen (&) werden Textteile verbunden. Stehen 2 Ampersands (wie in unserem Beispiel), wird zus�tzlich zwischen den Textteilen eine L�cke eingef�gt.        
  �           8 �         � fBeim Ber�hren der Buttons mit dem Mauscursor werden das jeweilige Skript und Erl�uterungen angezeigt.       