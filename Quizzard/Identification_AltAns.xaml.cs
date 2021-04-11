using System.Collections.Generic;
using System.Windows;
using System.Windows.Input;

namespace Quizzard
{
	/// <summary>
	/// Interaction logic for Identification_AltAns.xaml
	/// </summary>
	public partial class Identification_AltAns : Window
	{
		private Identification iden;
		private List<string> alternateAnswers;

		private string A;
		private string b;
		private string c;
		private string uName;
		public Identification_AltAns()
		{
			InitializeComponent();
		}

		public Identification_AltAns(string a)
		{
			InitializeComponent();
			uName = a;
		}
		public Identification_AltAns(string Questions, string CorrectAnswers, string Hint, string a, Identification i)
		{
			InitializeComponent();
			A = Questions;
			b = CorrectAnswers;
			c = Hint;
			uName = a;
			iden = i;
			alternateAnswers = new List<string>();
		}

		private void Add_Click(object sender, RoutedEventArgs e)
		{
			string alternateAnswer;
			alternateAnswer = AltAnsTextBox.Text;
			if (AltAnsTextBox.Text != "")
			{
				alternateAnswers.Add(alternateAnswer);
				MessageBox.Show("Alternative Answer Added!", "Successful", MessageBoxButton.OK, MessageBoxImage.Information);
				AltAnsTextBox.Text = "";
			}
			else
				Status.Text = "Fill in the details.";
		}

		private void Next_Click(object sender, RoutedEventArgs e)
		{
			string sel = "I";
			AddMoreQ addMoreQ = new AddMoreQ(A, b, alternateAnswers, c, sel, uName, iden);
			addMoreQ.Show();
			this.Close();
			addMoreQ = null;
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
