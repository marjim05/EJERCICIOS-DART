import 'dart:math';

void main() {
  var a = 5;
  var b = 10;
  var c = 7;

  var p = (a + b + c) / 2;
  var area = sqrt(p * (p - a) * (p - b) * (p - c));

  print("El area del triangulo es: $area");
}