FasdUAS 1.101.10   ��   ��    k             l      ��  ��   /)
Filelock: to lock and unlock files in Mac OS X with 3 simple questions
Author: Jason Campisi
Version 0.4 
Date: 02/01/12 released under the gpl 2 or higher
History: Created to so that I could give it away to IT Consulting clients.
Note: This program is merely a front-end to the�chflags command.     � 	 	R 
 F i l e l o c k :   t o   l o c k   a n d   u n l o c k   f i l e s   i n   M a c   O S   X   w i t h   3   s i m p l e   q u e s t i o n s 
 A u t h o r :   J a s o n   C a m p i s i 
 V e r s i o n   0 . 4   
 D a t e :   0 2 / 0 1 / 1 2   r e l e a s e d   u n d e r   t h e   g p l   2   o r   h i g h e r 
 H i s t o r y :   C r e a t e d   t o   s o   t h a t   I   c o u l d   g i v e   i t   a w a y   t o   I T   C o n s u l t i n g   c l i e n t s . 
 N o t e :   T h i s   p r o g r a m   i s   m e r e l y   a   f r o n t - e n d   t o   t h e � c h f l a g s   c o m m a n d .    
  
 l     ��������  ��  ��        j     �� �� 0 lockorunlock lockORunlock  m        �    U n l o c k      j    �� �� 0 adminyesorno adminYesOrNo  m       �    N o      j    	�� �� 0 filelist fileList  J    ����        l     ��������  ��  ��        i   
     I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 these_items  ��    l       ! "   k      # #  $ % $ l     �� & '��   & < 6 This droplet processes files dropped onto the applet     ' � ( ( l   T h i s   d r o p l e t   p r o c e s s e s   f i l e s   d r o p p e d   o n t o   t h e   a p p l e t   %  ) * ) l     �� + ,��   + M G NOTE that the variable these_items is a file reference in alias format    , � - - �   N O T E   t h a t   t h e   v a r i a b l e   t h e s e _ i t e m s   i s   a   f i l e   r e f e r e n c e   i n   a l i a s   f o r m a t *  . / . l     �� 0 1��   0 D > http://www.macosxautomation.com/applescript/sbrt/sbrt-10.html    1 � 2 2 |   h t t p : / / w w w . m a c o s x a u t o m a t i o n . c o m / a p p l e s c r i p t / s b r t / s b r t - 1 0 . h t m l /  3 4 3 I     �������� 0 	resetlist 	resetList��  ��   4  5 6 5 l    7 8 9 7 s     : ; : o    ���� 0 these_items   ; o      ���� 0 filelist fileList 8 J Dmove the dropped list_of_files and folders onto the global file list    9 � < < � m o v e   t h e   d r o p p e d   l i s t _ o f _ f i l e s   a n d   f o l d e r s   o n t o   t h e   g l o b a l   f i l e   l i s t 6  =�� = I   ������
�� .aevtoappnull  �   � ****��  ��  ��   !  droplet code    " � > >  d r o p l e t   c o d e   ? @ ? l     ��������  ��  ��   @  A B A i     C D C I      �������� 0 	resetlist 	resetList��  ��   D l     E F G E r      H I H J     ����   I o      ���� 0 filelist fileList F a [empty list�. stops bug from keeping that info in memory for a while after the program exits    G � J J � e m p t y   l i s t & .   s t o p s   b u g   f r o m   k e e p i n g   t h a t   i n f o   i n   m e m o r y   f o r   a   w h i l e   a f t e r   t h e   p r o g r a m   e x i t s B  K L K l     ��������  ��  ��   L  M N M i     O P O I     ������
�� .aevtoappnull  �   � ****��  ��   P k     R Q Q  R S R Z     F T U���� T =     V W V I     �������� ,0 threesimplequestions threeSimpleQuestions��  ��   W m    ��
�� 
null U l  
 B X Y Z X k   
 B [ [  \ ] \ Q   
 9 ^ _ ` ^ I   ,�� a b
�� .sysodlogaskr        TEXT a m     c c � d d  G o o d   b y e . b �� e f
�� 
appr e m     g g � h h " C l o s i n g   F i l e l o c k ! f �� i j
�� 
disp i 4    !�� k
�� 
alis k l     l���� l c      m n m b     o p o l    q���� q I   �� r��
�� .earsffdralis        afdr r  f    ��  ��  ��   p I    �������� 0 geticonlock getIconLock��  ��   n m    ��
�� 
TEXT��  ��   j �� s t
�� 
btns s J   " & u u  v w v m   " # x x � y y  C a n c e l w  z�� z m   # $ { { � | |  O K��   t �� }��
�� 
dflt } m   ' (���� ��   _ R      �� ~��
�� .ascrerr ****      � **** ~ o      ���� 0 strerror StrError��   ` l  4 9  � �  I  4 9������
�� .aevtoappnull  �   � ****��  ��   � D > cancel selected, so do not shutdown program and keep using it    � � � � |   c a n c e l   s e l e c t e d ,   s o   d o   n o t   s h u t d o w n   p r o g r a m   a n d   k e e p   u s i n g   i t ]  � � � I   : ?�������� 0 	resetlist 	resetList��  ��   �  ��� � L   @ B����  ��   Y  to lock or unlock?    Z � � � $ t o   l o c k   o r   u n l o c k ?��  ��   S  � � � l  G L � � � � I   G L�������� 0 
unlockfile 
unlockFile��  ��   � ' !lock or unlock locations gathered    � � � � B l o c k   o r   u n l o c k   l o c a t i o n s   g a t h e r e d �  ��� � I   M R�������� 0 	resetlist 	resetList��  ��  ��   N  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 geticonlock getIconLock��  ��   � Z      � ��� � � =     � � � o     ���� 0 lockorunlock lockORunlock � m     � � � � �  U n l o c k � L   
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
cbtn � m   " # � � � � �  E x i t � � ��~
� 
appr � m   $ % � � � � � " L o c k / U n l o c k   F i l e s�~  ��  ��   � o      �}�} 0 lockorunlock lockORunlock � R      �| ��{
�| .ascrerr ****      � **** � o      �z�z 0 strerror StrError�{   � l  = A � � � � L   = A � � m   = @�y
�y 
null � "  error: -128 --exit selected    � �   8   e r r o r :   - 1 2 8   - - e x i t   s e l e c t e d �  l  B B�x�x   
 	(*	    �  	 ( * 	  r   B G	 m   B E

 �  u n l o c k :	 o      �w�w 0 chgstate chgState  Z   H ]�v�u =  H Q o   H M�t�t 0 lockorunlock lockORunlock m   M P �  L o c k r   T Y m   T W � 
 l o c k : o      �s�s 0 chgstate chgState�v  �u    l  ^ ^�r�r    Question 2	    �  Q u e s t i o n   2 	  r   ^ m  b   ^ k!"! b   ^ g#$# m   ^ a%% �&& @ U s e   a d m i n i s t r a t o r   p r i v i l e g e s   t o  $ o   a f�q�q 0 lockorunlock lockORunlock" m   g j'' �((    t h e s e   f i l e s ?  o      �p�p 0 	dialogmsg 	dialogMsg )*) r   n x+,+ J   n v-- ./. m   n q00 �11  Y e s/ 2�o2 m   q t33 �44  N o�o  , o      �n�n 0 buttonchoices buttonChoices* 565 l  y y�m78�m  7 � �	set adminYesOrNo to button returned of (display dialog dialogMsg with icon 2 buttons buttonChoices default button "No" with title lockORunlock & " files...")   8 �99< 	 s e t   a d m i n Y e s O r N o   t o   b u t t o n   r e t u r n e d   o f   ( d i s p l a y   d i a l o g   d i a l o g M s g   w i t h   i c o n   2   b u t t o n s   b u t t o n C h o i c e s   d e f a u l t   b u t t o n   " N o "   w i t h   t i t l e   l o c k O R u n l o c k   &   "   f i l e s . . . " )6 :;: r   y �<=< n   y �>?> 1   � ��l
�l 
bhit? l  y �@�k�j@ I  y ��iAB
�i .sysodlogaskr        TEXTA o   y z�h�h 0 	dialogmsg 	dialogMsgB �gCD
�g 
dispC 4   { ��fE
�f 
alisE l  } �F�e�dF c   } �GHG b   } �IJI l  } �K�c�bK I  } ��aL�`
�a .earsffdralis        afdrL  f   } ~�`  �c  �b  J I   � ��_�^�]�_  0 geticonwarning getIconWarning�^  �]  H m   � ��\
�\ 
TEXT�e  �d  D �[MN
�[ 
btnsM o   � ��Z�Z 0 buttonchoices buttonChoicesN �YOP
�Y 
dfltO m   � �QQ �RR  N oP �XS�W
�X 
apprS b   � �TUT o   � ��V�V 0 lockorunlock lockORunlockU m   � �VV �WW    f i l e s . . .�W  �k  �j  = o      �U�U 0 adminyesorno adminYesOrNo; XYX l  � ��T�S�R�T  �S  �R  Y Z[Z Z   � �\]�Q�P\ l  � �^�O�N^ ?   � �_`_ l  � �a�M�La I  � ��Kb�J
�K .corecnte****       ****b o   � ��I�I 0 filelist fileList�J  �M  �L  ` m   � ��H�H  �O  �N  ] l  � �cdec L   � �ff m   � ��G�G d @ :if list is not empty then droplet does not need question 3   e �gg t i f   l i s t   i s   n o t   e m p t y   t h e n   d r o p l e t   d o e s   n o t   n e e d   q u e s t i o n   3�Q  �P  [ hih l  � ��Fjk�F  j  msg("yay list is empty")   k �ll 0 m s g ( " y a y   l i s t   i s   e m p t y " )i mnm l  � ��E�D�C�E  �D  �C  n opo l  � ��Bqr�B  q  
Question 3   r �ss  Q u e s t i o n   3p tut r   � �vwv b   � �xyx m   � �zz �{{ R C h o o s e   a   f o l d e r   o r   s e l e c t   w h i c h   f i l e s   t o  y o   � ��A�A 0 chgstate chgStatew o      �@�@ 0 	dialogmsg 	dialogMsgu |}| r   � �~~ J   � ��� ��� m   � ��� ���  C a n c e l� ��� m   � ��� ���  F o l d e r� ��?� m   � ��� ��� 
 F i l e s�?   o      �>�> 0 buttonchoices buttonChoices} ��� Q   ����� r   ���� n   ���� 1  �=
�= 
bhit� l  ���<�;� I  ��:��
�: .sysodlogaskr        TEXT� o   � ��9�9 0 	dialogmsg 	dialogMsg� �8��
�8 
disp� 4   � ��7�
�7 
alis� l  � ���6�5� c   � ���� b   � ���� l  � ���4�3� I  � ��2��1
�2 .earsffdralis        afdr�  f   � ��1  �4  �3  � I   � ��0�/�.�0 0 geticonlock getIconLock�/  �.  � m   � ��-
�- 
TEXT�6  �5  � �,��
�, 
btns� o   � ��+�+ 0 buttonchoices buttonChoices� �*��
�* 
dflt� m   � ��� ��� 
 F i l e s� �)��(
�) 
appr� b   � ���� o   � ��'�' 0 lockorunlock lockORunlock� m   � ��� ���    f i l e s . . .�(  �<  �;  � o      �&�& 0 
openchoice 
openChoice� R      �%��$
�% .ascrerr ****      � ****� o      �#�# 0 strerror StrError�$  � l ���� L  �� m  �"
�" 
null�  cancel selected   � ���  c a n c e l   s e l e c t e d� ��� l �!���!  � ( "gather files or folder location(s)   � ��� D g a t h e r   f i l e s   o r   f o l d e r   l o c a t i o n ( s )� ��� l � ���   � : 4below code will offer hidden files/folders to select   � ��� h b e l o w   c o d e   w i l l   o f f e r   h i d d e n   f i l e s / f o l d e r s   t o   s e l e c t� ��� l ����  �  �  � ��� Z  ������ = ��� o  �� 0 
openchoice 
openChoice� m  �� ��� 
 F i l e s� k  Y�� ��� Q  W���� k   K�� ��� r   '��� b   %��� m   #�� ��� > C h o o s e   t h e   f i l e ( s )   y o u   w a n t   t o  � o  #$�� 0 chgstate chgState� o      �� $0 choosefiledialog chooseFileDialog� ��� r  (K��� I (E���
� .sysostdfalis    ��� null�  � ���
� 
dflc� l ,3���� I ,3���
� .earsffdralis        afdr� m  ,/�
� afdrdesk�  �  �  � ���
� 
prmp� o  67�� $0 choosefiledialog chooseFileDialog� ���
� 
mlsl� m  >?�
� boovtrue� ���
� 
lfiv�  � o      �
�
 0 filelist fileList�  � R      �	��
�	 .ascrerr ****      � ****� o      �� 0 strerror StrError�  � l SW���� L  SW�� m  SV�
� 
null�  cancel selected   � ���  c a n c e l   s e l e c t e d� ��� l XX����  � 1 +display dialog "dropped files: " & fileList   � ��� V d i s p l a y   d i a l o g   " d r o p p e d   f i l e s :   "   &   f i l e L i s t� ��� l XX����  �  return   � ���  r e t u r n�  � ��� = \a��� o  \]�� 0 
openchoice 
openChoice� m  ]`�� ���  F o l d e r� ��� Q  d����� k  g��� ��� l gg�  �     k e			set oneFolder to choose folder with prompt "Choose the folder whose files you want to " & chgState    � � 	 	 	 s e t   o n e F o l d e r   t o   c h o o s e   f o l d e r   w i t h   p r o m p t   " C h o o s e   t h e   f o l d e r   w h o s e   f i l e s   y o u   w a n t   t o   "   &   c h g S t a t e�  l gg����   % 			copy {oneFolder} to fileList    � > 	 	 	 c o p y   { o n e F o l d e r }   t o   f i l e L i s t �� s  g�	
	 J  g| �� I gz����
�� .sysostflalis    ��� null��   ��
�� 
prmp b  kp m  kn � T C h o o s e   t h e   f o l d e r   w h o s e   f i l e s   y o u   w a n t   t o   o  no���� 0 chgstate chgState ����
�� 
lfiv m  st��
�� boovtrue��  ��  
 o      ���� 0 filelist fileList��  � R      ����
�� .ascrerr ****      � **** o      ���� 0 strerror StrError��  � l �� L  �� m  ����
�� 
null  cancel selected    �  c a n c e l   s e l e c t e d�  � l �� L  �� m  ����
�� 
null ; 5 base case exit cleanly if this part is every reached    � j   b a s e   c a s e   e x i t   c l e a n l y   i f   t h i s   p a r t   i s   e v e r y   r e a c h e d�  ��  L  ��!! m  ������ ��   � "#" l     ��������  ��  ��  # $%$ i   " %&'& I      ��(���� 0 msg  ( )��) o      ���� 0 s  ��  ��  ' k     ** +,+ Q     -./- I   ��0��
�� .sysodlogaskr        TEXT0 o    ���� 0 s  ��  . R      ������
�� .ascrerr ****      � ****��  ��  / L    11 m    ��
�� boovfals, 2��2 L    33 m    ��
�� boovtrue��  % 454 l     ��������  ��  ��  5 676 l     89:8 i   & );<; I      �������� 0 
unlockfile 
unlockFile��  ��  < l    �=>?= k     �@@ ABA l      ��CD��  C z tSet the flag to either lock or unlock	-unlock a file: chflags -R nouchg ./*	-lock    a file: chflags -R uchg ./*     D �EE � S e t   t h e   f l a g   t o   e i t h e r   l o c k   o r   u n l o c k  	 - u n l o c k   a   f i l e :   c h f l a g s   - R   n o u c h g   . / *  	 - l o c k         a   f i l e :   c h f l a g s   - R   u c h g   . / *    B FGF l     ��HI��  H  set cmdflag to "nouchg"   I �JJ . s e t   c m d f l a g   t o   " n o u c h g "G KLK l     ��������  ��  ��  L MNM Z     "OPQRO =    STS o     ���� 0 lockorunlock lockORunlockT m    UU �VV  L o c kP r   
 WXW m   
 YY �ZZ  u c h gX o      ���� 0 cmdflag  Q [\[ =   ]^] o    ���� 0 lockorunlock lockORunlock^ m    __ �``  U n l o c k\ a��a r    bcb m    dd �ee  n o u c h gc o      ���� 0 cmdflag  ��  R L     "����  N fgf l  # #��hi��  h ( "msg(lockORunlock & "==" & cmdflag)   i �jj D m s g ( l o c k O R u n l o c k   &   " = = "   &   c m d f l a g )g klk l  # #��mn��  m , &display dialog "fileLIST: " & fileList   n �oo L d i s p l a y   d i a l o g   " f i l e L I S T :   "   &   f i l e L i s tl p��p X   # �q��rq l  7 �stus k   7 �vv wxw l  7 7��yz��  y B <msg("what is oneItem: " & POSIX path of (oneItem as string))   z �{{ x m s g ( " w h a t   i s   o n e I t e m :   "   &   P O S I X   p a t h   o f   ( o n e I t e m   a s   s t r i n g ) )x |��| Q   7 �}~��} k   : � ��� r   : M��� b   : K��� b   : I��� b   : A��� b   : ?��� b   : =��� m   : ;�� ���  c h f l a g s   - R� 1   ; <��
�� 
spac� o   = >���� 0 cmdflag  � 1   ? @��
�� 
spac� n   A H��� 1   F H��
�� 
strq� n   A F��� 1   D F��
�� 
psxp� l  A D������ c   A D��� o   A B���� 0 oneitem oneItem� m   B C��
�� 
TEXT��  ��  � m   I J�� ��� 6   2 > / d e v / n u l l   & &   1 > / d e v / n u l l� o      ���� 0 shellcommand shellCommand� ��� l  N N������  �  msg(shellCommand)   � ��� " m s g ( s h e l l C o m m a n d )� ��� l  N N������  �  (*   � ���  ( *� ��� Z   N ������� =  N U��� o   N S���� 0 adminyesorno adminYesOrNo� m   S T�� ���  Y e s� Q   X ����� I  [ b����
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
�� .ascrerr ****      � ****� o      ���� 0 strerror StrError��  � l  � ����� I   � ��������� 0 
unlockfile 
unlockFile��  ��  � ) # cancel selected, so don't shutdown   � ��� F   c a n c e l   s e l e c t e d ,   s o   d o n ' t   s h u t d o w n��  � I  � ������
�� .sysoexecTEXT���     TEXT� o   � ����� 0 shellcommand shellCommand��  � ���� l  � �������  �  *)   � ���  * )��  ~ R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  t 7 1 cycle through the gathered list of files/folders   u ��� b   c y c l e   t h r o u g h   t h e   g a t h e r e d   l i s t   o f   f i l e s / f o l d e r s�� 0 oneitem oneItemr o   & +���� 0 filelist fileList��  > , &fileList, lockORunlock, adminYesOrNo)	   ? ��� L f i l e L i s t ,   l o c k O R u n l o c k ,   a d m i n Y e s O r N o ) 	9 , &(fileList, lockORunlock, adminYesOrNo)   : ��� L ( f i l e L i s t ,   l o c k O R u n l o c k ,   a d m i n Y e s O r N o )7 ���� l     ��������  ��  ��  ��       ���  �����������  � ������������������������ 0 lockorunlock lockORunlock�� 0 adminyesorno adminYesOrNo�� 0 filelist fileList
�� .aevtodocnull  �    alis�� 0 	resetlist 	resetList
�� .aevtoappnull  �   � ****�� 0 geticonlock getIconLock��  0 geticonwarning getIconWarning�� ,0 threesimplequestions threeSimpleQuestions�� 0 msg  �� 0 
unlockfile 
unlockFile� ��~�  �~  � �} �|�{���z
�} .aevtodocnull  �    alis�| 0 these_items  �{  � �y�y 0 these_items  � �x�w�x 0 	resetlist 	resetList
�w .aevtoappnull  �   � ****�z *j+  O�EQc  O*j � �v D�u�t���s�v 0 	resetlist 	resetList�u  �t  �  �  �s 	jvEc  � �r P�q�p���o
�r .aevtoappnull  �   � ****�q  �p  � �n�n 0 strerror StrError� �m�l c�k g�j�i�h�g�f�e x {�d�c�b�a�`�_�^�]�m ,0 threesimplequestions threeSimpleQuestions
�l 
null
�k 
appr
�j 
disp
�i 
alis
�h .earsffdralis        afdr�g 0 geticonlock getIconLock
�f 
TEXT
�e 
btns
�d 
dflt�c 
�b .sysodlogaskr        TEXT�a 0 strerror StrError�`  
�_ .aevtoappnull  �   � ****�^ 0 	resetlist 	resetList�] 0 
unlockfile 
unlockFile�o S*j+  �  = $����*�)j *j+ %�&/���lv�l� W X  *j O*j+ OhY hO*j+ O*j+ � �\ ��[�Z���Y�\ 0 geticonlock getIconLock�[  �Z  �  �  � � ��Y b   �  �Y �� �X ��W�V���U�X  0 geticonwarning getIconWarning�W  �V  �  �  � � ��U b   �  �Y �� �T ��S�R���Q�T ,0 threesimplequestions threeSimpleQuestions�S  �R  � �P�O�N�M�L�K�P 0 	dialogmsg 	dialogMsg�O 0 buttonchoices buttonChoices�N 0 strerror StrError�M 0 chgstate chgState�L 0 
openchoice 
openChoice�K $0 choosefiledialog chooseFileDialog� 5 � � � ��J�I�H ��G�F�E ��D ��C ��B�A�@�?�>�=
%'03�<QV�;�:z����9�����8�7�6�5�4�3��2�1
�J 
disp
�I 
alis
�H .earsffdralis        afdr
�G 
TEXT
�F 
btns
�E 
dflt
�D 
cbtn
�C 
appr�B 

�A .sysodlogaskr        TEXT
�@ 
bhit�? 0 strerror StrError�>  
�= 
null�<  0 geticonwarning getIconWarning�; 
�: .corecnte****       ****�9 0 geticonlock getIconLock
�8 
dflc
�7 afdrdesk
�6 
prmp
�5 
mlsl
�4 
lfiv
�3 .sysostdfalis    ��� null�2 
�1 .sysostflalis    ��� null�Q��E�O���mvE�O +��*�)j �%�&/�������a  a ,Ec   W X  a Oa E�Ob   a   
a E�Y hOa b   %a %E�Oa a lvE�O��*�)j *j+ %�&/��a �b   a %a   a ,Ec  Ob  j !j kY hOa "�%E�Oa #a $a %mvE�O 3��*�)j *j+ &%�&/��a '�b   a (%a   a ,E�W X  a O�a )  A 0a *�%E�O*a +a ,j a -�a .ea /ea   0Ec  W X  a OPY <�a 1  0 !*a -a 2�%a /ea 3 4kvEQc  W X  a Y a Ok� �0'�/�.���-�0 0 msg  �/ �,��, �  �+�+ 0 s  �.  � �*�* 0 s  � �)�(�'
�) .sysodlogaskr        TEXT�(  �'  �-  
�j  W 	X  fOe� �&<�%�$���#�& 0 
unlockfile 
unlockFile�%  �$  � �"�!� ��" 0 cmdflag  �! 0 oneitem oneItem�  0 shellcommand shellCommand� 0 strerror StrError� UY_d��������������������������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
spac
� 
TEXT
� 
psxp
� 
strq
� 
badm
� .sysoexecTEXT���     TEXT� 0 strerror StrError�  
� 
disp
� 
alis
� .earsffdralis        afdr�  0 geticonwarming getIconWarming
� 
appr� 
� .sysodlogaskr        TEXT� 0 
unlockfile 
unlockFile�  �# �b   �  �E�Y b   �  �E�Y hO �b  [��l kh  ��%�%�%��&�,�,%�%E�Ob  �  W ��el W GX   5a b   %a %a *a )j *j+ %�&/a �a %a  W X  *j+ Y �j OPW X  h[OY�t ascr  ��ޭ