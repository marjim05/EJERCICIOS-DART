// 37. Dados 3 lados A, B y C determinar si forman un triángulo.
// Si es triángulo, decir si es equilátero, isósceles o escaleno.
// Calcular el área con fórmula: area = sqrt(S*(S-A)*(S-B)*(S-C))
// donde S = (A+B+C)/2

import 'dart:io';
import 'dart:math';

void main() {
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);

  if (a + b > c && a + c > b && b + c > a) {
    if (a == b && b == c) {
      print("Equilátero");
    } else if (a == b || a == c || b == c) {
      print("Isósceles");
    } else {
      print("Escaleno");
    }

    double s = (a + b + c) / 2;
    double area = sqrt(s * (s - a) * (s - b) * (s - c));
    print(area);
  } else {
    print("No es triángulo");
  }
}
