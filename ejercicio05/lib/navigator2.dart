import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Ruta Inicial
      initialRoute: '/',
      // Declaracion de ruta
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen()
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => Error404()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
            child: Row(
          children: [
            ElevatedButton(
              child: Text('Ir a Perfil de Usuario'),
              onPressed: () {
                Navigator.pushNamed(context, '/profile',
                    arguments: 'Alberto Luebbert');
              },
            ),
            ElevatedButton(
              child: Text('Ir a Configuracion'),
              onPressed: () {
                Navigator.pushNamed(context, '/config',
                    arguments: 'Alberto Luebbert');
              },
            )
          ],
        )));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String nombre = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
        appBar: AppBar(title: Text('Perfil de Usuario')),
        body: Center(
          child: Text('Bienvenido, $nombre'),
        ));
  }
}

class Error404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('No encontrado')),
      body: Center(child: Text('Pagina no encontrada')),
    );
  }
}
