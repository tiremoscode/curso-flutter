import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Ejemplo de GridView Count'),
            ),
            body: GridView.count(
                crossAxisCount: 2, // 2 columnas
                crossAxisSpacing: 10.0, // Espacio horizontal entre columnas
                mainAxisSpacing: 10.0, // espacio vertical entre filas
                padding: EdgeInsets.all(10),
                children: List.generate(10, (index) {
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text('Cuadro $index',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20))));
                }))));
  }
}
