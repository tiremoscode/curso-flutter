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
      home: DeleteEjemplo(),
    );
  }
}

class DeleteEjemplo extends StatefulWidget {
  @override
  _DeleteEjemploState createState() => _DeleteEjemploState();
}

class _DeleteEjemploState extends State<DeleteEjemplo> {
  Future<void> eliminarRegistro() async {
    final response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
    );

    if (response.statusCode == 200) {
      print('Datos eliminados correctamente');
      print('Response servicio ${response.body}');
    } else {
      print('Error al enviar los datos para eliminar');
      print('Response servicio ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Solicitud Delete')),
        body: Center(
            child: ElevatedButton(
          onPressed: eliminarRegistro,
          child: Text('Eliminar Registro'),
        )));
  }
}
