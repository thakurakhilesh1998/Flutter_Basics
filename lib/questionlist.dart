import 'package:flutter/material.dart';

class QuestionList extends StatelessWidget {
String questionList;
QuestionList(this.questionList);
  @override
  Widget build(BuildContext context) {

    return Container(
     width:double.infinity,
      margin:EdgeInsets.all(20),

      child:Text(questionList,style:TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.bold ),
      textAlign:TextAlign.center,),
    );
  }
}
