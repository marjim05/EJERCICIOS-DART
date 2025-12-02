/*Desarrolle un programa que capture las notas del primer parcial de Matemática, Programación
e inglés de un grupo indeterminado de alumnos y calcule e imprima:
a. Nota menor de Programación.
b. Porcentaje de alumnos que no presentaron el examen de inglés, respecto a los que sí
presentaron.
c. Número de alumnos que aprobaron todas las materias.
d. Promedio general en Programación.
e. Porcentaje de alumnos que reprobaron Matemática, respecto al total de alumnos que
presentaron el examen de matemática.*/

void main() {
  // Datos simulados: cada alumno tiene 3 notas
  // Si la nota es -1 significa que NO presentó el examen
  List<Map<String, int>> alumnos = [
    {"mat": 15, "prog": 18, "ing": 12},
    {"mat": 8, "prog": 5, "ing": -1},
    {"mat": 20, "prog": 19, "ing": 17},
    {"mat": 10, "prog": 7, "ing": -1},
    {"mat": 4, "prog": 15, "ing": 14},
    {"mat": 12, "prog": 8, "ing": 0},
  ];

  int totalAlumnos = alumnos.length;
  int i = 0;

  // Variables requeridas
  int notaMenorProg = 9999;

  int presentaronIngles = 0;
  int noPresentaronIngles = 0;

  int aprobaronTodas = 0;

  int sumaProg = 0;
  int contProg = 0;

  int reprobaronMat = 0;
  int presentaronMat = 0;

  // Bucle while para recorrer los datos
  while (i < totalAlumnos) {
    int mat = alumnos[i]["mat"]!;
    int prog = alumnos[i]["prog"]!;
    int ing = alumnos[i]["ing"]!;

    // a. Nota menor de Programación
    if (prog < notaMenorProg) {
      notaMenorProg = prog;
    }

    // b. Presentaron o no inglés
    if (ing == -1) {
      noPresentaronIngles++;
    } else {
      presentaronIngles++;
    }

    // c. Alumnos que aprobaron todas (nota >= 10)
    if (mat >= 10 && prog >= 10 && ing >= 10) {
      aprobaronTodas++;
    }

    // d. Promedio general en Programación
    sumaProg += prog;
    contProg++;

    // e. Reprobaron matemática
    if (mat != -1) {
      presentaronMat++;
      if (mat < 10) {
        reprobaronMat++;
      }
    }

    i++;
  }

  // Cálculos finales
  double porcentajeNoIngles =
      (presentaronIngles == 0) ? 0 : (noPresentaronIngles * 100 / presentaronIngles);

  double promedioProg = sumaProg / contProg;

  double porcentajeReprobaronMat =
      (presentaronMat == 0) ? 0 : (reprobaronMat * 100 / presentaronMat);

  // Resultados
  print("\n----- RESULTADOS -----");
  print("a. Nota menor de Programación: $notaMenorProg");
  print("b. % de alumnos que NO presentaron Inglés: ${porcentajeNoIngles.toStringAsFixed(2)}%");
  print("c. Alumnos que aprobaron todas las materias: $aprobaronTodas");
  print("d. Promedio general en Programación: ${promedioProg.toStringAsFixed(2)}");
  print("e. % que reprobaron Matemática: ${porcentajeReprobaronMat.toStringAsFixed(2)}%");
}
