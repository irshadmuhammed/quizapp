import 'quistion.dart';

class QuizBrain {
  int _quistionNumber = 0;
  final List<Question> _questionBank = [
    Question(
        quistionText: 'Some cats are actually allergic to humans',
        quistionAnswer: true),
    Question(
        quistionText: 'You can lead a cow down stairs but not up stairs.',
        quistionAnswer: false),
    Question(
        quistionText:
            'Approximately one quarter of human bones are in the feet.',
        quistionAnswer: true),
    Question(quistionText: 'A slug\'s blood is green.', quistionAnswer: true),
    Question(
        quistionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        quistionAnswer: true),
    Question(
        quistionText: 'It is illegal to pee in the Ocean in Portugal.',
        quistionAnswer: true),
    Question(
        quistionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        quistionAnswer: false),
    Question(
        quistionText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        quistionAnswer: true),
    Question(
        quistionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        quistionAnswer: false),
    Question(
        quistionText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        quistionAnswer: true),
    Question(
        quistionText: 'Google was originally called \"Backrub\".',
        quistionAnswer: true),
    Question(
        quistionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        quistionAnswer: true),
    Question(
        quistionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        quistionAnswer: true),
  ];

  bool? isFinished() {
    if (_quistionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _quistionNumber = 0;
  }

  void nextQuestion() {
    if (_quistionNumber < _questionBank.length - 1) {
      _quistionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_quistionNumber].quistionText;
  }

  bool getAnswer() {
    return _questionBank[_quistionNumber].quistionAnswer;
  }
}
