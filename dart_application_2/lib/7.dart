//Dada una cantidad en metros, se requiere que la convierta a pies y pulgadas, considerando lo
//siguiente: 1 metro = 39.27 pulgadas; 1 pie = 12 pulgadas.

void main() {
  double metros = 10;

  double pulgadas = conversionPulgadas(metros);
  double pies = conversionPies(pulgadas);
  print("La conversion de $metros metros a pulgadas es: $pulgadas");
  print("La conversion de $metros metros a pies es: $pies");
}

double conversionPulgadas(double metros) {
  return metros * 39.27;
}

double conversionPies(double conversionPulgadas) {
  return conversionPulgadas / 12;
}
