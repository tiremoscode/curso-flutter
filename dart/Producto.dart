class Producto {
  double _precio = 0;

  // Getter
  double get precio => _precio;

  // Setter
  set precio(double nuevoPrecio) {
    if (nuevoPrecio > 0) {
      _precio = nuevoPrecio;
    } else {
      print('El precio siempre debe ser mayor a 0');
    }
  }
}

void main() {
  Producto producto = Producto();
  // usando el mètodo getter
  print(producto.precio);
  // usando el metodo setter
  producto.precio = 150.0;
  // leer el valor actualizado
  print(producto.precio);
}
