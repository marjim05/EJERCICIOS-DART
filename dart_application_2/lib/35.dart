// 35. Dada una temperatura en Fahrenheit, mostrar el deporte apropiado:
// Natación: Temp > 85
// Tenis: 70 < Temp <= 85
// Golf: 32 < Temp <= 70
// Esquí: 10 < Temp <= 32
// Marcha: Temp <= 10

import 'dart:io';

void main() {
  double t = double.parse(stdin.readLineSync()!);

  if (t > 85) {
    print("Natación");
  } else if (t > 70 && t <= 85) {
    print("Tenis");
  } else if (t > 32 && t <= 70) {
    print("Golf");
  } else if (t > 10 && t <= 32) {
    print("Esquí");
  } else {
    print("Marcha");
  }
}
