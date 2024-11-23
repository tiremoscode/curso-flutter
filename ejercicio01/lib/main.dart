import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi Aplicación'),
        ),
        body: Center(
          child: Text('Hola Mundo'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                title: Text('Opcion 1'),
                onTap: () => print('Seleccionaste el boton 1'),
              ),
              ListTile(
                  title: Text('Opcion 2'),
                  onTap: () => print('Seleccionaste el boton 2'),
              ),
            ],
          )
        ),
      ),
    );
  }
}
