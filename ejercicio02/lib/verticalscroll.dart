import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Scroll en Columnas',
        home: const ScrollScreen(),
        theme: ThemeData(primarySwatch: Colors.red));
  }
}

class Tema extends StatelessWidget {
  const Tema({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Temas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.star, size: 50),
          Text('Flutter me gusta mucho', style: TextStyle(fontSize: 30)),
          ElevatedButton(onPressed: () {}, child: Text('Haz click aqui')),
        ],
      ),
    );
  }
}

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Scroll'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  30,
                  (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('soy la tarjeta $index',
                          style: const TextStyle(fontSize: 18))))),
        ),
      ),
      backgroundColor: Colors.green.shade100,
    );
  }
}
