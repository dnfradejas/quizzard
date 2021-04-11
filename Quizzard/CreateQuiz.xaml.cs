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
	/// Interaction logic for CreateQuiz.xaml
	/// </summary>
	public partial class CreateQuiz : Window
	{

		private string uName;
		public CreateQuiz()
		{
			InitializeComponent();
		}

		public CreateQuiz(string a)
		{
			InitializeComponent();
			uName = a;
		}

		private void IdentificationB_Click(object sender, RoutedEventArgs e)
		{
			Identification iden = new Identification();
			Identification_Question Q = new Identification_Question(uName, iden);
			this.Close();
			Q.Show();
			Q = null;
		}

		private void MChoiceB_Click(object sender, RoutedEventArgs e)
		{
			MultipleChoice mul = new MultipleChoice();
			MultipleChoice_Question M = new MultipleChoice_Question(uName, mul);
			this.Close();
			M.Show();
			M = null;
		}

		private void EnumerationB_Click(object sender, RoutedEventArgs e)
		{
			Enumeration enu = new Enumeration();
			EnumerationQuestions E = new EnumerationQuestions(uName, enu);
			this.Close();
			E.Show();
			E = null;
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			MainMenu M = new MainMenu(uName);
			M.Show();
			this.Close();
			M = null;
		}

		private void CreateExamWin_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
