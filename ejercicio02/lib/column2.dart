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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star, size: 50, color: Colors.purple),
            Text('Flutter me gusta mucho', style: TextStyle(fontSize: 30)),
            ElevatedButton(onPressed: () {}, child: Text('Haz click aqui')),
          ],
        ),
      ),
    );
  }
}
