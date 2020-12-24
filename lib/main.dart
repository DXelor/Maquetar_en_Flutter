import 'package:flutter/material.dart';

import 'package:diseno/src/pages/basic_page.dart'; //importado por: {BasicPage()}
import 'package:diseno/src/pages/scroll_page.dart'; //importado por: {ScrollPages()}
import 'package:diseno/src/pages/botones_page.dart';
import 'package:flutter/services.dart'; //importado por: {BotonesPage()}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Aprendiendo flutter',
      initialRoute: 'botones', //ruta en la que inicia la App
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
