import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded( // true button
      child: new Material(
        color: _answer == true ? Colors.blueGrey : Colors.deepOrangeAccent,
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
              child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black, width: 8.0)
                ),
                padding: new EdgeInsets.all(25.0),
                child: new Text(_answer == true ? "TRUE" : "FALSE",
                    style: new TextStyle(color: Colors.black, fontSize: 45.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
                ),
              )
          ),
        ),
      ),
    );
  }
}