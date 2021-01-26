import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
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

  void _respostas() {
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
    List respostas =
        existePergunta ? _perguntas[_perguntaSelecionada]['respostas'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.red[900],
        ),
        body: existePergunta
            ? Column(
                children: <Widget>[
                  Questao(_perguntas[_perguntaSelecionada]['texto']),
                  ...respostas
                      .map((texto) => Respostas(texto, _respostas))
                      .toList(),
                ],
              )
            : null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
