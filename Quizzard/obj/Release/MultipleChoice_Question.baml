   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  &     Quizzard.MultipleChoice_Question   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     � Title$  Identification_Question��$	��576��$
��1024�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$6 0pack://application:,,,/Images/MainMenu_Plain.jpg�� �� BitmapScalingMode$ HighQuality=�.��� .+��� $
��Left=�$��87��$��	10,10,0,0q�$	��Top=�$	��114��$5��/pack://application:,,,/Images/Quizzard Logo.png�� J� RenderTransformOrigin$ -0.436,0.788&� � UseLayoutRounding . $ HighQuality=��� -    ��Name$ 
AQuiz_Copy��$
��Left=�$��
10,546,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��15(�$'��!Copyright © Quizzard Team (2018)��$��30��$	��364��	 �� TextAlignment$
	 Left=��� -   $ Banner��$��Center=�$��151,10,68,0q�$��WrapWithOverflow=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��40(�$+��%Multiple Choice: Complete the Details��$��87��$	��805��$	 Center=��� -   $ Question��$��Center=�$��49,128,752,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��
Question: ��$��45��$	��223��$	 Right=��� -   
 ��Name$
 QuestionTextBox��$
��Left=�$	��130��$��277,128,0,0q�$	��Top=�$	��679��$��Century Gothic)�$��30(�
�������
������� �� TextWrapping$
 Wrap=� �� 
CaretBrush
 �   ��� -   $ Answer��$��Center=�$��49,282,752,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��	Choices: ��$��45��$	��223��$	 Right=��� -   $
 aTextBox��$
��Left=�$��45��$��277,327,0,0q�$	��Top=�$	��293��$��Century Gothic)�$��30(�
�������
�������$
 Wrap=�
 �   ��� -    ��Name$
 Next��$��891,509,2,12q�$
��Test������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 R     �� $,��&pack://application:,,,/Images/Next.png��$ HighQuality=�$��Uniform=��� $1��+pack://application:,,,/Images/NextHover.png��$ HighQuality=�.R��  �Name$ bg��$ 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -	   $ Answer_Copy1��$��Center=�$��216,327,752,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$	��A: ��$��45��$��56��$	 Right=��� -
   $
 bTextBox��$
��Left=�$��45��$��277,377,0,0q�$	��Top=�$	��293��$��Century Gothic)�$��30(�
�������
�������$
 Wrap=�
 �   ��� -   $ Answer_Copy2��$��Center=�$��216,377,752,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$	��B: ��$��45��$��56��$	 Right=��� -   $
 cTextBox��$
��Left=�$��45��$��659,327,0,0q�$	��Top=�$	��293��$��Century Gothic)�$��30(�
�������
�������$
 Wrap=�
 �   ��� -   $ Answer_Copy��$��Center=�$��575,327,370,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$	��C: ��$��45��$��79��$	 Right=��� -   $
 dTextBox��$
��Left=�$��45��$��659,377,0,0q�$	��Top=�$	��293��$��Century Gothic)�$��30(�
�������
�������$
 Wrap=�
 �   ��� -   $ Dtext��$��Center=�$��575,377,370,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$	��D: ��$��45��$��79��$	 Right=��� -   $ Question_Copy��$��Center=�$��23,446,752,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Correct Answer: ��$��45��$	��249��$	 Right=��� -   $
 cAnswTextBox��$
��Left=�$��45��$��277,446,0,0q�$	��Top=�$	��679��$��Century Gothic)�$��30(�
�������
�������$
 Wrap=�
 �   ��� -   $ Status��$
��Left=�$��277,496,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
��� E��$��Century Gothic)�$��15(�$�� ��$��30��$	��364��$
	 Left=�