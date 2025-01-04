import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimacionOpacity(),
    );
  }
}

class AnimacionOpacity extends StatefulWidget {
  @override
  _AnimacionOpacityState createState() => _AnimacionOpacityState();
}

class _AnimacionOpacityState extends State<AnimacionOpacity> {
  double _opacidad = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Animacion de opacidad')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
                opacity: _opacidad,
                duration: Duration(seconds: 1),
                child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                    child: Center(
                        child: Text('Curso de flutter',
                            style: TextStyle(
                                color: Colors.white, fontSize: 24))))),
            SizedBox(height: 40),
            ElevatedButton(
              child: Text('Cambiar opacidad'),
              onPressed: () {
                print('Cambiar opacidad');
                setState(() {
                  _opacidad = _opacidad == 1.0 ? 0.0 : 1.0;
                });
              },
            )
          ],
        )));
  }
}
