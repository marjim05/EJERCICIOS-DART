// Calcular porcentaje de descuento dado precio final y precio de venta al público.
void main() {
  double pvp = 1000;
  double precioFinal = 850;

  double descuento = ((pvp - precioFinal) / pvp) * 100;

  print("Descuento aplicado: $descuento%");
}
