   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	   &     Quizzard.Identification_Question   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
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
�������$��Century Gothic)�5      $��40(�63   $*��$Identification: Complete the Details��6A   $��87��6m   $	��805��6y   $	 Center=�6�   �� 5      -   5        $ Question��5      $��Center=�6    $��49,128,752,0q�6=   $��NoWrap=�6S   $	��Top=�6i   $ -7.364,-0.771&�6�   
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
�������$��Century Gothic)�5      $��30(�63   $��Answer: ��6A   $��45��6Q   $	��223��6]   $	 Right=�6i   �� 5       -   5        $
 AnwserTextBox��5       $
��Left=�6#   $	��130��6>   $��277,282,0,0q�5!      $	��Top=�5"      $	��679��5#      $��Century Gothic)�5$      $��30(�5%      
�������
�������$
 Wrap=�5(      
 �   �5)      �� 5*      -   5         ��Name$
 Next��5*      $��891,509,2,12q�6   $
��Test��6/   ��5+      �� 5,       � 	Resources 5-       
  NORMAL  OVER��%�   &	        &	 j     �� 5.      $,��&pack://application:,,,/Images/Next.png��6   $ HighQuality=�6M   $��Uniform=�6{   �� 5/      $1��+pack://application:,,,/Images/NextHover.png��6   $ HighQuality=�6P   50      .R�52      �  �Name$ bg��53      $ 0.5,0.5&�52      .+�54      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   55       �� Triggers 56      P� 57       P� Property �@J�IsMouseOver P� Value . . �5:   	   ��  �� 
TargetName$ import_image��6    �� Value# �  5<       �� Property � ��5=   	   P� 5>       � �� . . �5A   	   �� $ bg��6    � z� 5C   
   �� 5D       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�5E   -   5G   
   5H   	   5J      5L      �� 5M      -	   5        $ Answer_Copy��5M      $��Center=�6#   $��49,434,752,0q�6@   $��NoWrap=�6V   $	��Top=�6l   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5N      $��30(�63   $��Hint: ��6A   $��45��6O   $	��223��6[   $	 Right=�6g   �� 5O      -
   5        $
 HintTextBox��5O      $
��Left=�6!   $��45��6<   $��277,434,0,0q�5P      $	��Top=�5Q      $	��679��5R      $��Century Gothic)�5S      $��30(�5T      
�������
�������$
 Wrap=�5W      
 �   �5X      �� 5Y      -   5        $ Status��5Y      $
��Left=�6   $��277,494,0,0q�69   $
��Wrap=�6N   $	��Top=�6b   $ -7.364,-0.771&�6z   
��� E��$��Century Gothic)�5Z      $��15(�67   $�� ��6E   $��30��6M   $	��364��6Y   $
	 Left=�6e   5[      5\      