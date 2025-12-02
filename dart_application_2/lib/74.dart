/*La bloquera “El Milagro” es una pequeña empresa dedicada a la fabricación de bloques de cemento
para construcción. Actualmente cuenta con una plantilla de obreros, cada uno de los cuales tiene un
número X de unidades a producir por semana. La secretaria registra, cada día, el número de bloques
que produjo cada obrero, para totalizar el sábado lo producido en la semana. De cada obrero se
conoce: nombre y cantidad de unidades producidas por día. Desarrolle un programa, que calcule y
muestre:
• Por obrero:
o Nombre
o Total, producido en la semana.
o Porcentaje que representa la producción semanal, respecto al límite
establecido.
• En general:
o Porcentaje de obreros que alcanzaron o superaron el número de unidades
producidas establecidas.
o Nombre del obrero que más produjo y cantidad producida.
o Promedio de producción de la bloquera en la semana.*/

void main() {
  const limite = 1000;
  List<Map<String,dynamic>> obreros = [
    {
      'nombre': 'Juan',
      'produccion': [300, 250, 200, 150, 100, 180],
    },
    {
      'nombre': 'David',
      'produccion': [400, 350, 300, 250, 200, 220],
    },
    {
      'nombre': 'Luis',
      'produccion': [200, 150, 100, 80, 70, 90],
    },
  ];

  int obrerosCumplieron = 0;
  String obreroMayor = '';
  int mayorProduccion = 0;
  int sumaTotalProduccion = 0;

  for (var obrero in obreros) {
    String nombre = obrero['nombre'];
    int totalSemana = 0;
    double porcentaje = (totalSemana / limite) * 100;
    for (int produccionDiaria in obrero['produccion']) {
      totalSemana += produccionDiaria;
    }
    sumaTotalProduccion += totalSemana;

        print('Obrero: $nombre');
    print('Total producido en la semana: $totalSemana bloques');
    print('Porcentaje respecto al límite: ${porcentaje.toStringAsFixed(2)}%');
    print('---');

    if (totalSemana >= limite) {
      obrerosCumplieron++;
    }

    if (totalSemana > mayorProduccion) {
      mayorProduccion = totalSemana;
      obreroMayor = nombre;
    }
  }

  double promedioProduccion = sumaTotalProduccion / obreros.length;
  print('Promedio de producción semanal de la bloquera: ${promedioProduccion.toStringAsFixed(2)} bloques');
  double porcentajeObrerosCumplieron = (obrerosCumplieron / obreros.length) * 100;
  print('Porcentaje de obreros que alcanzaron o superaron el límite: ${porcentajeObrerosCumplieron.toStringAsFixed(2)}%');
  print('Obrero que más produjo: $obreroMayor con $mayorProduccion bloques');
}
