   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  %    Quizzard.IdentificationQuizPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     � Title$  Identification_Question��$	��576��$
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
�������$��Century Gothic)�$��40(�$��Quiz Type: Identification��$��68��$	��805��$	 Center=��� -   $ Answer��$��Center=�$��49,334,854,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Answer: ��$��42��$	��121��$	 Right=��� -   
 ��Name$
 AnswerTextBox�� K� ZIndex$ 3��$
��Left=�$��42��$��175,334,0,0q�$	��Top=�$	��781��$��Century Gothic)�$��30(�
�������
������� �� TextWrapping$
 Wrap=� �� 
CaretBrush
 �   ��� -    ��Name$
 Next��$��891,509,2,0q�$
��Test��$��55��$	��Top=�����  � 	Resources  
  NORMAL  OVER��%�   &	        &	 R     �� $,��&pack://application:,,,/Images/Next.png��$ HighQuality=�$��Uniform=��� $1��+pack://application:,,,/Images/NextHover.png��$ HighQuality=�.R��  �Name$ bg��$ 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -   $
 Hint��$
��Left=�$��175,400,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
����ح�$��Century Gothic)�$��15(�$�� ��$��68��$	��679��$
	 Left=��� -   $ QuestionText��$ 1��$��Center=�$��49,156,68,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$	��142��$	��907��$	 Center=��� -	   $ Begin��$��444,321,449,200q�$ 99��$
��Test������  ��%�   &	        &	 S     �� $-��'pack://application:,,,/Images/Begin.png��$ HighQuality=�$��Uniform=��� $2��,pack://application:,,,/Images/BeginHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -
   $ Score��$
��Left=�$��
272,61,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$��95��$	��562��$	 Center=�