/*Una empresa está interesada en automatizar el proceso anual de cálculo de intereses de mora y de
descuentos en el cobro de las facturas de los clientes a crédito. Para ello la empresa utiliza los
siguientes criterios:
a. Si la factura se paga se paga 60 días después de haber realizado la compra se cobra un
interés de mora del 8% sobre el monto de la factura.
b. Si la factura se paga entre 31 y 59 días después de haber realizado la compra se cobra un
interés de mora del 6% sobre el monto de la factura.
c. Si la factura se paga antes de los 15 días de haber realizado la compra se hace un descuento
del 2% sobre el monto de la factura.

Realice un algoritmo que lea los datos de las facturas por pantalla e imprima para cada factura el
número, nombre del cliente, el monto a cancelar, el monto a pagar por interés de mora y monto
descontado por pronto pago.
Los datos de cada factura son: Número de factura (num-fac), nombre del cliente (num-cli), monto de
la factura (mon-fac), fecha de compra (fec-com) y fecha de pago (fec-pag).*/

import 'dart:io';

void main() {
  stdout.write("Número de factura: ");
  String numFac = stdin.readLineSync()!;

  stdout.write("Nombre del cliente: ");
  String nombreCliente = stdin.readLineSync()!;

  stdout.write("Monto de la factura: ");
  double montoFactura = double.parse(stdin.readLineSync()!);

  stdout.write("Fecha de compra (dd/mm/aaaa): ");
  String fechaCompraStr = stdin.readLineSync()!;
  DateTime fechaCompra = DateTime.parse(fechaCompraStr.split('/').reversed.join('-'));

  stdout.write("Fecha de pago (dd/mm/aaaa): ");
  String fechaPagoStr = stdin.readLineSync()!;
  DateTime fechaPago = DateTime.parse(fechaPagoStr.split('/').reversed.join('-'));

  int diasDiferencia = fechaPago.difference(fechaCompra).inDays;

  double interesMora = 0;
  double descuentoProntoPago = 0;

  if (diasDiferencia > 60) {
    interesMora = montoFactura * 0.08;
  } else if (diasDiferencia >= 31 && diasDiferencia <= 59) {
    interesMora = montoFactura * 0.06;
  } else if (diasDiferencia < 15) {
    descuentoProntoPago = montoFactura * 0.02;
  }

  double montoAPagar = montoFactura + interesMora - descuentoProntoPago;

  print("\n----- Detalles de la factura -----");
  print("Número de factura: $numFac");
  print("Nombre del cliente: $nombreCliente");
  print("Monto de la factura: \$${montoFactura.toStringAsFixed(2)}");
  print("Interés de mora: \$${interesMora.toStringAsFixed(2)}");
  print("Descuento por pronto pago: \$${descuentoProntoPago.toStringAsFixed(2)}");
  print("Monto a pagar: \$${montoAPagar.toStringAsFixed(2)}");
}