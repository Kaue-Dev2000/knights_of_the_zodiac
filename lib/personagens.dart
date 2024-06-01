import 'package:flutter/material.dart';

class Personagens extends StatelessWidget{

  final List<Map<String, Object>> _personagens;
  final int _personagemSelecionado;

  Personagens(this._personagens, this._personagemSelecionado);

  @override
  Widget build(BuildContext context) {
    return _personagens[_personagemSelecionado].cast()['resposta'];
  }
}