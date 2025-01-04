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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ultimoPost = 'Cargando...';

  Future<void> obtenerAlumno() async {
    final response = await http.get(Uri.parse(
        'https://2wdia8ur7e.execute-api.us-east-1.amazonaws.com/alumnas/1'));
    if (response.statusCode == 200) {
      // Es correcto
      final jsonData = json.decode(response.body);
      setState(() {
        ultimoPost = jsonData['nombre'];
      });
    } else {
      setState(() {
        ultimoPost = 'Error al obtener los datos';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    obtenerAlumno();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Obtener alumno')),
        body: Center(
          child: Text(ultimoPost),
        ));
  }
}
