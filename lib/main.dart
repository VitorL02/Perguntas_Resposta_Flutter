import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _respostas() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta Respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor Favorita?',
      'Qual seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _respostas,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _respostas,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _respostas,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

//Utilizar o "_" e o private do dart,priva pra somente o documento ter acesso
// Quando um elemento for privado, get e set e usado , (this) (get)
/*
class Pessoa(){
String nome;
String _cpf;

set cpf(String cpf){
  this.cpf
}

get cpf{
  return _cpf;
}
}

main(){

var p1= Pessoa();
p1.nome= 'jao';
p1.cpg =  '123123123";

print ('${p1.nome} e ${p1.cpf} ');

}

*/
