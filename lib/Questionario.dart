import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quandoResponder,
  });

  bool get existePergunta {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        existePergunta ? perguntas[perguntaSelecionada]['respostas'] : null;
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((resp) {
          return Respostas(
            resp['texto'],
            () => quandoResponder(resp['nota']),
          );
        }).toList(),
      ],
    );
  }
}
