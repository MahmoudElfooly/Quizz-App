import 'package:flutter/cupertino.dart';
import 'package:quizz_app/Widget/AnswerWidget.dart';

class Quizz extends ChangeNotifier {
  int counter = 0;
  int totalScore = 0;
  final List<Map<String, Object>> quizzList = const [
    {
      'Question':
          'Which of the following operating systems do you choose to implement a client server network?',
      'answer': [
        {'text': 'MS DOS', 'score': 10},
        {'text': 'Windows 95', 'score': 5},
        {'text': 'Windows 98', 'score': 3},
        {'text': ' Windows 2000', 'score': 2}
      ]
    },
    {
      'Question': 'Which has the maximum capacity?',
      'answer': [
        {'text': 'Floppy disk', 'score': 2},
        {'text': 'Zip disk', 'score': 10},
        {'text': 'jaz-cartridge', 'score': 5},
        {'text': 'super disk', 'score': 10}
      ]
    },
    {
      'Question': 'Which is a non-standard version of computing language?',
      'answer': [
        {'text': 'PROLOG', 'score': 6},
        {'text': 'APL', 'score': 1},
        {'text': 'ARMY', 'score': 4},
        {'text': 'PL/1', 'score': 10}
      ]
    },
    {
      'Question': 'Which has the maximum capacity?',
      'answer': [
        {'text': 'Floppy disk', 'score': 2},
        {'text': 'Zip disk', 'score': 10},
        {'text': 'jaz-cartridge', 'score': 5},
        {'text': 'super disk', 'score': 10}
      ]
    },
    {
      'Question': 'Which is a non-standard version of computing language?',
      'answer': [
        {'text': 'PROLOG', 'score': 6},
        {'text': 'APL', 'score': 1},
        {'text': 'ARMY', 'score': 4},
        {'text': 'PL/1', 'score': 10}
      ]
    },
  ];
  //this method return question
  String getText() {
    String ques = quizzList[counter]['Question'];
    return ques;
  }

//this method return list of answer belong to the current question
  List<Answer> getAnswer() {
    List<Answer> answerwid = [];
    (quizzList[counter]['answer'] as List<Map<String, Object>>).map((answer) {
      return (answerwid.add(Answer(
        title: answer['text'],
        score: answer['score'],
      )));
    }).toList();

    return answerwid;
  }

//get total score
  getTotalScore(int score) {
    totalScore += score;
    print('totalscore $totalScore');
  }

//this method return the question & answer method and change the counter
  void getQues() {
    getText();
    getAnswer();
    counter++;
    notifyListeners();
  }

  //this method to reset the app
  void reset() {
    counter = 0;
    totalScore = 0;
    notifyListeners();
    getQues();
  }
}
