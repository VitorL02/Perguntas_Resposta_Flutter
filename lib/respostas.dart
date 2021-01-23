import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String textoResposta;
  final void Function() select;

  Respostas(this.textoResposta, this.select);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.indigo,
        child: Text(textoResposta),
        onPressed: select,
      ),
    );
  }
}
