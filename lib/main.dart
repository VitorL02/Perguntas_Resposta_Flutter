import 'package:flutter/material.dart';
import './Questionario.dart';
import './Final.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
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
        {'texto': 'Sol', 'nota': 10},
        {'texto': 'Sirius', 'nota': 5},
        {'texto': 'Rigel', 'nota': 3},
        {'texto': 'Procyon', 'nota': 1}
      ],
    },
  ];

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
  }

  void _responder(int nota) {
    if (existePergunta) {
      setState(() {
        _perguntaSelecionada++;
        _notaTotal += nota;
      });
      print(_notaTotal);
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
              quandoResponder: _responder,
            )
          : Final(_notaTotal, _reiniciarQuestionario),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
