import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo GridView builder')),
            body: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 Columnas
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: 20, // Nùmero total de elementos
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text('Cuadro $index',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))));
              },
            )));
  }
}
