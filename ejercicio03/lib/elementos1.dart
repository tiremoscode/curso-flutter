import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('App')),
      body: Center(
        child: Text('Body de la aplicacion'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Boton flotante ha sido presionado');
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Buscador', icon: Icon(Icons.search)),
        ],
      ),
    ));
  }
}
