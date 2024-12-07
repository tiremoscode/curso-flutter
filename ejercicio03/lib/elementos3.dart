import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Ejemplo FAB')),
      body: Center(
        child: Text('Body de la aplicacion'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Boton añadir ha sido presionado');
        },
        backgroundColor: Colors.blueAccent,
        tooltip: 'Accesibilidad en Web',
      ),
    ));
  }
}
