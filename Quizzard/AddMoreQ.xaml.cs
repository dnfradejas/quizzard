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
	/// Interaction logic for AddMoreQ.xaml
	/// </summary>
	public partial class AddMoreQ : Window
	{
		private string selected;
		private string uName;
		private Identification iden;
		private MultipleChoice mul;
		private Enumeration enu;

		public AddMoreQ()
		{
			InitializeComponent();
			Identification iden = new Identification();
			Identification_Question Q = new Identification_Question();
			iden.IdentificationAddItem(Q.QuestionS, Q.CorrectAnswer, Q.AlternateAnswers.ToArray(), Q.Hint);
			Q = null;
		}

		public AddMoreQ(string QuestionS, string CorrectAnswer, List<string> AlternateAnswers, string Hint, string sel, string a, Identification i)
		{
			InitializeComponent();
			iden = i;
			iden.IdentificationAddItem(QuestionS, CorrectAnswer, AlternateAnswers.ToArray(), Hint);
			selected = sel;
			uName = a;
		}

		public AddMoreQ(string A,string B,string C,string D,string questionM,string cAns,string select, string a, MultipleChoice m)
		{
			InitializeComponent();
			mul = m;
			mul.MultipleChoiceAddItem(questionM, A, B, C, D, cAns);
			selected = select;
			uName = a;
		}

		public AddMoreQ(string QuestionS, List<string> correctAnswers, string select, string a, Enumeration e)
		{
			InitializeComponent();
			enu = e;
			enu.EnumerationAddItem(QuestionS, correctAnswers.ToArray());
			selected = select;
			uName = a;
		}

		private void Yes_Click(object sender, RoutedEventArgs e)
		{
			if (selected == "I")
			{
				Identification_Question Q = new Identification_Question(uName,iden);
				Q.Show();
				this.Close();
				Q = null;
			}
			else if (selected == "M")
			{
				MultipleChoice_Question Q = new MultipleChoice_Question(uName,mul);
				Q.Show();
				this.Close();
				Q = null;
			}
			else if (selected == "E")
			{
				EnumerationQuestions Q = new EnumerationQuestions(uName,enu);
				Q.Show();
				this.Close();
				Q = null;
			}
		}

		private void No_Click(object sender, RoutedEventArgs e)
		{
			if (selected == "I")
			{
				Identification_Final Final = new Identification_Final(uName,iden);
				Final.Show();
				this.Close();
				Final = null;
			}
			else if (selected == "M")
			{
				MultipleChoice_Final Final = new MultipleChoice_Final(uName,mul);
				Final.Show();
				this.Close();
				Final = null;
			}
			else if (selected == "E")
			{
				EnumerationFinal Final = new EnumerationFinal(uName,enu);
				Final.Show();
				this.Close();
				Final = null;
			}
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
