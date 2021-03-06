FasdUAS 1.101.10   ��   ��    k             l      ��  ��   60
Filelock: to lock and unlock files in Mac OS X with 3 simple questions
Author: Jason Campisi
Version 0.5.1 
Date: 02/01/12-12/5/15 released under the gpl 2 or higher
History: Created so that I could give it away to IT Consulting clients.
Note: This program is merely a front-end to the�chflags command.     � 	 	` 
 F i l e l o c k :   t o   l o c k   a n d   u n l o c k   f i l e s   i n   M a c   O S   X   w i t h   3   s i m p l e   q u e s t i o n s 
 A u t h o r :   J a s o n   C a m p i s i 
 V e r s i o n   0 . 5 . 1   
 D a t e :   0 2 / 0 1 / 1 2 - 1 2 / 5 / 1 5   r e l e a s e d   u n d e r   t h e   g p l   2   o r   h i g h e r 
 H i s t o r y :   C r e a t e d   s o   t h a t   I   c o u l d   g i v e   i t   a w a y   t o   I T   C o n s u l t i n g   c l i e n t s . 
 N o t e :   T h i s   p r o g r a m   i s   m e r e l y   a   f r o n t - e n d   t o   t h e � c h f l a g s   c o m m a n d .    
  
 l     ��������  ��  ��        j     �� �� 0 lockorunlock lockORunlock  m        �    U n l o c k      j    �� �� 0 adminyesorno adminYesOrNo  m       �    N o      j    	�� �� 0 filelist fileList  J    ����        l     ��������  ��  ��        i   
     I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 these_items  ��    l       ! "   k      # #  $ % $ l     �� & '��   & < 6 This droplet processes files dropped onto the applet     ' � ( ( l   T h i s   d r o p l e t   p r o c e s s e s   f i l e s   d r o p p e d   o n t o   t h e   a p p l e t   %  ) * ) l     �� + ,��   + M G NOTE that the variable these_items is a file reference in alias format    , � - - �   N O T E   t h a t   t h e   v a r i a b l e   t h e s e _ i t e m s   i s   a   f i l e   r e f e r e n c e   i n   a l i a s   f o r m a t *  . / . l     �� 0 1��   0 D > http://www.macosxautomation.com/applescript/sbrt/sbrt-10.html    1 � 2 2 |   h t t p : / / w w w . m a c o s x a u t o m a t i o n . c o m / a p p l e s c r i p t / s b r t / s b r t - 1 0 . h t m l /  3 4 3 I     �������� 0 	resetlist 	resetList��  ��   4  5 6 5 l    7 8 9 7 s     : ; : o    ���� 0 these_items   ; o      ���� 0 filelist fileList 8 J Dmove the dropped list_of_files and folders onto the global file list    9 � < < � m o v e   t h e   d r o p p e d   l i s t _ o f _ f i l e s   a n d   f o l d e r s   o n t o   t h e   g l o b a l   f i l e   l i s t 6  =�� = I   ������
�� .aevtoappnull  �   � ****��  ��  ��   !  droplet code    " � > >  d r o p l e t   c o d e   ? @ ? l     ��������  ��  ��   @  A B A i     C D C I      �������� 0 	resetlist 	resetList��  ��   D l     E F G E r      H I H J     ����   I o      ���� 0 filelist fileList F a [empty list�. stops bug from keeping that info in memory for a while after the program exits    G � J J � e m p t y   l i s t & .   s t o p s   b u g   f r o m   k e e p i n g   t h a t   i n f o   i n   m e m o r y   f o r   a   w h i l e   a f t e r   t h e   p r o g r a m   e x i t s B  K L K l     ��������  ��  ��   L  M N M i     O P O I     ������
�� .aevtoappnull  �   � ****��  ��   P k     " Q Q  R S R Z      T U���� T =     V W V I     �������� ,0 threesimplequestions threeSimpleQuestions��  ��   W m    ��
�� 
null U l  
  X Y Z X k   
  [ [  \ ] \ l  
 
�� ^ _��   ^  		try    _ � ` ` 
 	 	 t r y ]  a b a l  
 
�� c d��   c � �			display dialog "Good bye." with title "Closing Filelock!" with icon alias ((path to me) & getIconLock() as string) buttons {"Cancel", "OK"} default button 2    d � e e> 	 	 	 d i s p l a y   d i a l o g   " G o o d   b y e . "   w i t h   t i t l e   " C l o s i n g   F i l e l o c k ! "   w i t h   i c o n   a l i a s   ( ( p a t h   t o   m e )   &   g e t I c o n L o c k ( )   a s   s t r i n g )   b u t t o n s   { " C a n c e l " ,   " O K " }   d e f a u l t   b u t t o n   2 b  f g f l  
 
�� h i��   h Z T		on error StrError -- cancel selected, so do not shutdown program and keep using it    i � j j � 	 	 o n   e r r o r   S t r E r r o r   - -   c a n c e l   s e l e c t e d ,   s o   d o   n o t   s h u t d o w n   p r o g r a m   a n d   k e e p   u s i n g   i t g  k l k l  
 
�� m n��   m  			run    n � o o  	 	 	 r u n l  p q p l  
 
�� r s��   r  			end try    s � t t  	 	 e n d   t r y q  u v u I   
 �������� 0 	resetlist 	resetList��  ��   v  w�� w L    ����  ��   Y  to lock or unlock?    Z � x x $ t o   l o c k   o r   u n l o c k ?��  ��   S  y z y l    { | } { I    �������� "0 changefilestate changeFileState��  ��   | ' !lock or unlock locations gathered    } � ~ ~ B l o c k   o r   u n l o c k   l o c a t i o n s   g a t h e r e d z  ��  I    "�������� 0 	resetlist 	resetList��  ��  ��   N  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 geticonlock getIconLock��  ��   � Z      � ��� � � =     � � � o     ���� 0 lockorunlock lockORunlock � m     � � � � �  U n l o c k � L   
  � � m   
  � � � � � < C o n t e n t s : R e s o u r c e s : u n l o c k . i c n s��   � L     � � m     � � � � � 8 C o n t e n t s : R e s o u r c e s : l o c k . i c n s �  � � � l     ��������  ��  ��   �  � � � i     � � � I      ��������  0 geticonwarning getIconWarning��  ��   � Z      � ��� � � =     � � � o     ���� 0 lockorunlock lockORunlock � m     � � � � �  U n l o c k � L   
  � � m   
  � � � � � L C o n t e n t s : R e s o u r c e s : u n l o c k _ w a r n i n g . i c n s��   � L     � � m     � � � � � H C o n t e n t s : R e s o u r c e s : l o c k _ w a r n i n g . i c n s �  � � � l     ��������  ��  ��   �  � � � i    ! � � � I      �������� ,0 threesimplequestions threeSimpleQuestions��  ��   � k    � � �  � � � l     �� � ���   �  
Question 1    � � � �  Q u e s t i o n   1 �  � � � r      � � � m      � � � � � N W o u l d   y o u   l i k e   t o   l o c k   o r   u n l o c k   f i l e s ? � o      ���� 0 	dialogmsg 	dialogMsg �  � � � r     � � � J    	 � �  � � � m     � � � � �  E x i t �  � � � m     � � � � �  L o c k �  ��� � m     � � � � �  U n l o c k��   � o      ���� 0 buttonchoices buttonChoices �  � � � Q    A � � � � r    5 � � � n    / � � � 1   + /��
�� 
bhit � l   + ����� � I   +�� � �
�� .sysodlogaskr        TEXT � o    ���� 0 	dialogmsg 	dialogMsg � �� � �
�� 
disp � 4    �� �
�� 
alis � l    ����� � c     � � � b     � � � l    ����� � I   �� ���
�� .earsffdralis        afdr �  f    ��  ��  ��   � m     � � � � � 8 C o n t e n t s : R e s o u r c e s : l o c k . i c n s � m    ��
�� 
TEXT��  ��   � �� � �
�� 
btns � o    ���� 0 buttonchoices buttonChoices � �� � �
�� 
dflt � m     ! � � � � �  U n l o c k � �� � �
�� 
cbtn � m   " # � � � � �  E x i t � �� ���
�� 
appr � m   $ % � � � � � " L o c k / U n l o c k   F i l e s��  ��  ��   � o      ���� 0 lockorunlock lockORunlock � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 strerror StrError��   � l  = A � � � � L   = A � � m   = @��
�� 
null � "  error: -128 --exit selected    � � � � 8   e r r o r :   - 1 2 8   - - e x i t   s e l e c t e d �  � � � l  B B��������  ��  ��   �  � � � r   B G � � � m   B E � � � � �  u n l o c k : � o      ���� 0 chgstate chgState �  � � � Z   H ] � ����� � =  H Q �  � o   H M���� 0 lockorunlock lockORunlock  m   M P �  L o c k � r   T Y m   T W � 
 l o c k : o      ���� 0 chgstate chgState��  ��   �  l  ^ ^��	
��  	  Question 2	   
 �  Q u e s t i o n   2 	  r   ^ m b   ^ k b   ^ g m   ^ a � @ U s e   a d m i n i s t r a t o r   p r i v i l e g e s   t o   o   a f���� 0 lockorunlock lockORunlock m   g j �    t h e s e   f i l e s ? o      ���� 0 	dialogmsg 	dialogMsg  r   n x J   n v  m   n q �    Y e s !��! m   q t"" �##  N o��   o      ���� 0 buttonchoices buttonChoices $%$ r   y �&'& n   y �()( 1   � ��
� 
bhit) l  y �*�~�}* I  y ��|+,
�| .sysodlogaskr        TEXT+ o   y z�{�{ 0 	dialogmsg 	dialogMsg, �z-.
�z 
disp- 4   { ��y/
�y 
alis/ l  } �0�x�w0 c   } �121 b   } �343 l  } �5�v�u5 I  } ��t6�s
�t .earsffdralis        afdr6  f   } ~�s  �v  �u  4 I   � ��r�q�p�r  0 geticonwarning getIconWarning�q  �p  2 m   � ��o
�o 
TEXT�x  �w  . �n78
�n 
btns7 o   � ��m�m 0 buttonchoices buttonChoices8 �l9:
�l 
dflt9 m   � �;; �<<  N o: �k=�j
�k 
appr= b   � �>?> o   � ��i�i 0 lockorunlock lockORunlock? m   � �@@ �AA    f i l e s . . .�j  �~  �}  ' o      �h�h 0 adminyesorno adminYesOrNo% BCB l  � ��g�f�e�g  �f  �e  C DED Z   � �FG�d�cF l  � �H�b�aH ?   � �IJI l  � �K�`�_K I  � ��^L�]
�^ .corecnte****       ****L o   � ��\�\ 0 filelist fileList�]  �`  �_  J m   � ��[�[  �b  �a  G l  � �MNOM L   � �PP m   � ��Z�Z N @ :if list is not empty then droplet does not need question 3   O �QQ t i f   l i s t   i s   n o t   e m p t y   t h e n   d r o p l e t   d o e s   n o t   n e e d   q u e s t i o n   3�d  �c  E RSR l  � ��YTU�Y  T  msg("yay list is empty")   U �VV 0 m s g ( " y a y   l i s t   i s   e m p t y " )S WXW l  � ��X�W�V�X  �W  �V  X YZY l  � ��U[\�U  [  
Question 3   \ �]]  Q u e s t i o n   3Z ^_^ r   � �`a` b   � �bcb m   � �dd �ee R C h o o s e   a   f o l d e r   o r   s e l e c t   w h i c h   f i l e s   t o  c o   � ��T�T 0 chgstate chgStatea o      �S�S 0 	dialogmsg 	dialogMsg_ fgf r   � �hih J   � �jj klk m   � �mm �nn  C a n c e ll opo m   � �qq �rr  F o l d e rp s�Rs m   � �tt �uu 
 F i l e s�R  i o      �Q�Q 0 buttonchoices buttonChoicesg vwv Q   �xyzx r   �{|{ n   �}~} 1  �P
�P 
bhit~ l  ��O�N I  ��M��
�M .sysodlogaskr        TEXT� o   � ��L�L 0 	dialogmsg 	dialogMsg� �K��
�K 
disp� 4   � ��J�
�J 
alis� l  � ���I�H� c   � ���� b   � ���� l  � ���G�F� I  � ��E��D
�E .earsffdralis        afdr�  f   � ��D  �G  �F  � I   � ��C�B�A�C 0 geticonlock getIconLock�B  �A  � m   � ��@
�@ 
TEXT�I  �H  � �?��
�? 
btns� o   � ��>�> 0 buttonchoices buttonChoices� �=��
�= 
dflt� m   � ��� ��� 
 F i l e s� �<��;
�< 
appr� b   � ���� o   � ��:�: 0 lockorunlock lockORunlock� m   � ��� ���    f i l e s . . .�;  �O  �N  | o      �9�9 0 
openchoice 
openChoicey R      �8��7
�8 .ascrerr ****      � ****� o      �6�6 0 strerror StrError�7  z l ���� L  �� m  �5
�5 
null�  cancel selected   � ���  c a n c e l   s e l e c t e dw ��� l �4���4  � ( "gather files or folder location(s)   � ��� D g a t h e r   f i l e s   o r   f o l d e r   l o c a t i o n ( s )� ��� l �3���3  � : 4below code will offer hidden files/folders to select   � ��� h b e l o w   c o d e   w i l l   o f f e r   h i d d e n   f i l e s / f o l d e r s   t o   s e l e c t� ��� l �2�1�0�2  �1  �0  � ��� Z  ������ = ��� o  �/�/ 0 
openchoice 
openChoice� m  �� ��� 
 F i l e s� k  Y�� ��� Q  W���� k   K�� ��� r   '��� b   %��� m   #�� ��� > C h o o s e   t h e   f i l e ( s )   y o u   w a n t   t o  � o  #$�.�. 0 chgstate chgState� o      �-�- $0 choosefiledialog chooseFileDialog� ��,� r  (K��� I (E�+�*�
�+ .sysostdfalis    ��� null�*  � �)��
�) 
dflc� l ,3��(�'� I ,3�&��%
�& .earsffdralis        afdr� m  ,/�$
�$ afdrdesk�%  �(  �'  � �#��
�# 
prmp� o  67�"�" $0 choosefiledialog chooseFileDialog� �!��
�! 
mlsl� m  >?� 
�  boovtrue� ���
� 
lfiv�  � o      �� 0 filelist fileList�,  � R      ���
� .ascrerr ****      � ****� o      �� 0 strerror StrError�  � l SW���� L  SW�� m  SV�
� 
null�  cancel selected   � ���  c a n c e l   s e l e c t e d� ��� l XX����  � 1 +display dialog "dropped files: " & fileList   � ��� V d i s p l a y   d i a l o g   " d r o p p e d   f i l e s :   "   &   f i l e L i s t� ��� l XX����  �  return   � ���  r e t u r n�  � ��� = \a��� o  \]�� 0 
openchoice 
openChoice� m  ]`�� ���  F o l d e r� ��� Q  d����� k  g��� ��� l gg����  � k e			set oneFolder to choose folder with prompt "Choose the folder whose files you want to " & chgState   � ��� � 	 	 	 s e t   o n e F o l d e r   t o   c h o o s e   f o l d e r   w i t h   p r o m p t   " C h o o s e   t h e   f o l d e r   w h o s e   f i l e s   y o u   w a n t   t o   "   &   c h g S t a t e� ��� l gg����  � % 			copy {oneFolder} to fileList   � ��� > 	 	 	 c o p y   { o n e F o l d e r }   t o   f i l e L i s t� ��� s  g���� J  g|�� ��� I gz���
� .sysostflalis    ��� null�  � ���
� 
prmp� b  kp��� m  kn�� ��� T C h o o s e   t h e   f o l d e r   w h o s e   f i l e s   y o u   w a n t   t o  � o  no�� 0 chgstate chgState� ���

� 
lfiv� m  st�	
�	 boovtrue�
  �  � o      �� 0 filelist fileList�  � R      ���
� .ascrerr ****      � ****� o      �� 0 strerror StrError�  � l ��   L  �� m  ���
� 
null  cancel selected    �  c a n c e l   s e l e c t e d�  � l �� L  �� m  ���
� 
null ; 5 base case exit cleanly if this part is every reached    �		 j   b a s e   c a s e   e x i t   c l e a n l y   i f   t h i s   p a r t   i s   e v e r y   r e a c h e d� 
�
 L  �� m  ���� �   �  l     � �����   ��  ��    i   " % I      ������ 0 msg   �� o      ���� 0 s  ��  ��   k       Q      I   ����
�� .sysodlogaskr        TEXT o    ���� 0 s  ��   R      ������
�� .ascrerr ****      � ****��  ��   L     m    ��
�� boovfals �� L     m    ��
�� boovtrue��    l     ��������  ��  ��    !  l     "#$" i   & )%&% I      �������� "0 changefilestate changeFileState��  ��  & l    �'()' k     �** +,+ l      ��-.��  - z tSet the flag to either lock or unlock	-unlock a file: chflags -R nouchg ./*	-lock    a file: chflags -R uchg ./*     . �// � S e t   t h e   f l a g   t o   e i t h e r   l o c k   o r   u n l o c k  	 - u n l o c k   a   f i l e :   c h f l a g s   - R   n o u c h g   . / *  	 - l o c k         a   f i l e :   c h f l a g s   - R   u c h g   . / *    , 010 l     ��23��  2  set cmdflag to "nouchg"   3 �44 . s e t   c m d f l a g   t o   " n o u c h g "1 565 l     ��������  ��  ��  6 787 Z     "9:;<9 =    =>= o     ���� 0 lockorunlock lockORunlock> m    ?? �@@  L o c k: r   
 ABA m   
 CC �DD  u c h gB o      ���� 0 cmdflag  ; EFE =   GHG o    ���� 0 lockorunlock lockORunlockH m    II �JJ  U n l o c kF K��K r    LML m    NN �OO  n o u c h gM o      ���� 0 cmdflag  ��  < L     "����  8 PQP l  # #��RS��  R ( "msg(lockORunlock & "==" & cmdflag)   S �TT D m s g ( l o c k O R u n l o c k   &   " = = "   &   c m d f l a g )Q UVU l  # #��WX��  W , &display dialog "fileLIST: " & fileList   X �YY L d i s p l a y   d i a l o g   " f i l e L I S T :   "   &   f i l e L i s tV Z��Z X   # �[��\[ l  7 �]^_] k   7 �`` aba l  7 7��cd��  c B <msg("what is oneItem: " & POSIX path of (oneItem as string))   d �ee x m s g ( " w h a t   i s   o n e I t e m :   "   &   P O S I X   p a t h   o f   ( o n e I t e m   a s   s t r i n g ) )b f��f Q   7 �gh��g k   : �ii jkj r   : Mlml b   : Knon b   : Ipqp b   : Arsr b   : ?tut b   : =vwv m   : ;xx �yy  c h f l a g s   - Rw 1   ; <��
�� 
spacu o   = >���� 0 cmdflag  s 1   ? @��
�� 
spacq n   A Hz{z 1   F H��
�� 
strq{ n   A F|}| 1   D F��
�� 
psxp} l  A D~����~ c   A D� o   A B���� 0 oneitem oneItem� m   B C��
�� 
TEXT��  ��  o m   I J�� ��� $   > / d e v / n u l l   2 > & 1   &m o      ���� 0 shellcommand shellCommandk ��� l  N N������  �  msg(shellCommand)   � ��� " m s g ( s h e l l C o m m a n d )� ��� Z   N ������� =  N U��� o   N S���� 0 adminyesorno adminYesOrNo� m   S T�� ���  Y e s� Q   X ����� I  [ b����
�� .sysoexecTEXT���     TEXT� o   [ \���� 0 shellcommand shellCommand� �����
�� 
badm� m   ] ^��
�� boovtrue��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 strerror StrError��  � Q   j ����� I  m �����
�� .sysodlogaskr        TEXT� b   m z��� b   m v��� m   m p�� ���  F a i l e d   t o  � o   p u���� 0 lockorunlock lockORunlock� m   v y�� ��� 8   f i l e ( s ) &   C l o s i n g   F i l e l o c k !  � ����
�� 
disp� 4   } ����
�� 
alis� l  � ������� c   � ���� b   � ���� l  � ������� I  � ������
�� .earsffdralis        afdr�  f   � ���  ��  ��  � I   � ���������  0 geticonwarming getIconWarming��  ��  � m   � ���
�� 
TEXT��  ��  � �����
�� 
appr� b   � ���� o   � ����� 0 strerror StrError� m   � ��� ���  . . .��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 strerror StrError��  � l  � ����� I   � ��������� "0 changefilestate changeFileState��  ��  � ) # cancel selected, so don't shutdown   � ��� F   c a n c e l   s e l e c t e d ,   s o   d o n ' t   s h u t d o w n��  � I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 shellcommand shellCommand��  � ���� l  � �������  �  *)   � ���  * )��  h R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ^ 7 1 cycle through the gathered list of files/folders   _ ��� b   c y c l e   t h r o u g h   t h e   g a t h e r e d   l i s t   o f   f i l e s / f o l d e r s�� 0 oneitem oneItem\ o   & +���� 0 filelist fileList��  ( , &fileList, lockORunlock, adminYesOrNo)	   ) ��� L f i l e L i s t ,   l o c k O R u n l o c k ,   a d m i n Y e s O r N o ) 	# , &(fileList, lockORunlock, adminYesOrNo)   $ ��� L ( f i l e L i s t ,   l o c k O R u n l o c k ,   a d m i n Y e s O r N o )! ���� l     ��������  ��  ��  ��       ���  �����������  � ������������������������ 0 lockorunlock lockORunlock�� 0 adminyesorno adminYesOrNo�� 0 filelist fileList
�� .aevtodocnull  �    alis�� 0 	resetlist 	resetList
�� .aevtoappnull  �   � ****�� 0 geticonlock getIconLock��  0 geticonwarning getIconWarning�� ,0 threesimplequestions threeSimpleQuestions�� 0 msg  �� "0 changefilestate changeFileState� ������  ��  � �� ��������
�� .aevtodocnull  �    alis�� 0 these_items  ��  � ���� 0 these_items  � ������ 0 	resetlist 	resetList
�� .aevtoappnull  �   � ****�� *j+  O�EQc  O*j � �� D���������� 0 	resetlist 	resetList��  ��  �  �  �� 	jvEc  � �� P��������
�� .aevtoappnull  �   � ****��  ��  �  � ��������� ,0 threesimplequestions threeSimpleQuestions
�� 
null�� 0 	resetlist 	resetList� "0 changefilestate changeFileState�� #*j+  �  *j+ OhY hO*j+ O*j+ � �~ ��}�|���{�~ 0 geticonlock getIconLock�}  �|  �  �  � � ��{ b   �  �Y �� �z ��y�x���w�z  0 geticonwarning getIconWarning�y  �x  �  �  � � ��w b   �  �Y �� �v ��u�t���s�v ,0 threesimplequestions threeSimpleQuestions�u  �t  � �r�q�p�o�n�m�r 0 	dialogmsg 	dialogMsg�q 0 buttonchoices buttonChoices�p 0 strerror StrError�o 0 chgstate chgState�n 0 
openchoice 
openChoice�m $0 choosefiledialog chooseFileDialog� 5 � � � ��l�k�j ��i�h�g ��f ��e ��d�c�b�a�`�_ �"�^;@�]�\dmqt�[�����Z�Y�X�W�V�U���T�S
�l 
disp
�k 
alis
�j .earsffdralis        afdr
�i 
TEXT
�h 
btns
�g 
dflt
�f 
cbtn
�e 
appr�d 

�c .sysodlogaskr        TEXT
�b 
bhit�a 0 strerror StrError�`  
�_ 
null�^  0 geticonwarning getIconWarning�] 
�\ .corecnte****       ****�[ 0 geticonlock getIconLock
�Z 
dflc
�Y afdrdesk
�X 
prmp
�W 
mlsl
�V 
lfiv
�U .sysostdfalis    ��� null�T 
�S .sysostflalis    ��� null�s��E�O���mvE�O +��*�)j �%�&/�������a  a ,Ec   W X  a Oa E�Ob   a   
a E�Y hOa b   %a %E�Oa a lvE�O��*�)j *j+ %�&/��a �b   a %a   a ,Ec  Ob  j !j kY hOa "�%E�Oa #a $a %mvE�O 3��*�)j *j+ &%�&/��a '�b   a (%a   a ,E�W X  a O�a )  A 0a *�%E�O*a +a ,j a -�a .ea /ea   0Ec  W X  a OPY <�a 1  0 !*a -a 2�%a /ea 3 4kvEQc  W X  a Y a Ok� �R�Q�P���O�R 0 msg  �Q �N��N �  �M�M 0 s  �P  � �L�L 0 s  � �K�J�I
�K .sysodlogaskr        TEXT�J  �I  �O  
�j  W 	X  fOe� �H&�G�F���E�H "0 changefilestate changeFileState�G  �F  � �D�C�B�A�D 0 cmdflag  �C 0 oneitem oneItem�B 0 shellcommand shellCommand�A 0 strerror StrError� ?CIN�@�?�>x�=�<�;�:���9�8�7�6���5�4�3�2�1��0�/�.�-
�@ 
kocl
�? 
cobj
�> .corecnte****       ****
�= 
spac
�< 
TEXT
�; 
psxp
�: 
strq
�9 
badm
�8 .sysoexecTEXT���     TEXT�7 0 strerror StrError�6  
�5 
disp
�4 
alis
�3 .earsffdralis        afdr�2  0 geticonwarming getIconWarming
�1 
appr�0 
�/ .sysodlogaskr        TEXT�. "0 changefilestate changeFileState�-  �E �b   �  �E�Y b   �  �E�Y hO �b  [��l kh  ��%�%�%��&�,�,%�%E�Ob  �  W ��el W GX   5a b   %a %a *a )j *j+ %�&/a �a %a  W X  *j+ Y �j OPW X  h[OY�t ascr  ��ޭ