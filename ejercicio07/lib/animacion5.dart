import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Primera pagina')),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Hero(
              tag: 'hero-animation',
              child: Container(width: 100, height: 100, color: Colors.blue)),
        )));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Segunda pagina')),
        body: Center(
            child: Hero(
                tag: 'hero-animation',
                child:
                    Container(width: 300, height: 300, color: Colors.blue))));
  }
}
