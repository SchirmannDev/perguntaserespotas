import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questao(_perguntas[_perguntaSelecionada]['texto']),
        ...respostas.map((t) => Resposta(t, _responder)).toList()
      ],
    );
  }
}
