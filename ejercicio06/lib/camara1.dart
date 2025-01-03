import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    final cameras = await availableCameras();

    if (cameras.isEmpty) {
      runApp(ErrorApp(message: 'No se encontraron cámaras disponibles.'));
      return;
    }

    final firstCamera = cameras.first;
    runApp(MyApp(camera: firstCamera));
  } catch (e) {
    runApp(ErrorApp(message: 'Error al inicializar las cámaras: $e'));
  }
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  MyApp({required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EjemploCamara(camera: camera),
    );
  }
}

class EjemploCamara extends StatefulWidget {
  final CameraDescription camera;

  EjemploCamara({required this.camera});

  @override
  _EjemploCamaraState createState() => _EjemploCamaraState();
}

class _EjemploCamaraState extends State<EjemploCamara> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.high);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tomando una foto con la cámara')),
      body: FutureBuilder(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_controller);
            } else {
              return Center(child: Text('No disponible'));
            }
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () async {
          try {
            await _initializeControllerFuture;

            final image = await _controller.takePicture();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Foto guardada en ${image.path}')),
            );
          } catch (error) {
            print('error $error');
          }
        },
      ),
    );
  }
}

class ErrorApp extends StatelessWidget {
  final String message;

  ErrorApp({required this.message});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text(message)),
      ),
    );
  }
}
