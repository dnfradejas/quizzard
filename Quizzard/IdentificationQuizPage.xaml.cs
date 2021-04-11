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
	/// Interaction logic for IdentificationQuizPage.xaml
	/// </summary>
	public partial class IdentificationQuizPage : Window
	{
		private string quizID;
		private string uName;
		private string qType;
		private string answer;
		private int i = 1;
		private bool Disp = false;
		private QuizzardClass test;

		public IdentificationQuizPage(string ID, QuizzardClass Q, string a)
		{
			InitializeComponent();
			quizID = ID;
			uName = a;
			test = Q;
			qType = test.Type;
			Answer.Visibility = Visibility.Hidden;
			AnswerTextBox.Visibility = Visibility.Hidden;
			Next.Visibility = Visibility.Hidden;
		}

		private void Begin_Click(object sender, RoutedEventArgs e)
		{
			Begin.Visibility = Visibility.Hidden;
			Next.Visibility = Visibility.Visible;
			Answer.Visibility = Visibility.Visible;
			AnswerTextBox.Visibility = Visibility.Visible;
			DisplayQuestion();
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			answer = AnswerTextBox.Text;
			test.CheckAnswer(answer);
			AnswerTextBox.Text = "";
			if (i < test.Max)
			{
				i++;
				DisplayQuestion();
			}
			else
			{
				QuestionText.Visibility = Visibility.Hidden;
				Answer.Visibility = Visibility.Hidden;
				AnswerTextBox.Visibility = Visibility.Hidden;
				Hint.Visibility = Visibility.Hidden;
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

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{

		}

		private void DisplayQuestion()
		{
			test.Dequeue();
			QuestionText.Text = test.currentQuestion;
			if (test.HintEnabled)
			{
				Hint.Text = test.currentHint;
			}
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
