import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextButtonEjemplo(),
    );
  }
}

class TextButtonEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Text button ejemplo')),
        body: Center(
            child: TextButton(
                child:
                    Text('Presioname!!!', style: TextStyle(color: Colors.blue)),
                onPressed: () {
                  print('TextButton ha sido presionado');
                },
                style: TextButton.styleFrom(
                    // primary: Colors.blue,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20)))));
  }
}
