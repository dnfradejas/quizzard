using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Quizzard
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{

		public MainWindow()
		{
			InitializeComponent();

		}
		private void PasswordTextBox_GotFocus(object sender, RoutedEventArgs e)
		{
			PasswordTextBox.Text = "";
			UserTextBox.Foreground = new SolidColorBrush(Colors.Gray);
			PasswordTextBox.Foreground = new SolidColorBrush(Colors.White);
			if (UserTextBox.Text == "")
				UserTextBox.Text = "Username";
		}

		private void PasswordTextBox_LostFocus(object sender, RoutedEventArgs e)
		{
			PasswordTextBox.Foreground = new SolidColorBrush(Colors.Gray);
			if (PasswordTextBox.Text == "")
				PasswordTextBox.Text = "Password";
		}

		private void UserTextBox_GotFocus(object sender, RoutedEventArgs e)
		{
			UserTextBox.Text = "";
			PasswordTextBox.Foreground = new SolidColorBrush(Colors.Gray);
			UserTextBox.Foreground = new SolidColorBrush(Colors.White);
			if (PasswordTextBox.Text == "")
				PasswordTextBox.Text = "Password";
		}

		private void UserTextBox_LostFocus(object sender, RoutedEventArgs e)
		{
			UserTextBox.Foreground = new SolidColorBrush(Colors.Gray);
			if (UserTextBox.Text == "")
				UserTextBox.Text = "Username";
		}

		private void SignInButton_Click(object sender, RoutedEventArgs e)
		{
			if (PasswordTextBox.Text == "Username" || PasswordTextBox.Text == "Password")
			{
				Status.Foreground = new SolidColorBrush(Colors.OrangeRed);
				Status.Text = "Fill up the Username and Password.";
			}
			else
			{
				string un, pw;
				un = UserTextBox.Text;
				pw = PasswordTextBox.Text;
				LoginF(ref un, ref pw);
			}
		}

		private void SignUpButton_Click(object sender, RoutedEventArgs e)
		{
			if (PasswordTextBox.Text == "Username" || PasswordTextBox.Text == "Password")
			{
				Status.Foreground = new SolidColorBrush(Colors.OrangeRed);
				Status.Text = "Fill up the Username and Password.";
			}
			else
			{
				string un, pw;
				un = UserTextBox.Text;
				pw = PasswordTextBox.Text;
				SignUp(ref un, ref pw);
			}
		}

		//Signup Function
		public void SignUp(ref string un, ref string pw)
		{
			if (!QuizzardClass.SignUp(un, pw))
			{
				Status.Foreground = new SolidColorBrush(Colors.OrangeRed);
				Status.Text = "Error Signing Up.";
				UserTextBox.Text = "Username";
				PasswordTextBox.Text = "Password";

			}
			else
			{
				Status.Foreground = new SolidColorBrush(Colors.LightGreen);
				Status.Text = "Successfully Registered!";
				UserTextBox.Text = "Username";
				PasswordTextBox.Text = "Password";
			}
		}

		// Login Function

		public void LoginF(ref string username, ref string password)
		{
			if (!QuizzardClass.Login(username, password))
			{
				Status.Foreground = new SolidColorBrush(Colors.OrangeRed);
				Status.Text = "Error Signing In.";
				UserTextBox.Text = "Username";
				PasswordTextBox.Text = "Password";

			}
			else
			{
				MainMenu mainMenu = new MainMenu(username);
				mainMenu.Show();
				this.Close();
				mainMenu = null;
			}
		}

		// Window Drag
		private void MainWindow1_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (e.ChangedButton == MouseButton.Left)
				this.DragMove();
		}

		private void Exit_Click(object sender, RoutedEventArgs e)
		{
			this.Close();
		}

        private void UserTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
