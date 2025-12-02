/*Cinco miembros de un club contra la obesidad desean saber cuánto han bajado o subido de peso
desde la última vez que se reunieron. Para esto se debe realizar un ritual de pesaje en donde cada
uno se pesa en diez básculas distintas para así tener el promedio más exacto de su peso. Si existe
diferencia positiva entre este promedio de peso y el peso de la última vez que se reunieron, significa
que subieron de peso. Pero si la diferencia es negativa, significa que bajaron. Lo que el problema
requiere es que por cada persona se imprima un mensaje que diga SUBIO ó BAJO y la cantidad de
kilos que subió o bajó de peso.*/

void main (){
  List<String> miembros = ['Ana', 'Luis', 'María', 'Carlos', 'Sofía'];
  List<double> pesosAnteriores = [70.0, 85.0, 60.0, 90.0, 55.0];
  List<List<double>> pesosActuales = [
    [69.5, 70.2, 70.0, 69.8, 70.1, 69.9, 70.3, 70.0, 69.7, 70.2],
    [84.5, 85.3, 85.0, 84.8, 85.1, 85.2, 84.9, 85.0, 85.4, 85.1],
    [60.5, 60.2, 60.0, 60.3, 60.1, 60.4, 60.2, 60.0, 60.3, 60.1],
    [91.0, 90.5, 90.8, 90.7, 90.6, 90.9, 90.4, 90.8, 90.5, 90.7],
    [54.5, 55.2, 55.0, 55.1, 55.3, 55.0, 55.4, 55.1, 55.2, 55.0],
  ];

  for (int i = 0; i < miembros.length; i++) {
    double sumaPesos = pesosActuales[i].reduce((a, b) => a + b);
    double promedioPesoActual = sumaPesos / pesosActuales[i].length;
    double diferencia = promedioPesoActual - pesosAnteriores[i];

    if (diferencia > 0) {
      print('${miembros[i]} SUBIO ${diferencia.toStringAsFixed(2)} kg');
    } else if (diferencia < 0) {
      print('${miembros[i]} BAJO ${(-diferencia).toStringAsFixed(2)} kg');
    } else {
      print('${miembros[i]} NO CAMBIO de peso');
    }
  }
}