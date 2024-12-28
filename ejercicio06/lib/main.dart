import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreenDrawer(),
    );
  }
}

class HomeScreenDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24))),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  print('Home');
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración de Usuario'),
                onTap: () {
                  print('Configuracion');
                })
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido a la pantalla principal'),
      ),
    );
  }
}
