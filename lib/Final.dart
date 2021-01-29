import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  final String textoFinalizacao;
  Final(this.textoFinalizacao);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textoFinalizacao,
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
