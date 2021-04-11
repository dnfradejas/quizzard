using System;
using System.Xml;
using System.Xml.Linq;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Quizzard
{
	class ScoreFileHandling
	{
		public ScoreFileHandling() { }

		//This function loads the XML file
		//If the XML file is existing, append
		//If the XML doesn't exist, create a new file

		public void LoadXML()//filename sample: Quizzard.xml
		{
			if (!File.Exists(@"Scores.xml"))
			{
				XElement xElem;
				XDocument xDoc;

				xDoc = new XDocument();
				xElem = new XElement("Scores");
				//Add Room Element Name Quizzard
				xDoc.Add(xElem);
				xDoc.Save(@"Scores.xml");
			}
		}

		public void SaveToXML(XmlDocument xDocument)
		{
			//Save to XML File
			XmlTextWriter xTextWriter = new XmlTextWriter(Environment.CurrentDirectory + @"\Scores.xml", null);
			xTextWriter.Formatting = Formatting.Indented;

			xDocument.WriteContentTo(xTextWriter);
			xTextWriter.Close();
		}

		public void AddQuiz(string quizID)
		{
			LoadXML();

			XmlDocument xDoc = new XmlDocument();
			xDoc.RemoveAll();
			xDoc.Load(@"Scores.xml");


			//Append Child Quiz
			XmlElement xElementQuiz = xDoc.CreateElement("Quiz");
			xElementQuiz.SetAttribute("id", quizID);
			xDoc.DocumentElement.AppendChild(xElementQuiz);

			//Save to XML File
			SaveToXML(xDoc);
		}

		//Adds a record of a quiz being taken
		public void AddQuizTaker(string quizID, string username, string score)
		{
			LoadXML();

			XDocument xDoc = new XDocument();
			xDoc = XDocument.Load(@"Scores.xml");
			bool existing = false;

			//Append Child
			XElement user = new XElement("User");
			user.Add(new XAttribute("username", username));
			user.Add(new XAttribute("score", score));

			foreach (XElement element in xDoc.Root.Nodes())
			{
				if (element.Attribute("id").Value == quizID)
				{
					foreach (XElement elem in element.Nodes())
						if (elem.Attribute("username").Value == username)
						{
							existing = true;
							if (Int32.Parse(elem.Attribute("score").Value) < Int32.Parse(score))
								elem.SetAttributeValue("score", score);
						}

					if (!existing)
						element.Add(user);
				}
			}
			//Save to XML File
			xDoc.Save(@"Scores.xml");
		}

		//Returns the score and names of the exam takers.
		public List<List<string>> GetScores(string quizID)
		{
			XDocument xDoc = new XDocument();
			xDoc = XDocument.Load(@"Scores.xml");

			List<List<string>> list = new List<List<string>>();
			List<string> tuple;
			foreach (XElement element in xDoc.Root.Nodes())
			{
				if (element.Attribute("id").Value == quizID)
				{
					foreach (XElement elem in element.Nodes())
					{
						tuple = new List<string>();
						tuple.Add(elem.Attribute("username").Value);
						tuple.Add(elem.Attribute("score").Value);
						list.Add(tuple);
					}
				}
			}
			return list;
		}

		//Checks if an ID is already beign used by an exam
		public bool QuizIDExists(string quizID)
		{
			bool state = false;
			XDocument xDoc = new XDocument();
			xDoc = XDocument.Load(@"Scores.xml");
			XElement root = XElement.Load(@"Scores.xml");

			IEnumerable<XElement> address =
				  from el in root.Elements("Quiz")
				  where (string)el.Attribute("id") == quizID
				  select el;

			if (address.Count() != 0)
				state = true;
			return state;
		}

		//Return true if the quiz is removed
		//Return false if the quiz ID doesn't exist
		public bool DeleteQuiz(string quizID)
		{
			if (QuizIDExists(quizID))
			{
				XDocument xDoc = new XDocument();
				xDoc = XDocument.Load(@"Scores.xml");

				//Console.WriteLine(xDoc);
				var address =
				  from el in xDoc.Descendants("Quiz")
				  where (string)el.Attribute("id") == quizID
				  select el;

				foreach (XElement el in address)
					el.RemoveAll();

				xDoc.Save(@"Scores.xml");
				return true;
			}
			return false;
		}
	}
}




