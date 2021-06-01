import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import 'resultado.dart';

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
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Perguntas'),
            ),
          ),
          body: temPerguntaSelecionada
              ? Column(
                  children: [
                    Questao(_perguntas[_perguntaSelecionada]['texto']),
                    ...respostas.map((t) => Resposta(t, _responder)).toList()
                  ],
                )
              : Resultado(),
        ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
