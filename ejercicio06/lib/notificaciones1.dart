import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SnackbarEjemplo(),
    );
  }
}

class SnackbarEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ejemplo de Snackbar')),
        body: Center(
            child: ElevatedButton(
          child: Text('Mostrar el snackbar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Este es un mensae de snackbar'),
                action: SnackBarAction(
                  label: 'Deshacer',
                  onPressed: () {
                    print('Accion deshacer');
                  },
                )));
          },
        )));
  }
}
