import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxEjemplo(),
    );
  }
}

class CheckboxEjemplo extends StatefulWidget {
  @override
  _CheckboxEjemploState createState() => _CheckboxEjemploState();
}

class _CheckboxEjemploState extends State<CheckboxEjemplo> {
  bool checkboxSeleccionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Checkbox ejemplo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Checkbox seleccionado: ${checkboxSeleccionado ? "Si" : "No"}'),
              Checkbox(
                  activeColor: Colors.red,
                  checkColor: Colors.white,
                  value: checkboxSeleccionado,
                  onChanged: (bool? nuevoValor) {
                    setState(() {
                      checkboxSeleccionado = nuevoValor!;
                    });
                  })
            ],
          ),
        ));
  }
}
