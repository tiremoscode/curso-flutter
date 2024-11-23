void main() {
  int edad = 16;

  if (edad >= 18) {
    // Cumple mi condicion, entregar INEs
    print('Eres mayor de edad, entregar INE');
  } else if (edad >= 16 && edad < 18) {
    print('Podemos darte una licencia');
  } else {
    // No cumple
    print('No cumple con las condiciones, no entregar INE');
  }
}
