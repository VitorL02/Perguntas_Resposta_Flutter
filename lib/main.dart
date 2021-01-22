import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

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
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Respostas('Resposta 1'),
            Respostas('Resposta 2'),
            Respostas('Resposta 3'),
            RaisedButton(
              child: Text('Resposta 4'),
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
