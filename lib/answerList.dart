import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  Function onAnswerChoosen;
  String answer;
  AnswerList(this.onAnswerChoosen,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      margin: EdgeInsets.all(4.0),
      child: RaisedButton(
        color: Colors.blue,
          child: Text(answer,style: TextStyle(color:Colors.white),),
          onPressed: onAnswerChoosen),
    );
  }
}
