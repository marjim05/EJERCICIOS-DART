//Calcular el salario neto de un trabajador en función del número de horas trabajadas, el precio de la
//hora y considerando un descuento fijo al sueldo base por concepto de impuestos del 20%.

void main() {
  double horas = 40;
  double precioHora = 15;
  double sueldoBase = horas * precioHora;
  double descuento = sueldoBase * 0.20;
  double salarioNeto = sueldoBase - descuento;
  print("Salario neto: $salarioNeto");
}