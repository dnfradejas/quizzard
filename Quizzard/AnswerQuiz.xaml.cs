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
	/// Interaction logic for AnswerQuiz.xaml
	/// </summary>
	public partial class AnswerQuiz : Window
	{
		private string quizID;
		private string uName;
		private string qType;
		public AnswerQuiz(string a)
		{
			InitializeComponent();
			uName = a;
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			quizID = QuizIDTextBox.Text;
			QuizzardClass test = new QuizzardClass(quizID, uName);
			qType = test.Type;
			if (qType == "Identification")
			{
				IdentificationQuizPage QPage = new IdentificationQuizPage(quizID, test, uName);
				QPage.Show();
				this.Close();
				QPage = null;
			}
			else if (qType == "Multiple Choice")
			{
				MultipleChoiceQuizPage QPage = new MultipleChoiceQuizPage(quizID, test, uName);
				QPage.Show();
				this.Close();
				QPage = null;
			}
			else if (qType == "Enumeration")
			{
				EnumerationQuizPage QPage = new EnumerationQuizPage(quizID, test, uName);
				QPage.Show();
				this.Close();
				QPage = null;
			}

			else
				Status.Text = "Quiz Not Found!";
		}

		private void Back_Click(object sender, RoutedEventArgs e)
		{
			MainMenu M = new MainMenu(uName);
			M.Show();
			this.Close();
			M = null;
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
