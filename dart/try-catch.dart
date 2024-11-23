void main() {
  print("Try Catch!");
  try {
    int calcular = 10 ~/ 0;
    print(calcular);
  } catch (e) {
    print('Ocurrio un error: $e');
  } finally {
    print('Bloque finally siempre se mostrara al final');
  }
}
