import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo GridView Custom')),
            body: GridView.custom(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
              childrenDelegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text('Cuadro numero $index',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))));
              }),
            )));
  }
}
