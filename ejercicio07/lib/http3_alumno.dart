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
      home: PutEjemplo(),
    );
  }
}

class PutEjemplo extends StatefulWidget {
  @override
  _PutEjemploState createState() => _PutEjemploState();
}

class _PutEjemploState extends State<PutEjemplo> {
  Future<void> actualizarAlumno() async {
    final response = await http.put(
      Uri.parse(
          'https://vgqvdvwkv5.execute-api.us-east-1.amazonaws.com/alumnas/4'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"nombre": "Andrea", "apellido": "Garcia", "edad": 27}),
    );

    if (response.statusCode == 200) {
      print('Datos actualizados correctamente');
      print('Response servicio ${response.body}');
    } else {
      print('Error al enviar los datos');
      print('Response servicio ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Solicitud Put')),
        body: Center(
            child: ElevatedButton(
          onPressed: actualizarAlumno,
          child: Text('Actualizar Alumno'),
        )));
  }
}
