//{}

class Volador {
  void volar() {
    print('Estoy volando!');
  }
}

class Avion implements Volador {
  @override
  void volar() {
    print('El avion esta volando');
  }
}

void main() {
  Avion avion = Avion();
  avion.volar();
}
