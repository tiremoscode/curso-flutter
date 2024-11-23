void main() {
  print("Ternario!");
  int edad = 16;
  String mensaje = edad >= 18 ? 'Adulto' : 'Menor de edad';
  print(mensaje);

  // Null-aware operator (??);
  String? nombre;
  print(nombre ?? 'Nombre desconocido');

  // Null-aware assignment ??=
  // Asigna un valor solo si la variable es null.
  String? otroNombre;
  otroNombre ??= 'Invitado';
  print(otroNombre);
}
