import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final perguntas;
  final void Function() responder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
  
  Questionario({
    @required this.perguntaSelecionada,
    @required this.perguntas,
    @required this.responder,
    });

  

  @override
  Widget build(BuildContext context) {

    //Lista respostas
    List<String> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada]['respostas'] : null;

    return Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t, responder)).toList(),                        
          ],
        );
  }
}