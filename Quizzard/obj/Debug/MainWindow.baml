   M S B A M L   `   `   `  ����C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  5   	       Quizzard.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Quizzard     5   	   -   5          �Name$  MainWindow1��5   	    � Title$ 
MainWindow��5   	   $	��576��6   $	��329��6)    � WindowStyle$
 None=�65    � 
ResizeMode$ NoResize=�6H    � WindowStartupLocation$ CenterScreen=�6^   ��5	      �� 5
       �� ImageSource$9 3pack://application:,,,/Images/Login_Background3.jpg��6    �� BitmapScalingMode$ HighQuality=�6Q    � 	Resources 5      ��%    5      .��5      � -   5         �Name$ Login��5      $��Disabled=�6   .+�5      �� -   5        	 ��Name$	 UserTextBox��5      $
��Left=�6"   $��25��6=   $��Username��6I   $	��Top=�6Y   $	��236��6q   $��
29,293,0,0q�6}   6�   �� 5      -   5        $	 PasswordTextBox��5      $
��Left=�6%   $��25��6B   $��Password��6N   $	��Top=�6^   $	��236��6v   $��
29,349,0,0q�6�   6�   �� 5   
   -   5        
 ��Name$
 SignInButton��5      $��17,393,203,131q�6'   $
��Test��6?   ��5      �� 5       � 	Resources 5       
  NORMAL  OVER��%�   &	        &	 r     �� 5      $.��(pack://application:,,,/Images/SignIn.png��6   $ HighQuality=�6O   $��UniformToFill=�6}   �� 5      $8��2pack://application:,,,/Images/SignIn_MouseOver.png��6   $ HighQuality=�6W   5      .R�5      � $ bg��5       J� RenderTransformOrigin$ 0.5,0.5&�5      .+�5      ��  ��Name$ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5       �� Triggers 5      P� 5       P� Property �@J�IsMouseOver P� Value . . �5"   	   ��  �� 
TargetName$ import_image��6    �� Value# �  5$       �� Property � ��5%   	   P� 5&       � �� . . �5)   	   �� $ bg��6    � z� 5+   
   �� 5,       �� ScaleX$	 0.9Q�6    �� ScaleY$	 0.9Q�5-   -   5/   
   50   	   52      54      �� 55      -   5        $
 SignUpButton��55      $��23,499,225,37q�6!   ��56      �� 57       58      ��%�   &	        &	 r     �� 59      $.��(pack://application:,,,/Images/SignUp.png��6   $ HighQuality=�6O   $��UniformToFill=�6}   �� 5:      $8��2pack://application:,,,/Images/SignUp_MouseOver.png��6   $ HighQuality=�6W   5;      .R�5=      � $ bg��5>      $ 0.5,0.5&�5=      .+�5?      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5@       5A      P� 5B       �@J�IsMouseOver . . �5E   	   �� $ import_image��6   # �  5G       � ��5H   	   P� 5I       � �� . . �5L   	   �� $ bg��6    � z� 5N   
   �� 5O      $	 0.9Q�6   $	 0.9Q�5P   -   5R   
   5S   	   5U      5W      �� 5X      $
��Left=�6
   $��95��6%   $��191,177,0,0q�61   $	��Top=�6F   $	��128��6^   $5��/pack://application:,,,/Images/Quizzard Logo.png��6j   $ -0.436,0.788&�6�    � UseLayoutRounding . $ HighQuality=�6�   �� 5Y      $
��Left=�6   $��
29,478,0,0q�6)   $
��Wrap=�6=   $��Don't Have an Account?��6Q   $	��Top=�6o   $ -7.364,-0.771&�6�   
�������$��Century Gothic)�5Z      $��13(�63   �� 5[      -   5         ��Name$ Status��5[      $
��Left=�6   $��
29,539,0,0q�69   $
��Wrap=�6M   $	��Top=�6a   $ -7.364,-0.771&�6y   
�������$��Century Gothic)�5\      $��13(�63   �� 5]      -   5        $
 SignInButton_Copy��5]      $��277,0,0,548q�6&   $
��Test��6;   ��5^      �� 5_       5`      ��%�   &	        &	 p     �� 5a      $,��&pack://application:,,,/Images/Exit.png��6   $ HighQuality=�6M   $��UniformToFill=�6{   �� 5b      $1��+pack://application:,,,/Images/ExitHover.png��6   $ HighQuality=�6P   5c      .R�5e      � $ bg��5f      $ 0.5,0.5&�5e      .+�5g      �� $ import_image��6   #���   6$   $��Center=�6G   $��Stretch=�6k   5h       5i      P� 5j       �@J�IsMouseOver . . �5m   	   �� $ import_image��6   # �  5o   	    � ��5p   	   P� 5q       � �� . . �5t   	   �� $ bg��6    � z� 5v   
   �� 5w      $	 0.9Q�6   $	 0.9Q�5x      5z   
   5{   	   5}      5      5�      5�      