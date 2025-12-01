// Calcular promedio general y promedio por materia en Matemática, Física y Química.
void main() {
  double examenMat = 90;
  double tareasMat = (80 + 85 + 90) / 3;

  double examenFis = 88;
  double tareasFis = (70 + 75) / 2;

  double examenQui = 92;
  double tareasQui = (85 + 80 + 90) / 3;

  double mat = (examenMat * 0.90) + (tareasMat * 0.10);
  double fis = (examenFis * 0.80) + (tareasFis * 0.20);
  double qui = (examenQui * 0.85) + (tareasQui * 0.15);

  double promedioGeneral = (mat + fis + qui) / 3;

  print("Promedio Matemática: $mat");
  print("Promedio Física: $fis");
  print("Promedio Química: $qui");
  print("Promedio General: $promedioGeneral");
}
