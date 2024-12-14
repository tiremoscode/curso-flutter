import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OutlinedButtonEjemplo(),
    );
  }
}

class OutlinedButtonEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Outlined ejemplo')),
        body: Center(
            child: OutlinedButton(
                child:
                    Text('Presioname!!', style: TextStyle(color: Colors.blue)),
                onPressed: () {
                  print('Outlined button ha sido presionado');
                },
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    side: BorderSide(color: Colors.blue)))));
  }
}
