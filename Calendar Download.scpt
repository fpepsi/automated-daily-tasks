FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �   � / U s e r s / f a b i o b e t h l e m / D o c u m e n t s / W o r k / C o u r s e s / U d e m y _ 1 0 0 _ D a y s _ P y t h o n / c a p s t o n e _ p r o j e c t s / a u t o m a t e d - d a i l y - t a s k s / C a l e n d a r _ E v e n t s . t x t 	 o      ����  0 outputfilepath outputFilePath��  ��        l     ��������  ��  ��        l     ��  ��    1 + Create a copy for start and end of the day     �   V   C r e a t e   a   c o p y   f o r   s t a r t   a n d   e n d   o f   t h e   d a y      l    ����  r        I   	������
�� .misccurdldt    ��� null��  ��    o      ���� 0 
startofday 
startOfDay��  ��        l        r        m    ����    n           1    ��
�� 
time   o    ���� 0 
startofday 
startOfDay    Set to 00:00 AM     � ! !     S e t   t o   0 0 : 0 0   A M   " # " l     ��������  ��  ��   #  $ % $ l    &���� & r     ' ( ' I   ������
�� .misccurdldt    ��� null��  ��   ( o      ���� 0 endofday endOfDay��  ��   %  ) * ) l   ' + , - + r    ' . / . [    # 0 1 0 [    ! 2 3 2 l    4���� 4 ]     5 6 5 m    ����  6 1    ��
�� 
hour��  ��   3 l     7���� 7 ]      8 9 8 m    ���� ; 9 1    ��
�� 
min ��  ��   1 m   ! "���� ; / n       : ; : 1   $ &��
�� 
time ; o   # $���� 0 endofday endOfDay ,   Set to 11:59:59 PM    - � < < &   S e t   t o   1 1 : 5 9 : 5 9   P M *  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A / ) Debugging: Write to file to check values    B � C C R   D e b u g g i n g :   W r i t e   t o   f i l e   t o   c h e c k   v a l u e s @  D E D l  (W F���� F Q   (W G H I G k   +@ J J  K L K r   + 6 M N M I  + 4�� O P
�� .rdwropenshor       file O l  + . Q���� Q c   + . R S R o   + ,����  0 outputfilepath outputFilePath S m   , -��
�� 
psxf��  ��   P �� T��
�� 
perm T m   / 0��
�� boovtrue��   N o      ���� 0 fileref fileRef L  U V U l  7 > W X Y W I  7 >�� Z [
�� .rdwrseofnull���     **** Z o   7 8���� 0 fileref fileRef [ �� \��
�� 
set2 \ m   9 :����  ��   X   Clear file    Y � ] ]    C l e a r   f i l e V  ^ _ ^ l  ? ?��������  ��  ��   _  ` a ` l  ? ?�� b c��   b   Write header    c � d d    W r i t e   h e a d e r a  e f e I  ? V�� g h
�� .rdwrwritnull���     **** g b   ? N i j i b   ? J k l k b   ? F m n m m   ? B o o � p p . T o d a y ' s   C a l e n d a r   E v e n t s n o   B E��
�� 
ret  l m   F I q q � r r 0 - - - - - - - - - - - - - - - - - - - - - - - - j o   J M��
�� 
ret  h �� s��
�� 
refn s o   Q R���� 0 fileref fileRef��   f  t u t l  W W��������  ��  ��   u  v w v O   W> x y x k   ]= z z  { | { r   ] f } ~ } 2   ] b��
�� 
wres ~ o      ���� 0 allcalendars allCalendars |   �  l  g g��������  ��  ��   �  ��� � X   g= ��� � � k   }8 � �  � � � r   } � � � � l  } � ����� � 6  } � � � � n   } � � � � 2   ~ ���
�� 
wrev � o   } ~���� 0 thiscalendar thisCalendar � F   � � � � � @   � � � � � 1   � ���
�� 
wr1s � o   � ����� 0 
startofday 
startOfDay � B   � � � � � 1   � ���
�� 
wr1s � o   � ����� 0 endofday endOfDay��  ��   � o      ���� 0 	eventlist 	eventList �  � � � l  � ���������  ��  ��   �  ��� � X   �8 ��� � � k   �3 � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
wr11 � o   � ����� 0 	thisevent 	thisEvent � o      ���� 0 	eventname 	eventName �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
wr1s � o   � ����� 0 	thisevent 	thisEvent � o      ����  0 eventstartdate eventStartDate �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
wr5s � o   � ����� 0 	thisevent 	thisEvent � o      ���� 0 eventenddate eventEndDate �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
wr14 � o   � ����� 0 	thisevent 	thisEvent � o      ���� 0 eventlocation eventLocation �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � / ) Debugging: Print each event's start date    � � � � R   D e b u g g i n g :   P r i n t   e a c h   e v e n t ' s   s t a r t   d a t e �  � � � I  � ��� � �
�� .rdwrwritnull���     **** � b   � � � � � b   � � � � � m   � � � � � � �  E v e n t :   � o   � ����� 0 	eventname 	eventName � o   � ���
�� 
ret  � �� ���
�� 
refn � o   � ����� 0 fileref fileRef��   �  � � � I  �	�� � �
�� .rdwrwritnull���     **** � b   � � � � b   � � � � � m   � � � � � � �  S t a r t   D a t e :   � l  � � ����� � c   � � � � � o   � �����  0 eventstartdate eventStartDate � m   � ���
�� 
TEXT��  ��   � o   � ��
�� 
ret  � �� ���
�� 
refn � o  ���� 0 fileref fileRef��   �  � � � I 
!�� � �
�� .rdwrwritnull���     **** � b  
 � � � b  
 � � � m  
 � � � � �  E n d   D a t e :   � l  ����� � c   � � � o  ���� 0 eventenddate eventEndDate � m  ��
�� 
TEXT��  ��   � o  ��
�� 
ret  � � ��~
� 
refn � o  �}�} 0 fileref fileRef�~   �  � � � I "1�| � �
�| .rdwrwritnull���     **** � b  ") � � � m  "% � � � � � 0 - - - - - - - - - - - - - - - - - - - - - - - - � o  %(�{
�{ 
ret  � �z ��y
�z 
refn � o  ,-�x�x 0 fileref fileRef�y   �  ��w � l 22�v�u�t�v  �u  �t  �w  �� 0 	thisevent 	thisEvent � o   � ��s�s 0 	eventlist 	eventList��  �� 0 thiscalendar thisCalendar � o   j m�r�r 0 allcalendars allCalendars��   y m   W Z � ��                                                                                  wrbt  alis    8  Macintosh HD                   BD ����Calendar.app                                                   ����            ����  
 cu             Applications  #/:System:Applications:Calendar.app/     C a l e n d a r . a p p    M a c i n t o s h   H D   System/Applications/Calendar.app  / ��   w  ��q � l ??�p�o�n�p  �o  �n  �q   H R      �m � �
�m .ascrerr ****      � **** � o      �l�l 0 errmsg errMsg � �k ��j
�k 
errn � o      �i�i 0 errnum errNum�j   I I HW�h ��g
�h .sysodlogaskr        TEXT � b  HS � � � b  HQ � � � b  HM � � � m  HK � � � � �  E r r o r   � o  KL�f�f 0 errnum errNum � m  MP � � � � �  :   � o  QR�e�e 0 errmsg errMsg�g  ��  ��   E  � � � l     �d�c�b�d  �c  �b   �  � � � l     �a � ��a   �   Always close file access    � �   2   A l w a y s   c l o s e   f i l e   a c c e s s �  l Xi�`�_ Q  Xi I [`�^�]
�^ .rdwrclosnull���     **** o  [\�\�\ 0 fileref fileRef�]   R      �[�Z�Y
�[ .ascrerr ****      � ****�Z  �Y   l hh�X	�X     Ignore if already closed   	 �

 2   I g n o r e   i f   a l r e a d y   c l o s e d�`  �_    l     �W�V�U�W  �V  �U    l     �T�T     Notify user    �    N o t i f y   u s e r  l jy�S�R I jy�Q
�Q .sysodlogaskr        TEXT b  jo m  jm � 2 C a l e n d a r   e v e n t s   s a v e d   t o   o  mn�P�P  0 outputfilepath outputFilePath �O�N
�O 
appr m  ru �  S u c c e s s�N  �S  �R   �M l     �L�K�J�L  �K  �J  �M       �I  
!"�H#$%&'�G�F�E�D�C�B�I   �A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2
�A .aevtoappnull  �   � ****�@  0 outputfilepath outputFilePath�? 0 
startofday 
startOfDay�> 0 endofday endOfDay�= 0 fileref fileRef�< 0 allcalendars allCalendars�; 0 	eventlist 	eventList�: 0 	eventname 	eventName�9  0 eventstartdate eventStartDate�8 0 eventenddate eventEndDate�7 0 eventlocation eventLocation�6  �5  �4  �3  �2    �1(�0�/)*�.
�1 .aevtoappnull  �   � ****( k    y++  ,,  --  ..  $//  )00  D11 22 �-�-  �0  �/  ) �,�+�*�)�, 0 thiscalendar thisCalendar�+ 0 	thisevent 	thisEvent�* 0 errmsg errMsg�) 0 errnum errNum* 6 
�(�'�&�%�$�#�"�!� ������ o� q�� �������3�������
�	� � �� � ��4 � �������(  0 outputfilepath outputFilePath
�' .misccurdldt    ��� null�& 0 
startofday 
startOfDay
�% 
time�$ 0 endofday endOfDay�# 
�" 
hour�! ;
�  
min 
� 
psxf
� 
perm
� .rdwropenshor       file� 0 fileref fileRef
� 
set2
� .rdwrseofnull���     ****
� 
ret 
� 
refn
� .rdwrwritnull���     ****
� 
wres� 0 allcalendars allCalendars
� 
kocl
� 
cobj
� .corecnte****       ****
� 
wrev3  
� 
wr1s� 0 	eventlist 	eventList
� 
wr11� 0 	eventname 	eventName�  0 eventstartdate eventStartDate
� 
wr5s�
 0 eventenddate eventEndDate
�	 
wr14� 0 eventlocation eventLocation
� 
TEXT� 0 errmsg errMsg4 � ����
�  
errn�� 0 errnum errNum��  
� .sysodlogaskr        TEXT
� .rdwrclosnull���     ****�  �  
� 
appr�.z�E�O*j E�Oj��,FO*j E�O�� �� ���,FO��&�el E�O��jl Oa _ %a %_ %a �l Oa  �*a -E` O �_ [a a l kh  �a -a [[a ,\Z�;\[a ,\Z�=A1E` O �_ [a a l kh �a ,E`  O�a ,E` !O�a ",E` #O�a $,E` %Oa &_  %_ %a �l Oa '_ !a (&%_ %a �l Oa )_ #a (&%_ %a �l Oa *_ %a �l OP[OY�}[OY�?UOPW X + ,a -�%a .%�%j /O 
�j 0W X 1 2hOa 3�%a 4a 5l /! ldt     �� " ldt     ����H # ��5�� 
5 
 6789:;<=>?6 @@  ���A��
�� 
wresA �BB H 2 C 3 D 8 0 2 8 - 6 F B 3 - 4 E C C - 8 9 E 6 - 5 5 1 3 2 7 A 4 1 B C 2
�� kfrmID  7 CC  ���D��
�� 
wresD �EE H 3 7 9 D 4 F 3 2 - A C 3 C - 4 2 2 A - 8 B F C - 7 4 8 3 9 A 2 0 A 2 0 5
�� kfrmID  8 FF  ���G��
�� 
wresG �HH H A 9 F 5 6 B 0 B - 6 1 C 6 - 4 5 0 E - 9 8 1 7 - F 5 B 0 2 4 A C B 8 7 D
�� kfrmID  9 II  ���J��
�� 
wresJ �KK H D 8 8 7 0 A E 8 - 5 C E E - 4 9 A 0 - A 1 A 5 - 3 A E 7 5 A 2 3 D 8 8 3
�� kfrmID  : LL  ���M��
�� 
wresM �NN H C C 9 D 3 B 7 9 - 1 2 B 2 - 4 9 C A - B E 0 0 - C 5 5 7 4 2 9 6 5 9 2 3
�� kfrmID  ; OO  ���P��
�� 
wresP �QQ H 6 0 5 3 3 8 2 3 - 2 F 4 2 - 4 9 C 2 - B E 0 C - C A 3 D 5 6 F D 5 7 C 0
�� kfrmID  < RR  ���S��
�� 
wresS �TT H 5 5 1 C 9 7 D B - D F 0 F - 4 D 8 9 - 9 2 A 7 - A 4 2 1 0 B 9 C 1 7 6 2
�� kfrmID  = UU  ���V��
�� 
wresV �WW H E 2 A 0 2 9 8 F - E E 6 F - 4 F D 2 - 9 9 A 8 - E 3 5 A 7 E 0 B 5 E 6 7
�� kfrmID  > XX  ���Y��
�� 
wresY �ZZ H 7 8 4 6 F B 6 6 - 8 A B 2 - 4 2 6 6 - B 6 4 8 - 3 0 5 8 C 9 0 C F 7 6 9
�� kfrmID  ? [[  ���\��
�� 
wres\ �]] H A 3 F E D 3 4 1 - 0 9 B A - 4 5 5 9 - 9 3 E A - 6 5 9 F A 0 C C 0 7 D 6
�� kfrmID  $ ��^��  ^   % �__ < D o v e r   C a m p   R e g i s t r a t i o n   o p e n s  & ldt     ���' ldt     ���
�G 
msng�F  �E  �D  �C  �B  ascr  ��ޭ