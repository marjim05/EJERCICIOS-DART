// 39. Una persona se encuentra en la disyuntiva de comprar un automóvil o un terreno, los cuales
// cuestan exactamente lo mismo. El automóvil se devalúa y el terreno aumenta de valor.
// Comprará el automóvil si después de 3 años la devaluación del automóvil
// NO es mayor que la mitad del incremento del valor del terreno.
// Determinar si debe o no comprar el automóvil.

import 'dart:io';

void main() {
  // Pedir datos al usuario
  print("Ingrese el valor inicial del automóvil y el terreno:");
  double valorInicial = double.parse(stdin.readLineSync()!);

  print("Ingrese la devaluación total del automóvil después de 3 años:");
  double devaluacionAuto = double.parse(stdin.readLineSync()!);

  print("Ingrese el incremento del valor del terreno después de 3 años:");
  double incrementoTerreno = double.parse(stdin.readLineSync()!);

  // Condición para decidir si comprar el automóvil
  if (devaluacionAuto <= (incrementoTerreno / 2)) {
    print("Debe comprar el automóvil.");
  } else {
    print("No debe comprar el automóvil.");
  }
}
