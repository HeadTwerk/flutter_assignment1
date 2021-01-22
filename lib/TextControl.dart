import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

  final Function _change;
  TextControl(this._change);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:100, right:100, top:0, bottom:0),
      child: RaisedButton(
        color: Colors.yellow[300],
        textColor: Colors.red,
        child: Text('Change text', style: TextStyle(fontWeight:FontWeight.bold, fontStyle: FontStyle.italic),),
        onPressed: _change,
      ),
    );
  }
}