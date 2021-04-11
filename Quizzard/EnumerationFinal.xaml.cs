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
    /// Interaction logic for EnumerationFinal.xaml
    /// </summary>
    public partial class EnumerationFinal : Window
    {

		private Enumeration enu;
		private string uName;

		public EnumerationFinal()
        {
            InitializeComponent();
        }

		public EnumerationFinal(string a, Enumeration e)
		{
			InitializeComponent();
			uName = a;
			enu = e;
		}

		private void Add_Click(object sender, RoutedEventArgs e)
		{
			string quizID;
			quizID = QuizIDTextBox.Text;
			if (QuizIDTextBox.Text != "")
			{
				if (!QuizzardClass.QuizExists(quizID))
				{
					bool inOrder, caseSensitive;
					inOrder = caseSensitive = false;
					if (CaseSenChk.IsChecked ?? false)
						caseSensitive = true;
					if (ShuffleChk.IsChecked ?? false)
						inOrder = true;

					enu.QuizID = quizID;
					enu.IsInOrder = inOrder;
					enu.IsCaseSensitive = caseSensitive;

					QuizzardClass.AddEnumeration(enu, uName);

					MainMenu Menu = new MainMenu(uName);
					Menu.Show();
					this.Close();
					Menu = null;
					enu = null;
				}
				else
					Status.Text = "ID already exists. Please enter another ID:";
			}
			Status.Text = "Fill in the details.";
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
