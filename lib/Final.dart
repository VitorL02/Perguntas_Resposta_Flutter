import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  final int nota;
  String get textoFinalizacao {
    if (nota < 10) {
      return 'Parabens,provavelmente quem votou foi o Vitor';
    } else if (nota < 20) {
      return 'Parabens,provavelmente quem votou foi a Eduarda';
    } else if (nota < 30) {
      return 'Parabens,provavelmente quem votou foi o Eduardo';
    } else if (nota <= 40) {
      return 'Parabens,provavelmente quem votou foi o Monique';
    }
  }

  Final(this.nota);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textoFinalizacao,
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 28,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
