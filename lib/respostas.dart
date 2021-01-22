import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String textoResposta;
  Respostas(this.textoResposta);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(textoResposta),
        onPressed: null,
      ),
    );
  }
}
