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
    /// Interaction logic for MultipleChoice_Question.xaml
    /// </summary>
    public partial class MultipleChoice_Question : Window
    {
		private MultipleChoice mul;
		private string question;
		private string cAns;
		private string A;
		private string B;
		private string C;
		private string D;
		private string uName;
		public MultipleChoice_Question()
        {
            InitializeComponent();
        }

		public MultipleChoice_Question(string a, MultipleChoice m)
		{
			InitializeComponent();
			uName = a;
			mul = m;
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			A = aTextBox.Text;
			B = bTextBox.Text;
			C = cTextBox.Text;
			D = dTextBox.Text;
			question = QuestionTextBox.Text;
			cAns = cAnswTextBox.Text;
			if (A != "" && B != "" && C != "" && D != "" && question != "" && cAns != "")
			{
				string select = "M";
				AddMoreQ Add = new AddMoreQ(A, B, C, D, question, cAns, select, uName, mul);
				Add.Show();
				this.Close();
				Add = null;
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
