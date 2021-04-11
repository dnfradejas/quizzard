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
	/// Interaction logic for Identification_Question.xaml
	/// </summary>
	public partial class Identification_Question : Window
	{
		private Identification iden;
		private string questionS;
		private string correctAnswer;
		private string hint;
		private string uName;

		public string Hint { get; set; }
		public string CorrectAnswer { get; set; }
		public string QuestionS { get; set; }
		public List<string> AlternateAnswers { get; set; }

		public Identification_Question()
		{
			InitializeComponent();
		}
		public Identification_Question(string a, Identification i)
		{
			InitializeComponent();
			uName = a;
			iden = i;
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			questionS = QuestionTextBox.Text;
			correctAnswer = AnwserTextBox.Text;
			hint = HintTextBox.Text;
			if (questionS != "" && correctAnswer != "" && hint != "")
			{
				Identification_AltAns AltAns = new Identification_AltAns(questionS, correctAnswer, hint, uName, iden);
				AltAns.Show();
				this.Close();
				AltAns = null;
			}
			else
				Status.Text = "Fill in the details.";
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
