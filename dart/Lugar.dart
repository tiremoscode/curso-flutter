class Lugar {
  double latitude;
  double longitude;

  Lugar(double latitude, double longitude)
      : this.latitude = latitude,
        this.longitude = longitude;

  void mostrarInfoLugar() {
    print('Lugar: ($latitude, $longitude)');
  }
}

void main() {
  Lugar escuela = Lugar(19.3939393, -99.393939);
  escuela.mostrarInfoLugar();
}
