import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  final int nota;
  final void Function() _reiniciarQuestionario;

  String get textoFinalizacao {
    if (nota < 8) {
      return 'Parabens,provavelmente quem votou foi o Vitor';
    } else if (nota < 20) {
      return 'Parabens,provavelmente quem votou foi a Eduarda';
    } else if (nota < 30) {
      return 'Parabens,provavelmente quem votou foi o Eduardo';
    } else if (nota <= 40) {
      return 'Parabens,provavelmente quem votou foi o Monique';
    }
  }

  Final(this.nota, this._reiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(textoFinalizacao,
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 5,
                fontSize: 28,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              )),
        ),
        RaisedButton(
          child: Text('Reiniciar?'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: _reiniciarQuestionario,
        )
      ],
    );
  }
}
