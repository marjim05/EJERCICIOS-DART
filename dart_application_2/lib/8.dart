//Calcule el área de un triángulo en función de las longitudes de sus lados, utilizando la fórmula:
//√p(p­a)(p­b)(p­c) donde p = (a+b+c) / 2

import 'dart:math';

void main() {
  var a = 5;
  var b = 10;
  var c = 7;

  var p = (a + b + c) / 2;
  var area = sqrt(p * (p - a) * (p - b) * (p - c));

  print("El area del triangulo es: $area");
}