import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplo de Columnas')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alberto', style: TextStyle(fontSize: 30)),
            Text('Hector', style: TextStyle(fontSize: 30)),
            Text('Mauricio', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
