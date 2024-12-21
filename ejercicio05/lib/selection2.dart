import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioListEjemplo(),
    );
  }
}

class RadioListEjemplo extends StatefulWidget {
  @override
  _RadioListEjemploState createState() => _RadioListEjemploState();
}

class _RadioListEjemploState extends State<RadioListEjemplo> {
  String _opcionSeleccionada = 'Opcion 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RadioList ejemplo')),
        body: Column(
          children: [
            RadioListTile(
              title: Text('Opcion 1'),
              value: 'Opcion 1',
              groupValue: _opcionSeleccionada,
              onChanged: (value) {
                setState(() {
                  _opcionSeleccionada = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Opcion 2'),
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
