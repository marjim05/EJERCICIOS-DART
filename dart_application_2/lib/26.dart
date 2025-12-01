/* 
Dados los datos A, B, C y D que representan números enteros; 
calcular el resultado de las siguientes expresiones:

Si D = 0 → (A - C)²
Si D > 0 → (A - B)³ / D
*/

import 'dart:io';
import 'dart:math'; // Para usar pow()

void main() {
  // Solicitar al usuario que ingrese los valores
  print("Ingrese el valor de A:");
  int a = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de B:");
  int b = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de C:");
  int c = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de D:");
  int d = int.parse(stdin.readLineSync()!);

  double r;

  // Calcular según la condición de D
  if (d == 0) {
    r = pow((a - c), 2).toDouble(); // (A - C)²
  } else {
    r = pow((a - b), 3) / d;        // (A - B)³ / D
  }

  // Mostrar el resultado
  print("Resultado: $r");
}
