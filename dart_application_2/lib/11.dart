//Se conoce de un trabajador su nombre, el número de horas normales trabajadas, el pago de una hora
//normal y el número de horas extras trabajadas. Además, que, cada hora extra se paga 25% más del
//valor de una hora normal. Si se deducen al trabajador sobre el sueldo base 5% del paro forzoso, 2%
//de política habitacional y 7% para caja de ahorro. Si se le asignan 25000 Bolívares por actualización
//académica, 17300 Bolívares por cada hijo y una prima por hogar de 18000 Bolívares. Calcule y
//muestre las asignaciones, las deducciones y el sueldo neto del trabajador.
void main() {
  String nombre = "Carlos";
  double horasNormales = 40;
  double pagoHora = 50;
  double horasExtras = 5;

  // Sueldos base y extra
  double sueldoBase = horasNormales * pagoHora;
  double pagoExtra = horasExtras * (pagoHora * 1.25);

  // Asignaciones
  double asignacionAcademica = 25000;
  double asignacionHijos = 17300 * 2;
  double primaHogar = 18000;

  double totalAsignaciones =
      pagoExtra + asignacionAcademica + asignacionHijos + primaHogar;

  // Deducciones (aplicadas al sueldo ganado: base + extra)
  double sueldoGanado = sueldoBase + pagoExtra;

  double paroForzoso = sueldoGanado * 0.05;
  double politicaHab = sueldoGanado * 0.02;
  double cajaAhorro = sueldoGanado * 0.07;

  double totalDeducciones = paroForzoso + politicaHab + cajaAhorro;

  // Sueldo neto
  double sueldoNeto = sueldoGanado + asignacionAcademica + asignacionHijos + primaHogar - totalDeducciones;

  print("Trabajador: $nombre");
  print("Asignaciones: $totalAsignaciones");
  print("Deducciones: $totalDeducciones");
  print("Sueldo neto: $sueldoNeto");
}
