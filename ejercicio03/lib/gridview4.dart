import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> imagenes = [];

  @override
  void initState() {
    super.initState();
    obtenerImagenes();
  }

  Future<void> obtenerImagenes() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      setState(() {
        imagenes = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo GridView usando API')),
            body: imagenes.isEmpty
                ? Center(child: CircularProgressIndicator())
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      final imagen = imagenes[index];
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                              Image.network(imagen['url'], fit: BoxFit.cover));
                    },
                  )));
  }
}
