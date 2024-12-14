import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFieldValidationEjemplo(),
    );
  }
}

class TextFieldValidationEjemplo extends StatefulWidget {
  @override
  _TextFieldValidationEjemploState createState() =>
      _TextFieldValidationEjemploState();
}

class _TextFieldValidationEjemploState
    extends State<TextFieldValidationEjemplo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Validacion de textfields')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Correo Electronico'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa un correo electronico';
                          } else if (!value.contains('@')) {
                            return 'Ingresa un correo valido';
                          }
                          return null;
                        }),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('Formulario valido');
                          }
                        },
                        child: Text('Validar datos')),
                  ],
                ))));
  }
}
