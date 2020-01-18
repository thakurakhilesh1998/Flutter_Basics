import 'package:flutter/material.dart';
import 'package:login_page/result.dart';
import './questionlist.dart';
import './answerList.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {


  var questionNumber = 0;
  var score1 = 0;
  var questionList = [

    {"question": "What\'s is your favourite Color", "answer":
    [{"text": 'red', 'score': '5'},
      {'text': 'blue', 'score': '4'},
      {'text': 'black', 'score': '10'},
      {'text': 'white', 'score': '1'}]

      ,
    }, {
      "question": "What\'s is your favourite Animal",
      "answer": [{'text': 'Zebra', 'score': '3'},
        {'text': 'Lion', 'score': '4'},
        {'text': 'Tiger', 'score': '2'},
        {'text': 'Dog', 'score': '8'},
        {'text': 'Cat', 'score': '9'}],},
    {
      "question": "What\'s is your favourite Sports",
      "answer": [{'text': 'Cricket', 'score': '4'},
        {'text': 'Football', 'score': '6'},
        {'text': 'Badminton', 'score': '7'},
        {'text': 'Archery', 'score': '4'}],},
  ];

  void onAnswerChoosen(int score) {
    score1 += score;
    setState(() {
      questionNumber = questionNumber + 1;
    });

  }
  void OnResetButtonPressed()
  {
    setState(() {
      score1=0;
      questionNumber=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("My App"),
            centerTitle: true,
            backgroundColor: Colors.green[600],
            brightness: Brightness.light,
            toolbarOpacity: 0.5,
          ),
          body: questionNumber < questionList.length ? Quiz(
              questionList: questionList,
              onAnswerChoosen: onAnswerChoosen,
              questionNumber: questionNumber)
              : Result(score1,OnResetButtonPressed)
      )
      ,
    );
  }
}
