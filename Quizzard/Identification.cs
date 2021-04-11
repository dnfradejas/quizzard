using System;
using System.Collections.Generic;

namespace Quizzard
{
	public class Identification : Quiz
	{
		//Private data
		private List<string> hints;
		private List<List<string>> alternateAnswers;
		private bool isHintEnabled;
		private bool isAlternateAnswersEnabled;
		private bool isCaseSensitive;

		//PROPERTIES
		public List<string> Hints { get => hints; set => hints = value; }
		public List<List<string>> AlternateAnswers { get => alternateAnswers; set => alternateAnswers = value; }
		public bool IsHintEnabled { get => isHintEnabled; set => isHintEnabled = value; }
		public bool IsAlternateAnswersEnabled { get => isAlternateAnswersEnabled; set => isAlternateAnswersEnabled = value; }
		public bool IsCaseSensitive { get => isCaseSensitive; set => isCaseSensitive = value; }

		//Default constructor
		public Identification() : base()
		{
			Hints = new List<string>();
			AlternateAnswers = new List<List<string>>();
			Type = "Identification";
		}

		//Main constructor to be used
		public Identification(string ID) : base(ID)
		{
			Type = "Identification";
			Load(ID);
		}

		public override void Load(string quizID)
		{
			base.Load(quizID);
			XMLFileHandling fh = new XMLFileHandling();
			QuizID = quizID;
			Questions = fh.getQuestions(quizID, "Identification");
			CorrectAnswers = fh.getIdentifcationAnswers(quizID);
			Hints = fh.getIdentifcationHints(quizID);
			AlternateAnswers = fh.getIdentificationAlternateAnswers(quizID);
			IsInOrder = fh.IdentificationQuizOrder(quizID);
			IsAlternateAnswersEnabled = fh.IdentificationAlternateAnswerState(quizID);
			IsHintEnabled = fh.IdentificationHintState(quizID);
			IsCaseSensitive = fh.IdentificationCaseSensitive(quizID);
		}

		public override void Save()
		{
			base.Save();
			XMLFileHandling fh = new XMLFileHandling();
			fh.AddIdentificationElement(Questions, CorrectAnswers, Hints, AlternateAnswers, QuizID, IsInOrder, IsAlternateAnswersEnabled, IsHintEnabled, IsCaseSensitive);
		}

		//Adds an identification item with hint
		public void IdentificationAddItem(string question, string correctAnswer, string[] alterAnswers, string hint)
		{
			base.AddItem(question, correctAnswer);
			if (alterAnswers.Length == 0)
				AlternateAnswers.Add(new List<string> { });
			else
				AlternateAnswers.Add(new List<string>(alterAnswers));

			if (hint == "")
				Hints.Add("No hint available for this question");
			else
				Hints.Add(hint);
		}

		//Removes an identification item
		public void IdentificationRemoveItem(string question)
		{
			if (Questions.Contains(question))
			{
				int index = Questions.IndexOf(question);
				base.RemoveItem(question);
				Hints.RemoveAt(index);
				AlternateAnswers.RemoveAt(index);
			}
		}

		//Shuffles the list
		public void Shuffle()
		{
			Random rand = new Random();
			string temp;
			List<string> tempAlt;
			int max = Questions.Count;
			int x, y;
			for (int i = 0; i < max * 5; i++)
			{
				x = rand.Next(max);
				y = rand.Next(max);

				temp = Questions[x];
				Questions[x] = Questions[y];
				Questions[y] = temp;

				temp = CorrectAnswers[x];
				CorrectAnswers[x] = CorrectAnswers[y];
				CorrectAnswers[y] = temp;

				temp = Hints[x];
				Hints[x] = Hints[y];
				Hints[y] = temp;

				tempAlt = AlternateAnswers[x];
				AlternateAnswers[x] = AlternateAnswers[y];
				AlternateAnswers[y] = tempAlt;
			}
		}
	}
}
