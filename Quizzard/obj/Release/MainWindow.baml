   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard      Quizzard.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     �Name$  MainWindow1�� � Title$ 
MainWindow��$	��576��$	��329�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$9 3pack://application:,,,/Images/Login_Background3.jpg�� �� BitmapScalingMode$ HighQuality=� � 	Resources ��%    .��� -    �Name$ Login��$��Disabled=�.+��� -   	 ��Name$	 UserTextBox��$
��Left=�$��25��$��Username��$	��Top=�$	��236��$��
29,293,0,0q��� -   $	 PasswordTextBox��$
��Left=�$��25��$��Password��$	��Top=�$	��236��$��
29,349,0,0q��� -   
 ��Name$
 SignInButton��$��17,393,203,131q�$
��Test������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 Z     �� $.��(pack://application:,,,/Images/SignIn.png��$ HighQuality=�$��UniformToFill=��� $8��2pack://application:,,,/Images/SignIn_MouseOver.png��$ HighQuality=�.R�� $ bg�� J� RenderTransformOrigin$ 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -   $
 SignUpButton��$��23,499,225,37q�����  ��%�   &	        &	 Z     �� $.��(pack://application:,,,/Images/SignUp.png��$ HighQuality=�$��UniformToFill=��� $8��2pack://application:,,,/Images/SignUp_MouseOver.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� $
��Left=�$��95��$��191,177,0,0q�$	��Top=�$	��128��$5��/pack://application:,,,/Images/Quizzard Logo.png��$ -0.436,0.788&� � UseLayoutRounding . $ HighQuality=��� $
��Left=�$��
29,478,0,0q�$
��Wrap=�$��Don't Have an Account?��$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��13(��� -    ��Name$ Status��$
��Left=�$��
29,539,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��13(��� -   $
 SignInButton_Copy��$��277,0,0,548q�$
��Test������  ��%�   &	        &	 X     �� $,��&pack://application:,,,/Images/Exit.png��$ HighQuality=�$��UniformToFill=��� $1��+pack://application:,,,/Images/ExitHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q�