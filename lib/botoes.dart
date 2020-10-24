import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotaoCalculadora extends StatelessWidget {
  BotaoCalculadora({this.conteudo, this.onPressed});

  final VoidCallback onPressed;
  String conteudo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        minWidth: 70.0,
        height: 70.0,
        child: OutlineButton(
          child: Text(conteudo,
              style: TextStyle(color: Colors.white, fontSize: 15)),
          borderSide: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
