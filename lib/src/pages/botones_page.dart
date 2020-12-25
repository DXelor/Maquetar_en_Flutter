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
        TableRow(children: [_crearBotonRedondeado(), _crearBotonRedondeado()]),
        TableRow(children: [_crearBotonRedondeado(), _crearBotonRedondeado()]),
        TableRow(children: [_crearBotonRedondeado(), _crearBotonRedondeado()]),
        TableRow(children: [_crearBotonRedondeado(), _crearBotonRedondeado()]),
        TableRow(children: [_crearBotonRedondeado(), _crearBotonRedondeado()]),
        TableRow(children: [_crearBotonRedondeado(), _crearBotonRedondeado()])
      ],
    );
  }

  _crearBotonRedondeado() {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.0, -0.5),
          end: const Alignment(0.0, 0.6),
          colors: <Color>[
            const Color.fromRGBO(2, 20, 140, 0.6),
            const Color.fromRGBO(0, 0, 60, 0.3)
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 5.0),
          CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 35.0,
            child: Icon(
              Icons.swap_calls,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text(
            'data',
            style: TextStyle(color: Colors.purple),
          ),
          SizedBox(height: 5.0)
        ],
      ),
    );
  }
//=================== ↑↑ cajas del body ↑↑ ====================
}
