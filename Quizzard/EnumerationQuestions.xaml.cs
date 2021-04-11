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
    /// Interaction logic for EnumerationQuestions.xaml
    /// </summary>
    public partial class EnumerationQuestions : Window
    {
		private Enumeration enu;
		private string uName;
		private string QuestionS;
		private string AnswerS;
		private List<string> correctAnswers;
        public EnumerationQuestions()
        {
            InitializeComponent();
        }

		public EnumerationQuestions(string a, Enumeration e)
		{
			InitializeComponent();
			enu = e;
			uName = a;
			correctAnswers = new List<string>();
		}

		private void Add_Click(object sender, RoutedEventArgs e)
		{
			QuestionS = QuestionTextBox.Text;
			AnswerS = AnswerTextBox.Text;
			if (AnswerTextBox.Text != "" && QuestionTextBox.Text != "")
			{
				correctAnswers.Add(AnswerS);
				AnswerTextBox.Text = "";
				QuestionTextBox.IsReadOnly = true;
				MessageBox.Show("Answer Added!", "Successful", MessageBoxButton.OK, MessageBoxImage.Information);
			}
			else
				Status.Text = "Fill in the details.";
		}

		private void Next_Click_1(object sender, RoutedEventArgs e)
		{
			QuestionTextBox.IsReadOnly = false; ;
			string select = "E";
			AddMoreQ Add = new AddMoreQ(QuestionS, correctAnswers, select, uName, enu);
			Add.Show();
			this.Close();
			Add = null;
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
