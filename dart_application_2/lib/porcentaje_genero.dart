void main() {
  var estudiantes = 56;
  var hombres = 12;
  var mujeres = estudiantes - hombres;
  var porcentajeHombres = (hombres / estudiantes) * 100;
  var porcentajeMujeres = (mujeres / estudiantes) * 100;

  print("Total estudiantes: $estudiantes");
  print("Mujeres: $mujeres");
  print("Hombres: $hombres");
  print(
    "Le porcentaje de hombres es: $porcentajeHombres y el porcentaje de mujeres es $porcentajeMujeres",
  );
}
