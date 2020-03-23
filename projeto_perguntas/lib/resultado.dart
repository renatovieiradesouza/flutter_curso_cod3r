import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get resultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Awesome';
    } else {
      return 'Amazing Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultado,
            style: TextStyle(fontSize: 22),
          ),
        ),
        FlatButton(
          child: Text("Reiniciar", style: TextStyle(fontSize: 18),),
          textColor: Colors.blue,
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
