/*Un banco está interesado en diseñar un software que le permita calcular y generar ciertos listados
sobre las deudas de sus clientes a créditos. El algoritmo debe procesar para cada estado y sus
agencias los clientes con pagarés pendientes a una fecha (dd/mm/aaaa) dad y generar los recibos
correspondientes para ser enviados a los clientes. Cada estado, agencia y cliente es identificado por
un código. Los pagarés tienen una fecha de vencimiento (dd/mm/aaaa), un monto a pagar y un
número que lo identifica; un cliente debe tener más que un pagaré.
Se quiere un algoritmo o programa que permita:
• Imprimir un recibo para cada cliente cuyo encabezado es su código, nombre, dirección,
código de estado y código de agencia. El detalle del recibo contendrá un número del pagaré,
la fecha de vencimiento y el monto del pagaré. Al final del recibo debe colocar la cantidad
de pagares pendientes y el monto total pendiente.
• Imprimir por agencia su código, estado, la cantidad de clientes con pagares pendientes,
monto total adeudado y el código de cliente con mayor deuda.

1
5

• Imprimir por estado su código, el monto total adeudado en el estado y el código de agencia
con menor y mayor monto adeudado.
• Calcular e imprimir el monto promedio adeudado en razón de los montos máximos
adeudados por las agencias a nivel nacional.

NOTA: Los cálculos se deben realizar en función de una fecha dada. No se podrán utilizar vectores
ni matrices.*/

void main() {
  // Fecha límite para considerar pagarés pendientes
  int diaLimite = 10, mesLimite = 12, anioLimite = 2025;

  // Función para comparar fechas
  bool esPendiente(int d, int m, int a) {
    if (a > anioLimite) return false;
    if (a == anioLimite && m > mesLimite) return false;
    if (a == anioLimite && m == mesLimite && d > diaLimite) return false;
    return true;
  }

  // Cantidad de estados (simulada)
  int totalEstados = 2;

  // Para el promedio nacional de deudas máximas por agencia
  double sumaMaximosAgencia = 0;
  int contadorAgencias = 0;

  for (int e = 1; e <= totalEstados; e++) {
    String codigoEstado = "EST$e";

    double montoTotalEstado = 0;

    // Variables para encontrar agencia con mayor y menor deuda del estado
    double maxDeudaAgencia = -1;
    double minDeudaAgencia = 999999999;

    String codAgenciaMayor = "";
    String codAgenciaMenor = "";

    // Cantidad de agencias (simulada)
    int totalAgencias = (e == 1) ? 2 : 1;

    for (int a = 1; a <= totalAgencias; a++) {
      String codigoAgencia = "AG$e$a";

      double deudaTotalAgencia = 0;
      int clientesPendientes = 0;

      String clienteMayorDeuda = "";
      double mayorDeudaCliente = -1;

      // Cantidad de clientes (simulada)
      int totalClientes = 2;

      for (int c = 1; c <= totalClientes; c++) {
        String codCliente = "CL$e$a$c";
        String nombreCliente = "Cliente_$e$a$c";
        String direccionCliente = "Dir_$e$a$c";

        // Simular cantidad de pagarés por cliente
        int pagarCount = 2;

        // Variables del cliente
        int pagarPendientes = 0;
        double totalCliente = 0;

        print("\n===== RECIBO DEL CLIENTE =====");
        print("Código Cliente: $codCliente");
        print("Nombre: $nombreCliente");
        print("Dirección: $direccionCliente");
        print("Estado: $codigoEstado");
        print("Agencia: $codigoAgencia");
        print("----------------------------------");

        for (int p = 1; p <= pagarCount; p++) {
          String codPaga = "PG$e$a$c$p";

          // Fechas simuladas
          int d = 5 + p;
          int m = 12;
          int y = 2025;

          // Montos simulados
          double monto = 1000.0 * (p + c + a);

          // Evaluar si está pendiente según fecha límite
          if (esPendiente(d, m, y)) {
            pagarPendientes++;
            totalCliente += monto;

            print("Pagaré: $codPaga  Fecha: $d/$m/$y  Monto: $monto Bs");
          }
        }

        print("Total pagarés pendientes: $pagarPendientes");
        print("Monto total cliente: $totalCliente Bs");
        print("----------------------------------");

        // Actualizar contadores de agencia
        if (totalCliente > 0) {
          clientesPendientes++;
          deudaTotalAgencia += totalCliente;
        }

        // Cliente con mayor deuda en la agencia
        if (totalCliente > mayorDeudaCliente) {
          mayorDeudaCliente = totalCliente;
          clienteMayorDeuda = codCliente;
        }
      }

      // Imprimir datos por agencia
      print("\n===== AGENCIA $codigoAgencia =====");
      print("Estado: $codigoEstado");
      print("Clientes con pagarés pendientes: $clientesPendientes");
      print("Total adeudado en agencia: $deudaTotalAgencia Bs");
      print("Cliente con mayor deuda: $clienteMayorDeuda");
      print("----------------------------------");

      // Para cálculo por estado
      montoTotalEstado += deudaTotalAgencia;

      if (deudaTotalAgencia > maxDeudaAgencia) {
        maxDeudaAgencia = deudaTotalAgencia;
        codAgenciaMayor = codigoAgencia;
      }
      if (deudaTotalAgencia < minDeudaAgencia) {
        minDeudaAgencia = deudaTotalAgencia;
        codAgenciaMenor = codigoAgencia;
      }

      // Para el promedio nacional
      sumaMaximosAgencia += mayorDeudaCliente;
      contadorAgencias++;
    }

    // Imprimir datos por estado
    print("\n===== ESTADO $codigoEstado =====");
    print("Monto total adeudado: $montoTotalEstado Bs");
    print("Agencia con mayor deuda: $codAgenciaMayor");
    print("Agencia con menor deuda: $codAgenciaMenor");
    print("----------------------------------");
  }

  // Promedio nacional de deudas máximas de agencias
  double promedioNacional = sumaMaximosAgencia / contadorAgencias;

  print("\n===== RESULTADO NACIONAL =====");
  print("Promedio de máximas deudas por agencia: $promedioNacional Bs");
}
