/*
Un científico desea que un algoritmo le ayude en su trabajo analizándole tres valores que se
suministran, para determinar si los dos primeros son las medidas de una figura conocida. Para ello,
calcule el área de cada una de las figuras que se mencionan a continuación y compárela con el
tercer valor suministrado; si hay coincidencia, imprima un mensaje que indique de qué figura se
trata. Las figuras a analizar son:
4
• Triángulo: b*h Valor1 y Valor2 son base y altura
 2
• Círculo: pi * r2 Valor1 y Valor2 son radio y pi
• Rectángulo: b * h Valor1 y Valor2 son base y altura.
*/
import 'dart:io';
import 'dart:math';

void main() {
  double v1 = double.parse(stdin.readLineSync()!);
  double v2 = double.parse(stdin.readLineSync()!);
  double area = double.parse(stdin.readLineSync()!);

  double t = (v1 * v2) / 2;
  double c = v2 * pow(v1, 2);
  double r = v1 * v2;

  if (area == t) {
    print("Triangulo");
  } else if (area == c) {
    print("Circulo");
  } else if (area == r) {
    print("Rectangulo");
  } else {
    print("Ninguna");
  }
}
