import 'package:flutter/material.dart';

class BotonCustom extends StatelessWidget {
  final VoidCallback onPressed;

  BotonCustom({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text('Presioname'));
  }
}

class ParentWidget extends StatelessWidget {
  void _mostrarMensaje() {
    print('Boton presionado');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('llamada al boton')),
        body: Center(child: BotonCustom(onPressed: _mostrarMensaje)));
  }
}

void main() {
  runApp(MaterialApp(home: ParentWidget()));
}
