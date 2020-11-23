import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz_app/Services/Quizz.dart';
import '../constants.dart';
class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Consumer<Quizz>(builder: (context,quizz,child){
        return Text(
          quizz.getText(),
          style: kQuestionTextStyle,
          textAlign: TextAlign.center,
        );
      },
              
      ),
    );
  }
}
