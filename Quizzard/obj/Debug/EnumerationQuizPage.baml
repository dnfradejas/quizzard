   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	   "    Quizzard.EnumerationQuizPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
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
�������$��Century Gothic)�5      $��40(�63   $��Quiz Type: Enumeration��6A   $��68��6_   $	��805��6k   $	 Center=�6w   �� 5      -   5        $ QuestionText��5      
 K� ZIndex$
 1��6$   $��Center=�65   $��49,156,68,0q�6R   $
��Wrap=�6g   $	��Top=�6{   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5      $��30(�63   $�� ��6A   $	��142��6I   $	��907��6V   $	 Center=�6b   �� 5      -   5         ��Name$ Begin��5      $��444,321,449,200q�6   $	
 150��63   $
��Test��6F   ��5      �� 5       � 	Resources 5       
  NORMAL  OVER��%�   &	        &	 k     �� 5      $-��'pack://application:,,,/Images/Begin.png��6   $ HighQuality=�6N   $��Uniform=�6|   �� 5      $2��,pack://application:,,,/Images/BeginHover.png��6   $ HighQuality=�6Q   5      .R�5      �  �Name$ bg��5      $ 0.5,0.5&�5      .+�5      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5       �� Triggers 5       P� 5!       P� Property �@J�IsMouseOver P� Value . . �5$   	   ��  �� 
TargetName$ import_image��6    �� Value# �  5&   	    �� Property � ��5'   	   P� 5(       � �� . . �5+   	   �� $ bg��6    � z� 5-   
   �� 5.       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�5/      51   
   52   	   54      56      �� 57      -   5        $
 Next��57      $��891,509,2,0q�6   $
��Test��6.   $��55��6=   $	��Top=�6I   ��58      �� 59       5:      ��%�   &	        &	 j     �� 5;      $,��&pack://application:,,,/Images/Next.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5<      $1��+pack://application:,,,/Images/NextHover.png��6   $ HighQuality=�6P   5=      .R�5?      � $ bg��5@      $ 0.5,0.5&�5?      .+�5A      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5B       5C      P� 5D       �@J�IsMouseOver . . �5G   	   �� $ import_image��6   # �  5I       � ��5J   	   P� 5K       � �� . . �5N   	   �� $ bg��6    � z� 5P   
   �� 5Q      $	 0.9Q�6   $	 0.9Q�5R   -   5T   
   5U   	   5W      5Y      �� 5Z      -   5        $ Score��5Z      $
��Left=�6   $��
272,61,0,0q�68   $
��Wrap=�6L   $	��Top=�6`   $ -7.364,-0.771&�6x   
�������$��Century Gothic)�5[      $��30(�63   $�� ��6A   $��95��6I   $	��562��6U   $	 Center=�6a   �� 5\      -   5        $ Answer��5\      $��Center=�6   $��49,318,833,0q�6;   $��NoWrap=�6Q   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5]      $��30(�63   $��	Answers: ��6A   $��44��6R   $	��142��6^   $	 Right=�6j   �� 5^      -	   5         ��Name$ AnswerTextBox��5^      $
��Left=�6#   $��44��6>   $��196,318,0,0q�5_      $	��Top=�5`      $	��760��5a      $��Century Gothic)�5b      $��30(�5c      
�������
������� �� TextWrapping$
 Wrap=�5f       �� 
CaretBrush
 �   �5g      �� 5h      -
   5        $	 Add��5h      $��840,374,68,146q�6   $	��Add��60   $ -0.023,-0.255&�6>   ��5i      �� 5j       5k      ��%�   &	        &	 i     �� 5l      $+��%pack://application:,,,/Images/Add.png��6   $ HighQuality=�6L   $��Uniform=�6z   �� 5m      $0��*pack://application:,,,/Images/AddHover.png��6   $ HighQuality=�6O   5n      .R�5p      � $ bg��5q      $ 0.5,0.5&�5p      .+�5r      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5s       5t      P� 5u       �@J�IsMouseOver . . �5x   	   �� $ import_image��6   # �  5z   	    � ��5{   	   P� 5|       � �� . . �5   	   �� $ bg��6    � z� 5�   
   �� 5�      $	 0.9Q�6   $	 0.9Q�5�      5�   
   5�   	   5�      5�      �� 5�      -   5        $
 Inst��5�      $
��Left=�6   $��196,374,0,0q�67   $
��Wrap=�6L   $	��Top=�6`   $ -7.364,-0.771&�6x   
�������$��Century Gothic)�5�      $��15(�63   $��Add answers one by one.��6A   $��55��6`   $	��364��6l   $
	 Left=�6x   5�      5�      