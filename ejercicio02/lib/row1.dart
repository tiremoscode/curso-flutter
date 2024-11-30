import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplo de Row')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Ejemplo de row', style: TextStyle(fontSize: 30)),
              Icon(Icons.star, size: 60, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
