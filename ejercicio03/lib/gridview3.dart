import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> listaImagenes = [
    'https://picsum.photos/200',
    'https://picsum.photos/201',
    'https://picsum.photos/202',
    'https://picsum.photos/203',
    'https://picsum.photos/204',
    'https://picsum.photos/205',
    'https://picsum.photos/206',
    'https://picsum.photos/207',
    'https://picsum.photos/208',
    'https://picsum.photos/209',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo GridView builder')),
            body: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: listaImagenes.length,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:
                        Image.network(listaImagenes[index], fit: BoxFit.cover));
              },
            )));
  }
}
