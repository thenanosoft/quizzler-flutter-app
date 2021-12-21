import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Questions> _questions = [
    Questions("Is my name is Farhan?", true),
    Questions("Is am i 20 years old?", false),
    Questions("I'm not a flutter developer?", false),
  ];

  int getTotalQuestions() {
    return _questions.length;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText.toString();
  }

  bool? getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void printFinish() {
    if (isFinished()) {
      print('the quiz is finished');
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
