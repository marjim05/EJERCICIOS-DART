// Calcular el porcentaje anual cobrado en un préstamo usando capital, intereses y 4 años.
void main() {
  double capital = 50000;
  double interesesPagados = 20000;

  double razon = (interesesPagados * 100) / (capital * 4);

  print("Porcentaje anual: $razon%");
}
