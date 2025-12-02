/*Una estación climática proporciona un par de temperaturas diarias (máx, min), el rango normal de
temperatura es entre 14 y 30 ° C. La pareja fin de temperaturas es 0,0. Se pide determinar:
g. El número de días cuyas temperaturas se han proporcionado.
h. Las medias máxima y mínima.
i. Número de errores que ingresaron (temperaturas fuera de rango).
j. Porcentaje que representan los errores ingresados.*/

void main (){
  List<List<int>> temperaturas = [
    [20, 15],
    [25, 18],
    [30, 14],
    [32, 16], // Error
    [28, 12], // Error
    [22, 19],
    [0, 0]    // Fin de datos
  ];

  int totalDias = 0;
  int sumaMaximas = 0;
  int sumaMinimas = 0;
  int errores = 0;

  for (var temp in temperaturas) {
    int maxTemp = temp[0];
    int minTemp = temp[1];

    if (maxTemp == 0 && minTemp == 0) {
      break; // Fin de datos
    }

    totalDias++;

    if (maxTemp < 14 || maxTemp > 30 || minTemp < 14 || minTemp > 30) {
      errores++;
    } else {
      sumaMaximas += maxTemp;
      sumaMinimas += minTemp;
    }
  }

  double mediaMaxima = totalDias - errores > 0 ? sumaMaximas / (totalDias - errores) : 0;
  double mediaMinima = totalDias - errores > 0 ? sumaMinimas / (totalDias - errores) : 0;
  double porcentajeErrores = totalDias > 0 ? (errores / totalDias) * 100 : 0;

  print('Número de días: $totalDias');
  print('Media máxima: ${mediaMaxima.toStringAsFixed(2)}');
  print('Media mínima: ${mediaMinima.toStringAsFixed(2)}');
  print('Número de errores: $errores');
  print('Porcentaje de errores: ${porcentajeErrores.toStringAsFixed(2)}%');
}