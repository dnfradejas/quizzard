   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	   %    Quizzard.IdentificationQuizPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
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
�������$��Century Gothic)�5      $��40(�63   $��Quiz Type: Identification��6A   $��68��6b   $	��805��6n   $	 Center=�6z   �� 5      -   5        $ Answer��5      $��Center=�6   $��49,334,854,0q�6;   $
��Wrap=�6Q   $	��Top=�6e   $ -7.364,-0.771&�6}   
�������$��Century Gothic)�5      $��30(�63   $��Answer: ��6A   $��42��6Q   $	��121��6]   $	 Right=�6i   �� 5      -   5        
 ��Name$
 AnswerTextBox��5       K� ZIndex$ 3��6#   $
��Left=�64   $��42��6O   $��175,334,0,0q�5      $	��Top=�5      $	��781��5      $��Century Gothic)�5      $��30(�5      
�������
������� �� TextWrapping$
 Wrap=�5       �� 
CaretBrush
 �   �5      �� 5      -   5         ��Name$
 Next��5      $��891,509,2,0q�6   $
��Test��6.   $��55��6=   $	��Top=�6I   ��5      �� 5        � 	Resources 5!       
  NORMAL  OVER��%�   &	        &	 j     �� 5"      $,��&pack://application:,,,/Images/Next.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5#      $1��+pack://application:,,,/Images/NextHover.png��6   $ HighQuality=�6P   5$      .R�5&      �  �Name$ bg��5'      $ 0.5,0.5&�5&      .+�5(      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5)       �� Triggers 5*      P� 5+       P� Property �@J�IsMouseOver P� Value . . �5.   	   ��  �� 
TargetName$ import_image��6    �� Value# �  50       �� Property � ��51   	   P� 52       � �� . . �55   	   �� $ bg��6    � z� 57   
   �� 58       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�59   -   5;   
   5<   	   5>      5@      �� 5A      -   5        $
 Hint��5A      $
��Left=�6   $��175,400,0,0q�67   $
��Wrap=�6L   $	��Top=�6`   $ -7.364,-0.771&�6x   
����ح�$��Century Gothic)�5B      $��15(�67   $�� ��6E   $��68��6M   $	��679��6Y   $
	 Left=�6e   �� 5C      -   5        $ QuestionText��5C      $ 1��6$   $��Center=�65   $��49,156,68,0q�6R   $
��Wrap=�6g   $	��Top=�6{   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5D      $��30(�63   $�� ��6A   $	��142��6I   $	��907��6V   $	 Center=�6b   �� 5E      -	   5        $ Begin��5E      $��444,321,449,200q�6   $ 99��63   $
��Test��6E   ��5F      �� 5G       5H      ��%�   &	        &	 k     �� 5I      $-��'pack://application:,,,/Images/Begin.png��6   $ HighQuality=�6N   $��Uniform=�6|   �� 5J      $2��,pack://application:,,,/Images/BeginHover.png��6   $ HighQuality=�6Q   5K      .R�5M      � $ bg��5N      $ 0.5,0.5&�5M      .+�5O      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5P       5Q      P� 5R       �@J�IsMouseOver . . �5U   	   �� $ import_image��6   # �  5W   	    � ��5X   	   P� 5Y       � �� . . �5\   	   �� $ bg��6    � z� 5^   
   �� 5_      $	 0.9Q�6   $	 0.9Q�5`      5b   
   5c   	   5e      5g      �� 5h      -
   5        $ Score��5h      $
��Left=�6   $��
272,61,0,0q�68   $
��Wrap=�6L   $	��Top=�6`   $ -7.364,-0.771&�6x   
�������$��Century Gothic)�5i      $��30(�63   $�� ��6A   $��95��6I   $	��562��6U   $	 Center=�6a   5k      5l      