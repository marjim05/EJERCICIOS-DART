// Repartir el presupuesto anual entre Ginecología 40%, Traumatología 30% y Pediatría 30%.
void main() {
  double presupuesto = 1000000;

  double gine = presupuesto * 0.40;
  double trauma = presupuesto * 0.30;
  double pedia = presupuesto * 0.30;

  print("Ginecología: $gine");
  print("Traumatología: $trauma");
  print("Pediatría: $pedia");
}
