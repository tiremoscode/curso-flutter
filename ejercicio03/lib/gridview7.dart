import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo GridView custom')),
            body: GridView.custom(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              childrenDelegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, size: 40, color: Colors.green),
                        Text('Cuadro $index',
                            style: TextStyle(fontSize: 15, color: Colors.black))
                      ],
                    ));
              }, childCount: 30),
            )));
  }
}
