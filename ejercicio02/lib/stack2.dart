import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Otro ejemplo de Stack'),
      ),
      body: Stack(
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/I/61dQrX5sPgL.__AC_SX300_SY300_QL70_ML2_.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
          ),
          Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: const Text('100.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))))
        ],
      ),
    ));
  }
}
