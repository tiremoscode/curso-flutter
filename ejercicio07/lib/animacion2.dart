import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimacionImplicita(),
    );
  }
}

class AnimacionImplicita extends StatefulWidget {
  @override
  _AnimacionImplicitaState createState() => _AnimacionImplicitaState();
}

class _AnimacionImplicitaState extends State<AnimacionImplicita> {
  bool _esAnimado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animacion implicita')),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _esAnimado ? 300 : 100,
          height: _esAnimado ? 300 : 100,
          color: _esAnimado ? Colors.blue : Colors.red,
          child: TextButton(
              onPressed: () {
                setState(() {
                  _esAnimado = !_esAnimado;
                });
              },
              child: Text("Cambiar tamalo",
                  style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
