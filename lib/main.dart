import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'QUal é sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
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
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
                child: Text('Resposta 2'),
                onPressed: () {
                  print('Resposta 2 foi selecionada');
                }),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3 selecionada'),
            ),
          ],
        ),
      ),
    );
  }
}
