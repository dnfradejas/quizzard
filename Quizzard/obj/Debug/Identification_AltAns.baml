   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	   $    Quizzard.Identification_AltAns   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
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
�������$��Century Gothic)�5      $��40(�63   $*��$Identification: Complete the Details��6A   $��87��6m   $	��805��6y   $	 Center=�6�   �� 5      -   5        $ Question��5      $��Center=�6    $��49,188,752,0q�6=   $
��Wrap=�6S   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5      $��30(�63   $��Alternative Answer:��6A   $��81��6\   $	��223��6h   $	 Right=�6t   �� 5      -   5        
 ��Name$
 AltAnsTextBox��5      $
��Left=�6#   $	��130��6>   $��277,188,0,0q�5      $	��Top=�5      $	��679��5      $��Century Gothic)�5      $��30(�5      
�������
������� �� TextWrapping$
 Wrap=�5       �� 
CaretBrush
 �   �5      �� 5      -   5         ��Name$
 Next��5      $��891,509,2,12q�6   $
��Test��6/   ��5      �� 5        � 	Resources 5!       
  NORMAL  OVER��%�   &	        &	 j     �� 5"      $,��&pack://application:,,,/Images/Next.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5#      $1��+pack://application:,,,/Images/NextHover.png��6   $ HighQuality=�6P   5$      .R�5&      �  �Name$ bg��5'      $ 0.5,0.5&�5&      .+�5(      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5)       �� Triggers 5*      P� 5+       P� Property �@J�IsMouseOver P� Value . . �5.   	   ��  �� 
TargetName$ import_image��6    �� Value# �  50       �� Property � ��51   	   P� 52       � �� . . �55   	   �� $ bg��6    � z� 57   
   �� 58       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�59   -   5;   
   5<   	   5>      5@      �� 5A      -   5        $	 Add��5A      $��825,323,68,198q�6   $
��Test��60   ��5B      �� 5C       5D      ��%�   &	        &	 i     �� 5E      $+��%pack://application:,,,/Images/Add.png��6   $ HighQuality=�6L   $��Uniform=�6z   �� 5F      $0��*pack://application:,,,/Images/AddHover.png��6   $ HighQuality=�6O   5G      .R�5I      � $ bg��5J      $ 0.5,0.5&�5I      .+�5K      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5L       5M      P� 5N       �@J�IsMouseOver . . �5Q   	   �� $ import_image��6   # �  5S       � ��5T   	   P� 5U       � �� . . �5X   	   �� $ bg��6    � z� 5Z   
   �� 5[      $	 0.9Q�6   $	 0.9Q�5\   -   5^   
   5_   	   5a      5c      �� 5d      -   5        $ AQuiz_Copy1��5d      $
��Left=�6#   $��277,323,0,0q�6>   $
��Wrap=�6S   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5e      $��15(�63   $b��\This is optional, you can add multiple answers by adding each alternative answer one by one.��6A   $��55��6�   $	��364��6�   $
	 Left=�6�   �� 5f      -	   5        $ Status��5f      $
��Left=�6   $��277,363,0,0q�69   $
��Wrap=�6N   $	��Top=�6b   $ -7.364,-0.771&�6z   
��� E��$��Century Gothic)�5g      $��15(�67   $�� ��6E   $��50��6M   $	��364��6Y   $
	 Left=�6e   5h      5i      