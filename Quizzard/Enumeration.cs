using System;
using System.Collections.Generic;

namespace Quizzard
{
	public class Enumeration : Quiz
	{
		//Private data
		private bool isCaseSensitive;
		private List<List<string>> correctAnswersEnum;

		//PROPERTIES
		public List<List<string>> CorrectAnswersEnum { get => correctAnswersEnum; set => correctAnswersEnum = value; }
		public bool IsCaseSensitive { get => isCaseSensitive; set => isCaseSensitive = value; }

		//Default constructor
		public Enumeration() : base()
		{
			CorrectAnswersEnum = new List<List<string>>();
			Type = "Enumeration";
		}

		//Main constructor to be used
		public Enumeration(string ID) : base(ID)
		{
			Type = "Enumeration";
			Load(ID);
		}

		//Return number of items
		public int EnumItemCount()
		{
			int count = 0;
			foreach (List<string> list in CorrectAnswersEnum)
				foreach (string item in list)
					count++;
			return count;
		}

		public override void Load(string quizID)
		{
			base.Load(quizID);
			XMLFileHandling fh = new XMLFileHandling();
			QuizID = quizID;
			Questions = fh.getQuestions(quizID, "Enumeration");
			CorrectAnswersEnum = fh.getEnumerationAnswers(quizID);
			IsInOrder = fh.EnumerationQuizOrder(quizID);
			IsCaseSensitive = fh.EnumerationCaseSensitive(quizID);
		}

		public override void Save()
		{
			base.Save();
			XMLFileHandling fh = new XMLFileHandling();
			fh.AddEnumerationElement(Questions, CorrectAnswersEnum, QuizID, IsInOrder, IsCaseSensitive);
		}

		//Adds an enumeration item with hint
		public void EnumerationAddItem(string question, string[] correctAnswers)
		{
			List<string> correct = new List<string>();
			base.AddItem(question);
			foreach (string answer in correctAnswers)
			{
				correct.Add(answer);
			}
			CorrectAnswersEnum.Add(correct);
		}

		//Removes an enumeration item
		public void EnumerationRemoveItem(string question)
		{
			if (Questions.Contains(question))
			{
				int index = Questions.IndexOf(question);
				base.RemoveItem(question);
				CorrectAnswersEnum.RemoveAt(index);
			}
		}

		//Shuffles the list
		public void Shuffle()
		{
			Random rand = new Random();
			string temp;
			List<string> tempEnumAns;
			int max = Questions.Count;
			int x, y;
			for (int i = 0; i < max * 5; i++)
			{
				x = rand.Next(max);
				y = rand.Next(max);

				temp = Questions[x];
				Questions[x] = Questions[y];
				Questions[y] = temp;

				tempEnumAns = CorrectAnswersEnum[x];
				CorrectAnswersEnum[x] = CorrectAnswersEnum[y];
				CorrectAnswersEnum[y] = tempEnumAns;

			}
		}
	}
}
