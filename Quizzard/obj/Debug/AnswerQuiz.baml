   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	       Quizzard.AnswerQuiz   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
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
	 Left=�6�   �� 5      -   5        $ Banner��5      $��Center=�6   $��101,196,118,0q�6;   $��WrapWithOverflow=�6R   $	��Top=�6r   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5      $��40(�63   $��Enter the Quiz ID��6A   $��57��6Z   $	��805��6f   $	 Center=�6r   �� 5      -   5        $ Question��5      $��Center=�6    $��101,258,802,0q�6=   $
��Wrap=�6T   $	��Top=�6h   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5      $��30(�63   $��Quiz ID:��6A   $��42��6Q   $	��121��6]   $	 Right=�6i   �� 5      -   5        
 ��Name$
 QuizIDTextBox��5      $
��Left=�6#   $��42��6>   $��227,258,0,0q�5      $	��Top=�5      $	��679��5      $��Century Gothic)�5      $��30(�5      
�������
������� �� TextWrapping$
 Wrap=�5       �� 
CaretBrush
 �   �5      �� 5      -   5         ��Name$
 Back��5      $��891,509,0,12q�6   $
��Left=�6/   $	��131��6J   ��5      �� 5        � 	Resources 5!       
  NORMAL  OVER��%�   &	        &	 j     �� 5"      $,��&pack://application:,,,/Images/Back.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5#      $1��+pack://application:,,,/Images/BackHover.png��6   $ HighQuality=�6P   5$      .R�5&      �  �Name$ bg��5'      $ 0.5,0.5&�5&      .+�5(      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5)       �� Triggers 5*      P� 5+       P� Property �@J�IsMouseOver P� Value . . �5.   	   ��  �� 
TargetName$ import_image��6    �� Value# �  50       �� Property � ��51   	   P� 52       � �� . . �55   	   �� $ bg��6    � z� 57   
   �� 58       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�59   -   5;   
   5<   	   5>      5@      �� 5A      -   5        $ Status��5A      $
��Left=�6   $��227,305,0,0q�69   $
��Wrap=�6N   $	��Top=�6b   $ -7.364,-0.771&�6z   
��� E��$��Century Gothic)�5B      $��15(�67   $�� ��6E   $��30��6M   $	��364��6Y   $
	 Left=�6e   �� 5C      -   5        $ 	Next_Copy��5C      $��756,509,0,12q�6   $
��Left=�64   $	��130��6O   ��5D      �� 5E       5F      ��%�   &	        &	 j     �� 5G      $,��&pack://application:,,,/Images/Next.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5H      $1��+pack://application:,,,/Images/NextHover.png��6   $ HighQuality=�6P   5I      .R�5K      � $ bg��5L      $ 0.5,0.5&�5K      .+�5M      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5N       5O      P� 5P       �@J�IsMouseOver . . �5S   	   �� $ import_image��6   # �  5U   	    � ��5V   	   P� 5W       � �� . . �5Z   	   �� $ bg��6    � z� 5\   
   �� 5]      $	 0.9Q�6   $	 0.9Q�5^      5`   
   5a   	   5c      5e      5f      5g      