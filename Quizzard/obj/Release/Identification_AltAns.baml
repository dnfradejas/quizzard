   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  $    Quizzard.Identification_AltAns   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     � Title$  Identification_Question��$	��576��$
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
�������$��Century Gothic)�$��40(�$*��$Identification: Complete the Details��$��87��$	��805��$	 Center=��� -   $ Question��$��Center=�$��49,188,752,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Alternative Answer:��$��81��$	��223��$	 Right=��� -   
 ��Name$
 AltAnsTextBox��$
��Left=�$	��130��$��277,188,0,0q�$	��Top=�$	��679��$��Century Gothic)�$��30(�
�������
������� �� TextWrapping$
 Wrap=� �� 
CaretBrush
 �   ��� -    ��Name$
 Next��$��891,509,2,12q�$
��Test������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 R     �� $,��&pack://application:,,,/Images/Next.png��$ HighQuality=�$��Uniform=��� $1��+pack://application:,,,/Images/NextHover.png��$ HighQuality=�.R��  �Name$ bg��$ 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -   $	 Add��$��825,323,68,198q�$
��Test������  ��%�   &	        &	 Q     �� $+��%pack://application:,,,/Images/Add.png��$ HighQuality=�$��Uniform=��� $0��*pack://application:,,,/Images/AddHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ AQuiz_Copy1��$
��Left=�$��277,323,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��15(�$b��\This is optional, you can add multiple answers by adding each alternative answer one by one.��$��55��$	��364��$
	 Left=��� -	   $ Status��$
��Left=�$��277,363,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
��� E��$��Century Gothic)�$��15(�$�� ��$��50��$	��364��$
	 Left=�