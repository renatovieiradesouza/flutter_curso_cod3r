import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  //Não é necessáio informar o tipo abaixo (List<Map<String,Object>>) pois o Flutter infere pra vc! xD
  final _perguntas = [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Vermelho', 'pontuacao': 4},
        {'texto': 'Azul', 'pontuacao': 7},
        {'texto': 'Branca', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Gato', 'pontuacao': 5},
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Pato', 'pontuacao': 1},
        {'texto': 'Pinguim', 'pontuacao': 2},
      ],
    },
    {
      'texto': 'Quantos filhos você tem?',
      'respostas': [
        {'texto': '1', 'pontuacao': 5},
        {'texto': '2', 'pontuacao': 10},
        {'texto': '3', 'pontuacao': 1},
        {'texto': '4', 'pontuacao': 2},
      ]
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
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
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
