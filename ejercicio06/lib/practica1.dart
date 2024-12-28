import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Perssonalizado',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[200],
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontSize: 18.0, color: Colors.black87),
            bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black87),
          )),
      home: NavegacionDrawer(),
    );
  }
}

class NavegacionDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        drawer: DrawerPersonalizado(),
        body: Center(
          child: Text('Bienvenido a Home',
              style: Theme.of(context).textTheme.bodyLarge),
        ));
  }
}

class DrawerPersonalizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('Pedro Paramo'),
          accountEmail: Text('pedro.paramo@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/fotoPedro.png'),
          ),
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/fondoApp.jpg'), fit: BoxFit.cover)),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NavegacionDrawer()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuración de Usuario'),
          onTap: () {
            print('Ir a Configuración');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ConfiguracionScreen()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Perfil de Usuario'),
          onTap: () {
            print('Ir a Configuración');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PerfilScreen()));
          },
        )
      ],
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

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Perfil de usuario')),
        body: Center(
          child: Text('Perfil de Usuario',
              style: Theme.of(context).textTheme.bodyMedium),
        ));
  }
}
