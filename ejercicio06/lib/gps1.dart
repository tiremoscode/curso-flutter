import 'package:flutter/material.dart';
import 'package:location/location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GPSEjemplo(),
    );
  }
}

class GPSEjemplo extends StatefulWidget {
  @override
  _GPSEjemploState createState() => _GPSEjemploState();
}

class _GPSEjemploState extends State<GPSEjemplo> {
  LocationData? _currentLocation;
  final Location _location = Location();

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<void> _getLocation() async {
    final permisoConcedido = await _location.requestPermission();
    if (permisoConcedido == PermissionStatus.granted) {
      final locationData = await _location.getLocation();
      setState(() {
        _currentLocation = locationData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi ubicación actual')),
      body: Center(
        child: _currentLocation == null
            ? Text('Obteniendo tu ubicación')
            : Text(
                'Latitud: ${_currentLocation!.latitude}, Longitud: ${_currentLocation!.longitude}'),
      ),
    );
  }
}
