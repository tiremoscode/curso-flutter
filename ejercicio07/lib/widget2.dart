import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App',
        home: Scaffold(
            appBar: AppBar(title: Text('Un widget con statefull')),
            body: Center(child: ContadorPersonalizado())));
  }
}

class ContadorPersonalizado extends StatefulWidget {
  @override
  _ContadorPersonalizadoState createState() => _ContadorPersonalizadoState();
}

class _ContadorPersonalizadoState extends State<ContadorPersonalizado> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Contador: ${_contador}', style: TextStyle(fontSize: 24)),
        SizedBox(height: 50),
        ElevatedButton(
            onPressed: _incrementarContador, child: Text('Incrementar'))
      ],
    );
  }
}
