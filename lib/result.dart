import 'package:flutter/material.dart';

class Result extends StatelessWidget {
 final int score;
 final Function OnResetButtonPressed;
String finalPhrase;

  Result(this.score,this.OnResetButtonPressed);
 String get resultText
 {
   if(score<=10)
   {
     finalPhrase="You are awesome";
   }
   else if(score <=14)
   {
     finalPhrase="You are good";
   }
   else
   {
     finalPhrase="You are bad";
   }
   return finalPhrase;
 }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       children: <Widget>[

         Text(resultText,
           style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
         ),
         FlatButton(child: Text("Restart Quiz",style:TextStyle(color: Colors.white),),
           onPressed: OnResetButtonPressed,
         color:Colors.yellow,)
       ],
      )
    );
  }
}
