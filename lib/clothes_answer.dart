import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  VoidCallback tapped;
  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child:ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
          onPressed: tapped,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 147, 221, 150),
            fixedSize: Size(250, 60),
            shape: StadiumBorder(),
          ),
        ));
  }
}
