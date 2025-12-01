// 31. Una compañía de alquiler de automóviles sin conductor desea calcular lo que paga cada cliente.
// a. Si no se pasan los 300 km se pagan 5000 Bs.
// b. Si pasa de 300 pero es menor a 1000 se pagan 5000 + 200 Bs por cada km arriba de 300.
// c. Si pasa de 1000 se pagan 5000 + 200 Bs desde 300 a 1000 y 150 Bs por cada km arriba de 1000.

import 'dart:io';

void main() {
  double km = double.parse(stdin.readLineSync()!);
  double pago;

  if (km <= 300) {
    pago = 5000;
  } else if (km <= 1000) {
    pago = 5000 + (km - 300) * 200;
  } else {
    pago = 5000 + (700 * 200) + (km - 1000) * 150;
  }

  print(pago);
}
