import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.blue),
      child: Center(
          child: Text(
        'FAZ UM STRIP SUA PUTA',
        style: TextStyle(
          fontSize: 30,
          color: Colors.pink,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
