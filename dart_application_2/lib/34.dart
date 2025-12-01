// 34. Dado la categoría y el sueldo de un trabajador, calcular el aumento según la tabla:
// 1 → 15%
// 2 → 10%
// 3 → 8%
// 4 → 7%
// Mostrar categoría y nuevo sueldo.

import 'dart:io';

void main() {
  int categoria = int.parse(stdin.readLineSync()!);
  double sueldo = double.parse(stdin.readLineSync()!);

  double aumento = 0;

  if (categoria == 1) {
    aumento = sueldo * 0.15;
  } else if (categoria == 2) {
    aumento = sueldo * 0.10;
  } else if (categoria == 3) {
    aumento = sueldo * 0.08;
  } else if (categoria == 4) {
    aumento = sueldo * 0.07;
  }

  double nuevoSueldo = sueldo + aumento;

  print(categoria);
  print(nuevoSueldo);
}
