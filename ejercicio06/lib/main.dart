import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GPSMapa(),
    );
  }
}

class GPSMapa extends StatefulWidget {
  @override
  _GPSMapaState createState() => _GPSMapaState();
}

class _GPSMapaState extends State<GPSMapa> {
  late MapboxMapController _mapController;
  final String _mapboxToken =
      'pk.eyJ1IjoiYWxiZXJ0b2x1ZWJiZXJ0IiwiYSI6ImNtNThsbzFrYjNuY3cybHB6Mm9ib3J5cmgifQ.cKCxAlykTcCMG6gW3GZ_tg';
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
              : MapboxMap(
                  accessToken: _mapboxToken,
                  initialCameraPosition: CameraPosition(
                      zoom: 14, target: LatLng(19.432608, -99.133209)),
                ),
        ));
  }
}
