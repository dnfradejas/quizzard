using System;
using System.Collections.Generic;

namespace Quizzard
{
	public class QuizzardClass
	{
		private Queue<string> questions;
		public string currentQuestion;  //A current variable, affected by Dequeue()

		private Queue<string> correctAnswers;
		public string currentAnswer;    //A current variable, affected by Dequeue()

		private Queue<string> hints;
		public string currentHint;      //A current variable, affected by Dequeue()

		private Queue<List<string>> enumerationAnswers;
		public List<string> currentEnumerationAnswers;  //A current variable, affected by Dequeue()

		private Queue<List<string>> alternateAnswers;
		public List<string> currentAlternateAnswers;     //A current variable, affected by Dequeue()

		private Queue<List<string>> choices;
		public List<string> currentChoices;    //A current variable, affected by Dequeue()

		public List<string> answerLog;
		private int logCount;

		private string username;    //Username of person logged in
		private string type;        //Type of quiz (Enumeration, Multiple Choice, or Identification)
		private int maxItems;
		private int maxEnumItems;
		private int itemsLeft;
		private int score;

		//Flags
		private bool questionOrdered;
		private bool caseSensitive;
		private bool hintEnabled;
		private bool alternateAnswersEnabled;

		//Properties
		public bool QuestionOrdered { get => questionOrdered; set => questionOrdered = value; }
		public bool CaseSensitive { get => caseSensitive; set => caseSensitive = value; }
		public bool HintEnabled { get => hintEnabled; set => hintEnabled = value; }
		public bool AlternateAnswersEnabled { get => alternateAnswersEnabled; set => alternateAnswersEnabled = value; }
		public int Current => maxItems - questions.Count;
		public int Max => maxItems;
		public string Type => type;

		//Blank Constructor
		public QuizzardClass()
		{
			type = "Quiz";
			questions = new Queue<string>();
			correctAnswers = new Queue<string>();
			hints = new Queue<string>();
			alternateAnswers = new Queue<List<string>>();
			choices = new Queue<List<string>>();
			answerLog = new List<string>();
			logCount = 1;
			maxItems = 0;
			itemsLeft = 0;
			score = 0;
			QuestionOrdered = false;
			CaseSensitive = false;
			HintEnabled = false; ;
			AlternateAnswersEnabled = false;
			username = "John_Doe";
		}

		//Main Constructor to be used
		public QuizzardClass(string quizID, string user)
		{
			username = user;
			answerLog = new List<string>();
			logCount = 1;
			type = XMLFileHandling.GetQuizType(quizID);
			if (type == "Identification")
			{
				Identification quiz = new Identification(quizID);
				if (!quiz.IsInOrder)
					quiz.Shuffle();
				questions = new Queue<string>(quiz.Questions);
				correctAnswers = new Queue<string>(quiz.CorrectAnswers);
				hints = new Queue<string>(quiz.Hints);
				alternateAnswers = new Queue<List<string>>(quiz.AlternateAnswers);
				maxItems = quiz.ItemCount();
				itemsLeft = quiz.ItemCount();
				score = 0;
				QuestionOrdered = quiz.IsInOrder;
				CaseSensitive = quiz.IsCaseSensitive;
				HintEnabled = quiz.IsHintEnabled;
				AlternateAnswersEnabled = quiz.IsAlternateAnswersEnabled;
			}
			else if (type == "Multiple Choice")
			{
				MultipleChoice quiz = new MultipleChoice(quizID);
				if (!quiz.IsInOrder)
					quiz.Shuffle();
				questions = new Queue<string>(quiz.Questions);
				correctAnswers = new Queue<string>(quiz.CorrectAnswers);
				choices = new Queue<List<string>>(quiz.Choices);
				maxItems = quiz.ItemCount();
				itemsLeft = quiz.ItemCount();
				score = 0;
				QuestionOrdered = quiz.IsInOrder;
			}
			else if (type == "Enumeration")
			{
				Enumeration quiz = new Enumeration(quizID);
				if (!quiz.IsInOrder)
					quiz.Shuffle();
				questions = new Queue<string>(quiz.Questions);
				enumerationAnswers = new Queue<List<string>>(quiz.CorrectAnswersEnum);
				maxItems = quiz.ItemCount();
				maxEnumItems = quiz.EnumItemCount();
				itemsLeft = quiz.ItemCount();
				score = 0;
				QuestionOrdered = quiz.IsInOrder;
				CaseSensitive = quiz.IsCaseSensitive;
			}
		}


		//This function dequeues one item from all the queues and assigns them to the "current" variables.
		public void Dequeue()
		{
			if (type == "Identification")
			{
				currentHint = hints.Dequeue();
				currentAlternateAnswers = alternateAnswers.Dequeue();
				currentAnswer = correctAnswers.Dequeue();
				currentQuestion = questions.Dequeue();
			}
			else if (type == "Multiple Choice")
			{
				currentAnswer = correctAnswers.Dequeue();
				currentChoices = choices.Dequeue();
				currentQuestion = questions.Dequeue();
			}
			else if (type == "Enumeration")
			{
				currentQuestion = questions.Dequeue();
				currentEnumerationAnswers = enumerationAnswers.Dequeue();
			}
			else
				throw new Exception("Invalid quiz type encountered.");
		}

		//This function takes a user input answer as an argument and then compares it with the current correct answer.
		public void CheckAnswer(string input)
		{
			string answer = input;
			if (type == "Identification")
			{
				if (!CaseSensitive)
				{
					answer = answer.ToLower();
					currentAnswer = currentAnswer.ToLower();
					for (int i = 0; i < currentAlternateAnswers.Count; i++)
					{
						currentAlternateAnswers[i] = currentAlternateAnswers[i].ToLower();
					}

				}
				if (answer == currentAnswer)
				{
					Log(currentQuestion, answer, currentAnswer, true);
					score++;
				}
				else if (AlternateAnswersEnabled)
				{
					foreach (string alternateAnswer in currentAlternateAnswers)
						if (answer == alternateAnswer)
						{
							Log(currentQuestion, answer, currentAnswer + "/" + alternateAnswer, true);
							score++;
							break;
						}
				}
				else
					Log(currentQuestion, answer, currentAnswer, false);
			}
			else if (type == "Multiple Choice")
			{

				if (answer == currentAnswer)
				{
					Log(currentQuestion, answer, currentAnswer, true);
					score++;
				}
				else
					Log(currentQuestion, answer, currentAnswer, false);
			}
			else
				throw new Exception("Invalid quiz type encountered.");
		}

		//This function takes an array of answers as an argument and then compares it with the current enumeration answer.
		public void CheckAnswer(string[] inputs)
		{
			List<string> answers = new List<string>(inputs);
			bool[] passed = new bool[answers.Count];

			if (type == "Enumeration")
			{
				for (int i = 0; i < passed.Length; i++)
					passed[i] = false;
				if (!CaseSensitive)
				{
					for (int i = 0; i < answers.Count; i++)
					{
						answers[i] = answers[i].ToLower();
						currentEnumerationAnswers[i] = currentEnumerationAnswers[i].ToLower();
					}
				}
				foreach (string answer in answers)
				{
					for (int i = 0; i < currentEnumerationAnswers.Count; i++)
					{
						if (answer == currentEnumerationAnswers[i])
						{
							if (!passed[i])
							{
								passed[i] = true;
								score++;
							}
						}
					}
				}
				Log(currentQuestion, answers, currentEnumerationAnswers);
			}
			else
				throw new Exception("Invalid quiz type encountered.");
		}

		//This function checks whether a quiz ID is already being used by a quiz.
		public static bool QuizExists(string quiz)
		{
			XMLFileHandling fh = new XMLFileHandling();
			return fh.QuizIDExists(quiz);
		}



		//This function facilitates the addition of an identification item in the database
		public static void AddIdentification(Identification quiz, string username)
		{
			XMLFileHandling fh = new XMLFileHandling();
			fh.AddIdentificationElement(quiz.Questions, quiz.CorrectAnswers, quiz.Hints, quiz.AlternateAnswers, quiz.QuizID, quiz.IsInOrder, quiz.IsAlternateAnswersEnabled, quiz.IsHintEnabled, quiz.IsCaseSensitive);

			ScoreFileHandling sfh = new ScoreFileHandling();
			sfh.AddQuiz(quiz.QuizID);

			AccountFileHandling afh = new AccountFileHandling();
			afh.AddCreatedQuiz(username, quiz.QuizID);
		}

		//This function facilitates the addition of a multiple choice item in the database
		public static void AddMultipleChoice(MultipleChoice quiz, string username)
		{
			XMLFileHandling fh = new XMLFileHandling();
			fh.AddMultipleChoiceElement(quiz.Questions, quiz.CorrectAnswers, quiz.Choices, quiz.QuizID, quiz.IsInOrder);

			ScoreFileHandling sfh = new ScoreFileHandling();
			sfh.AddQuiz(quiz.QuizID);

			AccountFileHandling afh = new AccountFileHandling();
			afh.AddCreatedQuiz(username, quiz.QuizID);
		}

		//This function facilitates the addition of an enumeration item in the database
		public static void AddEnumeration(Enumeration quiz, string username)
		{
			XMLFileHandling fh = new XMLFileHandling();
			fh.AddEnumerationElement(quiz.Questions, quiz.CorrectAnswersEnum, quiz.QuizID, quiz.IsInOrder, quiz.IsCaseSensitive);

			ScoreFileHandling sfh = new ScoreFileHandling();
			sfh.AddQuiz(quiz.QuizID);

			AccountFileHandling afh = new AccountFileHandling();
			afh.AddCreatedQuiz(username, quiz.QuizID);
		}



		//Login function
		public static bool Login(string username_in, string password_in)
		{
			AccountFileHandling fh = new AccountFileHandling();
			string[] usernames = fh.GetUsername();
			string[] passwords = fh.GetPassword();

			for (int i = 0; i < usernames.Length; i++)
			{
				if (usernames[i] == username_in)
					if (passwords[i] == password_in)
						return true;
			}
			return false;
		}


		//Signup function
		public static bool SignUp(string username, string password)
		{
			AccountFileHandling fh = new AccountFileHandling();
			if (fh.UserExist(username) || password.Length < 4)
				return false;
			else
			{
				fh.AddUser(username, password);
				return true;
			}
		}


		//This function removes a quiz from the record. A quiz can only be removed by its creator
		public static bool DeleteQuiz(string username, string quizToDelete)
		{
			;
			XMLFileHandling xfh = new XMLFileHandling();
			AccountFileHandling fh = new AccountFileHandling();
			string[] quizzes = fh.GetCreatedQuiz(username);

			foreach (string quiz in quizzes)
			{
				if (quiz == quizToDelete)
				{
					xfh.DeleteQuiz(quiz);
					return true;
				}
			}
			return false;
		}


		//This function returns a log of the items, comparing the user answer with the correct answer.
		private void Log(string question, string answer, string correctanswer, bool correct)
		{
			if (correct)
				answerLog.Add("QUESTION " + logCount + ": " + currentQuestion.ToUpper() + "\nYOUR ANSWER: " + answer.ToUpper() + " [CORRECT]\nCORRECT ANSWER: " + currentAnswer.ToUpper() + "\n----------------------------------");
			else
				answerLog.Add("QUESTION " + logCount + ": " + currentQuestion.ToUpper() + "\nYOUR ANSWER: " + answer.ToUpper() + " [WRONG]\nCORRECT ANSWER: " + currentAnswer.ToUpper() + "\n----------------------------------");
			logCount++;
		}

		//This function returns a log of the items, comparing the user answer with the correct answer.
		private void Log(string question, List<string> answer, List<string> correctanswer)
		{
			string logItem = "Question " + logCount + ": " + currentQuestion + "\n\nYour Answer: ";
			int enumCount = 1;

			foreach (string ans in answer)
				logItem += "\n" + (enumCount++).ToString() + " " + ans;

			logItem += "\n\nCorrect Answer: ";

			enumCount = 1;
			foreach (string ans in correctanswer)
				logItem += "\n" + (enumCount++).ToString() + " " + ans;

			logItem += "\n" + "-----------------------------";
			answerLog.Add(logItem.ToUpper());
			logCount++;
		}


		//This function returns the result of the quiz. This must be called after the quiz. This is required in order to update the score record.
		public string GetResult(string quizID)
		{
			ScoreFileHandling sfh = new ScoreFileHandling();
			sfh.AddQuizTaker(quizID, username, score.ToString());
			return Result;
		}

		//This function returns the result of the quiz. This must be called after the quiz. This is required in order to update the score record.
		public string GetEnumResult(string quizID)
		{
			ScoreFileHandling sfh = new ScoreFileHandling();
			sfh.AddQuizTaker(quizID, username, score.ToString());
			return EnumResult;
		}

		//This lambda expression returns a statement of the user's score.
		private string Result => "\n" + username + ", your score is " + score.ToString() + "/" + maxItems.ToString();

		//This lambda expression returns a statement of the user's score.
		private string EnumResult => "\n" + username + ", your score is " + score.ToString() + "/" + maxEnumItems.ToString();

	}
}
