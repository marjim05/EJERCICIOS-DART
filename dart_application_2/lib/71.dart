/*La UNICEF desea obtener información estadística sobre los orfanatorios ubicados dentro de la
República y sobre los niños huérfanos internados en esos orfanatorios. Por cada niño se conoce:
sexo, edad, nombre del orfanatorio y estado de la República al que pertenece el Orfanatorio. Escriba
un Programa para calcular y mostrar lo siguiente:
a. Porcentaje de huérfanos del Estado Táchira y del Distrito Capital respecto al total del País.
b. Número de huérfanos en cada grupo. Los grupos se definen según la Edad:
Grupo 1: menores de 1 año
Grupo 2: edad comprendida entre 1 y 3 años
Grupo 3: edad comprendida entre 4 y 6 años
Grupo 4: mayores de 6 años
c. Cantidad de niños y niñas y porcentaje que representa cada uno.*/

void main (){
  List<Map<String, dynamic>> ninos = [
    {'sexo': 'M', 'edad': 2, 'orfanatorio': 'Orfanato A', 'estado': 'Táchira'},
    {'sexo': 'F', 'edad': 5, 'orfanatorio': 'Orfanato B', 'estado': 'Distrito Capital'},
    {'sexo': 'M', 'edad': 0, 'orfanatorio': 'Orfanato C', 'estado': 'Caracas'},
    {'sexo': 'F', 'edad': 7, 'orfanatorio': 'Orfanato D', 'estado': 'Táchira'},
    {'sexo': 'M', 'edad': 3, 'orfanatorio': 'Orfanato E', 'estado': 'Distrito Capital'},
  ];

  int totalNinos = ninos.length;
  int totalTachira = 0;
  int totalDistritoCapital = 0;
  int grupo1 = 0;
  int grupo2 = 0;
  int grupo3 = 0;
  int grupo4 = 0;
  int totalMujeres = 0;
  int totalHombres = 0;

  for (var nino in ninos) {
    if (nino['estado'] == 'Táchira') {
      totalTachira++;
    } else if (nino['estado'] == 'Distrito Capital') {
      totalDistritoCapital++;
    }

    int edad = nino['edad'];
    if (edad < 1) {
      grupo1++;
    } else if (edad >= 1 && edad <= 3) {
      grupo2++;
    } else if (edad >= 4 && edad <= 6) {
      grupo3++;
    } else {
      grupo4++;
    }

    if (nino['sexo'] == 'F') {
      totalMujeres++;
    } else {
      totalHombres++;
    }
  }

  double porcentajeTachira = (totalTachira / totalNinos) * 100;
  double porcentajeDistritoCapital = (totalDistritoCapital / totalNinos) * 100;
  double porcentajeMujeres = (totalMujeres / totalNinos) * 100;
  double porcentajeHombres = (totalHombres / totalNinos) * 100;

  print('Porcentaje de huérfanos en Táchira: ${porcentajeTachira.toStringAsFixed(2)}%');
  print('Porcentaje de huérfanos en Distrito Capital: ${porcentajeDistritoCapital.toStringAsFixed(2)}%');
  print('Número de huérfanos en Grupo 1 (menores de 1 año): $grupo1');
  print('Número de huérfanos en Grupo 2 (1-3 años): $grupo2');
  print('Número de huérfanos en Grupo 3 (4-6 años): $grupo3');
  print('Número de huérfanos en Grupo 4 (mayores de 6 años): $grupo4');
  print('Cantidad de niñas: $totalMujeres, Porcentaje: ${porcentajeMujeres.toStringAsFixed(2)}%');
  print('Cantidad de niños: $totalHombres, Porcentaje: ${porcentajeHombres.toStringAsFixed(2)}%');
}