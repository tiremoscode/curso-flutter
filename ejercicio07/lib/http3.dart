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
  Future<void> actualizarRegistro() async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'title': 'Actualizacion de datos',
      }),
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
          onPressed: actualizarRegistro,
          child: Text('Actualizar Registro'),
        )));
  }
}
