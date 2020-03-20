import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;  

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }
  
  void _responder(){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }  

  //Não é necessáio informar o tipo abaixo (List<Map<String,Object>>) pois o Flutter infere pra vc! xD
  final _perguntas = [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas':['Preto','Vermelho','Azul','Branca'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas':['Gato','Cachorro','Pato','Pinguim'],
    },
    {
      'texto': 'Quantos filhos você tem?',
      'respostas':["UM","DOIS","TRÊS","MAIS"]
    }
  ];  

  @override
  Widget build(BuildContext context) {   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPerguntaSelecionada ? 
        Questionario(
          perguntas: _perguntas, 
          perguntaSelecionada: _perguntaSelecionada, 
          responder: _responder) : Resultado("Parabéns..."),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}