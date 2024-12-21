import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: Text('Navegacion con tabs'),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: 'Pantalla 1'),
                    Tab(icon: Icon(Icons.settings), text: 'Pantalla 2'),
                  ],
                )),
            body: TabBarView(
              children: [
                Pantalla1(),
                Pantalla2(),
              ],
            )));
  }
}

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Contenido de pantalla 1',
      style: TextStyle(fontSize: 30),
    ));
  }
}

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Contenido de pantalla 2',
      style: TextStyle(fontSize: 30),
    ));
  }
}
