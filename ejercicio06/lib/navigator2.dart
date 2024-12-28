import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerCustom(),
    );
  }
}

class DrawerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer personalizado')),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Pancho Pantera'),
              accountEmail: Text('pancho.pantera@gmail.com'),
              decoration: BoxDecoration(color: Colors.deepOrange),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/fotoPerfil.jpg'))),
          ListTile(
            leading: Icon(Icons.dashboard, color: Colors.deepOrange),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('Cerrar Sesión'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
      body: Center(
        child: Text('App con Drawer personalizado'),
      ),
    );
  }
}
