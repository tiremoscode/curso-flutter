import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EjemploShowdialog(),
    );
  }
}

class EjemploShowdialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo Showdialog')),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text('Selecciona una opcion'),
                          children: [
                            SimpleDialogOption(
                              child: Text('Opcion 1'),
                              onPressed: () {
                                Navigator.pop(context, 'Opcion1');
                              },
                            ),
                            SimpleDialogOption(
                              child: Text('Opcion 2'),
                              onPressed: () {
                                Navigator.pop(context, 'Opcion2');
                              },
                            ),
                          ],
                        );
                      });
                },
                child: Text('Mostrar SimpleDialog'))));
  }
}
