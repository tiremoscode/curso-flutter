void main() {
  print("Filtros!");
  // Filtrar n elemento que cumplan con una condicion

  List<int> numeros = [1, 2, 3, 4, 5];
  List<int> pares = numeros.where((n) => n % 2 == 0).toList();
  print(pares);
}
