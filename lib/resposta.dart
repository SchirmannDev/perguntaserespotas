import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Resposta 2'),
      onPressed: null,
    );
  }
}
