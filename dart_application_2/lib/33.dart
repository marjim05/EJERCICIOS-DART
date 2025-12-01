// 33. En una tienda se hace un descuento según el monto:
// <500 sin descuento
// 500 a 1000 → 5%
// 1000 a 7000 → 11%
// 7000 a 15000 → 18%
// >15000 → 25%
// Mostrar nombre, monto, monto a pagar y descuento.

import 'dart:io';

void main() {
  String nombre = stdin.readLineSync()!;
  double monto = double.parse(stdin.readLineSync()!);

  double descuento = 0;

  if (monto >= 500 && monto <= 1000) {
    descuento = monto * 0.05;
  } else if (monto > 1000 && monto <= 7000) {
    descuento = monto * 0.11;
  } else if (monto > 7000 && monto <= 15000) {
    descuento = monto * 0.18;
  } else if (monto > 15000) {
    descuento = monto * 0.25;
  }

  double pagar = monto - descuento;

  print(nombre);
  print(monto);
  print(pagar);
  print(descuento);
}
