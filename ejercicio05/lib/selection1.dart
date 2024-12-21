import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioButtonEjemplo(),
    );
  }
}

class RadioButtonEjemplo extends StatefulWidget {
  @override
  _RadioButtonEjemploState createState() => _RadioButtonEjemploState();
}

class _RadioButtonEjemploState extends State<RadioButtonEjemplo> {
  String _opcionSeleccionada = 'Opcion 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Radio Button Ejemplo')),
        body: Column(
          children: [
            Radio(
              value: 'Opcion 1',
              groupValue: _opcionSeleccionada,
              onChanged: (value) {
                setState(() {
                  _opcionSeleccionada = value!;
                });
              },
            ),
            Radio(
              value: 'Opcion 2',
              groupValue: _opcionSeleccionada,
              onChanged: (value) {
                setState(() {
                  _opcionSeleccionada = value!;
                });
              },
            )
          ],
        ));
  }
}
