/*Una persona adquiere una deuda de Bs. 12775, la cual cancela mediante pagos de montos crecientes
de los cuales el primero es por Bs. 100 y además la diferencia de dos pagos consecutivos es Bs. 125.
Determinar el número de pagos que realiza la persona así como el monto del último pago. Muestre
en pantalla una tabla con el monto de cada pago y el monto pendiente por cancelar. Respuesta:
número pagos = 14, monto del último = 1725.*/

void main (){
  double deuda = 12775;
  double pagoInicial = 100;
  double diferencia = 125;

  double montoPendiente = deuda;
  double pagoActual = pagoInicial;
  int numeroPagos = 0;

  print("Pago\tMonto Pendiente");
  print("-------------------------");

  while (montoPendiente > 0) {
    if (montoPendiente < pagoActual) {
      pagoActual = montoPendiente; // Ajustar el último pago si es menor
    }
    montoPendiente -= pagoActual;
    numeroPagos++;
    print("$pagoActual\t$montoPendiente");
    pagoActual += diferencia; // Incrementar el pago para la siguiente iteración
  }

  print("\nNúmero total de pagos realizados: $numeroPagos");
  print("Monto del último pago: ${pagoActual - diferencia}");
}