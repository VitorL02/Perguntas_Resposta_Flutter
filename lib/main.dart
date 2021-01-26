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
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.red[900],
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            Respostas('Resposta 1', _respostas),
            Respostas('Resposta 2', _respostas),
            Respostas('Resposta 3', _respostas),
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
