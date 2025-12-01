/*
Escriba un algoritmo, que dado como dato el sueldo de un trabajador, le aplique un aumento del
15% si su sueldo es inferior a Bs. 40.000 y 12% en caso contrario. Imprima el nuevo sueldo del
trabajador.
*/
import 'dart:io';

void main() {
  double sueldo;
  print("Sueldo:");
  sueldo = double.parse(stdin.readLineSync()!);

  if (sueldo < 40000) {
    sueldo = sueldo * 1.15;
  } else {
    sueldo = sueldo * 1.12;
  }

  print(sueldo);
}
