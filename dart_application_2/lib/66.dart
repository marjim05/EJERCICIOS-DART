/*Una aerolínea está interesada en diseñar un software que le permita calcular y acumular los montos
a pagar por equipaje para cada uno de sus vuelos. El algoritmo debe procesar todos los vuelos del
día con sus respectivos pasajeros y maletas, las cuales están identificadas por un código. Las tarifas
por kilogramos se muestran en la siguiente tabla:
PESOS TARIFA POR Kgs.
1 a 3 Kgs. 0
3.01 a 6 Kgs 600
6.01 a 9 Kgs 1200
9.01 a 12 Kgs 1500
12.01 a 15 Kgs 2000
más de 15 Kgs. 2500

Se quiere un algoritmo en seudocódigo o diagrama estructurado que permita:

i. Imprimir por pasajero el número de vuelo, el código de abordo, el nombre, el total
de kilogramos del equipaje con su respectivo monto a pagar.
ii. Imprimir por pasajero el número de vuelo, el nombre y el código de la maleta con
mayor peso.

1
3

iii. Imprimir para cada vuelo el número de vuelo, el código de abordo, el nombre y el
peso total para el pasajero con mayor y menor peso total del equipaje.
iv. Imprimir para cada vuelo el número de vuelo y el monto total cancelado por
equipaje.
v. Imprimir el porcentaje de pasajeros que no pagaron por equipaje.

NOTA: No se podrán utilizar vectores ni matrices.*/

void main() {
  // Número de vuelos a procesar (simulado)
  int totalVuelos = 2;

  // Contadores generales
  int totalPasajeros = 0;
  int totalPasajerosSinPagar = 0;

  // Función interna sin vectores
  int tarifaPorPeso(double peso) {
    if (peso <= 3) return 0;
    if (peso <= 6) return 600;
    if (peso <= 9) return 1200;
    if (peso <= 12) return 1500;
    if (peso <= 15) return 2000;
    return 2500;
  }

  // Procesar cada vuelo
  for (int vuelo = 1; vuelo <= totalVuelos; vuelo++) {
    print("\n===== PROCESANDO VUELO $vuelo =====");

    // Simulación: cantidad de pasajeros por vuelo
    int cantidadPasajeros = (vuelo == 1) ? 2 : 3;

    double montoTotalVuelo = 0;

    // Variables para el pasajero con mayor y menor peso
    double maxPesoTotal = -1;
    String nomMax = "";
    String codMax = "";

    double minPesoTotal = 999999;
    String nomMin = "";
    String codMin = "";

    // Procesar pasajeros
    for (int p = 1; p <= cantidadPasajeros; p++) {
      print("\n--- Pasajero $p del vuelo $vuelo ---");

      // Datos simulados por pasajero (SIN vectores)
      String codigoAbordo = "COD$vuelo$p";
      String nombre = "Pasajero_$vuelo$p";

      // Cantidad de maletas simulada
      int numMaletas = (p == 1) ? 2 : 3;

      double pesoTotalPasajero = 0;
      double montoPasajero = 0;

      // Maleta más pesada del pasajero
      double maxMaletaPeso = -1;
      String maxMaletaCodigo = "";

      // Procesar cada maleta
      for (int m = 1; m <= numMaletas; m++) {
        String codigoMaleta = "M$vuelo$p$m";

        // Peso simulado SIN vectores
        double peso = 3.0 + (m * 2) + (p * 0.5);

        // Acumular
        pesoTotalPasajero += peso;

        int tarifa = tarifaPorPeso(peso);
        montoPasajero += tarifa;

        // Maleta de mayor peso
        if (peso > maxMaletaPeso) {
          maxMaletaPeso = peso;
          maxMaletaCodigo = codigoMaleta;
        }
      }

      // i. Datos del pasajero
      print("Vuelo: $vuelo");
      print("Código de abordo: $codigoAbordo");
      print("Nombre: $nombre");
      print("Peso total equipaje: $pesoTotalPasajero kg");
      print("Monto a pagar: Bs. $montoPasajero");

      // ii. Maleta más pesada del pasajero
      print("Maleta más pesada: $maxMaletaCodigo (Peso: $maxMaletaPeso kg)");

      // Contadores generales
      totalPasajeros++;
      if (montoPasajero == 0) {
        totalPasajerosSinPagar++;
      }

      // iii. Pasajero con mayor y menor peso en el vuelo
      if (pesoTotalPasajero > maxPesoTotal) {
        maxPesoTotal = pesoTotalPasajero;
        nomMax = nombre;
        codMax = codigoAbordo;
      }
      if (pesoTotalPasajero < minPesoTotal) {
        minPesoTotal = pesoTotalPasajero;
        nomMin = nombre;
        codMin = codigoAbordo;
      }

      // Acumular para el vuelo
      montoTotalVuelo += montoPasajero;
    }

    // iii. Imprimir mayor y menor peso del vuelo
    print("\n>>> RESULTADOS DEL VUELO $vuelo <<<");
    print("Pasajero con MAYOR peso: $nomMax ($codMax) con $maxPesoTotal kg");
    print("Pasajero con MENOR peso: $nomMin ($codMin) con $minPesoTotal kg");

    // iv. Monto total del vuelo
    print("Monto total cancelado por equipaje: Bs. $montoTotalVuelo");
  }

  // v. Porcentaje de pasajeros que NO pagaron
  double porcentajeNoPagan =
      (totalPasajerosSinPagar * 100) / totalPasajeros;

  print("\n===== RESULTADO GENERAL DEL DÍA =====");
  print("Total de pasajeros: $totalPasajeros");
  print("Pasajeros que no pagaron: $totalPasajerosSinPagar");
  print("Porcentaje que no pagó: ${porcentajeNoPagan.toStringAsFixed(2)}%");
}
