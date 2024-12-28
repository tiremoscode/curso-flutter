import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EjemploAlertDialog(),
    );
  }
}

class EjemploAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo Alertdialog')),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Alerta'),
                          content: Text('¿Estás seguro de continuar?'),
                          actions: [
                            TextButton(
                              child: Text('Cancelar'),
                              onPressed: () {
                                print('Cancelar');
                                Navigator.of(context).pop();
                              },
                            ),
                            ElevatedButton(
                              child: Text('Aceptar'),
                              onPressed: () {
                                print('Aceptar');
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      });
                },
                child: Text('Mostrar Alertdialog'))));
  }
}
