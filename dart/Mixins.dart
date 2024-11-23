mixin Nadador {
  void nadar() {
    print('Estoy nadando');
  }
}

mixin Caminador {
  void caminar() {
    print('Estoy caminando');
  }
}

class Humano with Nadador, Caminador {}

void main() {
  Humano humano = Humano();
  humano.caminar();
  humano.nadar();
}
