import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioUsuario(),
    );
  }
}

class FormularioUsuario extends StatefulWidget {
  @override
  _FormularioUsuarioState createState() => _FormularioUsuarioState();
}

class _FormularioUsuarioState extends State<FormularioUsuario> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Formulario de Registro'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                        controller: _nombreController,
                        decoration: InputDecoration(
                          labelText: 'Nombre',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu nombre';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {});
                        }),
                    TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Correo Electronico',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu correo electronico';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {});
                        }),
                    ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Formulario enviado')),
                            );
                            print('Formulario enviado');
                          }
                        },
                        child: Text('Enviar formulario'))
                  ],
                ))));
  }
}
