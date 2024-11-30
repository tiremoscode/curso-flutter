import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Mi Primer Contenedor')),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(4, 4),
                )
              ],
            ),
            // color: Colors.blue,
            child: Center(
                child: Text('Texto en el contenedor',
                    style: TextStyle(color: Colors.white, fontSize: 20))),
          ),
        ),
      ),
    );
  }
}
