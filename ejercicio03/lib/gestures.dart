import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo Gestures ')),
            body: Center(
              child: GestureDetector(
                  onTap: () {
                    print('Tap gesture onTap seleccionado');
                  },
                  onDoubleTap: () {
                    print('Tap gesture onDoubleTap seleccionado');
                  },
                  onLongPress: () {
                    print('Tap gesture onLongPress seleccionado');
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueGrey,
                    child: Center(child: Text('Toca aqui')),
                  )),
            )));
  }
}
