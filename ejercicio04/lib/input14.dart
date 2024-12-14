import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchEjemplo(),
    );
  }
}

class SwitchEjemplo extends StatefulWidget {
  @override
  _SwitchEjemploState createState() => _SwitchEjemploState();
}

class _SwitchEjemploState extends State<SwitchEjemplo> {
  bool switchCambio = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo de un switch')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Switch fue seleccionado: ${switchCambio ? 'Si' : 'No'} '),
            Switch(
                value: switchCambio,
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                activeTrackColor: Colors.lightGreen,
                onChanged: (bool nuevoValor) {
                  setState(() {
                    switchCambio = nuevoValor;
                  });
                })
          ],
        )));
  }
}
