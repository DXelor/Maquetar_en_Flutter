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

_pagina1() {
  return Center(
    child: Text('pagina 1'),
  );
}

_pagina2() {
  return Center(
    child: Text('pagina 2'),
  );
}
