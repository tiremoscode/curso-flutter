import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropDownEjemplo(),
    );
  }
}

class DropDownEjemplo extends StatefulWidget {
  @override
  _DropDownEjemploState createState() => _DropDownEjemploState();
}

class _DropDownEjemploState extends State<DropDownEjemplo> {
  String _itemElegido = 'Uno';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo de DropdownButton')),
      body: DropdownButton(
        value: _itemElegido,
        items: [
          DropdownMenuItem(value: 'One', child: Text('Uno')),
          DropdownMenuItem(value: 'Two', child: Text('Dos')),
          DropdownMenuItem(value: 'Three', child: Text('Tres'))
        ],
        onChanged: (String? value) {
          setState(() {
            _itemElegido = value!;
          });
        },
      ),
    );
  }
}
