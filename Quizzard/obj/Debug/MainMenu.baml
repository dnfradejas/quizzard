   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	       Quizzard.MainMenu   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          �Name$  MainWindow2��5   	    � Title$ 
MainWindow��5   	   $	��576��6   $
��1024��6)    � WindowStyle$
 None=�66    � 
ResizeMode$ NoResize=�6I    � WindowStartupLocation$ CenterScreen=�6_   ��5	      �� 5
       �� ImageSource$1 +pack://application:,,,/Images/MainMenu2.jpg��6    �� BitmapScalingMode$ HighQuality=�6I   .��5      � .+�5      �� -   5         ��Name$ 
AnswerExam��5      $��70,190,755,195q�6   $
��Test��67   ��5      �� 5       � 	Resources 5       
  NORMAL  OVER��%�   &	        &	 p     �� 5      $2��,pack://application:,,,/Images/AnswerExam.png��6   $ HighQuality=�6S   $��Uniform=�6�   �� 5      $7��1pack://application:,,,/Images/AnswerExamHover.png��6   $ HighQuality=�6V   5      .R�5      � 	 �Name$	 bg��5      
 J� RenderTransformOrigin$
 0.5,0.5&�5      .+�5      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5       �� Triggers 5      P� 5       P� Property �@J�IsMouseOver P� Value . . �5   	   ��  �� 
TargetName$ import_image��6    �� Value# �  5       �� Property � ��5    	   P� 5!       � �� . . �5$   	   �� $ bg��6    � z� 5&   
   �� 5'       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�5(   -   5*   
   5+   	   5-      5/      �� 50      -   5        $ 
CreateExam��50      $��413,190,411,195q�6   $
��Test��68   ��51      �� 52       53      ��%�   &	        &	 q     �� 54      $3��-pack://application:,,,/Images/CreateExam2.png��6   $ HighQuality=�6T   $��Uniform=�6�   �� 55      $8��2pack://application:,,,/Images/CreateExam2Hover.png��6   $ HighQuality=�6W   56      .R�58      � $	 bg��59      $
 0.5,0.5&�58      .+�5:      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5;       5<      P� 5=       �@J�IsMouseOver . . �5@   	   �� $ import_image��6   # �  5B       � ��5C   	   P� 5D       � �� . . �5G   	   �� $ bg��6    � z� 5I   
   �� 5J      $	 0.9Q�6   $	 0.9Q�5K   -   5M   
   5N   	   5P      5R      �� 5S      -   5        $ 
DeleteExam��5S      $��757,190,68,195q�6   $
��Test��67   ��5T      �� 5U       5V      ��%�   &	        &	 p     �� 5W      $2��,pack://application:,,,/Images/DeleteExam.png��6   $ HighQuality=�6S   $��Uniform=�6�   �� 5X      $7��1pack://application:,,,/Images/DeleteExamHover.png��6   $ HighQuality=�6V   5Y      .R�5[      � $	 bg��5\      $
 0.5,0.5&�5[      .+�5]      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5^       5_      P� 5`       �@J�IsMouseOver . . �5c   	   �� $ import_image��6   # �  5e       � ��5f   	   P� 5g       � �� . . �5j   	   �� $ bg��6    � z� 5l   
   �� 5m      $	 0.9Q�6   $	 0.9Q�5n   -   5p   
   5q   	   5s      5u      �� 5v      -   5        $ LogOut��5v      $��891,509,2,12q�6   $
��Test��61   ��5w      �� 5x       5y      ��%�   &	        &	 l     �� 5z      $.��(pack://application:,,,/Images/LogOut.png��6   $ HighQuality=�6O   $��Uniform=�6}   �� 5{      $3��-pack://application:,,,/Images/LogOutHover.png��6   $ HighQuality=�6R   5|      .R�5~      � $	 bg��5      $
 0.5,0.5&�5~      .+�5�      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5�       5�      P� 5�       �@J�IsMouseOver . . �5�   	   �� $ import_image��6   # �  5�       � ��5�   	   P� 5�       � �� . . �5�   	   �� $ bg��6    � z� 5�   
   �� 5�      $	 0.9Q�6   $	 0.9Q�5�   -   5�   
   5�   	   5�      5�      �� 5�      -   5         ��Name$ AQuiz��5�      $
��Left=�6   $��
70,386,0,0q�68   $
��Wrap=�6L   $	��Top=�6`   $
 -7.364,-0.771&�6x   
�������$��Century Gothic)�5�      $��30(�63   $��Answer Quiz��6A   $��42��6T   $	��199��6`    �� TextAlignment$ Center=�6l   �� 5�      -   5        $ CQuiz��5�      $
��Left=�6   $��414,386,0,0q�68   $
��Wrap=�6M   $	��Top=�6a   $
 -7.364,-0.771&�6y   
�������$��Century Gothic)�5�      $��30(�63   $��Create Quiz��6A   $��42��6T   $	��199��6`   $ Center=�6l   �� 5�      -   5        $ DQuiz��5�      $
��Left=�6   $��757,386,0,0q�68   $
��Wrap=�6M   $	��Top=�6a   $
 -7.364,-0.771&�6y   
�������$��Century Gothic)�5�      $��30(�63   $��Delete Quiz��6A   $��42��6T   $	��199��6`   $ Center=�6l   �� 5�      -	   5        $ Banner��5�      $��Center=�6   $��151,10,68,0q�6;   $��WrapWithOverflow=�6P   $	��Top=�6p   $
 -7.364,-0.771&�6�   
�������$��Century Gothic)�5�      $��40(�63   $ ��Welcome to Quizzard, User!��6A   $��87��6c   $	��805��6o   $ Center=�6{   �� 5�      $
��Left=�6
   $��87��6%   $��	10,10,0,0q�61   $	��Top=�6D   $	��114��6\   $5��/pack://application:,,,/Images/Quizzard Logo.png��6h   $
 -0.436,0.788&�6�    � UseLayoutRounding . $ HighQuality=�6�   �� 5�      -
   5        $ 
AQuiz_Copy��5�      $
��Left=�6"   $��
10,546,0,0q�6=   $
��Wrap=�6Q   $	��Top=�6e   $
 -7.364,-0.771&�6}   
�������$��Century Gothic)�5�      $��15(�63   $'��!Copyright © Quizzard Team (2018)��6A   $��30��6i   $	��364��6u   $
 Left=�6�   5�      5�      