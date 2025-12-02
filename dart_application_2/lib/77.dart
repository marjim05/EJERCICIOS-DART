/*Desarrolle un algoritmo o programa que partiendo de la cantidad de habitantes que tiene cada uno
de los M municipios de los 5 principales Estados del País, calcule y muestre:
a. Estado con mayor población (nombre y cantidad),
b. Estado con menor población (nombre y cantidad),
c. Porcentaje que representan el total de los habitantes de los 5 Estados, respecto al total del
País y
d. Promedio de habitantes por Estado.*/

void main() {
  double totalPais = 6300000;
  Map<String, int> estados = {
    'Estado1': 1500000,
    'Estado2': 800000,
    'Estado3': 2300000,
    'Estado4': 1200000,
    'Estado5': 500000,
  };

  String estadoMayor = '';
  String estadoMenor = '';
  for (var estado in estados.entries) {
    if (estadoMayor == '' || estado.value > estados[estadoMayor]!) {
      estadoMayor = estado.key;
    }
    if (estadoMenor == '' || estado.value < estados[estadoMenor]!) {
      estadoMenor = estado.key;
    }
  }
  double porcentajeTotal = (estados.values.reduce((a, b) => a + b) / totalPais) * 100;
  double promedioHabitantes = estados.values.reduce((a, b) => a + b) / estados.length;
  print('Estado con mayor población: $estadoMayor (${estados[estadoMayor]})');
  print('Estado con menor población: $estadoMenor (${estados[estadoMenor]})');
  print('Porcentaje del total de habitantes respecto al país: ${porcentajeTotal.toStringAsFixed(2)}%');
  print('Promedio de habitantes por Estado: ${promedioHabitantes.toStringAsFixed(2)}');
}
