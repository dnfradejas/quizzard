   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	       Quizzard.CreateQuiz   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          �Name$  CreateExamWin��5   	    � Title$ 
CreateQuiz��5   	   $	��576��6   $
��1024��6)    � WindowStyle$
 None=�66    � 
ResizeMode$ NoResize=�6I    � WindowStartupLocation$ CenterScreen=�6_   ��5	      �� 5
       �� ImageSource$6 0pack://application:,,,/Images/MainMenu_Plain.jpg��6    �� BitmapScalingMode$ HighQuality=�6N   .��5      � .+�5      �� -   5         ��Name$
 Next��5      $��891,509,2,12q�6   $
��Test��6/   ��5      �� 5       � 	Resources 5       
  NORMAL  OVER��%�   &	        &	 j     �� 5      $,��&pack://application:,,,/Images/Back.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5      $1��+pack://application:,,,/Images/BackHover.png��6   $ HighQuality=�6P   5      .R�5      � 	 �Name$	 bg��5      
 J� RenderTransformOrigin$
 0.5,0.5&�5      .+�5      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5       �� Triggers 5      P� 5       P� Property �@J�IsMouseOver P� Value . . �5   	   ��  �� 
TargetName$ import_image��6    �� Value# �  5       �� Property � ��5    	   P� 5!       � �� . . �5$   	   �� $ bg��6    � z� 5&   
   �� 5'       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�5(   -   5*   
   5+   	   5-      5/      �� 50      -   5        $ IdentificationB��50      $��70,232,755,253q�6$   $
��Test��6<   ��51      �� 52       53      ��%�   &	        &	 t     �� 54      $6��0pack://application:,,,/Images/Identification.png��6   $ HighQuality=�6W   $��Uniform=�6�   �� 55      $;��5pack://application:,,,/Images/IdentificationHover.png��6   $ HighQuality=�6Z   56      .R�58      � $	 bg��59      $
 0.5,0.5&�58      .+�5:      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5;       5<      P� 5=       �@J�IsMouseOver . . �5@   	   �� $ import_image��6   # �  5B       � ��5C   	   P� 5D       � �� . . �5G   	   �� $ bg��6    � z� 5I   
   �� 5J      $	 0.9Q�6   $	 0.9Q�5K   -   5M   
   5N   	   5P      5R      �� 5S      -   5        $ EnumerationB��5S      $��413,232,411,253q�6!   $
��Test��6:   ��5T      �� 5U       5V      ��%�   &	        &	 q     �� 5W      $3��-pack://application:,,,/Images/Enumeration.png��6   $ HighQuality=�6T   $��Uniform=�6�   �� 5X      $8��2pack://application:,,,/Images/EnumerationHover.png��6   $ HighQuality=�6W   5Y      .R�5[      � $	 bg��5\      $
 0.5,0.5&�5[      .+�5]      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5^       5_      P� 5`       �@J�IsMouseOver . . �5c   	   �� $ import_image��6   # �  5e       � ��5f   	   P� 5g       � �� . . �5j   	   �� $ bg��6    � z� 5l   
   �� 5m      $	 0.9Q�6   $	 0.9Q�5n   -   5p   
   5q   	   5s      5u      �� 5v      -   5        $ MChoiceB��5v      $��757,232,68,253q�6   $
��Test��65   ��5w      �� 5x       5y      ��%�   &	        &	 t     �� 5z      $6��0pack://application:,,,/Images/MultipleChoice.png��6   $ HighQuality=�6W   $��Uniform=�6�   �� 5{      $;��5pack://application:,,,/Images/MultipleChoiceHover.png��6   $ HighQuality=�6Z   5|      .R�5~      � $	 bg��5      $
 0.5,0.5&�5~      .+�5�      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5�       5�      P� 5�       �@J�IsMouseOver . . �5�   	   �� $ import_image��6   # �  5�       � ��5�   	   P� 5�       � �� . . �5�   	   �� $ bg��6    � z� 5�   
   �� 5�      $	 0.9Q�6   $	 0.9Q�5�   -   5�   
   5�   	   5�      5�      �� 5�      $
��Left=�6
   $��87��6%   $��	10,10,0,0q�61   $	��Top=�6D   $	��114��6\   $5��/pack://application:,,,/Images/Quizzard Logo.png��6h   $
 -0.436,0.788&�6�    � UseLayoutRounding . $ HighQuality=�6�   �� 5�      -   5         ��Name$ 
AQuiz_Copy��5�      $
��Left=�6"   $��
10,546,0,0q�6=   $
��Wrap=�6Q   $	��Top=�6e   $
 -7.364,-0.771&�6}   
�������$��Century Gothic)�5�      $��15(�63   $'��!Copyright © Quizzard Team (2018)��6A   $��30��6i   $	��364��6u    �� TextAlignment$
 Left=�6�   �� 5�      -   5        $ Banner��5�      $��Center=�6   $��151,10,68,0q�6;   $��WrapWithOverflow=�6P   $	��Top=�6p   $
 -7.364,-0.771&�6�   
�������$��Century Gothic)�5�      $��40(�63   $'��!Choose the type of Quiz to Create��6A   $��87��6j   $	��805��6v   $ Center=�6�   5�      5�      