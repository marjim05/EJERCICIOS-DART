/*Un investigador acaba de aplicar 64 cuestionarios de 23 preguntas cada uno; donde cada pregunta
permite escoger entre 1 y 5, a un grupo de personas que constituyen su población. Se desea que
elabore un Programa, para ayudar al Investigador a procesar toda la información recopilada, para
ello tome en cuenta lo siguiente: necesita calcular el promedio de cada instrumento o escala para lo
cual es necesaria la fórmula: PT/NT, donde PT representa el total de puntos de cada cuestionario que

1
0

resulta de sumar los valores que el encuestado, encerró entre un círculo y NT es el total de preguntas
del instrumento. Estos valores se deben acumular, para al final calcular y mostrar lo siguiente:
a. La media o promedio de todos los cuestionarios (promedio general).
b. El promedio más alto obtenido y número de instrumento a que corresponde.
c. El promedio más bajo obtenido y número de instrumento a que corresponde.
d. Porcentaje de cuestionarios que obtuvieron un promedio inferior a 3, respecto a los que tuvieron un
promedio superior a 4.
e. Porcentaje de cuestionarios que obtuvieron un promedio entre 4.5 y 5 respecto al total procesado.*/

void main() {
  int totalCuestionarios = 64;
  int totalPreguntas = 23;

  double sumaPromedios = 0;
  double promedioMasAlto = 0;
  int numeroCuestionarioAlto = 0;
  double promedioMasBajo = double.infinity;
  int numeroCuestionarioBajo = 0;
  int countInferior3 = 0;
  int countSuperior4 = 0;
  int countEntre45y5 = 0;

  for (int i = 1; i <= totalCuestionarios; i++) {
    // Simulación de la suma de puntos obtenidos en el cuestionario
    int puntosTotales = (i * 3) % (totalPreguntas * 5 + 1); 
    double promedio = puntosTotales / totalPreguntas;

    sumaPromedios += promedio;

    if (promedio > promedioMasAlto) {
      promedioMasAlto = promedio;
      numeroCuestionarioAlto = i;
    }

    if (promedio < promedioMasBajo) {
      promedioMasBajo = promedio;
      numeroCuestionarioBajo = i;
    }

    if (promedio < 3) {
      countInferior3++;
    } else if (promedio > 4) {
      countSuperior4++;
    }

    if (promedio >= 4.5 && promedio <= 5) {
      countEntre45y5++;
    }
  }

  double promedioGeneral = sumaPromedios / totalCuestionarios;
  double porcentajeInferior3vsSuperior4 = (countSuperior4 > 0)
      ? (countInferior3 / countSuperior4) * 100
      : 0;
  double porcentajeEntre45y5 =
      (countEntre45y5 / totalCuestionarios) * 100;

  print("a. Promedio general: $promedioGeneral");
  print(
      "b. Promedio más alto: $promedioMasAlto del cuestionario $numeroCuestionarioAlto");
  print(
      "c. Promedio más bajo: $promedioMasBajo del cuestionario $numeroCuestionarioBajo");
  print(
      "d. Porcentaje de cuestionarios con promedio inferior a 3 respecto a los superiores a 4: $porcentajeInferior3vsSuperior4}%");
  print(
      "e. Porcentaje de cuestionarios con promedio entre 4.5 y 5: $porcentajeEntre45y5%");
}