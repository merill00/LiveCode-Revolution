#!/bin/sh
# MetaCard 2.4 stack
# The following is not ASCII text,
# so now would be a good time to q out of more
exec mc $0 "$@"
                                                                                                                                  O trigonometry   �on Koordinaten
  put script of button "Zeichne Koordinaten" into field 1
  choose line tool
  drag from (10 , 125) to (370, 125)
  drag from (10 , 0) to (10 , 250)
  set the width of the templateField to 25
  set the height of the templateField to 25
  set the textAlign of the templateField to "center"
  set the opaque of the templateField to false
set the showBorder of the templateField to false
end Koordinaten
  w         ������  ������  ������ white ������  ������    W ���            	 U 
helvetica   U 
helvetica   U 
helvetica   �    	P Lon openCard
  set the backgroundColor of card 1 to 255,204,51
end openCard
   ����33        ��  6  7  8  :  ?  G  H    I  �    �    J  D  F  B  5  L  C  >  M    	P Lon openCard
  set the backgroundColor of card 1 to 255,204,51
end openCard
           ��  N  O  � Sinus �E�0�on mouseUp
  put script of button "Sinus" into field "Skripte"
  global xeins  , yeins , yzwei
choose curve tool
  repeat with i = 0 to  360
    put i into xeins
    put ( -sin(xeins * pi / 180)) into yeins
    put ( -sin((xeins + 1) * pi / 180)) into yzwei
    drag from (xeins + 10 , 125 + 100 * yeins) to (((xeins + 1) + 10), 125 + 100 * yzwei)
    call kreis of button "Skripte-5"
  end repeat
  choose browser tool
end mouseUp
   ��  ��  ����33      � D           	       � L�schen �E�0 �on mouseUp
  put script of button "L�schen" into field "Skripte"
  call koordinaten of button "Skripte-4"
  put empty into image "kreis"
  put empty into field "Winkel"
  put empty into field "Werte"
end mouseUp
   ��  ��  ����33    �� l           	     
   Skripte  	    ����    �    �� �   color  
255,204,51        � on mouseUp  6  put script of button "L�schen" into field "Skripte"  )  call koordinaten of button "Skripte-4"    put empty into image "kreis"     put empty into field "Winkel"    put empty into field "Werte"  end mouseUp      Autor �E�0 �on mouseUp
  put "�bung Trigonometrische Funktionen, Version 2 - Autor: Karlheinz Fingerle, 24. Juni 2000" into field "Skripte"
end mouseUp
     ��  ����33    � H           	        Cosinus �E�0�on mouseUp
  put script of button "Cosinus" into field "Skripte"
  global xeins  , yeins , yzwei
  choose curve tool
  repeat with i = 0 to  360
    put i into xeins
    put ( -cos(xeins * pi / 180)) into yeins
    put ( -cos((xeins + 1) * pi / 180)) into yzwei
    drag from (xeins + 10 , 125 + 100 * yeins) to ((xeins + 10 + 1), 125 + 100 * yzwei)
    call kreis of button "Skripte-7"
  end repeat
  choose browser tool
end mouseUp
   ��  ��  ����33     D� L           	       6 
Skripte-1 �E�pglobal xeins , xzwei , yeins , yzwei
on ersterquadrant
  choose curve tool
  repeat with i = 0 to  88
    put i into xeins
    put (-tan(i * pi / 180)) into yeins
    put (-tan((i + 1) * pi / 180)) into yzwei
    drag from (i + 10 , 125 + 100 *  yeins) to ((i + 10 + 1), 125 +  100 * yzwei)
    call kreis of button "Skripte-8"
  end repeat
  choose browser tool
end ersterquadrant
         � H 0         	       7 
Skripte-2 �E�p�global xeins , xzwei , yeins , yzwei
on zweiterdritterquadrant
  choose curve tool
  repeat with i = 92 to 268
put i into xeins
    put (-tan(i * pi / 180)) into yeins
    put (-tan((i + 1) * pi / 180)) into yzwei
    drag from (i + 10 , 125 + 100 *  yeins) to ((i + 10 + 1), 125 +  100 * yzwei)
    call kreis of button "Skripte-8"
  end repeat
  choose browser tool
end zweiterdritterquadrant
        H� T 0         	       8 
Skripte-3 �E�pglobal xeins , xzwei , yeins , yzwei
on vierterquadrant
  choose curve tool
  repeat with i = 272 to 360
put i into xeins
    put (-tan(i * pi / 180)) into yeins
    put (-tan((i + 1) * pi / 180)) into yzwei
    drag from (i + 10 , 125 + 100 *  yeins) to ((i + 10 + 1), 125 +  100 * yzwei)
    call kreis of button "Skripte-8"
  end repeat
  choose browser tool
end vierterquadrant
        �� P 0         	       : 
Skripte-4 �E�p ron koordinaten
  put image "kreuz.gif" into image "koordinaten"
  show image "quadrat-kreis.gif"
end koordinaten
        �� T 0         	       ? 
Skripte-5 �E�p on kreis
  set the layer of image "kreis" to the number of controls
  put empty into image "kreis"
  global xeins
  global yeins
  global yzwei
  choose curve tool
  put ( cos(xeins * pi / 180)) into xone
  #put ( cos((xeins + 1) * pi / 180)) into xtwo
  drag from (480 + 100 * xone, 125) to ((480 + 100 * xone), 125 + 100 * yeins)
  drag from (480 , 125) to ((480 + 100 * xone), 125 + 100 * yeins)
  call anzeige of button "Skripte-6"
  set the layer of image "koordinaten" to the number of controls
end kreis
       @� T 0         	       B quadrat-kreis.gif 	@    � r  � �   sichtbarbeit  
unsichtbar  �GIF89a� � �     ������������������������                     !�     ,    � �  ���I��8�ͻ�`(�d)!h��������t��l��.��$}�TrfT6���O��F�Ҟ���^kZ�w����#ymf���n���ۼ1��W��}tp���Pdr��ys�.v������V��������V����z�����U��������t��U�����������ã���u����������Ȳ��`��۸������������������������� �H�\�}�48a?�&l�Dy)^\hр�� �C�I�dIe��S��f��\�-%l�r���lQ���~�I\K��J�T�s��lM���jQ�H5��e�Q���J֪�����m���Lo'��-�6J����P7)]�_��5;��]mU����u�c�n��5L�1���f�w��'�N꡹	�.�Z�j�0&�s��v�۴q[��[��7���8�ȓ+_μ9g�z�Fk�yle�x�z�.0�Q�o	�9���ӛo��y'Oޏ��9ty���ZW��~
���G��s���~ݽ�BO���M88 �^_�	��4�I�!��-6F�^�aw@`���%���s��ފ|-8����m���#B�xNk	雑�!Iܒ�=0ܓ�Eiܔ�Ui�XVY�u����N��'�עNl��2�xV��c5�X��7q�hr�"�vv��!X
�Ֆu�@�Zn�)�*>ZS�(��U��fJ	z�C�6ک��ۨ��h d^*���V�%��^�����[9�z䮸*	��JY,��2il��d�����F��j�]����`���G�y-`���p�;����9�Wq�˒����!{��Y���ԫ��+S��B��%����qC����x�\n�B��0��b����oP	��q�Ep�Wd�9��DA��c����k��.K��5����8�3�;ݑ�H'���#�@`�vL���Դ+_�ձVK�,j�R��&z��gw�%�(�*�N�64k�]�*���]�2�v;�闤����~� 8�Z/�7ts#�6��}u�o.9��(��8����s�F�6�ϥ�v:���z��Ǝ[̰���Ҹ箻	M/.�ٛG��%y��a�5��}�ی�[�һ:|���y�񐏹Y�O~�dǙ1��3����t�	��|c������'�������ﱯ~�C �B�:yH�u��Y�l&��M�uê u�A*�� aL�V�����kɢ'8��d(����-k�Є"�_
"3m�Ƀ�
c�ְB�3 �t(C&"�w�B"�HD�YQBPL�->�D��9�3t�����p�h�!������.�2� )h;�n��c�B��F��d��.F�	�! �EUҌ9�b"��#:�L�")	)K�$�p�5��>$�(w��H�"J��l�'���Q�r���S*i��[��x�%b��^s��Y��H�;���~T�9�L����#lԁ����|V��ɥ0��2 ⡆I�)�2�ﬅ:=�����D&:}��z���ԧ@A�OP����4'�J�E��V��g@���u����8|�@���Ӡ�^>/�����f��:�Ԃ݌�L�Yjz3�8��r2��3���3��
xO����'�aC��Q|���S�E��Ѓ��_��GQQb�Ӫ��**�~u�I}��cU���bmU�iԳ��~q]`<Z
�gNӚ|��K�Wk�Ԧ��a����:6$<�SU�
���Ո���(�Y��5�k��F+{��&��e�]W{ӾI��4�/g{UU�v�di]i�V֦೰]�Sy;Z�7��nm��[۪��,�]4���j3��E�px��z��!p�r�
�Ζ����he����S��Ko[�JZ�Z���n�J\��ͣc��f���.����n\_�X��#fS����Rm������`���`�`#]hfw��M1�W�n��0��K�9^�z�����fIa�վe��Ry<������T��ʞ*��@~�����&K��8np���a����=>�{��ɍ=r�`������!�9�ɍ2�	�f�@���mJ�k�����������2FP���g-#�Cgvsf	��F���ۈ����[,���cw|<._�ӗ�|F�YNw��i�r��+����s��,�<i1��Ӫ�4�����V��^a��,�n�y��=1�Y,�ætЪA���;�;٠����ۿ[�9�> w���ks��ܣP7�]=��;��F�O�M�^Ç���u�����p+��շ���¹���W��u,�69����L�ܽF�$γ��qj[���l���m�\��[�%n�E��6Ǹ���M���c4���M��0C\ֹ������J�����t�2<�8ϡr���� ���������}b�:ӑ���I#�����*��(�����SЖ��Z�7_6J�&�]𬥸���~�����٭"~�^d��/�b>�� X���.�g���9:w�˟���`��)?k=~�S�
�.���ϻ��m M��|O~ .`\K����<[9�{4�>�W��k�����S�>���{6K~��Ϭ��Q�_�������<�_��W<��k��,��3+��~��n�Gw$�xW4q7|v���gH|,�m�w� ��'���~����(��')c'~��t�j��t*Pׂ7��W��>kE���}���%�|�"���Z�xD.&Hk��n��yd��A���q{X��#Ѐ�'|�G)��x4x�����foק�S(2j(��A�>XS�w��z�.(��t�����@�`m1k�g�북�ց�#{W���&HH~�%,�<XD�qX�]#�hv��uP3��#���v������DX�X������4rx{oX�c�Bǉ��NH{ W������N�aÈz�8�qF�Kh����햍�؋�F��8�mȍr��ȸ�Ո�֊�4�H���cH�'���-�8s����z�(��8{�H��g��He��m�x�
���x�߸��h�؈�Y�M�������ǌ9�	�fr P�&Y 0'Y��$��-� /��)i +Y 19�&��7��*	�.y�<	�2)�AI�:ɒGy�CɔK��O�1�E��F9�Ni�P��R��8����X�b9�dY�fy�h��j��lٖn��5 ;      
  D Winkel  )       t	 � (        �  
  F Werte  )       t1 � (        �    G 
Skripte-6 �E�p �global xeins
global yeins
on anzeige
  put ("Winkel" && "=" && xeins && "Grad") into field "Winkel"
  put ("Funktionswert" && "=" && -yeins) into field "Werte"
end anzeige
       �� T 0         	       H 
Skripte-7 �E�pTon kreis
  set the layer of image "kreis" to the number of controls
  put empty into image "kreis"
  global xeins , yeins, yzwei
  global yeins
  global yzwei
  choose curve tool
  put ( -sin(xeins * pi / 180)) into yone
  #put ( -sin((xeins + 1) * pi / 180)) into ytwo
  drag from (480 , 125) to ((480 - 100 * yeins), 125 + (100 * yone))
  #drag from (480, 125) to ((480 + 100 + xeins), 125)
  drag from (480, 125.2) to ((480 - 100 * yeins), 125.2) # verschoben zwecks Sichtbarkeit
  call anzeige of button "Skripte-6"
  set the layer of image "koordinaten" to the number of controls
end kreis
       �� T 0         	       I 
Skripte-8 �E�pYon kreis
  set the layer of image "kreis" to the number of controls
  put empty into image "kreis"
  global xeins , yeins, yzwei
  global yeins
  global yzwei
  choose curve tool
  put ( -sin(xeins * pi / 180)) into yone
  put ( cos(xeins * pi / 180)) into xone
  drag from ((480 + 100 * xone) , 125) to ((480 + 100 * xone), 125 + (100 * yone))
  #drag from (480, 125) to ((480 + 100 + xeins), 125)
  drag from (480, 125.2) to ((480 + 100 * xone), 125.2) # verschoben zwecks Sichtbarkeit
  call anzeige of button "Skripte-6"
  set the layer of image "koordinaten" to the number of controls
end kreis
       �` �           	       J 
kreuz.gif @         r �  :GIF89ar� �     ������������������������                     !�     ,    r�  ���I��8�ͻ�`(�di�h��A������vK�9��].�e��T��f�)mA�Ub���z_�vf����܊��ݜPm����5~�ǲ�}qz�u�y����|��������.Op\s��2������\�w����������������Ro���Y�������������ʵ���ѱIF0n��������������������H��K������������� ��o`�xm���8��
���Ł'^��N�l���q��!E�+fTɱ%˗(WP���� @SN�h��y���5�
�i͢G�6��k�ϪN�2�J5hV�[�v���U�a��4[�Y�Z�~u�.۵t�����ܽ����0�׋�+^̸��ǐU��.�� $EB��3̒�5�}�t��ReV-:��צG���um��Pܴ:Po٥gw�=\�g㰑s�=��m+���f�ǭ?M���踵K�:u��;3��|$r���gGO����]���������`�|�	�߀�ٰ���Fh��"��|ɩeSTi	�Tv��Q!�5V�~����,��b�/ꅢ�+�h#�7�c_:���wِDi�H&�d��6R���R9��X�fO��%vYZ�QV�%������W��f�p�i��X6�͗�͉&�t��g�{���k
�a�z�	���f�w\2�虒Vz��|>��|Nꧧ�^*j�����Jj���J��p��]�X#�D�xk����+�|)l���+���8l��;#������Vk��خ�f��R�꧘�*n��i���z����-L�����n���{����� �����ׯL��j�7�����Y����_|Y��q[��3�1����#���������l^��ܬ����l���l�����@����B����6���PGٶ�ILr�!;���-s�
�/��u�W��r֌z��fs���ho��կ��v�n��r��]7ހ�-�ށs緓��M�ً����^���݃+>���J~g��z[N9�r�,+ϴ�|�S5�~�Ч']���N���n{���%������z\u��8��S����cθ�?'��0O|�g�� 	����C����S�'��s���Go�{փ����_���������������'?�]Jt�C��HG��NiH�!Ⱥ	&0w��i�A�� ��<��O�_�'���kx+`
	��r�\3�aUX�M��A'�C�/��eXD�䇝��y8E#ίP���E"�*�����׬��*:ь0C]�4��up(\���:f��w�`�A>Vpu#� IH��{&l�"�XF0��c<�#�8I2�"��7�DFrL�ԁ&;�FO����%fFI�F�򓖔�*��JI��le!��E���e��2[�Ҙ�<f��F<�����#�h�iZ����&5�y�?vs/��8������4�.��Β̒��\�<㉜w��D�<1dOt�S�����	CuԠ �<�'�t3��$����V��}}�CL�^�Ό�6���o�Ѥ��&JK�Җzӥ$�LgJSj�&���>/zЍ�2�@�iB�J�'5�C��Owj!�&R�]jO�tT-&U�W�*U�Y��bիZ�W�Ѭ���j&��ѳB\ �#I18�l�����Ia�W��U�)%VMK��2�+[-�ֶfN��c���U��eje7[	w^��h��f%�m`�:��[9��\��Am,eI;Z�X��D\fU+ZKb�N=�lk�[�z�&�M�r����:���@�ns۝Z��;Yms�!���"���.&���㒨EGx��]��s���u���������|��Zগ��%oZ�_-Ԁٝm|	�]��w��n/�A߄ x��pz1aUb�>�o-��s�6��vL^�D�� 1̋=�� ����pB*���ϴ�.N��cwx'(�hm����no����/^��;� �$f�>��]'��P��|����0��?�-R�L���dǆѱ:���3�y�Rx�;"�c�(������tO�dB38�l�(�T�C/����JW����G�Ux�Q�ԯ>#�����SVY��J��2kn�5��͵�i*��ə��U0�C��j���rD<\e;������=mh3���ƶ���i;ٻ���jk��4w�˭?N��ӄ��]��z��~ķ]�m�]��߄쵷��mj����ơ��n�&\^g��I��$J��w��W�mrO�d�8Ƿ�?6��θ�U>�e�&'yā��m��Ӟ��J�moz߻�<�9��N���N�)��ŗ�rmW<�1/9�'��^N]�o�0�t��|�_O��;�����zٯg�w��`';�ǎu���5�w�gts��;�><��o����O�Ӑ�p�{]�u�;�!���3}��|j�n�ǳ��d���/y�3T�vO}S�>zϷ�[�pI�y�����{�EOϼ�t�����wT��B?>�����;I��8�]����=�����o���~���~�cK��W?e�3��_�����ه�����ǟ�������܍6|ʷs�7�W���|��,�׀85��x����}�~VU��������~�iE"���=s%~�ׁ�w��ǁG�r�g0؂3(�C&�!h���F#|�'�	H�
h��W�x�J(X��P�-({;x�<h��G�>��=�8)Z+�V84Hyc�8d/��Wh�F��]��m�ykȅrx�9H�\Ɔx�� �|G��"�HX|�8|F��K��I�;Q���(�u:Ȃs(�.�wȇ����7��h�n�D_�y}��~ge(}�؊�Hqu���(����h���K�H��8��8�8� �wø��؈L��ʘ��Ȉ1���1��X�����87�V�Ո��x��$�z����b�I׍����2��h�Ȏ������bi���؎�2�e���X�����=�X��ؐY
 E^:�j>�+��#��Έ��x���	4�0�u�x��&][�v���.9���fْ�X�'��H����X��h���=�8	�49�ByuEɊ�؋I�*)�rM��Hi�
��FI�V	�f�1��)���9�ȸ�e����l��huG��������ȓr����R��~��h�sY�7)���TIl�8��ɕy�r�ɒ�9�x9'����I��  Й��A�9 E���I�`��i �y��)�������9 �)��������ɛ�9��������ٛ�����9����ɜϩ�͉���ǹ��Y��y�Ӊ��i��Y��	�ܩ��ٖ��  ;        5 Tangens �E�0 �on mouseUp
  put script of button "Tangens" into field "Skripte"
 call ersterquadrant of button "Skripte-1"
  call zweiterdritterquadrant of button "Skripte-2"
  call vierterquadrant of button "Skripte-3"
end mouseUp
   ��  ��  ����33     �� T           	       L Hilfe �E�0 'on mouseUp
  go next card
end mouseUp
   ��  ��     �� �           	       N 
hilfe.gif 		@    �     ��      "�GIF89a��� 1���ddd      ,    ��@���������ڋ�޼���H�扦����0K��������_	���L*�̦�	]�T"B�j�ܮ���2���k�����]^�s�ٞ~��x�(8�C`��w���3�7F�F���yg��X���b*�2:z
3Zj�:�jz�:[Jx��U�����,<L\l|��L�"�|� ��*�P�q���M���[�騉�fu���5�yX�fňY:$ ��N��f�2�젭�	U%�6��*g'V,ؐ�Z�伥ژQ��o�HE|�!ǅ%9����\}���t/�C�v�xn�}㊚�iS�ҥL!���=�:�A=��jP�S�v=r.�ӭI��=�V�خ�ּ�u�Բl�5i&�\�tצ�8�
e�>�ZK���{�ؘ�ɔ+����f������U��	rz�kJ�]ˬ[�v�j��O�	mWZ���.�gg��ċ�f$������,w��mP����׸��Lə��tϋp�OW�nR�E��?~������
�b�]�[�}��G`���7��-h]Q>a�N(a{�uFA0n�a
򆞅!
u!g&�w�"��a�.�y+28#�X�8�l����"Y��b�Bր\�<��$�<���o ᨠlG�ΐV^��Zn�e�^J�e�bz�c�S�铌=B9��f�	g�ȕ��v��f��q��~�	A�5��Kڧr���z�<CKu�����:D�b��riK����&Qji��V������*�`����ަ'�{j+���:旾�
l��Q�ME��)B�)�^��-+1��4�[K��b�)��n�lC�V{-��B
ѵ�4Se��%�����H�4�8����'��J����k����&8/M{ѺަDm��Q������f����z.� I�1�?�-�!��-I���2C��1�z0����tKl�tĀ��j��ݳ`Lo3�Q�h�;[��Z���^vؙmM��S'�Դ���2�]v�r�5��vߍ7u��w�~�x��Nx��x�J}Ӧ+��)Ő��i�#���Xɓn�2�V�x�R�覟�D�$�f���������z�<��粎z��|�ڝT���\����
���������/,}��C�r��+[���^O����.�܋/|����L��?����?��J�����o}=s� =R�p���D�
�2eAP�؛E�?!�k(�\�4�*\��ҳV��m`p(̠�6=�a���$h���q(��q�2�AL1ܚ]��C��y·3�t���},�-ta�FhB+�jq�\���0�q�d,#w�e����]G�"@:��S#	�e�<�q���#Wh��m��gQ�	��D*r��܁�D�ɑ��%�7I(TҎ�$ 	�P�r��,�)O��T�r��l�+��7dᕴ]/`�Z�	b�/Y�]��l�lS��v�c�����\��AΉN��	�b֪v���M�q%�æٰ6(���/�DT;uu��d~��!e��≬{?4��h��Yl���<�C��e2�U8�и�3��|��>�df͜��G?�2&�^7��N|�M�j;ޏR�����.RB�2'��e5]ivd�8:�t����,��ф:i8PC����4��X�ܰ1uJzjPA
���gKR��3,���;Du�N�Ζ<t��r�Ԋ�է���B� C��t�Kq���Q��|��y�q�S��4H�"]s�R�,��Z�`��S�R��^ɐ~8�����0e]mZQ�6X����Yh�%R�~H�%:BFa�7Ȏv��][m��M�z5���b#Z��<{%���/�3�ͬw��] խ����kϋޯ������р������-��Q_�᷅�-�x����~v�Gҍ�Ve��=sR�9��X�`��
��;+�O%�P]3��s���M׬�����1�r-hU�"ZL4�Q�%,�x�!m���E�1�B�㘖�o ؀G�V�9��U�!<2�y��Ԕ���H��v.ib�#�g|H��c��tr$9�^!v���'�t�s��l�"3Y(�uN*q�=y��t����P楯�>��R\>���\���%c���]@���c��s�����LN,��׺�Nu��\T�ZՎ��]�\c �����x��`���.�����d+{��&��������[��~��"ep���p7e{��B9ݼ8Z/�x|c A�iq��)&,����|���Y���U�`�����Go����ڿ�Y�
\�$���+����'��o�p�$<-�HiP���"�t�ܽh��k��r	ץ�O�|Z0���,��hN��ܗ�'��)�!���'g�ӟ�7�1=s+��կ���k��U�� �ul��	a�/��n��&��R����h|Ґ�Uz��1��Y�h?x���ǿF����d�z��̰�����S��[�;��]��k~���?�Ћ~��/��O��բ��o=����֟~�S��o?_@���w=�{�H=�:MA~v��K׶ŗ��;� "�X������OR�'�s��$y
S3�OW����ى�ֳ�iŷo�'jX����S�v��S��C��0ȗ|��{ZՕ0Vq��q��Bc�q*qgp,tv�#|K6|~ց��O�_5c�1I�s)ds˃h�h9giA@7v�G��};(6�����$�gd�hE�e{�&�Mq��[�Ek3^�dO�����G|R�6�@N��t�&؅�Ux#`h�E�e��<(��
������[��~xh�W�g�5ky�U�^�N��C�UG�����A�i��b{8��a��[Y(�2a����M�g%�T�ၩ��8�`�CY@Y�0V�q��Ҋ[����}Xk+�K�U�X&����@�Ȉ�G�hP���T�t����r���؋��j��A�BX�$A��E��W��${��q=5e��H�V��+F���8���|h��юN�bQX(KeR���븍��]��S�5���]OsY�q�����jȌ�	�U�����*����Ց����H|Ju��aY*���-���Q�?	�A��<��z�،G���ElE�y�x�T8_Pi�N�y�Y�NL���Z��i�N��0���8X�S_�uX!�[�7�7����Zvx�s�^�.9�+	�Sȕ�$�'�m3K���H \f�e	�����Ș`�g9T�x|�I����`������s���h�重9UI������������)N�Y��Y�n����S������o�~�rM�*��f�3*�#_֤�rV�9���9�y9�xk�|��H�5S���~��m���V*���	m��9a؉a��D�} �ep�B�I�;蛺 +Ɖ��(���~iC��?(�eV,n��G��p�&4q�AZ 1C��y��	W���wus��8�2d��C.�sD15��4
f��0���St����do"z�����~&�%ڠ^�>�cr�w�Qdw�22n�C�F8�f��A0dBMۉ=��ed���y�#���9&k�Y�[9�=%��w�?P��jg��I�I����b�f�6�]�q�֨�6g����|Mj��ƨ\��'u��C���tt#��nS4a��Xf���i�697Ht�Z��
�C���ف�D��%��k�z�wRlc0ƺ�
��JZ4#T��YNj�d�d�e9ǥQ�e����wq*_WzyF�my7M6J�nwf׹m��JP�f]-*We�G�# ���^ICm���dO�_A�n�eCWj�I�&�+t+��m����)&�k`&a�҂4����&����̚�Ե�+z�*�M�ڧh�)�24۲'Z�8;N:� K��%�u��הI��pK˴��OnQ+�Uk�W��Y��[˵]k �$�jv�-��䇨���q�Jb&�e�*������`�9� ��W$a���*X�YmR�a�F�x۶�6�}븏����+$����;�Sn/g>3�huױ|�o@��r���t��z��˺�s!Kw�~2�<�x���Ұ�%�F�?ᣣ�+D�mc�ŋ�h� "��ڦ�ב�Vj1�����G[�+S�4���)g��n˦/htH*g!����h���$�KCN��h��" ���?�jgj�[��g��PH�n�A���@s*�V�O2���֣Pt��I��9h?6z�2籩�q�;~!�DL�Diz>��t��c���3\wo
��{iY��',GAu4wÖ��A�GF�P�:���@7q7jL���q�[��9P<���4'hs߻�.�O�6��aj���d�9l�	�2B7pH|B����H��v��\��j*�f�ǌ4�L��$\ȋ�ȍ�ȏɑ,�E)���F��-QP�T��A��vX��x�d�Úd���y'ʭ����{�_�'�̽�x�<�efD�`������k˗�s���Ō��#><G�D�[��@G|m���,o��Ď*?d��8G�Lc�(ɭ�۩��:�ʡ*j��|[�����l��;n�,��ͪ��-�M�m���	�������-��bzi{=J�A�-J��MF��$����ع�%F}6��b�����!�{c;�+= �A�7�>T��c��?�,��k��Gݬ�M�0�Lͳ�I�K}��سS�Q��N��H]�bI���u�'՗��/�]G�޺t$;�h�֗c�}7�:�T��5�#H���9r+�F��� ���Q���i�Z�9���GmCe��`��r��U���N�z�~Z�*;����u�@�YͲ��7�٦��TiVdm����39`��������(� \�Hd�M�	R�H�����k��Cf�ʭu�����s��kD�<�O2|` U������À�|_�����-�˭B��֥�s��;1>j�9���|��2�}�չ0>�Z�U�;���"����}�ݫ��\>�[�L�����Gw@=�P�C��n���a,'�j��E�m��� �0��+�܍��O�S����XԚ��|
"8n����6��em�H�~	��[^-�L��6{�,��q��X�m5�J^US^��L�V�Ո}�ibQ���bx��	�#Y�l^��(
���㸒�V�а2���ڞ����Qx>�q��5~�p}�{���U�[���}���[f���L��
%s�ت�V���}�nH�da�J�i�d�~�(���n����U9"��S�X�;�(��������W6	�0������N�n��](���|!�Z��h��m!��������j����>��a��-9��8�@q�7�.^;�8�������N^)�#�>{��n	�=��i��n��1�]��IB�T�6�xUQ*���	��ת�y��~Cz~���*�!9� �C>�2��ټ���y"���TT�"W�����W\)�Ш���J/��d��6|���K?x���x��=%1W���3�5�8�(Ek.b��l����8&�PV#��4��+O��Z_v��~�v��(�^�s0$�����R���{���]M���z��e��-}����c���"�.do��4��z��)}���������N��+�6_��e��΢��8����?�2S�B���׺���/���;Y�B[��"�������K��^����-���[��� #N-�ڡȦ�w�q�ő,�MՕm[ȁ�JV�Χ��i�g����1���R��N�U�{dj�ɭ���~_�C 0�׸vo�g�u�������mN�/�P.HI!�m��.�����3Ss��(��R0�Pr��QT�0�I�3Vv��6��4v��S0- 8M�w4������:ZZ�7��5��yY�8#՚{;;{[X�F|��>��]Y��\?�ߘ��݁���1kPpB�0
�5t�"��V�C��گ^p�X����C���xeJ����y�?����3	c��1/�hP��(�xy�g�n-��(A%�
tZshV�[���4�R���k�j�p&�qu�.�P2�~4[��Իj�����f\��	_�[lݳ��6N\Hqaɓ)ە�3_S�CWseѣ#K��猨�r�b44iٳ����5n�yg��}��Y�É˳�8u�ܫ]뾍48��ө?�v.���ۗ:G�]{w����7�	�����3���������?O����3x���ԋ�'�<����ӏ�2�/@���
-|����m,#�i'/�D.��C7����Nk��e�`$�R��uL�/?HE�u<Z��,����c�oB��U:��!���,Q��� ;�H�0���/�<rL2�dM5�jL!�,3�6��M1�\�� ���)6�TSL)���@�ZP��4������8�	�R;��T�#;-���*�SS"�\�OQ5��$V���Pi��.K.T�J��$��4�D�WKG}��_�|�RPvY:�6�b�}��3�6V[p�/�Ek�՗F{ɖ�1c�[���0Zm-���r�s��V�m닗_��3F_v{�1��M�E�@R��5��"���=&6��"/�b�Tt"`{	v�^HAJ�a0���R��d�Җ����7�luΙ��4�oj��ٝ%�gg���؝�Te���xPQ{���&7n[w��ݑ޺��j"�>Sl�[FRΪ�.Zh�վsl�ˎ:e�ѶJf��:�߮:p��3U�m����`�{��Mnc�ƹE%o�Qv3Z�g{l�u�<�+n�t�i}Pk��t�o���[/����>�n��9��m�_?@�<�~��y!�w7�-{�k����8���^�/�����Þ�ٸ_�c�O4��#��o��Y�?v�7��
���	hؘް澉�L|Y���w��`b�[]���
�mvF��;V����b�� m�*	O}ҳ�?J��.�io�����5�%�6��f��om��>ĺ�OY�B�֞P�8��L��Ih@���
T᭬(���lv�!�n�&.qsEc�j�+S�*u?Kc�dƜщ5#��D�F'ү�[<`�З@HO�����hV;(��g24���C��1��������5���&)���m��D�g�FV1�]�\���Y����"���W�\h�9B�2~�^�2���+D�!v��!�`�D0B<�p��f��?���2%,�e䬞4���Nst�� <�MmVs0�,�:w����G'�e4�y�FЕ1�y�a�� �n�S�9C!��u�k�Y�%����GLHB�%$Rqw��⡠9�+��1�"?]��4�I�EbGE�3����ݩ+�7�Ɠ�|#�M%�A��������2���OKɾ���\-h�$Tα͑���tڴ���l]%���K�pm��)�����u�w�kQ�Z֠��4�*0ZS�����jVVo����Pd9[�fv�\llh'�YӺ����e0?K���CI�k�Y��2��gkg+�Z��V���
p����ZV�U�Jx�\�W�ѥ�r����ָ�mmu��]]y���[^�f/R�U�z��^����uo|�[߈�׾�կq�_��w���	�	�	�Á�`?����)\a_����9�a�!�I\b��)V�Y�b��1�ç�ǲ,��ZA7e���Q��*֤65�"7񢾂�� wք��Q�B�n�Ҥ���"��LeV��XT�k�`6Y)�9!@�Ü'$o
ZHV�JEU�^Y�h�s>ͼg?�Ё���#ό�ҝ;���>)����]���vj��G!j�j�f�hiS�����7���?>r���d�M]�U�4����#�I�*ժ�|�'y�֪����35��lg?��*X�����P߱�N=�;�)�C/i�L4���N³�#���K9E|n������=���[L<)^Id;�p���P�T]+y� LrJq,L���Z��#���f���>,�g�j��{�o�5�u*GI�����;y-���������!�j����5�9��C|�}#�A҆���`��A|m��*s^��#�밳^f{�<��4��^v�������~ϯk��S�6�ӭ�vV�ݖ{��Ni�2٧��϶Nj�7�Ӧ�$��3�?��\�?JO�YY6���=�4������1_�����rM*(?�'ʯ������_W��!�}�fm����׭�}�S�� ��rd�魐U������h��ǶZ]�F�d�=�}���ėu�����������יOk��@��&��~����w��U}�w�݂�N����
������M�:w���rͯ�������(�<�����,���m�
�O�&E�2p�:���h�'��*�N���npH	O2�ֆ��
���j�/���hr����4)	Kg���dp��n���O�����/���B.��h�ҏ�6ͨZI�0�ܭs0�
#�
-�1���P���ÄM��P�.�
q�����f����ph����f�ώo�(Q7�;�?CQG�K�OSQW�[��p����͍n�~&����g�� �므����Y�J���W&{��Q�g��	U'��CΔZ�8a��裦��/�.O��-X����pQ��=p�1-�B�"���Q � ���� ���8����W��̡"2!3yN���#;�#?$y��(��,$O%S��O#�$%_&9rW�v���$2ԏ]�D�����+J�.Ryp2"��(�R)��)�@�j�2�lA*ͪ)+�*�N+e�)o�*�R�l��J)�p��R�no+1G-��,�
ll�����+!���r}*�.�raަZ�1�QsY��l�0��ʑ0'�jjq( 1}R�-�<�2G�4K�4O5SS5W�5[�5_6cS6g�6k�6o7sS7w�7{�78�S8=�   ;        O Zur�ck �E�p +on mouseUp
  go previous card
end mouseUp
   ��  ��  ����44    �� � 0         	       C kreis  	D    � r  � �   sichtbarkeit  
unsichtbar    > koordinaten �	D    �    r �   sichtbarkeit  
unsichtbar  :GIF89ar� �     ������������������������                     !�     ,    r�  ���I��8�ͻ�`(�di�h��A������vK�9��].�e��T��f�)mA�Ub���z_�vf����܊��ݜPm����5~�ǲ�}qz�u�y����|��������.Op\s��2������\�w����������������Ro���Y�������������ʵ���ѱIF0n��������������������H��K������������� ��o`�xm���8��
���Ł'^��N�l���q��!E�+fTɱ%˗(WP���� @SN�h��y���5�
�i͢G�6��k�ϪN�2�J5hV�[�v���U�a��4[�Y�Z�~u�.۵t�����ܽ����0�׋�+^̸��ǐU��.�� $EB��3̒�5�}�t��ReV-:��צG���um��Pܴ:Po٥gw�=\�g㰑s�=��m+���f�ǭ?M���踵K�:u��;3��|$r���gGO����]���������`�|�	�߀�ٰ���Fh��"��|ɩeSTi	�Tv��Q!�5V�~����,��b�/ꅢ�+�h#�7�c_:���wِDi�H&�d��6R���R9��X�fO��%vYZ�QV�%������W��f�p�i��X6�͗�͉&�t��g�{���k
�a�z�	���f�w\2�虒Vz��|>��|Nꧧ�^*j�����Jj���J��p��]�X#�D�xk����+�|)l���+���8l��;#������Vk��خ�f��R�꧘�*n��i���z����-L�����n���{����� �����ׯL��j�7�����Y����_|Y��q[��3�1����#���������l^��ܬ����l���l�����@����B����6���PGٶ�ILr�!;���-s�
�/��u�W��r֌z��fs���ho��կ��v�n��r��]7ހ�-�ށs緓��M�ً����^���݃+>���J~g��z[N9�r�,+ϴ�|�S5�~�Ч']���N���n{���%������z\u��8��S����cθ�?'��0O|�g�� 	����C����S�'��s���Go�{փ����_���������������'?�]Jt�C��HG��NiH�!Ⱥ	&0w��i�A�� ��<��O�_�'���kx+`
	��r�\3�aUX�M��A'�C�/��eXD�䇝��y8E#ίP���E"�*�����׬��*:ь0C]�4��up(\���:f��w�`�A>Vpu#� IH��{&l�"�XF0��c<�#�8I2�"��7�DFrL�ԁ&;�FO����%fFI�F�򓖔�*��JI��le!��E���e��2[�Ҙ�<f��F<�����#�h�iZ����&5�y�?vs/��8������4�.��Β̒��\�<㉜w��D�<1dOt�S�����	CuԠ �<�'�t3��$����V��}}�CL�^�Ό�6���o�Ѥ��&JK�Җzӥ$�LgJSj�&���>/zЍ�2�@�iB�J�'5�C��Owj!�&R�]jO�tT-&U�W�*U�Y��bիZ�W�Ѭ���j&��ѳB\ �#I18�l�����Ia�W��U�)%VMK��2�+[-�ֶfN��c���U��eje7[	w^��h��f%�m`�:��[9��\��Am,eI;Z�X��D\fU+ZKb�N=�lk�[�z�&�M�r����:���@�ns۝Z��;Yms�!���"���.&���㒨EGx��]��s���u���������|��Zগ��%oZ�_-Ԁٝm|	�]��w��n/�A߄ x��pz1aUb�>�o-��s�6��vL^�D�� 1̋=�� ����pB*���ϴ�.N��cwx'(�hm����no����/^��;� �$f�>��]'��P��|����0��?�-R�L���dǆѱ:���3�y�Rx�;"�c�(������tO�dB38�l�(�T�C/����JW����G�Ux�Q�ԯ>#�����SVY��J��2kn�5��͵�i*��ə��U0�C��j���rD<\e;������=mh3���ƶ���i;ٻ���jk��4w�˭?N��ӄ��]��z��~ķ]�m�]��߄쵷��mj����ơ��n�&\^g��I��$J��w��W�mrO�d�8Ƿ�?6��θ�U>�e�&'yā��m��Ӟ��J�moz߻�<�9��N���N�)��ŗ�rmW<�1/9�'��^N]�o�0�t��|�_O��;�����zٯg�w��`';�ǎu���5�w�gts��;�><��o����O�Ӑ�p�{]�u�;�!���3}��|j�n�ǳ��d���/y�3T�vO}S�>zϷ�[�pI�y�����{�EOϼ�t�����wT��B?>�����;I��8�]����=�����o���~���~�cK��W?e�3��_�����ه�����ǟ�������܍6|ʷs�7�W���|��,�׀85��x����}�~VU��������~�iE"���=s%~�ׁ�w��ǁG�r�g0؂3(�C&�!h���F#|�'�	H�
h��W�x�J(X��P�-({;x�<h��G�>��=�8)Z+�V84Hyc�8d/��Wh�F��]��m�ykȅrx�9H�\Ɔx�� �|G��"�HX|�8|F��K��I�;Q���(�u:Ȃs(�.�wȇ����7��h�n�D_�y}��~ge(}�؊�Hqu���(����h���K�H��8��8�8� �wø��؈L��ʘ��Ȉ1���1��X�����87�V�Ո��x��$�z����b�I׍����2��h�Ȏ������bi���؎�2�e���X�����=�X��ؐY
 E^:�j>�+��#��Έ��x���	4�0�u�x��&][�v���.9���fْ�X�'��H����X��h���=�8	�49�ByuEɊ�؋I�*)�rM��Hi�
��FI�V	�f�1��)���9�ȸ�e����l��huG��������ȓr����R��~��h�sY�7)���TIl�8��ɕy�r�ɒ�9�x9'����I��  Й��A�9 E���I�`��i �y��)�������9 �)��������ɛ�9��������ٛ�����9����ɜϩ�͉���ǹ��Y��y�Ӊ��i��Y��	�ܩ��ٖ��  ;    r �   