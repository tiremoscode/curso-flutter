void main() {
  print("Break y Continue!");

  // Break;
  for (int i = 0; i < 5; i++) {
    if (i == 3) break;
    print(i);
  }

  print('-----------');
  // Continue
  for (int j = 0; j < 5; j++) {
    if (j == 2) continue;
    print(j);
  }
}
