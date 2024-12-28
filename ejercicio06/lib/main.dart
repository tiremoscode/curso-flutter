import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlmacenamientoEjemplo(),
    );
  }
}

class AlmacenamientoEjemplo extends StatefulWidget {
  @override
  _AlmacenamientoEjemploState createState() => _AlmacenamientoEjemploState();
}

class _AlmacenamientoEjemploState extends State<AlmacenamientoEjemplo> {
  String datoAlmacenado = '';

  Future<void> guardarDatos(String data) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('key', data);
    setState(() {
      datoAlmacenado = data;
    });
  }

  Future<void> leerDatosExistentes() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      datoAlmacenado = prefs.getString('key') ?? 'No hay datos';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Persistencia de datos')),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                onSubmitted: (value) => guardarDatos(value),
              ),
              ElevatedButton(
                child: Text('Leer dato existentes'),
                onPressed: leerDatosExistentes,
              ),
              Text('Datos almacenados?: $datoAlmacenado')
            ],
          )),
    );
  }
}
