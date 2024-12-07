import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureScreen(),
    );
  }
}

class GestureScreen extends StatefulWidget {
  @override
  _GestureScreenState createState() => _GestureScreenState();
}

class _GestureScreenState extends State<GestureScreen> {
  String accion = 'Ninguna accion al momento';

  void actualizaAction(String action) {
    setState(() {
      accion = action;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gestures en Flutter'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Accion detectada :$accion'),
            GestureDetector(
                onTap: () {
                  actualizaAction('Tap (Toque simple)');
                },
                onDoubleTap: () {
                  actualizaAction('Double Tap (Doble toque)');
                },
                onLongPress: () {
                  actualizaAction('Long Press (Presiòn larga)');
                },
                onPanUpdate: (details) {
                  actualizaAction(
                      'Pan (Arrastre) - dx: ${details.delta.dx}, dy: ${details.delta.dy}');
                },
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Toca, desliza y presiona',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))),
          ],
        )));
  }
}
