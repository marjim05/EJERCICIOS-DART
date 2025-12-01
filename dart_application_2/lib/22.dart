/*Un comerciante de computadores ofrece P precio por compra al contado ó 12 cuotas de T Bolívares
cada una. Desarrolle un programa para calcular y mostrar cuál es el porcentaje que se cobra por el
recargo en el pago del computador por cuotas.

*/
import 'dart:io';

void main() {
  double p;
  double t;

  print("Precio de contado:");
  p = double.parse(stdin.readLineSync()!);

  print("Valor de cada cuota:");
  t = double.parse(stdin.readLineSync()!);

  double totalCuotas = t * 12;
  double recargo = totalCuotas - p;
  double porcentaje = (recargo / p) * 100;

  print(porcentaje);
}
