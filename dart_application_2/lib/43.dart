/*
43. Un empresario planifica sus decisiones según su capital actual.

- Si su capital es NEGATIVO → pide préstamo para quedar en 10000.
- Si su capital es POSITIVO y <= 20000 → pide préstamo para quedar en 20000.
- Si su capital > 20000 → no pide préstamo.

Luego reparte el presupuesto así:
- 5000 para equipo de cómputo
- 2000 para mobiliario
- El resto → mitad en insumos y mitad en incentivos

Calcular:
- Monto del préstamo (si aplica)
- Dinero para insumos
- Dinero para incentivos
*/

import 'dart:io';

void main() {
  print("Capital actual: ");
  double capital = double.parse(stdin.readLineSync()!);

  double prestamo = 0;

  if (capital < 0) {
    prestamo = 10000 - capital;
    capital = 10000;
  } else if (capital <= 20000) {
    prestamo = 20000 - capital;
    capital = 20000;
  }

  double restante = capital - 5000 - 2000;
  double insumos = restante / 2;
  double incentivos = restante / 2;

  print("Préstamo solicitado: $prestamo");
  print("Dinero para insumos: $insumos");
  print("Dinero para incentivos: $incentivos");
}
