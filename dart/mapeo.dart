void main() {
  print("Mapeo!");

// Aplicamos una funcion a cada elemento de una lita para transformarlo.
  List<int> numeros = [1, 2, 3, 4, 5];
  List<int> cuadrados = numeros.map((n) => n * n).toList();
  print(cuadrados);
}
