import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioDatos(),
    );
  }
}

class FormularioDatos extends StatefulWidget {
  @override
  _FormularioDatosState createState() => _FormularioDatosState();
}

class _FormularioDatosState extends State<FormularioDatos> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool _btnPresionado = false;

  void _limpiarInputs() {
    _nombreController.clear();
    _emailController.clear();
  }

  void _enviarFormulario() {
    print('Enviar formulario');

    String nombre = _nombreController.text;
    String email = _emailController.text;

    if (_formkey.currentState!.validate()) {
      setState(() {
        _btnPresionado = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Felicidades, tu guardaste: Nombre: $nombre, email: $email')));
      _limpiarInputs();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No has ingresado los datos correctamente')));
    }
  }

  void _cancelarFormulario() {
    print('Cancelar formulario');

    setState(() {
      _btnPresionado = false;
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Formulario cancelado')));
    _limpiarInputs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Formulario')),
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
                        }),
                    TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Correo Electronico',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu email';
                          } else if (!RegExp(
                                  r'^[a-zA-Z0-9.]+@[a-zA-Z0-9.]+\.[a-zA-Z]+')
                              .hasMatch(value)) {
                            return 'Ingrese un correo válido';
                          }
                          return null;
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          child: Text('Cancelar'),
                          onPressed: _cancelarFormulario,
                        ),
                        ElevatedButton(
                            child: Text('Enviar Formulario'),
                            onPressed: _enviarFormulario,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: _btnPresionado
                                    ? Colors.blue
                                    : Colors.redAccent))
                      ],
                    )
                  ],
                ))));
  }
}
