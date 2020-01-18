import 'package:flutter/material.dart';
import './questionlist.dart';
import './answerList.dart';

class Quiz extends StatelessWidget {
final List<Map<String,Object>> questionList;
final Function onAnswerChoosen;
final  questionNumber;
  Quiz({@required this.questionList,
        @required this.onAnswerChoosen,
        @required this.questionNumber});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            QuestionList(questionList[questionNumber]['question']),

            ...(questionList[questionNumber]['answer']as List<Map<String,Object>>).map((answer)
            {
              return AnswerList(()=>onAnswerChoosen(int.parse(answer['score'])),answer['text']);
            }).toList(),

          ],
        );
  }
}
