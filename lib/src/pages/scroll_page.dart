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
    children: [_colorFondo(), _imagenFondo()],
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

//===========↑↑ Pagina 1 ↑↑===========
//====================================
//===========↓↓ Pagina 2 ↓↓===========
_pagina2() {
  return Center(
    child: Image(image: AssetImage('assets/scroll.png')),
  );
}
//===========↑↑ Pagina 2 ↑↑===========
