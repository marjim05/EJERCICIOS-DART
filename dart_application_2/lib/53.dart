/*Una empresa requiere realizar el cálculo de la nómina semanal de un conjunto M de empleados; para
ello dispone que los datos de entrada son: nombre, nacionalidad (V o E), edad, tipo de empleado
(1,2,3) y número de horas trabajadas. Con esta información se desea calcular e imprimir:
a. Sueldo básico o bruto. Considere para ello que el pago por hora depende del tipo de
empleado, según la siguiente distribución:
• Si el tipo empleado es 1 Bs. 5000
• Si el tipo empleado es 2 Bs. 10000
• Si el tipo empleado es 3 Bs. 15000
b. Seguro Social, que corresponde al 3% del Sueldo Básico, si éste último es mayor a 100000.
c. Total, de venezolanos por tipo de empleado.
d. Total, de Extranjeros cuya edad es impar.
e. Promedio de edad de todos los empleados.
f. Total, general a pagar en sueldos.*/

import 'dart:io';

void main() {
  int M = 20;

  // Acumuladores generales
  int totalV1 = 0, totalV2 = 0, totalV3 = 0; 
  int totalExtranjerosEdadImpar = 0; 
  int sumaEdades = 0; 
  double totalGeneralSueldos = 0; 

  for (int i = 1; i <= M; i++) {
    print("\n----- Empleado $i -----");

    stdout.write("Nombre: ");
    String nombre = stdin.readLineSync()!;

    stdout.write("Nacionalidad (V/E): ");
    String nac = stdin.readLineSync()!.toUpperCase();

    stdout.write("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    stdout.write("Tipo de empleado (1,2,3): ");
    int tipo = int.parse(stdin.readLineSync()!);

    stdout.write("Horas trabajadas: ");
    int horas = int.parse(stdin.readLineSync()!);

    // --- A. Sueldo Básico ---
    int pagoHora = 0;

    if (tipo == 1)
      pagoHora = 5000;
    else if (tipo == 2)
      pagoHora = 10000;
    else if (tipo == 3)
      pagoHora = 15000;

    int sueldoBasico = pagoHora * horas;

    // --- B. Seguro Social (3% si sueldo > 100000) ---
    double seguroSocial = (sueldoBasico > 100000) ? sueldoBasico * 0.03 : 0;

    // Acumular totales solicitados
    if (nac == "V") {
      if (tipo == 1)
        totalV1++;
      else if (tipo == 2)
        totalV2++;
      else if (tipo == 3)
        totalV3++;
    }

    if (nac == "E" && edad % 2 != 0) {
      totalExtranjerosEdadImpar++;
    }

    sumaEdades += edad;
    totalGeneralSueldos += sueldoBasico - seguroSocial;

    // Mostrar resultados individuales
    print("\n--- Resultados del empleado $nombre ---");
    print("Sueldo Básico: Bs. $sueldoBasico");
    print("Seguro Social: Bs. $seguroSocial");
    print("Sueldo Neto a pagar: Bs. ${sueldoBasico - seguroSocial}");
  }

  double promedioEdad = sumaEdades / M;

  // --- Mostrar Totales Finales ---
  print("\n========== RESULTADOS GENERALES ==========");
  print("Total de Venezolanos tipo 1: $totalV1");
  print("Total de Venezolanos tipo 2: $totalV2");
  print("Total de Venezolanos tipo 3: $totalV3");
  print("Total de Extranjeros con edad impar: $totalExtranjerosEdadImpar");
  print("Promedio de edad: ${promedioEdad.toStringAsFixed(2)} años");
  print("Total general a pagar en sueldos: Bs. $totalGeneralSueldos");
}
