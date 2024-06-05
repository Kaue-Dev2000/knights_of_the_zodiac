import 'package:flutter/material.dart';
import './resposta.dart';
import './questao.dart';
import 'fim.dart';

main() => runApp(CavaleirosApp());

class CavaleirosApp extends StatefulWidget{

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}

class PerguntaAppState extends State<CavaleirosApp> {

  var _personagemSelecionado = 0;

  final List<Map<String, String>> _personagens = const[
      {
        'nome': 'Athena',
        'endereco': 'assets/images/athena.jpg',
      },
      {
        'nome': 'Manigold',
        'endereco': 'assets/images/manigold.jpg',
      },
  ];

  void _responder() {
    setState(() {
    _personagemSelecionado++;
    });
  }

  bool get temPersonagemSelecionado{
    return _personagemSelecionado < _personagens.length;
  }

  @override
  Widget build(BuildContext context){
    
  //List<String>? resposta = temPersonagemSelecionado ? _personagens[_personagemSelecionado].cast()['endereco'] : null;

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cavaleiros do Zodíaco'),
          foregroundColor: Colors.white,
        ),
        body: temPersonagemSelecionado ? Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Nome(_personagens[_personagemSelecionado]['nome']!),
                Image.asset(_personagens[_personagemSelecionado].cast()['endereco']),
                ElevatedButton(onPressed: _responder, child: Icon(Icons.arrow_circle_right)),
              ],
            ),
          ),
        ) : Retornar(),
      ),
    );
  }
}