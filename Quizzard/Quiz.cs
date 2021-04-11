using System;
using System.Collections.Generic;

namespace Quizzard
{
	public class Quiz
	{
		//Private data
		private List<string> questions; //List of questions
		private List<string> correctAnswers;    //The list of correct answers
		private string quizID;      //ID for quiz, to be used for searching (must be unique)
		private string type;        //Type of quiz: Enumeration, Multiple Choice or Identification
		private bool isInOrder;     //Flag for question order

		//PROPERTIES
		public List<string> Questions { get => questions; set => questions = value; }
		public List<string> CorrectAnswers { get => correctAnswers; set => correctAnswers = value; }
		public string QuizID { get => quizID; set => quizID = value; }
		public bool IsInOrder { get => isInOrder; set => isInOrder = value; }
		public string Type { get => type; set => type = value; }

		//Default constructor, no ID
		public Quiz()
		{
			Questions = new List<string>();
			CorrectAnswers = new List<string>();
		}

		//Main constructor to be used
		public Quiz(string ID)
		{
			QuizID = ID;
			Questions = new List<string>();
			CorrectAnswers = new List<string>();
		}

		//Load quiz from XML file
		public virtual void Load(string quizID)
		{
			XMLFileHandling fh = new XMLFileHandling();
			fh.LoadXML();
			if (!fh.QuizIDExists(quizID))
				throw new Exception("Quiz id not found.");
		}

		//Save quiz to XML file
		public virtual void Save()
		{
			XMLFileHandling fh = new XMLFileHandling();
			fh.LoadXML();
			if (fh.QuizIDExists(quizID))
				throw new Exception("Quiz already exists.");
		}

		//Return number of items
		public int ItemCount()
		{
			return Questions.Count;
		}

		//Add a single item's question and correct answer into the quiz
		protected void AddItem(string question, string correctAnswer)
		{
			if (Questions.Contains(question))
				throw new Exception("Item already in quiz.");
			else
			{
				Questions.Add(question);
				CorrectAnswers.Add(correctAnswer);
			}
		}

		//Add a single item's question into the quiz
		protected void AddItem(string question)
		{
			if (Questions.Contains(question))
				throw new Exception("Item already in quiz.");
			else
			{
				Questions.Add(question);
			}
		}
		//Remove an item from the quiz
		protected void RemoveItem(string question)
		{
			if (Questions.Contains(question))
			{
				int index = Questions.IndexOf(question);
				Questions.Remove(question);
				if (CorrectAnswers.Count != 0)
					CorrectAnswers.RemoveAt(index);
			}
			else
				throw new Exception("Item not found in quiz.");
		}

		//Remove all items from the quiz
		public void ClearItems()
		{
			Questions.Clear();
			CorrectAnswers.Clear();
		}

		//Returns the ID as the string representation of the object
		public override string ToString()
		{
			return QuizID;
		}
	}
}
