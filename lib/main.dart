import 'package:flutter/material.dart';
import 'package:taller2s2/page/homePage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion taller 1",
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
