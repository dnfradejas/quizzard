   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard      Quizzard.MainMenu   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     �Name$  MainWindow2�� � Title$ 
MainWindow��$	��576��$
��1024�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$1 +pack://application:,,,/Images/MainMenu2.jpg�� �� BitmapScalingMode$ HighQuality=�.��� .+��� -    ��Name$ 
AnswerExam��$��70,190,755,195q�$
��Test������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 X     �� $2��,pack://application:,,,/Images/AnswerExam.png��$ HighQuality=�$��Uniform=��� $7��1pack://application:,,,/Images/AnswerExamHover.png��$ HighQuality=�.R�� 	 �Name$	 bg��
 J� RenderTransformOrigin$
 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -   $ 
CreateExam��$��413,190,411,195q�$
��Test������  ��%�   &	        &	 Y     �� $3��-pack://application:,,,/Images/CreateExam2.png��$ HighQuality=�$��Uniform=��� $8��2pack://application:,,,/Images/CreateExam2Hover.png��$ HighQuality=�.R�� $	 bg��$
 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ 
DeleteExam��$��757,190,68,195q�$
��Test������  ��%�   &	        &	 X     �� $2��,pack://application:,,,/Images/DeleteExam.png��$ HighQuality=�$��Uniform=��� $7��1pack://application:,,,/Images/DeleteExamHover.png��$ HighQuality=�.R�� $	 bg��$
 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $ LogOut��$��891,509,2,12q�$
��Test������  ��%�   &	        &	 T     �� $.��(pack://application:,,,/Images/LogOut.png��$ HighQuality=�$��Uniform=��� $3��-pack://application:,,,/Images/LogOutHover.png��$ HighQuality=�.R�� $	 bg��$
 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -    ��Name$ AQuiz��$
��Left=�$��
70,386,0,0q�$
��Wrap=�$	��Top=�$
 -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Answer Quiz��$��42��$	��199�� �� TextAlignment$ Center=��� -   $ CQuiz��$
��Left=�$��414,386,0,0q�$
��Wrap=�$	��Top=�$
 -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Create Quiz��$��42��$	��199��$ Center=��� -   $ DQuiz��$
��Left=�$��757,386,0,0q�$
��Wrap=�$	��Top=�$
 -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Delete Quiz��$��42��$	��199��$ Center=��� -	   $ Banner��$��Center=�$��151,10,68,0q�$��WrapWithOverflow=�$	��Top=�$
 -7.364,-0.771&�
�������$��Century Gothic)�$��40(�$ ��Welcome to Quizzard, User!��$��87��$	��805��$ Center=��� $
��Left=�$��87��$��	10,10,0,0q�$	��Top=�$	��114��$5��/pack://application:,,,/Images/Quizzard Logo.png��$
 -0.436,0.788&� � UseLayoutRounding . $ HighQuality=��� -
   $ 
AQuiz_Copy��$
��Left=�$��
10,546,0,0q�$
��Wrap=�$	��Top=�$
 -7.364,-0.771&�
�������$��Century Gothic)�$��15(�$'��!Copyright © Quizzard Team (2018)��$��30��$	��364��$
 Left=�