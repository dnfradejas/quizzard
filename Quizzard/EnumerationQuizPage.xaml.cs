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
	/// Interaction logic for EnumerationQuizPage.xaml
	/// </summary>
	public partial class EnumerationQuizPage : Window
	{
		private string quizID;
		private string uName;
		private string qType;
		private string[] answers;
		private int count;
		private int i = 1;
		private int j = 0;
		private bool Disp = false;
		private QuizzardClass test;
		public EnumerationQuizPage(string ID, QuizzardClass Q, string a)
		{
			InitializeComponent();
			quizID = ID;
			uName = a;
			test = Q;
			qType = test.Type;
			Answer.Visibility = Visibility.Hidden;
			AnswerTextBox.Visibility = Visibility.Hidden;
			Inst.Visibility = Visibility.Hidden;
			Add.Visibility = Visibility.Hidden;
		}

		private void Add_Click(object sender, RoutedEventArgs e)
		{
			MessageBox.Show("Answer Added", "Added", MessageBoxButton.OK, MessageBoxImage.Information);
			if (j < count + 1)
			{
				answers[j] = AnswerTextBox.Text;
				j++;
			}
			AnswerTextBox.Text = "";
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			for (int a = j; a < count; a++)
			{
				answers[a] = "";
			}
			j = 0;
			test.CheckAnswer(answers);
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
				Inst.Visibility = Visibility.Hidden;
				Add.Visibility = Visibility.Hidden;
				Score.Text = test.GetEnumResult(quizID);
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
			Answer.Visibility = Visibility.Visible;
			AnswerTextBox.Visibility = Visibility.Visible;
			Inst.Visibility = Visibility.Visible;
			Add.Visibility = Visibility.Visible;
			DisplayQuestion();
		}

		private void DisplayQuestion()
		{
			test.Dequeue();
			QuestionText.Text = test.currentQuestion;
			count = test.currentEnumerationAnswers.Count;
			answers = new string[count];
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
