   M S B A M L   `   `   `  ���� C  ?Quizzard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzardQuizzard  #    Quizzard.Identification_Final   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:Quizzard     -     � Title$  Identification_Question��$	��576��$
��1024�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$6 0pack://application:,,,/Images/MainMenu_Plain.jpg�� �� BitmapScalingMode$ HighQuality=�.��� .+��� $
��Left=�$��87��$��	10,10,0,0q�$	��Top=�$	��114��$5��/pack://application:,,,/Images/Quizzard Logo.png�� J� RenderTransformOrigin$ -0.436,0.788&� � UseLayoutRounding . $ HighQuality=��� -    ��Name$ 
AQuiz_Copy��$
��Left=�$��
10,546,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��15(�$'��!Copyright © Quizzard Team (2018)��$��30��$	��364��	 �� TextAlignment$
	 Left=��� -   $ Banner��$��Center=�$��151,10,68,0q�$��WrapWithOverflow=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��40(�$*��$Identification: Complete the Details��$��87��$	��805��$	 Center=��� -   $ Question��$��Center=�$��49,188,752,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Quiz ID:��$��42��$	��223��$	 Right=��� -   
 ��Name$
 QuizIDTextBox��$
��Left=�$��42��$��277,188,0,0q�$	��Top=�$	��679��$��Century Gothic)�$��30(�
�������
������� �� TextWrapping$
 Wrap=� �� 
CaretBrush
 �   ��� -    ��Name$	 Add��$��891,509,2,12q�$
��Test������  � 	Resources  
  NORMAL  OVER��%�   &	        &	 Q     �� $+��%pack://application:,,,/Images/Add.png��$ HighQuality=�$��Uniform=��� $0��*pack://application:,,,/Images/AddHover.png��$ HighQuality=�.R��  �Name$ bg��$ 0.5,0.5&�.+���  ��Name$ import_image��#���   $��Center=�$��Stretch=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ import_image�� �� Value# �   �� Property � ��P�  � �� . . ��� $ bg�� � z� ��  �� ScaleX$	 0.9Q� �� ScaleY$	 0.9Q��� -    ��Name$ 
CaseSenChk��$
��Left=�$	��Top=�$��30��$��30��$��290,259,0,0q��� -   $ Question_Copy��$��Center=�$��320,247,440,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Case Sensitive��$��42��$	��264��$
	 Left=��� -	   $ 
ShuffleChk��$
��Left=�$	��Top=�$��30��$��30��$��290,306,0,0q��� -
   $ Question_Copy1��$��Center=�$��320,294,440,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Shuffle Questions��$��42��$	��264��$
	 Left=��� -   $ HintChk��$
��Left=�$	��Top=�$��30��$��30��$��290,353,0,0q��� -   $ Question_Copy2��$��Center=�$��320,341,440,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$
��Hint��$��42��$	��264��$
	 Left=��� -   $ 	AltAnsChk��$
��Left=�$	��Top=�$��30��$��30��$��290,395,0,0q��� -   $ Question_Copy3��$��Center=�$��320,383,370,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
�������$��Century Gothic)�$��30(�$��Alternative Answers��$��42��$	��334��$
	 Left=��� -   $ Status��$
��Left=�$��277,153,0,0q�$
��Wrap=�$	��Top=�$ -7.364,-0.771&�
��� E��$��Century Gothic)�$��15(�$�� ��$��30��$	��364��$
	 Left=�