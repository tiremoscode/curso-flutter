import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplo de Stack')),
        body: Stack(alignment: Alignment.center, children: [
          Container(width: 200, height: 200, color: Colors.blue),
          Positioned(
              top: 20,
              child: Text(
                'Texto en la parte superior',
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
            bottom: 20,
            right: 10,
            child: Icon(Icons.star, size: 40, color: Colors.yellow),
          )
        ]),
      ),
    );
  }
}
