import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedPositionEjemplo(),
    );
  }
}

class AnimatedPositionEjemplo extends StatefulWidget {
  @override
  _AnimatedPositionEjemploState createState() =>
      _AnimatedPositionEjemploState();
}

class _AnimatedPositionEjemploState extends State<AnimatedPositionEjemplo> {
  bool _fueMovido = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo de animatedPosition')),
        body: Stack(
          children: [
            AnimatedPositioned(
                duration: Duration(seconds: 1),
                left: _fueMovido ? 200 : 50,
                top: _fueMovido ? 400 : 100,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _fueMovido = !_fueMovido;
                    });
                  },
                  child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        "Presioname",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))),
                ))
          ],
        ));
  }
}
