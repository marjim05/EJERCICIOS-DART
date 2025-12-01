/*Una persona debe realizar un muestreo con 100 personas para determinar el promedio de peso de
los niños, jóvenes, adultos y viejos que existen en su zona habitacional. Para ello, conforme
encuentra a las personas introduce los datos a su computadora, la cual mediante un programa las
clasifica y despliega los cuatro promedios que la persona requiere. Las categorías se trabajan de
acuerdo a la siguiente tabla*/

void main () {
  int sumaNinos = 0, sumaJovenes = 0, sumaAdultos = 0, sumaViejos = 0;
  int countNinos = 0, countJovenes = 0, countAdultos = 0, countViejos = 0;

  for (int i = 1; i <= 100; i++) {
    int edad = i; // Simulación de la edad de la persona
    int peso = 20 + i; // Simulación del peso de la persona

    if (edad >= 0 && edad <= 12) {
      sumaNinos += peso;
      countNinos++;
    } 
    else if (edad >= 13 && edad <= 29) {
      sumaJovenes += peso;
      countJovenes++;
    } 
    else if (edad >= 30 && edad <= 59) {
      sumaAdultos += peso;
      countAdultos++;
    } 
    else if (edad >= 60) {
      sumaViejos += peso;
      countViejos++;
    }
  }

  double promedioNinos = countNinos > 0 ? sumaNinos / countNinos : 0;
  double promedioJovenes = countJovenes > 0 ? sumaJovenes / countJovenes : 0;
  double promedioAdultos = countAdultos > 0 ? sumaAdultos / countAdultos : 0;
  double promedioViejos = countViejos > 0 ? sumaViejos / countViejos : 0;

  print("Promedio de peso de niños: $promedioNinos");
  print("Promedio de peso de jóvenes: $promedioJovenes");
  print("Promedio de peso de adultos: $promedioAdultos");
  print("Promedio de peso de viejos: $promedioViejos");
}