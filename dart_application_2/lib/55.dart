/*Calcule e imprima el número de términos necesarios para que el valor de la siguiente sumatoria se
aproxime los más cercanamente a 1000 sin que lo exceda: ∑((k∧2+1)/k), donde k=1,2,3,4,...*/

void main() {
  double suma = 0.0;
  int terminos = 0;

  for (int k = 1; ; k++) {
    double termino = (k * k + 1) / k;
    if (suma + termino > 1000) {
      break;
    }
    suma += termino;
    terminos++;
  }

  print("Número de términos necesarios: $terminos");
  print("Suma aproximada: $suma");
}