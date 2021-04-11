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
    /// Interaction logic for MultipleChoice_Final.xaml
    /// </summary>
    public partial class MultipleChoice_Final : Window
    {
		private string uName;
		private MultipleChoice mul;
        public MultipleChoice_Final()
        {
            InitializeComponent();
        }
		public MultipleChoice_Final(string a, MultipleChoice m)
		{
			InitializeComponent();
			uName = a;
			mul = m;
		}

		private void Add_Click(object sender, RoutedEventArgs e)
		{
			string quizID;
			quizID = QuizIDTextBox.Text;
			if (QuizIDTextBox.Text != "")
			{
				if (!QuizzardClass.QuizExists(quizID))
				{
					bool inOrder;
					inOrder = false;
					if (ShuffleChk.IsChecked ?? false)
						inOrder = true;
					mul.QuizID = quizID;
					mul.IsInOrder = inOrder;
					QuizzardClass.AddMultipleChoice(mul, uName);
					MainMenu Menu = new MainMenu(uName);
					Menu.Show();
					this.Close();
					Menu = null;
					mul = null;
				}
				else
					Status.Text = "ID already exists. Please enter another ID:";
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
