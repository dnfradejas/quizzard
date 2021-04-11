using System;
using System.Collections.Generic;

namespace Quizzard
{
	public class MultipleChoice : Quiz
	{
		//List of choices, two dimensional list. 
		private List<List<string>> choices;

		//PROPERTY
		public List<List<string>> Choices { get => choices; set => choices = value; }

		public MultipleChoice() : base()
		{
			Choices = new List<List<string>>();
			Type = "Multiple Choice";
		}

		//Main constructor to be used
		public MultipleChoice(string ID) : base(ID)
		{
			Type = "Multiple Choice";
			Load(ID);
		}

		public override void Load(string quizID)
		{
			base.Load(quizID);
			XMLFileHandling fh = new XMLFileHandling();
			QuizID = quizID;
			Questions = fh.getQuestions(quizID, "Multiple Choice");
			CorrectAnswers = fh.getMultipleChoiceAnswers(quizID);
			Choices = fh.getMultipleChoiceChoices(quizID);
			IsInOrder = fh.MultipleChoiceQuizOrder(quizID);
		}

		public override void Save()
		{
			base.Save();
			XMLFileHandling fh = new XMLFileHandling();
			fh.AddMultipleChoiceElement(Questions, CorrectAnswers, Choices, QuizID, IsInOrder);
		}

		//Adds a multiple choice item
		public void MultipleChoiceAddItem(string question, string choiceA, string choiceB, string choiceC, string choiceD, string correctChoice)
		{
			List<string> itemChoices = new List<string>
			{
				choiceA,
				choiceB,
				choiceC,
				choiceD
			};

			base.AddItem(question, correctChoice);
			Choices.Add(itemChoices);

		}

		//Removes a multiple choice item
		public void MultipleChoiceRemoveItem(string question)
		{
			if (Questions.Contains(question))
			{
				int index = Questions.IndexOf(question);
				base.RemoveItem(question);
				Choices.RemoveAt(index);
			}
			else
				throw new Exception("Remove item failed");
		}

		//Shuffles the list
		public void Shuffle()
		{
			Random rand = new Random();
			string temp;
			List<string> tempChoices;
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

				tempChoices = Choices[x];
				Choices[x] = Choices[y];
				Choices[y] = tempChoices;
			}
		}
	}
}
