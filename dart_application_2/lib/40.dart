// 40. Programa que calcule y muestre el monto que debe pagar un suscriptor por consumo eléctrico
// y aseo urbano. El consumo se calcula como:
// consumo = lecturaActual - lecturaAnterior
// Luego se multiplica según esta escala de costo por Kwh:
// 0 - 100:   2.622,00 Bs/Kwh
// 101 - 300: 79,78 Bs/Kwh
// 301 - 500: 89,52 Bs/Kwh
// 501 en adelante: 97,95 Bs/Kwh

import 'dart:io';

void main() {
  print("Lectura anterior:");
  int lecturaAnterior = int.parse(stdin.readLineSync()!);

  print("Lectura actual:");
  int lecturaActual = int.parse(stdin.readLineSync()!);

  int consumo = lecturaActual - lecturaAnterior;
  double costo = 0;

  if (consumo <= 100) {
    costo = consumo * 2622.00;
  } else if (consumo <= 300) {
    costo = consumo * 79.78;
  } else if (consumo <= 500) {
    costo = consumo * 89.52;
  } else {
    costo = consumo * 97.95;
  }

  print("Consumo total: $consumo Kwh");
  print("Monto a pagar por servicio eléctrico: ${costo.toStringAsFixed(2)} Bs");
}
