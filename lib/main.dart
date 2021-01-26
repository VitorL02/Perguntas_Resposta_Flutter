import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _respostas() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual sua cor Favorita?',
        'respostas': ['Preto', 'Roxo', 'Vermelho', 'Azul'],
      },
      {
        'texto': 'Qual seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Leão', 'Macaco'],
      },
      {
        'texto': 'Qual sua estrela favorita?',
        'respostas': ['Sol', 'Sirius', 'Rigel', 'Procyon'],
      },
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    List<Widget> widgets =
        respostas.map((texto) => Respostas(texto, _respostas)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.red[900],
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...widgets,
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
