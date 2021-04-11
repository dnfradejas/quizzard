using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Quizzard
{
	/// <summary>
	/// Interaction logic for MultipleChoiceQuizPage.xaml
	/// </summary>
	public partial class MultipleChoiceQuizPage : Window
	{
		private string quizID;
		private string uName;
		private string qType;
		private string answer = "";
		private int i = 1;
		private bool Disp = false;
		private QuizzardClass test;

		public MultipleChoiceQuizPage(string ID, QuizzardClass Q, string a)
		{
			InitializeComponent();
			quizID = ID;
			uName = a;
			test = Q;
			qType = test.Type;
			A.Visibility = Visibility.Hidden;
			B.Visibility = Visibility.Hidden;
			C.Visibility = Visibility.Hidden;
			D.Visibility = Visibility.Hidden;
			AText.Visibility = Visibility.Hidden;
			BText.Visibility = Visibility.Hidden;
			CText.Visibility = Visibility.Hidden;
			DText.Visibility = Visibility.Hidden;
			Next.Visibility = Visibility.Hidden;
			FinAns.Visibility = Visibility.Hidden;
			YansText.Visibility = Visibility.Hidden;
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			test.CheckAnswer(answer);
			FinAns.Text = "";
			if (i < test.Max)
			{
				i++;
				DisplayQuestion();
			}
			else
			{
				QuestionText.Visibility = Visibility.Hidden;
				A.Visibility = Visibility.Hidden;
				B.Visibility = Visibility.Hidden;
				C.Visibility = Visibility.Hidden;
				D.Visibility = Visibility.Hidden;
				AText.Visibility = Visibility.Hidden;
				BText.Visibility = Visibility.Hidden;
				CText.Visibility = Visibility.Hidden;
				DText.Visibility = Visibility.Hidden;
				FinAns.Visibility = Visibility.Hidden;
				YansText.Visibility = Visibility.Hidden;
				Score.Text = test.GetResult(quizID);
				if (Disp)
				{
					MainMenu M = new MainMenu(uName);
					M.Show();
					this.Close();
					M = null;
				}
				Disp = true;
			}
		}

		private void Begin_Click(object sender, RoutedEventArgs e)
		{
			Begin.Visibility = Visibility.Hidden;
			Next.Visibility = Visibility.Visible;
			A.Visibility = Visibility.Visible;
			B.Visibility = Visibility.Visible;
			C.Visibility = Visibility.Visible;
			D.Visibility = Visibility.Visible;
			AText.Visibility = Visibility.Visible;
			BText.Visibility = Visibility.Visible;
			CText.Visibility = Visibility.Visible;
			DText.Visibility = Visibility.Visible;
			FinAns.Visibility = Visibility.Visible;
			YansText.Visibility = Visibility.Visible;
			DisplayQuestion();
		}

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{

		}
		private void DisplayQuestion()
		{
			test.Dequeue();
			QuestionText.Text = test.currentQuestion;
			int j = 0;
			foreach (string choice in test.currentChoices)
			{
				if (j == 0)
					AText.Text = choice;
				else if (j == 1)
					BText.Text = choice;
				else if (j == 2)
					CText.Text = choice;
				else if (j == 3)
					DText.Text = choice;
				j++;
			}
		}

		private void A_Click(object sender, RoutedEventArgs e)
		{
			answer = AText.Text;
			FinAns.Text = AText.Text;
		}

		private void B_Click(object sender, RoutedEventArgs e)
		{
			answer = BText.Text;
			FinAns.Text = BText.Text;
		}

		private void C_Click(object sender, RoutedEventArgs e)
		{
			answer = CText.Text;
			FinAns.Text = CText.Text;
		}

		private void D_Click(object sender, RoutedEventArgs e)
		{
			answer = DText.Text;
			FinAns.Text = DText.Text;
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
