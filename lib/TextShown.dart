import 'package:flutter/material.dart';

class TextShown extends StatelessWidget {
 
  final String textDisplayed;

  TextShown(this.textDisplayed);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:50, right:50, top:100, bottom:20),
      child: Text(
        textDisplayed,
        style: TextStyle(fontSize: 22, ),
        textAlign: TextAlign.center,
      )
    );
  }
}