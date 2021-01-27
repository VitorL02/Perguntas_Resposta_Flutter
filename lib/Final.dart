import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  @override
  final String textoFinalizacao;
  Final(this.textoFinalizacao);

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
