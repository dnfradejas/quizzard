   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	       Quizzard.EnumerationFinal   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          � Title$  Identification_Question��5   	   $	��576��6)   $
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
�������$��Century Gothic)�5      $��40(�63   $'��!Enumeration: Complete the Details��6A   $��87��6j   $	��805��6v   $	 Center=�6�   �� 5      -   5        $ Question��5      $��Center=�6    $��49,188,752,0q�6=   $
��Wrap=�6S   $	��Top=�6g   $ -7.364,-0.771&�6   
�������$��Century Gothic)�5      $��30(�63   $��Quiz ID:��6A   $��42��6Q   $	��223��6]   $	 Right=�6i   �� 5      -   5        
 ��Name$
 QuizIDTextBox��5      $
��Left=�6#   $��42��6>   $��277,188,0,0q�5      $	��Top=�5      $	��679��5      $��Century Gothic)�5      $��30(�5      
�������
������� �� TextWrapping$
 Wrap=�5       �� 
CaretBrush
 �   �5      �� 5      -   5         ��Name$	 Add��5      $��891,509,2,12q�6   $
��Test��6.   ��5      �� 5        � 	Resources 5!       
  NORMAL  OVER��%�   &	        &	 i     �� 5"      $+��%pack://application:,,,/Images/Add.png��6   $ HighQuality=�6L   $��Uniform=�6z   �� 5#      $0��*pack://application:,,,/Images/AddHover.png��6   $ HighQuality=�6O   5$      .R�5&      �  �Name$ bg��5'      $ 0.5,0.5&�5&      .+�5(      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5)       �� Triggers 5*      P� 5+       P� Property �@J�IsMouseOver P� Value . . �5.   	   ��  �� 
TargetName$ import_image��6    �� Value# �  50       �� Property � ��51   	   P� 52       � �� . . �55   	   �� $ bg��6    � z� 57   
   �� 58       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�59   -   5;   
   5<   	   5>      5@      �� 5A      -   5         ��Name$ 
CaseSenChk��5A      $
��Left=�6!   $	��Top=�6<   $��30��6T   $��30��6`   $��290,259,0,0q�6k   �� 5B      -   5        $ Question_Copy��5B      $��Center=�6%   $��320,247,440,0q�6B   $
��Wrap=�6Y   $	��Top=�6m   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5C      $��30(�63   $��Case Sensitive��6A   $��42��6W   $	��264��6c   $
	 Left=�6o   �� 5D      -	   5        $ 
ShuffleChk��5D      $
��Left=�6!   $	��Top=�6<   $��30��6T   $��30��6`   $��290,306,0,0q�6k   �� 5E      -
   5        $ Question_Copy1��5E      $��Center=�6&   $��320,294,440,0q�6C   $
��Wrap=�6Z   $	��Top=�6n   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5F      $��30(�63   $��Shuffle Questions��6A   $��42��6Z   $	��264��6f   $
	 Left=�6r   �� 5G      -   5        $ Status��5G      $
��Left=�6   $��277,153,0,0q�69   $
��Wrap=�6N   $	��Top=�6b   $ -7.364,-0.771&�6z   
��� E��$��Century Gothic)�5H      $��15(�67   $�� ��6E   $��30��6M   $	��364��6Y   $
	 Left=�6e   5I      5J      