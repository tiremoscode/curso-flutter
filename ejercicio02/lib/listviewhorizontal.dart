import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('ListView Horizontal')),
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 200,
                color: Colors.red,
                child: Center(child: Text('Boton1')),
              ),
              Container(
                width: 200,
                color: Colors.green,
                child: Center(child: Text('Boton2')),
              ),
              Container(
                width: 200,
                color: Colors.blue,
                child: Center(child: Text('Boton3')),
              )
            ],
          )),
    );
  }
}
