import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

//Stateless = sem estado
class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {   

    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];

    void responder(){
      print("Pergunta respondida");
    }

  

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: () {
                print("Função do tipo Arrow Function");
              },
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: () => {
                print("Função do tipo Arrow Function")
              },
            ),
          ],
        ),
      ),
    );
  }
}