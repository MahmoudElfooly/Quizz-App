import 'package:flutter/material.dart';
import 'package:quizz_app/constants.dart';
import 'Quizz.dart';
import '../Widget/QustionsWidget.dart';
import 'package:provider/provider.dart';

class Brain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Quizz>(builder: (context, quizz, child) {
      //Check the range of List before return question
      return quizz.counter < quizz.quizzList.length
          ? Column(
              children: [
                Question(),
                Consumer<Quizz>(
                  builder: (context, quizz, child) {
                    return Column(children: quizz.getAnswer());
                  },
                )
              ],
            )
          : Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'your Score is ${quizz.totalScore}',
                      style: kQuestionTextStyle,
                    ),
                    RaisedButton(
                      color: kRaisedButtonColor,
                      onPressed: () {
                        quizz.reset();
                      },
                      child: Text('Reset'),
                    ),
                  ]),
            );
    });
  }
}
