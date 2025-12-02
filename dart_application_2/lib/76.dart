/*Se desea obtener el promedio de g grupos que están en un mismo año escolar, siendo que cada
grupo puede tener n alumnos que cada alumno puede llevar m materias y que en todas las materias
se promedian tres calificaciones para obtener el promedio de la materia. Lo que se desea es mostrar
el promedio de los grupos, el promedio de cada grupo y el promedio de cada alumno.*/

import 'dart:io';

void main() {
  double promedioGeneralGrupos = 0;
  int g; // cantidad de grupos

  stdout.write("Ingrese el número de grupos: ");
  g = int.parse(stdin.readLineSync()!);

  for (int grupo = 1; grupo <= g; grupo++) {
    print("\n--- Grupo $grupo ---");

    stdout.write("Cantidad de alumnos en el grupo $grupo: ");
    int n = int.parse(stdin.readLineSync()!);

    double acumuladoGrupo = 0;

    for (int alumno = 1; alumno <= n; alumno++) {
      print("\n  Alumno $alumno");

      stdout.write("  Cantidad de materias del alumno $alumno: ");
      int m = int.parse(stdin.readLineSync()!);

      double acumuladoAlumno = 0;

      for (int materia = 1; materia <= m; materia++) {
        print("    Materia $materia");

        double sumaNotas = 0;

        for (int nota = 1; nota <= 3; nota++) {
          stdout.write("      Nota $nota: ");
          double cal = double.parse(stdin.readLineSync()!);
          sumaNotas += cal;
        }

        double promedioMateria = sumaNotas / 3;
        print("      ➜ Promedio materia $materia: $promedioMateria");

        acumuladoAlumno += promedioMateria;
      }

      double promedioAlumno = acumuladoAlumno / m;
      print("  ➜ Promedio del alumno $alumno: $promedioAlumno");

      acumuladoGrupo += promedioAlumno;
    }

    double promedioGrupo = acumuladoGrupo / n;
    print("\n➜ Promedio del grupo $grupo: $promedioGrupo");

    promedioGeneralGrupos += promedioGrupo;
  }

  double promedioFinal = promedioGeneralGrupos / g;

  print("\n===============================");
  print(" PROMEDIO GENERAL DE TODOS LOS GRUPOS: $promedioFinal");
  print("===============================");
}

