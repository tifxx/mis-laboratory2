import 'package:flutter/material.dart';
import 'package:lab2/clothes_answer.dart';
import './clothes_question.dart';
import './clothes_answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  var questions = [
    {
      'question': 'Select skirt type',
      'answer': [
        'Mini',
        'Midi',
        'Maxi',
      ]
    },
    {
      'question': 'Select skirt material',
      'answer': [
        'Denim',
        'Leather',
        'Satin',
      ]
    },
    {
      'question': 'Select skirt fit',
      'answer': [
        'High waist',
        'Mid-rise',
        'Straight leg',
      ]
    },
  ];
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Clothes app - Laboratory 2"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}
