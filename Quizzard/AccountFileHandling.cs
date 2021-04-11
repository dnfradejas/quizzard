using System.Linq;
using System.Xml.Linq;
using System.IO;
using System.Collections.Generic;

namespace Quizzard
{
	class AccountFileHandling
	{
		public AccountFileHandling() { }

		private string uName;

		public string UName
		{
			get
			{
				return uName;
			}
			set
			{
				uName = value;
			}
		}

		//Checks if XML file exists
		public void IfXmlExist()
		{
			if (!File.Exists(@"Accounts.xml"))
			{
				XDocument xDoc = new XDocument();
				XElement xElem = new XElement("Account");
				xDoc.Add(xElem);
				xDoc.Save(@"Accounts.xml");
				xDoc = XDocument.Load(@"Accounts.xml");
			}
		}

		//Checks if username exists
		public bool UserExist(string username)
		{
			bool found = false;
			IfXmlExist();
			XDocument xDoc = XDocument.Load(@"Accounts.xml");

			var un = from user in xDoc.Descendants("User")
					 select new
					 {
						 uname = user.Element("Username").Value
					 };

			foreach (var u in un)
			{
				if (u.uname == username)
					found = true;
			}

			return found;
		}

		//Adds user
		public void AddUser(string username, string password)
		{
			IfXmlExist();

			XDocument xDoc = XDocument.Load(@"Accounts.xml");
			XElement xElem = new XElement("User",
				new XElement("Username", username),
				new XElement("Password", password),
				new XElement("CreatedQuizzes"));
			xDoc.Root.Add(xElem);
			xDoc.Save("Accounts.xml");
		}

		//If username and password match, login success
		public bool Login(string username, string password)
		{
			bool match = false;
			IfXmlExist();
			XDocument xDoc = XDocument.Load(@"Accounts.xml");

			var un = from user in xDoc.Descendants("User")
					 select new
					 {
						 uname = user.Element("Username").Value,
						 pword = user.Element("Password").Value
					 };

			foreach (var u in un)
			{
				if (u.uname == username && u.pword == password)
					match = true;
			}

			if (match)
			{
				uName = username;
			}

			return match;
		}


		public void AddCreatedQuiz(string username, string createdquiz)
		{
			IfXmlExist();
			XDocument xDoc = XDocument.Load(@"Accounts.xml");

			var user = xDoc.Descendants("User")
							.First(un => un.Element("Username").Value == username);
			user.Element("CreatedQuizzes").Add(new XElement("ID", createdquiz));

			xDoc.Save("Accounts.xml");
		}

		public string[] GetUsername()
		{
			IfXmlExist();
			XDocument xDoc = XDocument.Load(@"Accounts.xml");

			var usernames = from username in xDoc.Descendants("User")
							select (string)username.Element("Username");

			return usernames.ToArray();
		}

		public string[] GetPassword()
		{
			IfXmlExist();
			XDocument xDoc = XDocument.Load(@"Accounts.xml");

			var passwords = from password in xDoc.Descendants("User")
							select (string)password.Element("Password");

			return passwords.ToArray();
		}

		public string[] GetCreatedQuiz(string username)
        {
            IfXmlExist();
            XDocument xDoc = XDocument.Load(@"Accounts.xml");

            List<string> ids = new List<string>();

            foreach (XElement user in xDoc.Descendants("User"))
                if (user.Element("Username").Value == username)
                    foreach (string id in user.Elements("CreatedQuizzes").Elements("ID"))
                        ids.Add(id);

            return ids.ToArray();
        }
	}
}
