import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFieldKeyboardEjemplo(),
    );
  }
}

class TextFieldKeyboardEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('USando un keyboard type')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration:
                  InputDecoration(labelText: 'Ingresa el numero de telefono'),
              keyboardType: TextInputType.number,
            )));
  }
}
