import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IconButtonEjemplo(),
    );
  }
}

class IconButtonEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo de Iconbutton')),
        body: Center(
            child: IconButton(
          color: Colors.blue,
          iconSize: 40,
          onPressed: () {
            print('El icon button ha sido presionado');
          },
          icon: Icon(Icons.thumb_up),
        )));
  }
}
