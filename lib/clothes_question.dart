import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  String _questionContent;
  ClothesQuestion(this._questionContent);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(25),
        child: Text(
          _questionContent,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 3, 81, 145),
            
          ),
        ));
  }
}
