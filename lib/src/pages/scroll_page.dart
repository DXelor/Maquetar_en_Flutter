import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_pagina1(), _pagina2()],
      ),
    );
  }
}

//===========↓↓ Pagina 1 ↓↓===========
Widget _pagina1() {
  return Stack(
    children: [_colorFondo(), _imagenFondo(), _textos()],
  );
}

Widget _colorFondo() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(90, 192, 210, 1.0),
  );
}

Widget _imagenFondo() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Image(
      image: AssetImage('assets/scroll.png'),
      fit: BoxFit.cover,
    ),
  );
}

_textos() {
  final estiloTexto = TextStyle(color: Colors.white, fontSize: 40.0);
  return SafeArea(
    child: Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        Text(
          '11°',
          style: estiloTexto,
        ),
        Text(
          'Miercoles',
          style: estiloTexto,
        ),
        Expanded(child: Container()),
        Icon(
          Icons.keyboard_arrow_down,
          size: 70.0,
          color: Colors.white,
        )
      ], //ALT + 248 = °
    ),
  );
}

//===========↑↑ Pagina 1 ↑↑===========
//====================================
//===========↓↓ Pagina 2 ↓↓===========
_pagina2() {
  return Center(
    child: Image(image: AssetImage('assets/scroll.png')),
  );
}
//===========↑↑ Pagina 2 ↑↑===========
