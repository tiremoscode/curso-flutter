import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> deportes = [
    {'nombre': 'Fútbol', 'icono': Icons.sports_soccer, 'color': Colors.green},
    {
      'nombre': 'Básquetbol',
      'icono': Icons.sports_basketball,
      'color': Colors.orange
    },
    {'nombre': 'Béisbol', 'icono': Icons.sports_baseball, 'color': Colors.red},
    {'nombre': 'Tenis', 'icono': Icons.sports_tennis, 'color': Colors.blue},
    {'nombre': 'Natación', 'icono': Icons.pool, 'color': Colors.cyan},
    {'nombre': 'Ciclismo', 'icono': Icons.pedal_bike, 'color': Colors.purple},
    {'nombre': 'Boxeo', 'icono': Icons.sports_mma, 'color': Colors.brown},
    {'nombre': 'Golf', 'icono': Icons.sports_golf, 'color': Colors.teal},
    {'nombre': 'Atletismo', 'icono': Icons.directions_run, 'color': Colors.pink}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practica Grid'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.greenAccent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 3, // 3 columnas
            crossAxisSpacing: 10, // Espaciado entre columnas
            mainAxisSpacing: 10, // Espaciado entre filas
            children: deportes.map((deporte) {
              return Container(
                decoration: BoxDecoration(
                  color: deporte['color'],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      deporte['icono'],
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      deporte['nombre'],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
