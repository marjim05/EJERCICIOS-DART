// 36. Dada una cantidad entera de Bolívares, mostrar cuántos billetes de:
// 50000, 20000, 10000, 5000, 2000, 1000, 500, 100
// Se necesitan para desglosar esa cantidad.

import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> b = [50000, 20000, 10000, 5000, 2000, 1000, 500, 100];

  for (int i = 0; i < b.length; i++) {
    int c = n ~/ b[i];
    print(c);
    n = n % b[i];
  }
}
