import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text('Ejemplos de TabBar'),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Inicio'),
                  Tab(icon: Icon(Icons.search), text: 'Buscador'),
                  Tab(icon: Icon(Icons.person), text: 'Perfil'),
                ],
              )),
          body: TabBarView(
            children: [
              Center(child: Text('Pagina de Inicio')),
              Center(child: Text('Pagina de Buscador')),
              Center(child: Text('Pagina de Perfil ')),
            ],
          )),
    ));
  }
}
