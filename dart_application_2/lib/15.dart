// Calcular el monto total a pagar en luz según lectura anterior, actual y costo por kWh.
void main() {
  double lecturaAnterior = 1500;
  double lecturaActual = 1600;
  double costo = 5;

  double consumo = lecturaActual - lecturaAnterior;
  double total = consumo * costo;

  print("Total a pagar: $total");
}
