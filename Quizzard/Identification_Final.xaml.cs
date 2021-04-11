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
	/// Interaction logic for Identification_Final.xaml
	/// </summary>
	public partial class Identification_Final : Window
	{
		string uName;
		private Identification iden;
		public Identification_Final()
		{
			InitializeComponent();
		}

		public Identification_Final(string a, Identification i)
		{
			InitializeComponent();
			uName = a;
			iden = i;
		}

		private void Add_Click(object sender, RoutedEventArgs e)
		{
			string quizID;
			quizID = QuizIDTextBox.Text;
			if (QuizIDTextBox.Text != "")
			{
				if (!QuizzardClass.QuizExists(quizID))
				{
					bool inOrder, hintEnabled, alternateAnswersEnabled, caseSensitive;
					inOrder = hintEnabled = alternateAnswersEnabled = caseSensitive = false;
					if (CaseSenChk.IsChecked ?? false)
						caseSensitive = true;
					if (HintChk.IsChecked ?? false)
						hintEnabled = true;
					if (AltAnsChk.IsChecked ?? false)
						alternateAnswersEnabled = true;
					if (ShuffleChk.IsChecked ?? false)
						inOrder = true;

					iden.QuizID = quizID;
					iden.IsInOrder = inOrder;
					iden.IsHintEnabled = hintEnabled;
					iden.IsAlternateAnswersEnabled = alternateAnswersEnabled;
					iden.IsCaseSensitive = caseSensitive;
					QuizzardClass.AddIdentification(iden, uName);

					MainMenu Menu = new MainMenu(uName);
					Menu.Show();
					this.Close();
					Menu = null;
					iden = null;
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
