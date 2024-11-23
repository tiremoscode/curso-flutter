// Ejercicio.
/* 

  // Mauricio - Tiempo
  // Ricardo - Tiempo
  // Andrea -Motrar la informaciòn del estudiante
  // Saul - Tiempo
  // Hector - Tiempo
Crear una aplicacion para los Estudiantes del Curso de Flutter
- Nombre
- Edad
- Correo
- Calificaciones

- Metodo para agregar una calificacion 
- Calcular el promedio de calificaciones de todo el grupo
- Mostrar la informaciòn de un estudiante

*/

/* Metodo para obtener datos desde la consola con Dart */

import 'dart:io';

class Estudiante {
  String nombre;
  int edad;
  String correo;
  List<double> calificaciones;

  // Metodo contructor
  Estudiante(String nombre, int edad, String correo,
      [List<double>? calificaciones])
      : this.nombre = nombre,
        this.edad = edad,
        this.correo = correo,
        this.calificaciones = calificaciones ?? [];

  double calcularPromedio() {
    if (calificaciones.isEmpty) {
      return 0.0;
    }

    return calificaciones.reduce((a, b) => a + b) / calificaciones.length;
  }

  @override
  String toString() {
    return '''
    Nombre: $nombre
    Edad $edad
    Correo $correo
    Calificaciones: ${calificaciones.isEmpty ? 'Sin Calificaciones' : calificaciones.join(', ')}
    Promedio: ${calcularPromedio().toStringAsFixed(2)}
''';
  }
}

class AppEstudiantes {
  List<Estudiante> estudiantes = [];

// Mètodo para agrega Estudiante

  void agregarEstudiante() {
    print('Ingresa el nombre del estudiante');
    String? nombre = stdin.readLineSync();

    print('Ingresa la edad del estudiante');
    String? edadInput = stdin.readLineSync();
    int edad = int.tryParse(edadInput ?? '') ?? 0;

    print('Ingresa el correo');
    String? email = stdin.readLineSync();

    estudiantes
        .add(Estudiante(nombre ?? 'Sin nombre', edad, email ?? 'sin correo'));

    print('Estudiante agregado correctamente');
  }

  void agregarCalificacion() {
    print('Ingresa el correo del estudiante al que daremos calificacion');
    String? email = stdin.readLineSync();

    Estudiante? estudiante =
        estudiantes.firstWhere((alumno) => alumno.correo == email);
    // orElse: () => null);

    if (estudiante == null) {
      print('Estudiante no fue encontrado');
      return;
    }

    // añadir la calificacion
    print('Ingresa la calificiacion');
    String? calificacionInput = stdin.readLineSync();

    double calificacion = double.tryParse(calificacionInput ?? '') ?? -1;

    if (calificacion < 0) {
      print('Calificacion invalida');
    }

    estudiante.calificaciones.add(calificacion);
    print('Calificacion agregada correctamente');
  }

  void mostrarInformacionEstudiante() {
    print('Ingrea el correo del estudiante');
    String? email = stdin.readLineSync();

    Estudiante? estudiante = estudiantes.firstWhere(
        (alumno) => alumno.correo.toLowerCase() == email?.toLowerCase());
    //orElse: () => null);

    if (estudiante == null) {
      print('Estudiante no encontrado');
    }

    print('Estudiante $estudiante');
  }

  void mostrarMenu() {
    while (true) {
      print(
          '1. Agrega Estudiante. 2. Agrega Calificacion a estudiante, 3. Muestra informacion de un estudiante, 4. Salir');

      String? opcion = stdin.readLineSync();
      switch (opcion) {
        case '1':
          agregarEstudiante();
          break;
        case '2':
          agregarCalificacion();
          break;
        case '3':
          mostrarInformacionEstudiante();
          break;
        case '4':
          print('Salir de la aplicacion, hasta pronto!');
          return;
        default:
          print('opcion no valida');
          break;
      }
    }
  }
}

void main() {
  AppEstudiantes app = AppEstudiantes();
  app.mostrarMenu();
}
