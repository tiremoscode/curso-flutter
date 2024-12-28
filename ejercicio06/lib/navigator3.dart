import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavegacionDrawer(),
    );
  }
}

class NavegacionDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                print('Ir a Home');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavegacionDrawer()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración de Usuario'),
              onTap: () {
                print('Ir a Configuración');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfiguracionScreen()));
              },
            )
          ],
        )),
        body: Center(
          child: Text('Bienvenido a Home'),
        ));
  }
}

class ConfiguracionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Configuración de Usuario')),
        body: Center(child: Text('Configuraciòn de usuario')));
  }
}
