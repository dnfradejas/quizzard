   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard      Quizzard.CreateQuiz   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     �Name$  CreateExamWin�� � Title$ 
CreateQuiz��$	��576��$
��1024�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$6 0pack://application:,,,/Images/MainMenu_Plain.jpg�� �� BitmapScalingMode$ HighQuality=�.��� .+��� -    ��Name$
 Next��$��891,509,2,12q�$
��Test������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 R     �� $,��&pack://application:,,,/Images/Back.png��$ HighQuality=�$��Uniform=��� $1��+pack://application:,,,/Images/BackHover.png��$ HighQuality=�.R�� 	 �Name$	 bg��
 J� RenderTransformOrigin$
 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -   $ IdentificationB��$��70,232,755,253q�$
��Test������  ��%�   &	        &	 \     �� $6��0pack://application:,,,/Images/Identification.png��$ HighQuality=�$��Uniform=��� $;��5pack://application:,,,/Images/IdentificationHover.png��$ HighQuality=�.R�� $	 bg��$
 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ EnumerationB��$��413,232,411,253q�$
��Test������  ��%�   &	        &	 Y     �� $3��-pack://application:,,,/Images/Enumeration.png��$ HighQuality=�$��Uniform=��� $8��2pack://application:,,,/Images/EnumerationHover.png��$ HighQuality=�.R�� $	 bg��$
 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ MChoiceB��$��757,232,68,253q�$
��Test������  ��%�   &	        &	 \     �� $6��0pack://application:,,,/Images/MultipleChoice.png��$ HighQuality=�$��Uniform=��� $;��5pack://application:,,,/Images/MultipleChoiceHover.png��$ HighQuality=�.R�� $	 bg��$
 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� $
��Left=�$��87��$��	10,10,0,0q�$	��Top=�$	��114��$5��/pack://application:,,,/Images/Quizzard Logo.png��$
 -0.436,0.788&� � UseLayoutRounding . $ HighQuality=��� -    ��Name$ 
AQuiz_Copy��$
��Left=�$��
10,546,0,0q�$
��Wrap=�$	��Top=�$
 -7.364,-0.771&�
�������$��Century Gothic)�$��15(�$'��!Copyright © Quizzard Team (2018)��$��30��$	��364�� �� TextAlignment$
 Left=��� -   $ Banner��$��Center=�$��151,10,68,0q�$��WrapWithOverflow=�$	��Top=�$
 -7.364,-0.771&�
�������$��Century Gothic)�$��40(�$'��!Choose the type of Quiz to Create��$��87��$	��805��$ Center=�