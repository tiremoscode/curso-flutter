import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Elementos'),
              backgroundColor: Colors.purpleAccent,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('Menu ha sido presionado');
                },
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {
                      print('Notificacion seleccionada');
                    }),
                IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      print('Configuracion seleccionada');
                    })
              ],
            ),
            body: Center(child: Text('Body de la aplicacion'))));
  }
}
