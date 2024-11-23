abstract class Vehiculo {
  void encender(); // Metodo abstracto
}

class Coche extends Vehiculo {
  @override
  void encender() {
    print('El coche esta encendiendo');
  }
}

void main() {
  Coche coche = Coche();
  coche.encender();
}
