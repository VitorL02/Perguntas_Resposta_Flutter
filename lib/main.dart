import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void respostas() {
    print('Pergunta Respondida');
  }

  final perguntas = [
    'Qual sua cor Favorita?',
    'Qual seu animal favorito?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: respostas,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: respostas,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Pergunta 3 Respondida'),
            ),
          ],
        ),
      ),
    );
  }
}
