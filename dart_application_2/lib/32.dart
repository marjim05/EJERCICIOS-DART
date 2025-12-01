/* 
32. Dados P y Q, determinar si cumplen:

     P^3 + Q^4 - 2*P^2 > 680

Si la cumplen, mostrar P y Q.  
Si no, mostrar mensaje.
*/

import 'dart:io';
import 'dart:math';

void main() {
  // Solicitar al usuario que ingrese los valores
  print("Ingrese el valor de P:");
  int p = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de Q:");
  int q = int.parse(stdin.readLineSync()!);

  // Calcular la expresión
  double r = pow(p, 3).toDouble() + pow(q, 4).toDouble() - 2 * pow(p, 2).toDouble();

  // Verificar si cumple la condición
  if (r > 680) {
    print("Cumple la condición:");
    print("P = $p");
    print("Q = $q");
  } else {
    print("No cumple");
  }
}
