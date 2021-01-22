
import 'package:flutter/material.dart';
import 'package:flutter_assignment1/TextShown.dart';
import 'package:flutter_assignment1/textcontrol.dart';

void main(){
  runApp(App());
} 

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> _AppState();
}

class _AppState extends State<App> {

  int _textIndex= 0;  

  final _textList= [
    'Good Morning',
    'Good Afternoon',
    'Good Evening',
    'Good Night',
  ];
  
  void _changeText(){
    setState(() {
      _textIndex= (_textIndex+1)%4;
    });
    
  }

  @override  
  Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          title:Text('Flutter Assignemnt 1'),
          backgroundColor: Colors.redAccent[700],
          ),
          body: Column(
            children: [
                TextShown(_textList[_textIndex]),
                TextControl(_changeText),
            ],
          )
        ), 
      );
  }
}