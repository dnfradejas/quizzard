   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	   &     Quizzard.MultipleChoice_Question   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
��1024��66    � WindowStyle$
 None=�6C    � 
ResizeMode$ NoResize=�6V    � WindowStartupLocation$ CenterScreen=�6l   ��5	      �� 5
       �� ImageSource$6 0pack://application:,,,/Images/MainMenu_Plain.jpg��6    �� BitmapScalingMode$ HighQuality=�6N   .��5      � .+�5      �� $
��Left=�6
   $��87��6%   $��	10,10,0,0q�61   $	��Top=�6D   $	��114��6\   $5��/pack://application:,,,/Images/Quizzard Logo.png��6h    J� RenderTransformOrigin$ -0.436,0.788&�6�    � UseLayoutRounding . $ HighQuality=�6�   �� 5      -   5         ��Name$ 
AQuiz_Copy��5      $
��Left=�6"   $��
10,546,0,0q�6=   $
��Wrap=�6Q   $	��Top=�6e   $ -7.364,-0.771&�6}   
�������$��Century Gothic)�5      $��15(�63   $'��!Copyright © Quizzard Team (2018)��6A   $��30��6i   $	��364��6u   	 �� TextAlignment$
	 Left=�6�   �� 5      -   5        $ Banner��5      $��Center=�6   $��151,10,68,0q�6;   $��WrapWithOverflow=�6P   $	��Top=�6p   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5      $��40(�63   $+��%Multiple Choice: Complete the Details��6A   $��87��6n   $	��805��6z   $	 Center=�6�   �� 5      -   5        $ Question��5      $��Center=�6    $��49,128,752,0q�6=   $��NoWrap=�6S   $	��Top=�6i   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5      $��30(�63   $��
Question: ��6A   $��45��6S   $	��223��6_   $	 Right=�6k   �� 5      -   5        
 ��Name$
 QuestionTextBox��5      $
��Left=�6%   $	��130��6@   $��277,128,0,0q�5      $	��Top=�5      $	��679��5      $��Century Gothic)�5      $��30(�5      
�������
������� �� TextWrapping$
 Wrap=�5       �� 
CaretBrush
 �   �5      �� 5      -   5        $ Answer��5      $��Center=�6   $��49,282,752,0q�6;   $��NoWrap=�6Q   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5      $��30(�63   $��	Choices: ��6A   $��45��6R   $	��223��6^   $	 Right=�6j   �� 5       -   5        $
 aTextBox��5       $
��Left=�6   $��45��69   $��277,327,0,0q�5!      $	��Top=�5"      $	��293��5#      $��Century Gothic)�5$      $��30(�5%      
�������
�������$
 Wrap=�5(      
 �   �5)      �� 5*      -   5         ��Name$
 Next��5*      $��891,509,2,12q�6   $
��Test��6/   ��5+      �� 5,       � 	Resources 5-       
  NORMAL  OVER��%�   &	        &	 j     �� 5.      $,��&pack://application:,,,/Images/Next.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5/      $1��+pack://application:,,,/Images/NextHover.png��6   $ HighQuality=�6P   50      .R�52      �  �Name$ bg��53      $ 0.5,0.5&�52      .+�54      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   55       �� Triggers 56      P� 57       P� Property �@J�IsMouseOver P� Value . . �5:   	   ��  �� 
TargetName$ import_image��6    �� Value# �  5<       �� Property � ��5=   	   P� 5>       � �� . . �5A   	   �� $ bg��6    � z� 5C   
   �� 5D       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�5E   -   5G   
   5H   	   5J      5L      �� 5M      -	   5        $ Answer_Copy1��5M      $��Center=�6$   $��216,327,752,0q�6A   $��NoWrap=�6X   $	��Top=�6n   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5N      $��30(�63   $	��A: ��6A   $��45��6L   $��56��6X   $	 Right=�6c   �� 5O      -
   5        $
 bTextBox��5O      $
��Left=�6   $��45��69   $��277,377,0,0q�5P      $	��Top=�5Q      $	��293��5R      $��Century Gothic)�5S      $��30(�5T      
�������
�������$
 Wrap=�5W      
 �   �5X      �� 5Y      -   5        $ Answer_Copy2��5Y      $��Center=�6$   $��216,377,752,0q�6A   $��NoWrap=�6X   $	��Top=�6n   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5Z      $��30(�63   $	��B: ��6A   $��45��6L   $��56��6X   $	 Right=�6c   �� 5[      -   5        $
 cTextBox��5[      $
��Left=�6   $��45��69   $��659,327,0,0q�5\      $	��Top=�5]      $	��293��5^      $��Century Gothic)�5_      $��30(�5`      
�������
�������$
 Wrap=�5c      
 �   �5d      �� 5e      -   5        $ Answer_Copy��5e      $��Center=�6#   $��575,327,370,0q�6@   $��NoWrap=�6W   $	��Top=�6m   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5f      $��30(�63   $	��C: ��6A   $��45��6L   $��79��6X   $	 Right=�6c   �� 5g      -   5        $
 dTextBox��5g      $
��Left=�6   $��45��69   $��659,377,0,0q�5h      $	��Top=�5i      $	��293��5j      $��Century Gothic)�5k      $��30(�5l      
�������
�������$
 Wrap=�5o      
 �   �5p      �� 5q      -   5        $ Dtext��5q      $��Center=�6   $��575,377,370,0q�6:   $��NoWrap=�6Q   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5r      $��30(�63   $	��D: ��6A   $��45��6L   $��79��6X   $	 Right=�6c   �� 5s      -   5        $ Question_Copy��5s      $��Center=�6%   $��23,446,752,0q�6B   $��NoWrap=�6X   $	��Top=�6n   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5t      $��30(�63   $��Correct Answer: ��6A   $��45��6Y   $	��249��6e   $	 Right=�6q   �� 5u      -   5        $
 cAnswTextBox��5u      $
��Left=�6"   $��45��6=   $��277,446,0,0q�5v      $	��Top=�5w      $	��679��5x      $��Century Gothic)�5y      $��30(�5z      
�������
�������$
 Wrap=�5}      
 �   �5~      �� 5      -   5        $ Status��5      $
��Left=�6   $��277,496,0,0q�69   $
��Wrap=�6N   $	��Top=�6b   $ -7.364,-0.771&�6z   
��� E��$��Century Gothic)�5�      $��15(�67   $�� ��6E   $��30��6M   $	��364��6Y   $
	 Left=�6e   5�      5�      