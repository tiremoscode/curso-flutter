import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ElevatedButtonEjemplo(),
    );
  }
}

class ElevatedButtonEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Elevated button ejemplo')),
        body: Center(
            child: ElevatedButton(
                child:
                    Text('Presioname!!!', style: TextStyle(color: Colors.blue)),
                onPressed: () {
                  print('Elevated ha sido presionado');
                },
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20)))));
  }
}
