/*
42. Tomando como base los resultados de laboratorio, un médico determina si una persona
tiene anemia o no, según su nivel de hemoglobina, edad y sexo.

Reglas (si está por debajo del rango → ANEMIA):

EDAD                                    RANGO (g%)
0 - 1 mes                               13 - 26
>1 mes y <= 6 meses                     10 - 18
>6 meses y <= 12 meses                  11 - 15
>1 año y <= 5 años                      11.5 - 15
>5 años y <= 10 años                    12.6 - 15.5
>10 años y <= 15 años                   13 - 15.5
Mujeres > 15 años                       12 - 16
Hombres > 15 años                       14 - 18
*/

import 'dart:io';

void main() {
  print("Edad en años (decimales si es necesario): ");
  double edad = double.parse(stdin.readLineSync()!);

  print("Sexo (M/F): ");
  String sexo = stdin.readLineSync()!.toUpperCase();

  print("Nivel de hemoglobina: ");
  double h = double.parse(stdin.readLineSync()!);

  double min = 0, max = 0;

  if (edad <= 0.083) { // 1 mes ≈ 0.083 años
    min = 13; max = 26;
  } else if (edad <= 0.5) {
    min = 10; max = 18;
  } else if (edad <= 1) {
    min = 11; max = 15;
  } else if (edad <= 5) {
    min = 11.5; max = 15;
  } else if (edad <= 10) {
    min = 12.6; max = 15.5;
  } else if (edad <= 15) {
    min = 13; max = 15.5;
  } else {
    if (sexo == "F") { min = 12; max = 16; }
    else { min = 14; max = 18; }
  }

  if (h < min) {
    print("Resultado: ANEMIA");
  } else {
    print("Resultado: NORMAL");
  }
}
