/* 
Crear un Textfield que solicitarà datos al usuario
Crear un ElevatedButton para leer los datos ingresados
por el usuario
Crear un Text donde se mostrara el resultado
de lo que ingreso el usuario */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Formulario(),
    );
  }
}

class Formulario extends StatefulWidget {
  @override
  FormularioState createState() => FormularioState();
}

class FormularioState extends State<Formulario> {
  String nombreUsuario = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hola Usuario')),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                      labelText: 'Ingresa usuario',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (texto) {
                      nombreUsuario = texto;
                    }),
                ElevatedButton(
                  child: Text('Mostrar nombre'),
                  onPressed: () {
                    setState(() {});
                  },
                ),
                Text(
                  nombreUsuario.isNotEmpty
                      ? '¡Hola, $nombreUsuario'
                      : 'Aun no ingresa un usuario',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ],
            )));
  }
}
