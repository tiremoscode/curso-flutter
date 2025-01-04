import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimacionEjemplo(),
    );
  }
}

class AnimacionEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animación básica')),
      body: Center(
        child: AnimatedContainer(
            width: 200,
            height: 200,
            color: Colors.blue,
            duration: Duration(seconds: 5),
            child: Center(
                child: Text('Curso de Flutter',
                    style: TextStyle(color: Colors.white)))),
      ),
    );
  }
}
