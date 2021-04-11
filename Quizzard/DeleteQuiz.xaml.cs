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
	/// Interaction logic for DeleteQuiz.xaml
	/// </summary>
	public partial class DeleteQuiz : Window
	{
		private string uName;
		private string qID;
		public DeleteQuiz(string a)
		{
			InitializeComponent();
			uName = a;
		}

		private void Delete_Click(object sender, RoutedEventArgs e)
		{
			qID = QuizIDTextBox.Text;
			if (QuizzardClass.DeleteQuiz(uName, qID))
				MessageBox.Show("Quiz Deleted", "Successful!", MessageBoxButton.OK, MessageBoxImage.Information);
			else
				Status.Text = "Quiz Not Found!";
		}

		private void Back_Click(object sender, RoutedEventArgs e)
		{
			MainMenu M = new MainMenu(uName);
			M.Show();
			this.Close();
			M = null;
		}

		private void Window_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}
	}
}
