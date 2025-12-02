/*Dos números A y B son amigos, cuando la suma de los divisores menores que A es igual a B, al mismo
tiempo cuando la suma de los divisores menores que B es igual a A. Los dos menores números amigos
son 220 y 284, debido a que:
a. divisores de 220 1+2+4+5+10+11+20+22+44+45+110 = 284
b. divisores de 284 1+2+4+71+142 = 220
c. los siguientes pares de amigos son: 1184 y 1210; 2620 y 2924; 5020 y 5564, etc.*/

void main (){
  int limite = 10000;

  for (int a = 1; a < limite; a++) {
    int sumaDivisoresA = 0;
    for (int i = 1; i <= a ~/ 2; i++) {
      if (a % i == 0) {
        sumaDivisoresA += i;
      }
    }

    int b = sumaDivisoresA;
    if (b > a && b < limite) {
      int sumaDivisoresB = 0;
      for (int j = 1; j <= b ~/ 2; j++) {
        if (b % j == 0) {
          sumaDivisoresB += j;
        }
      }

      if (sumaDivisoresB == a) {
        print('Números amigos encontrados: $a y $b');
      }
    }
  }
}