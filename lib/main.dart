import 'package:flutter/material.dart';

import 'package:diseno/src/pages/basic_page.dart'; //importado por: {BasicPage()}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
      },
    );
  }
}
