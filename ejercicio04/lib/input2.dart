import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EjemploTextDecoration(),
    );
  }
}

class EjemploTextDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Textfield usando decoration')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Ingresa tu correo electronico',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            )));
  }
}
