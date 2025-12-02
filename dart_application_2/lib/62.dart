/*Para cada una de las empresas del País se tienen como datos: actividad, localización y número de
trabajadores.*/

void main() {
  List<int> actividades = [1, 2, 3, 1, 3, 2, 4, 5, 3, 2];
  List<int> localizaciones = [1, 2, 2, 3, 2, 4, 1, 3, 2, 3];
  List<int> trabajadores = [20, 50, 100, 30, 80, 60, 25, 12, 90, 55];

  int n = actividades.length; // cantidad de empresas


  int totalEmpresas = n;
  int empresasAgricolas = 0;
  int empresasMinerasSur = 0;

  List<int> sumaTrabajadores = List.filled(5, 0);
  List<int> contadorActividad = List.filled(5, 0);

  List<int> industrialesPorZona = List.filled(4, 0);

  for (int i = 0; i < n; i++) {
    int act = actividades[i];
    int loc = localizaciones[i];
    int trab = trabajadores[i];

    if (act == 1) empresasAgricolas++;

    if (act == 3 && loc == 2) empresasMinerasSur++;

    sumaTrabajadores[act - 1] += trab;
    contadorActividad[act - 1]++;

    if (act == 2) industrialesPorZona[loc - 1]++;
  }

  double porcentajeAgricolas = (empresasAgricolas / totalEmpresas) * 100;

  int totalMineras = contadorActividad[2];
  double porcentajeMinerasSur =
      totalMineras == 0 ? 0 : (empresasMinerasSur / totalMineras) * 100;

  List<double> promedios = List.filled(5, 0);

  int i = 0;
  while (i < 5) {
    if (contadorActividad[i] > 0) {
      promedios[i] = sumaTrabajadores[i] / contadorActividad[i];
    }
    i++;
  }

  int maxIndustriales = industrialesPorZona[0];
  int zonaMax = 1;

  i = 1;
  while (i < 4) {
    if (industrialesPorZona[i] > maxIndustriales) {
      maxIndustriales = industrialesPorZona[i];
      zonaMax = i + 1;
    }
    i++;
  }

  print("======== RESULTADOS ========");
  print("1. Porcentaje de empresas agrícolas: "
      "${porcentajeAgricolas.toStringAsFixed(2)}%");

  print("2. Porcentaje de empresas mineras del sur: "
      "${porcentajeMinerasSur.toStringAsFixed(2)}%");

  print("\n3. Promedio de trabajadores por tipo de actividad:");
  print("   1. Agrícola   → ${promedios[0].toStringAsFixed(2)}");
  print("   2. Industrial → ${promedios[1].toStringAsFixed(2)}");
  print("   3. Minera     → ${promedios[2].toStringAsFixed(2)}");
  print("   4. Pesquera   → ${promedios[3].toStringAsFixed(2)}");
  print("   5. Otra       → ${promedios[4].toStringAsFixed(2)}");

  print("\n4. Localización con más empresas industriales: Zona $zonaMax");
}

