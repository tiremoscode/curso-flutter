import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo GridView extent')),
            body: GridView.extent(
                //maxCrossAxisExtent: 150,
                // maxCrossAxisExtent: 200,
                maxCrossAxisExtent: 80,
                padding: EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(30, (index) {
                  return Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text('Cuadro $index',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white))));
                }))));
  }
}
