   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  #    Quizzard.EnumerationQuestions   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     � Title$  Identification_Question��$	��576��$
��1024�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$6 0pack://application:,,,/Images/MainMenu_Plain.jpg�� �� BitmapScalingMode$ HighQuality=�.���  � RowDefinitions �� �� $	��95* �.+��� $
��Left=�$��87��$��10,4,0,0q�$	��Top=�$	��114��$5��/pack://application:,,,/Images/Quizzard Logo.png�� J� RenderTransformOrigin$ -0.436,0.788&� � UseLayoutRounding . $ HighQuality=�$��1���� -   	 ��Name$	 
AQuiz_Copy��$
��Left=�$��
10,540,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��15(�$'��!Copyright © Quizzard Team (2018)��$��30��$	��364��
 �� TextAlignment$

 Left=�$��1���� -   $	 Banner��$��Center=�$��
151,4,68,0q�$��WrapWithOverflow=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��40(�$'��!Enumeration: Complete the Details��$��87��$	��805��$
 Center=�$��1���� -   $	 Question��$��Center=�$��49,122,752,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��
Question: ��$��45��$	��223��$
 Right=�$��1���� -    ��Name$ QuestionTextBox��$
��Left=�$	��130��$��277,122,0,0q�$	��Top=�$	��679��$��Century Gothic)�$��30(�
�������
������� �� TextWrapping$
 Wrap=� �� 
CaretBrush
 �   �$��1���� -   $	 Answer��$��Center=�$��49,276,752,0q�$��NoWrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��	Answers: ��$��45��$	��223��$
 Right=�$��1���� -   $ AnswerTextBox��$
��Left=�$��45��$��277,276,0,0q�$	��Top=�$	��679��$��Century Gothic)�$��30(�
�������
�������$
 Wrap=�
 �   �$��1���� -    ��Name$
 Next��$��891,503,2,12q�$
��Test��$��1������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 R     �� $,��&pack://application:,,,/Images/Next.png��$ HighQuality=�$��Uniform=��� $1��+pack://application:,,,/Images/NextHover.png��$ HighQuality=�.R��  �Name$ bg��$ 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -	   $	 AQuiz_Copy1��$
��Left=�$��277,332,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��15(�$��Add answers one by one.��$��55��$	��364��$

 Left=�$��1���� -
   $	 Add��$��840,332,68,183q�$	��Add��$ -0.023,-0.255&�$��1������  ��%�   &	        &	 Q     �� $+��%pack://application:,,,/Images/Add.png��$ HighQuality=�$��Uniform=��� $0��*pack://application:,,,/Images/AddHover.png��$ HighQuality=�.R�� $ bg��$ 0.5,0.5&�.+��� $ import_image��#���   $��Center=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ import_image��# �   � ��P�  � �� . . ��� $ bg�� � z� �� $	 0.9Q�$	 0.9Q��� -   $	 Status��$
��Left=�$��277,361,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
��� E��$��Century Gothic)�$��15(�$�� ��$��55��$	��364��$

 Left=�$��1��