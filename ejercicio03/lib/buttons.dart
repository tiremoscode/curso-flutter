import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo con Botones')),
            body: Center(
                child: ElevatedButton(
                    child: Text('Presioname!!!!!'),
                    onPressed: () {
                      print('Boton presionado');
                    }))));
  }
}
