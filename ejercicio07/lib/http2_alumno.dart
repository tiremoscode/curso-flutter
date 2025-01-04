import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostEjemplo(),
    );
  }
}

class PostEjemplo extends StatefulWidget {
  @override
  _PostEjemploState createState() => _PostEjemploState();
}

class _PostEjemploState extends State<PostEjemplo> {
  Future<void> crearAlumno() async {
    final response = await http.post(
      Uri.parse(
          'https://vgqvdvwkv5.execute-api.us-east-1.amazonaws.com/alumnas'),
      headers: {'Content-Type': 'application/json'},
      body:
          jsonEncode({"nombre": "Héctor", "apellido": "Alejandro", "edad": 40}),
    );

    if (response.statusCode == 201) {
      print('Datos enviados correctamente');
      print('Response servicio ${response.body}');
    } else {
      print('Error al enviar los datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Solicitud Post')),
        body: Center(
            child: ElevatedButton(
          onPressed: crearAlumno,
          child: Text('Crear Alumno'),
        )));
  }
}
