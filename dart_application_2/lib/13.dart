// Determinar cuánto dinero hay en un banco según la cantidad de billetes de cada denominación.
void main() {
  int n1 = 3;
  int n2 = 4;
  int n3 = 5;
  int n4 = 2;
  int n5 = 6;
  int n6 = 10;
  int n7 = 8;
  int n8 = 20;

  int total = n1 * 50000 +
              n2 * 20000 +
              n3 * 10000 +
              n4 * 5000 +
              n5 * 2000 +
              n6 * 1000 +
              n7 * 500 +
              n8 * 100;

  print("Total en el banco: $total");
}
