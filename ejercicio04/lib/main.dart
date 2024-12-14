import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFieldController(),
    );
  }
}

class TextFieldController extends StatefulWidget {
  @override
  _TextFieldControllerState createState() => _TextFieldControllerState();
}

class _TextFieldControllerState extends State<TextFieldController> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Textfield usando controller')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Ingresa tu nombre'),
              ),
              ElevatedButton(
                  onPressed: () {
                    print('Texto ingresado: ${_controller.text}');
                  },
                  child: Text('Leer texto')),
            ])));
  }
}
