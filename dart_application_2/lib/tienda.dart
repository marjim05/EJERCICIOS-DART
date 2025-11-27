void main() {
  var compras = [50000, 150000, 250000, 300000];
  var totalCompras = compras.reduce((a, b) => a + b);
  var valorTotal = totalCompras - (totalCompras * 0.15);

  print("El total de la compras es: $totalCompras");
  print("El total de la compra aplicando descuento es: $valorTotal");
}
