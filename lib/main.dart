import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:quizz_app/Services/Quizz.dart';

import 'package:quizz_app/Services/brain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Quizz>(
      create: (context) => Quizz(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quizz App'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Brain(),
            ),
          ),
        ),
      ),
    );
  }
}
