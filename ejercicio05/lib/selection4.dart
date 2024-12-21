import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RangeSliderEjemplo(),
    );
  }
}

class RangeSliderEjemplo extends StatefulWidget {
  @override
  _RangeSliderEjemploState createState() => _RangeSliderEjemploState();
}

class _RangeSliderEjemploState extends State<RangeSliderEjemplo> {
  RangeValues _rangoActual = RangeValues(0.1, 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo de RangeSlider')),
        body: Column(
          children: [
            RangeSlider(
              values: _rangoActual,
              min: 0,
              max: 1,
              onChanged: (RangeValues values) {
                setState(() {
                  _rangoActual = values;
                });
              },
            )
          ],
        ));
  }
}
