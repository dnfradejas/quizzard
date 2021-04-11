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
	/// Interaction logic for MainMenu.xaml
	/// </summary>
	public partial class MainMenu : Window
	{
		private string uName;
		public MainMenu()
		{
			InitializeComponent();
		}

		public MainMenu(string a)
		{
			InitializeComponent();
			uName = a;
		}

		private void AnswerExam_Click(object sender, RoutedEventArgs e)
		{
			AnswerQuiz AnsQ = new AnswerQuiz(uName);
			AnsQ.Show();
			this.Close();
			AnsQ = null;
		}

		private void CreateExam_Click(object sender, RoutedEventArgs e)
		{
			CreateQuiz CreateQ = new CreateQuiz(uName);
			this.Close();
			CreateQ.Show();
			CreateQ = null;
		}

		private void MainWindow2_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}

		private void LogOut_Click(object sender, RoutedEventArgs e)
		{
			MainWindow LogInForm = new MainWindow();
			LogInForm.Show();
			this.Close();
			LogInForm = null;
		}

		private void DeleteExam_Click(object sender, RoutedEventArgs e)
		{
			DeleteQuiz D = new DeleteQuiz(uName);
			D.Show();
			this.Close();
			D = null;
		}

		private void MainWindow2_Loaded(object sender, RoutedEventArgs e)
		{
			Banner.Text = "Welcome to Quizzard, " + uName;
		}
	}
}
