import 'package:flutter/material.dart';

class Nome extends StatelessWidget {

  final String texto;

  Nome(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 28.0
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}