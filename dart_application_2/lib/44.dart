/*
44. Una persona desea iniciar un negocio hipotecando su casa.

Si el monto de la hipoteca es < 1,000,000:
  - Persona invierte 50% del total
  - Socio invierte 50%

Si la hipoteca es >= 1,000,000:
  - La persona invierte TODO el monto de la hipoteca
  - El resto del dinero necesario se reparte mitad y mitad entre él y su socio

Calcular:
- Cuánto invierte la persona
- Cuánto invierte el socio
- Cuánto cubre la hipoteca
*/

import 'dart:io';

void main() {
  print("Monto total necesario para iniciar el negocio: ");
  double total = double.parse(stdin.readLineSync()!);

  print("Monto de la hipoteca: ");
  double hipoteca = double.parse(stdin.readLineSync()!);

  double persona = 0;
  double socio = 0;

  if (hipoteca < 1000000) {
    persona = total * 0.5;
    socio = total * 0.5;
  } else {
    double restante = total - hipoteca;
    persona = hipoteca + (restante / 2);
    socio = restante / 2;
  }

  print("Inversión de la persona: $persona");
  print("Inversión del socio: $socio");
  print("Monto cubierto por la hipoteca: $hipoteca");
}
