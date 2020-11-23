import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz_app/Services/Quizz.dart';
import '../constants.dart';
class Answer extends StatelessWidget {
  final String title;
  final int score;
  
  Answer({@required this.title,@required this.score});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Consumer<Quizz>(
        builder: (context, quizz, child) {
          return RaisedButton(
            onPressed: () {
              quizz.getQues();
              quizz.getTotalScore(score);
              print('score $score');
            },
            child: Text(title),
            color: kRaisedButtonColor,
          );
        },
      ),
    );
  }
}
