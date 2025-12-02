/*La Oficina Central de Estadística e Informática (OCEI) desea conocer cierta información sobre la
situación actual del país en cuanto a los niveles actuales de desempleo, analfabetismo y del potencial
de profesionales existentes en Venezuela. Los Estados son identificados por un código entero
positivo de dos (02) dígitos significativos. Las ciudades mediante un código de cuatro (04) dígitos
significativos, de los cuales los dos últimos dígitos corresponden al Estado al cual pertenecen. Los
municipios se identifican con un código de cuatro (06) dígitos significativos, de los cuales los primeros
dígitos corresponden al código de Estado y los dos siguientes dígitos a los dos primeros dígitos del
código de la ciudad en la cual están ubicados. Los datos fueron tomados de personas mayores de 18
años y los mismos son los siguientes: edad; nivel de educación (N: ninguna, B: básica, S: secundaria,
P: profesional); situación actual (D: desempleado, E: empleado). Se requiere que desarrolle un
programa que cumpla con lo siguiente:
• Determinar e imprimir por municipio el código y la cantidad de personas con las siguientes
características: desempleado, sin ningún nivel de educación y mayores de 25 años.

1
7

• Calcular e imprimir el código de las ciudades cuyas personas establecidas en la parte anterior sean
más del 50%.
• Calcular e imprimir el código del Estado con mayor porcentaje de profesionales desempleados.*/

void main() {

  List<Map<String, dynamic>> personas = [
    {"edad": 30, "nivel": "N", "sit": "D", "estado": 10, "ciudad": 1012, "municipio": 101205},
    {"edad": 28, "nivel": "N", "sit": "D", "estado": 10, "ciudad": 1012, "municipio": 101205},
    {"edad": 40, "nivel": "P", "sit": "D", "estado": 10, "ciudad": 1013, "municipio": 101304},
    {"edad": 22, "nivel": "S", "sit": "E", "estado": 10, "ciudad": 1013, "municipio": 101304},
    {"edad": 50, "nivel": "N", "sit": "D", "estado": 20, "ciudad": 2044, "municipio": 204412},
    {"edad": 45, "nivel": "P", "sit": "D", "estado": 20, "ciudad": 2044, "municipio": 204412},
    {"edad": 33, "nivel": "P", "sit": "E", "estado": 20, "ciudad": 2044, "municipio": 204412},
  ];

//municipio conteo D+N+>25
  Map<int, int> municipioConteo = {};

  for (var p in personas) {
    bool cumple = p["sit"] == "D" && p["nivel"] == "N" && p["edad"] > 25;

    if (cumple) {
      int muni = p["municipio"];
      municipioConteo[muni] = (municipioConteo[muni] ?? 0) + 1;
    }
  }

  print("===== PERSONAS POR MUNICIPIO (D + N + >25 años) =====");
  municipioConteo.forEach((muni, cant) {
    print("Municipio $muni → $cant personas");
  });

//ciudades con más del 50% de personas D+N+>25
  // Primero contamos total por ciudad
  Map<int, int> totalCiudad = {};
  Map<int, int> ciudadCondicion = {};

  for (var p in personas) {
    int ciudad = p["ciudad"];

    totalCiudad[ciudad] = (totalCiudad[ciudad] ?? 0) + 1;

    bool cumple = p["sit"] == "D" && p["nivel"] == "N" && p["edad"] > 25;

    if (cumple) {
      ciudadCondicion[ciudad] = (ciudadCondicion[ciudad] ?? 0) + 1;
    }
  }

  print("\n===== CIUDADES CON MÁS DEL 50% DE PERSONAS D+N+>25 =====");

  for (var ciudad in totalCiudad.keys) {
    int total = totalCiudad[ciudad]!;
    int cumplen = ciudadCondicion[ciudad] ?? 0;

    double porcentaje = (cumplen / total) * 100;

    if (porcentaje > 50) {
      print("Ciudad $ciudad → ${porcentaje.toStringAsFixed(2)}%");
    }
  }

// estado con mayor porcentaje de profesionales desempleados
  Map<int, int> totalEstado = {};
  Map<int, int> estadoProfDesemp = {};

  for (var p in personas) {
    int est = p["estado"];
    totalEstado[est] = (totalEstado[est] ?? 0) + 1;

    if (p["nivel"] == "P" && p["sit"] == "D") {
      estadoProfDesemp[est] = (estadoProfDesemp[est] ?? 0) + 1;
    }
  }

  print("\n===== ESTADO CON MAYOR % DE PROFESIONALES DESEMPLEADOS =====");

  int estadoMax = -1;
  double maxPorcentaje = -1;

  for (var est in totalEstado.keys) {
    int total = totalEstado[est]!;
    int profD = estadoProfDesemp[est] ?? 0;

    double porcentaje = (profD / total) * 100;

    if (porcentaje > maxPorcentaje) {
      maxPorcentaje = porcentaje;
      estadoMax = est;
    }
  }

  print("Estado con mayor porcentaje: $estadoMax → ${maxPorcentaje.toStringAsFixed(2)}%");
}
