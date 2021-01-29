import 'package:flutter/material.dart';
import './Questionario.dart';
import './Final.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor Favorita?',
      'respostas': [
        {'texto': 'Roxo', 'nota': 10},
        {'texto': 'Preto', 'nota': 5},
        {'texto': 'Vermelho', 'nota': 3},
        {'texto': 'Azul', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Leão', 'nota': 3},
        {'texto': 'Macaco', 'nota': 1}
      ],
    },
    {
      'texto': 'Qual sua estrela favorita?',
      'respostas': [
        'Sol',
        'Sirius',
        'Rigel',
        'Procyon',
      ],
    },
  ];

  void _responder() {
    if (existePergunta) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get existePergunta {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
        backgroundColor: Colors.red[900],
      ),
      body: existePergunta
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: _responder,
            )
          : Final('Parabéns!'),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
