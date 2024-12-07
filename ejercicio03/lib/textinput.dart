import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ejemplo Input')),
            body: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Escribe tu correo',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        print('El correo es: $value');
                      },
                    ),
                    SizedBox(height: 30),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          print('La contraseña es: $value');
                        })
                  ],
                ))));
  }
}
