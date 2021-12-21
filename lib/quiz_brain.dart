import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Questions> _questions = [
    Questions("Flutter is an open-source UI toolkit", true),
    Questions("The first alpha version of Flutter was released in 2017", true),
    Questions("Flutter is developed by Google", true),
    Questions("Is Flutter a programming language?", false),
    Questions("SDK stands for Software Development Knowledge", false),
    Questions(
        "Without the main() function, we cannot write any program on Flutter",
        true),
    Questions("Flutter is not a language; it is an SDK", true),
    Questions(
        "A widget that allows us to refresh the screen is called a stateless widgets",
        false),
    Questions(
        "It is very necessary to learn Dart language for building Flutter application?",
        true),
  ];

  int getTotalQuestions() {
    return _questions.length - 1;
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
