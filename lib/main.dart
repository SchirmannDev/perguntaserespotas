import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': ['ROSA', 'AMARELO', 'LARANJA', 'AZUL'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['GATO', 'CACHORRO', 'PASSARO', 'PEIXE'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['BONIEK', 'MAYK', 'LEONARDO', 'MANGUINHO'],
    }
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Perguntas'),
          ),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t, _responder)).toList()
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
