import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioConEstado(),
    );
  }
}

class FormularioConEstado extends StatefulWidget {
  @override
  _FormularioConEstadoState createState() => _FormularioConEstadoState();
}

class _FormularioConEstadoState extends State<FormularioConEstado> {
  String nombre = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Formualrio con estado')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Ingresa tu nombre'),
                  onChanged: (valor) {
                    setState(() {
                      nombre = valor;
                    });
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Valor ingresado: $nombre'),
              ],
            )));
  }
}
