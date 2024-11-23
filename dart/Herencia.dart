class Animal {
  String? nombre;

  void caminar() {
    print('$nombre esta caminando');
  }
}

class Perro extends Animal {
  void ladrar() {
    print('$nombre esta ladrando');
  }
}

void main() {
  Perro obj = Perro();
  obj.nombre = 'Motty';
  obj.caminar();
  obj.ladrar();
}
