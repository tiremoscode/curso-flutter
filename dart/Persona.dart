class Persona {
  // Atributos
  String? nombre;
  int? edad;

  // Constructor por defecto
  Persona(this.nombre, this.edad);

  // Constructor con otro nombre
  Persona.anonimo() {
    nombre = 'Anonimo';
    edad = 0;
  }

  // N metodos
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años');
  }

  // Main - Principal
}

void main() {
  // Crear la instancia de la clase.
  Persona obj1 = Persona('Karla', 33);
  obj1.saludar();

  // Crear la instancia con otro tipo de constructor
  Persona obj2 = Persona.anonimo();
  print(obj2.nombre);
}
