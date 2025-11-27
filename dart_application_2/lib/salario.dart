void main() {
  var horasTrabajadas = 45;
  var valorHora = 20000;
  var descuentoImpuestos = 0.2;
  var salarioBruto = horasTrabajadas * valorHora;
  var descuento = salarioBruto * descuentoImpuestos;
  var salarioNeto = salarioBruto - descuento;

  print("El salario neto es: $salarioNeto");
}
