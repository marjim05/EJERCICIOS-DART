//Un vendedor recibe un sueldo base, más un 10% extra por comisiones de sus ventas. El vendedor
//desea saber cuánto dinero obtendrá por concepto de comisiones por las tres ventas que realizó en
//el mes y el total que recibirá tomando en cuenta su sueldo base y sus comisiones.

void main () {
  int sueldoBase = 2500000;
  double comision = 0.10;
  List ventas = [1500000, 2000000, 3000000];

  var totalVentas = ventas.reduce((a, b) => a + b );
  var totalComision = totalVentas * comision;
  var sueldoTotal = sueldoBase + totalComision;
  print("El sueldo total del vendedor es: $sueldoTotal");
}