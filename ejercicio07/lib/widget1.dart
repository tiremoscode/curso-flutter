import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class OtroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PrimerWidget(texto: 'Curso de Flutter - Mi primer Widget'));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Mi primer Widget')),
        body: OtroWidget(),
      ),
    );
  }
}

class PrimerWidget extends StatelessWidget {
  final String texto;

  PrimerWidget({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(texto,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
  }
}
