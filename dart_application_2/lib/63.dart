/*En una encuesta de alumnos se tomaron los siguientes datos: edad, sexo, estado civil, y especialidad
que cursa. La empresa encuestadora, desea generar las siguientes estadísticas:

1
2

a. Promedio de edad de las mujeres.
b. Promedio de edad de los hombres.
c. Cantidad de hombres y de mujeres encuestados.
d. Porcentaje de personas para cada uno de los tipos de estado civil, respecto al total.
e. Cantidad de alumnos por especialidad y porcentaje que representan.
f. Porcentaje de mujeres adultas, tomando en cuenta que los adultos son los que tienen más
de 21 años.
g. Porcentaje de hombres jóvenes, tomando en cuenta que estos son los que tienen menos
de 21 años, pero más de 17.
h. Cantidad de hombres solteros y cantidad de mujeres solteras.*/

void main() {
  List<int> edades = [20, 22, 19, 25, 18, 30, 21, 23, 17, 24];
  List<String> sexos = ['F', 'M', 'F', 'M', 'M', 'F', 'M', 'F', 'M', 'F'];
  List<String> estadosCiviles = [
    'S',
    'C',
    'S',
    'C',
    'S',
    'D',
    'C',
    'S',
    'S',
    'C',
  ];
  List<int> especialidades = [1, 2, 1, 3, 2, 1, 3, 2, 1, 3];
  int n = edades.length;
  int mujeres = 0, hombres = 0, sumaEdadesMujeres = 0, sumaEdadesHombres = 0;

  //Estado civil
  List<int> contadorEstadoCivil = List.filled(3, 0);

  //Especialidades
  List<int> contadorEspecialidades = List.filled(3, 0);

  //Mujeres adultas
  int mujeresAdultas = 0;

  //Hombres jóvenes
  int hombresJovenes = 0;

  //Hombres y mujeres solteros
  int hombresSolteros = 0, mujeresSolteras = 0;

  for (int i = 0; i < n; i++) {
    int edad = edades[i];
    String sexo = sexos[i];
    String estadoCivil = estadosCiviles[i];
    int especialidad = especialidades[i];

    //Cantidad y promedio de edades por sexo
    if (sexo == 'F') {
      mujeres++;
      sumaEdadesMujeres += edad;
      if (edad > 21) mujeresAdultas++;
      if (estadoCivil == 'S') mujeresSolteras++;
    } else {
      hombres++;
      sumaEdadesHombres += edad;
      if (edad < 21 && edad > 17) hombresJovenes++;
      if (estadoCivil == 'S') hombresSolteros++;
      contadorEstadoCivil[estadoCivil == 'C'
          ? 1
          : estadoCivil == 'D'
          ? 2
          : 0]++;
      contadorEspecialidades[especialidad - 1]++;
    }

    //Promedio de edad de  mujeres
    double promedioEdadMujeres = mujeres > 0 ? sumaEdadesMujeres / mujeres : 0;

    //Promedio de edad de hombres
    double promedioEdadHombres = hombres > 0 ? sumaEdadesHombres / hombres : 0;
    //Porcentaje de estado civil
    List<double> porcentajeEstadoCivil = List.filled(3, 0);
    for (int j = 0; j < 3; j++) {
      porcentajeEstadoCivil[j] = (contadorEstadoCivil[j] / n) * 100;
    }
    //Porcentaje de especialidades
    List<double> porcentajeEspecialidades = List.filled(3, 0);
    for (int j = 0; j < 3; j++) {
      porcentajeEspecialidades[j] = (contadorEspecialidades[j] / n) * 100;
    }
    //Porcentaje de mujeres adultas
    double porcentajeMujeresAdultas = mujeres > 0
        ? (mujeresAdultas / mujeres) * 100
        : 0;
    //Porcentaje de hombres jóvenes
    double porcentajeHombresJovenes = hombres > 0
        ? (hombresJovenes / hombres) * 100
        : 0;

    print("======== RESULTADOS ========");
    print(
      "a. Promedio de edad de las mujeres: "
      "${promedioEdadMujeres.toStringAsFixed(2)} años",
    );
    print(
      "b. Promedio de edad de los hombres: "
      "${promedioEdadHombres.toStringAsFixed(2)} años",
    );
    print("c. Cantidad de mujeres: $mujeres");
    print("   Cantidad de hombres: $hombres");
    print("d. Porcentaje de estado civil:");
    print("   Solteros: ${porcentajeEstadoCivil[0].toStringAsFixed(2)}%");
    print("   Casados: ${porcentajeEstadoCivil[1].toStringAsFixed(2)}%");
    print("   Divorciados: ${porcentajeEstadoCivil[2].toStringAsFixed(2)}%");
    print("e. Cantidad de alumnos por especialidad y porcentaje:");
    for (int j = 0; j < 3; j++) {
      print(
        "   Especialidad ${j + 1}: ${contadorEspecialidades[j]} "
        "alumnos (${porcentajeEspecialidades[j].toStringAsFixed(2)}%)",
      );
    }
    print(
      "f. Porcentaje de mujeres adultas: "
      "${porcentajeMujeresAdultas.toStringAsFixed(2)}%",
    );
    print(
      "g. Porcentaje de hombres jóvenes: "
      "${porcentajeHombresJovenes.toStringAsFixed(2)}%",
    );
    print("h. Cantidad de hombres solteros: $hombresSolteros");
    print("   Cantidad de mujeres solteras: $mujeresSolteras");
  }
}
