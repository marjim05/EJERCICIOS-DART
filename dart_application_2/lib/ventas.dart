void main () {
  int sueldoBase = 2500000;
  double comision = 0.10;
  List ventas = [1500000, 2000000, 3000000];

  var totalVentas = ventas.reduce((a, b) => a + b );
  var totalComision = totalVentas * comision;
  var sueldoTotal = sueldoBase + totalComision;
  print("El sueldo total del vendedor es: $sueldoTotal");
}