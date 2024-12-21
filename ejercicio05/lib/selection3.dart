import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderEjemplo(),
    );
  }
}

class SliderEjemplo extends StatefulWidget {
  @override
  _SliderEjemploState createState() => _SliderEjemploState();
}

class _SliderEjemploState extends State<SliderEjemplo> {
  double _valorActual = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo de slider')),
        body: Column(
          children: [
            Slider(
                value: _valorActual,
                min: 0,
                max: 1,
                onChanged: (value) {
                  setState(() {
                    _valorActual = value;
                  });
                })
          ],
        ));
  }
}
