   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	   #    Quizzard.EnumerationQuestions   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
��1024��66    � WindowStyle$
 None=�6C    � 
ResizeMode$ NoResize=�6V    � WindowStartupLocation$ CenterScreen=�6l   ��5	      �� 5
       �� ImageSource$6 0pack://application:,,,/Images/MainMenu_Plain.jpg��6    �� BitmapScalingMode$ HighQuality=�6N   .��5      �  � RowDefinitions 5      �� 5      �� 5      $	��95* �6   .+�5      �� $
��Left=�6
   $��87��6%   $��10,4,0,0q�61   $	��Top=�6C   $	��114��6[   $5��/pack://application:,,,/Images/Quizzard Logo.png��6g    J� RenderTransformOrigin$ -0.436,0.788&�6�    � UseLayoutRounding . $ HighQuality=�6�   $��1��6  �� 5      -   5        	 ��Name$	 
AQuiz_Copy��5      $
��Left=�6"   $��
10,540,0,0q�6=   $
��Wrap=�6Q   $	��Top=�6e   $ -7.364,-0.771&�6}   
�������$��Century Gothic)�5      $��15(�63   $'��!Copyright © Quizzard Team (2018)��6A   $��30��6i   $	��364��6u   
 �� TextAlignment$

 Left=�6�   $��1��6�   �� 5      -   5        $	 Banner��5      $��Center=�6   $��
151,4,68,0q�6;   $��WrapWithOverflow=�6O   $	��Top=�6o   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5      $��40(�63   $'��!Enumeration: Complete the Details��6A   $��87��6j   $	��805��6v   $
 Center=�6�   $��1��6�   �� 5      -   5        $	 Question��5      $��Center=�6    $��49,122,752,0q�6=   $��NoWrap=�6S   $	��Top=�6i   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5      $��30(�63   $��
Question: ��6A   $��45��6S   $	��223��6_   $
 Right=�6k   $��1��6�   �� 5      -   5         ��Name$ QuestionTextBox��5      $
��Left=�6%   $	��130��6@   $��277,122,0,0q�5      $	��Top=�5      $	��679��5      $��Century Gothic)�5      $��30(�5      
�������
������� �� TextWrapping$
 Wrap=�5        �� 
CaretBrush
 �   �$��1��5!      �� 5"      -   5        $	 Answer��5"      $��Center=�6   $��49,276,752,0q�6;   $��NoWrap=�6Q   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5#      $��30(�63   $��	Answers: ��6A   $��45��6R   $	��223��6^   $
 Right=�6j   $��1��6�   �� 5$      -   5        $ AnswerTextBox��5$      $
��Left=�6#   $��45��6>   $��277,276,0,0q�5%      $	��Top=�5&      $	��679��5'      $��Century Gothic)�5(      $��30(�5)      
�������
�������$
 Wrap=�5,      
 �   �$��1��5-      �� 5.      -   5         ��Name$
 Next��5.      $��891,503,2,12q�6   $
��Test��6/   $��1��6S   ��5/      �� 50       � 	Resources 51       
  NORMAL  OVER��%�   &	        &	 j     �� 52      $,��&pack://application:,,,/Images/Next.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 53      $1��+pack://application:,,,/Images/NextHover.png��6   $ HighQuality=�6P   54      .R�56      �  �Name$ bg��57      $ 0.5,0.5&�56      .+�58      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   59       �� Triggers 5:      P� 5;       P� Property �@J�IsMouseOver P� Value . . �5>   	   ��  �� 
TargetName$ import_image��6    �� Value# �  5@       �� Property � ��5A   	   P� 5B       � �� . . �5E   	   �� $ bg��6    � z� 5G   
   �� 5H       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�5I   -   5K   
   5L   	   5N      5P      �� 5Q      -	   5        $	 AQuiz_Copy1��5Q      $
��Left=�6#   $��277,332,0,0q�6>   $
��Wrap=�6S   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5R      $��15(�63   $��Add answers one by one.��6A   $��55��6`   $	��364��6l   $

 Left=�6x   $��1��6�   �� 5S      -
   5        $	 Add��5S      $��840,332,68,183q�6   $	��Add��60   $ -0.023,-0.255&�6P   $��1��6v   ��5T      �� 5U       5V      ��%�   &	        &	 i     �� 5W      $+��%pack://application:,,,/Images/Add.png��6   $ HighQuality=�6L   $��Uniform=�6z   �� 5X      $0��*pack://application:,,,/Images/AddHover.png��6   $ HighQuality=�6O   5Y      .R�5[      � $ bg��5\      $ 0.5,0.5&�5[      .+�5]      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5^       5_      P� 5`       �@J�IsMouseOver . . �5c   	   �� $ import_image��6   # �  5e   	    � ��5f   	   P� 5g       � �� . . �5j   	   �� $ bg��6    � z� 5l   
   �� 5m      $	 0.9Q�6   $	 0.9Q�5n      5p   
   5q   	   5s      5u      �� 5v      -   5        $	 Status��5v      $
��Left=�6   $��277,361,0,0q�69   $
��Wrap=�6N   $	��Top=�6b   $ -7.364,-0.771&�6z   
��� E��$��Century Gothic)�5w      $��15(�67   $�� ��6E   $��55��6M   $	��364��6Y   $

 Left=�6e   $��1��6z   5x      5y      