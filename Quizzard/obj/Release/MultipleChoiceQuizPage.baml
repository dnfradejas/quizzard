   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  %    Quizzard.MultipleChoiceQuizPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     � Title$  Identification_Question��$	��576��$
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
�������$��Century Gothic)�$��40(�$ ��Quiz Type: Multiple Choice��$��68��$	��805��$	 Center=��� -   $ AText��
 K� ZIndex$

 3214��$��Center=�$��211,328,504,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$��48��$	��309��$
	 Left=��� -   $ QuestionText��$
 1��$��Center=�$��49,156,68,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$	��142��$	��907��$	 Center=��� -    ��Name$ Begin��$��444,321,449,200q�$	
 150��$
��Test������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 S     �� $-��'pack://application:,,,/Images/Begin.png��$ HighQuality=�$��Uniform=��� $2��,pack://application:,,,/Images/BeginHover.png��$ HighQuality=�.R��  �Name$ bg��$ 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -   $
 Next��$��891,509,2,0q�$
��Test��$��55��$	��Top=�����  ��%�   &	        &	 R     �� $,��&pack://application:,,,/Images/Next.png��$ HighQuality=�$��Uniform=��� $1��+pack://application:,,,/Images/NextHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ Score��$
��Left=�$��
272,61,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$��95��$	��562��$	 Center=��� -	   $ A��$��80,321,813,200q�$
 99��$
��Test������  ��%�   &	        &	 O     �� $)��#pack://application:,,,/Images/A.png��$ HighQuality=�$��Uniform=��� $.��(pack://application:,,,/Images/AHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -
   $ B��$��80,381,813,140q�$
 99��$
��Test������  ��%�   &	        &	 O     �� $)��#pack://application:,,,/Images/B.png��$ HighQuality=�$��Uniform=��� $.��(pack://application:,,,/Images/BHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ C��$��520,321,373,200q�$
 99��$
��Test������  ��%�   &	        &	 O     �� $)��#pack://application:,,,/Images/C.png��$ HighQuality=�$��Uniform=��� $.��(pack://application:,,,/Images/CHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ D��$��520,381,373,140q�$
 99��$
��Test������  ��%�   &	        &	 O     �� $)��#pack://application:,,,/Images/D.png��$ HighQuality=�$��Uniform=��� $.��(pack://application:,,,/Images/DHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ BText��$

 3214��$��Center=�$��211,388,504,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$��48��$	��309��$
	 Left=��� -   $ CText��$

 3214��$��Center=�$��651,328,70,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$��48��$	��303��$
	 Left=��� -   $ DText��$

 3214��$��Center=�$��651,388,70,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$��48��$	��303��$
	 Left=��� -   $ FinAns��$

 3214��$��Center=�$��303,460,412,68q�$
��Wrap=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$�� ��$	��309��$
	 Left=��� -   $ YansText��$

 3214��$��Center=�$��80,460,726,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Your Answer: ��$��48��$	��218��$	 Right=�