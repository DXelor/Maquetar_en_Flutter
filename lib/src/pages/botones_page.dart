import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: [_titulos(), _botonesRedondeados()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

//======================== ↓↓ Fondo ↓↓ ========================
  _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.5),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(45, 155, 155, 1.0),
            Color.fromRGBO(25, 27, 47, 1.0)
          ])),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: [gradiente, Positioned(top: -120.0, child: pinkBox)],
    );
  }

//======================== ↑↑ Fondo ↑↑ ========================
//=============================================================
//======================== ↓↓ Titulo ↓↓ =======================
  _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ],
        ),
      ),
    );
  }

//======================== ↑↑ Titulo ↑↑ =======================
//=============================================================
//================= ↓↓ barra de navegacion ↓↓ =================
  _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: (''),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outlined), label: ('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: (''))
        ],
      ),
    );
  }

//================= ↑↑ barra de navegacion ↑↑ =================
//=============================================================
//=================== ↓↓ cajas del body ↓↓ ====================
  _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.cyan, Icons.dashboard, 'Menu'),
          _crearBotonRedondeado(Color.fromRGBO(240, 200, 10, 1.0),
              Icons.directions_bus, 'Transporte')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Colors.pinkAccent, Icons.shopping_bag, 'Compras'),
          _crearBotonRedondeado(Colors.green, Icons.account_balance, 'Banca')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.sports_esports, 'Juegos'),
          _crearBotonRedondeado(Colors.brown, Icons.mediation, 'Memes')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Colors.blueGrey, Icons.handyman, 'Cofiguración'),
          _crearBotonRedondeado(Colors.red, Icons.mail, 'Gmail')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Color.fromRGBO(110, 150, 200, 1.0), Icons.filter_drama, 'Cloud'),
          _crearBotonRedondeado(
              Color.fromRGBO(197, 222, 11, 1.0), Icons.access_alarm, 'Alarm')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Color.fromRGBO(197, 222, 11, 1.0), Icons.access_alarm, 'Twitter'),
          _crearBotonRedondeado(
              Color.fromRGBO(11, 222, 127, 1.0), Icons.access_alarm, 'Camara')
        ])
      ],
    );
  }

  _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.0, -0.5),
            end: const Alignment(0.0, 0.6),
            colors: <Color>[
              const Color.fromRGBO(2, 20, 140, 0.1),
              const Color.fromRGBO(0, 0, 160, 0.0)
            ],
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.3),
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.3),
              offset: Offset(0, 6),
              blurRadius: 20,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 5.0),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(
                    icono,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                Text(
                  texto,
                  style: TextStyle(color: color),
                ),
                SizedBox(height: 5.0)
              ],
            ),
          ),
        ));
  }
//=================== ↑↑ cajas del body ↑↑ ====================
}
