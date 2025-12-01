/*
45. Confeccionar un algoritmo que resuelva una ecuación de segundo grado:

        A*X^2 + B*X + C = 0

El discriminante se calcula como:
        D = B^2 - 4*A*C

Según la tabla:

Si D = 0 →  X1 = X2 = -B / (2*A)

Si D > 0 →
        X1 = (-B + sqrt(B^2 - 4*A*C)) / (2*A)
        X2 = (-B - sqrt(B^2 - 4*A*C)) / (2*A)

Si D < 0 →
        No tiene solución en los Reales.
*/

import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese A:");
  double A = double.parse(stdin.readLineSync()!);

  print("Ingrese B:");
  double B = double.parse(stdin.readLineSync()!);

  print("Ingrese C:");
  double C = double.parse(stdin.readLineSync()!);

  double D = pow(B, 2) - 4 * A * C;

  print("\nDiscriminante (D) = $D");

  if (D == 0) {
    double x = -B / (2 * A);
    print("Tiene una única solución real:");
    print("X1 = X2 = $x");
  } 
  else if (D > 0) {
    double x1 = (-B + sqrt(D)) / (2 * A);
    double x2 = (-B - sqrt(D)) / (2 * A);

    print("Tiene dos soluciones reales:");
    print("X1 = $x1");
    print("X2 = $x2");
  } 
  else {
    print("No tiene solución en los números reales.");
  }
}
