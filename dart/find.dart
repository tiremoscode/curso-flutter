void main() {
  print("Find!");
  // Filtrar n elemento que cumplan con una condicion

  List<int> numeros = [10, 15, 20, 25];
  int primerValor = numeros.firstWhere((n) => n % 2 == 0);
  print(primerValor);
}
