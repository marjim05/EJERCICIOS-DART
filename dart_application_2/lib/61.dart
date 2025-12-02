/*Diseñe un algoritmo o programa que permita calcular la multiplicación de dos números, utilizando el
método de la multiplicación Rusa, el cual consiste en multiplicar por dos el multiplicando y dividir
entre dos el multiplicador hasta que el multiplicador tome el valor 1. Durante este proceso, se deben
sumar todos los multiplicandos correspondientes a multiplicadores impares y este resultado es el de
la multiplicación. Ejemplo:
a. 25 x 7 = 175 (multiplicador = 25, multiplicando = 7)
b. 25 7
c. 12 14
d. 6 28 suma= 7 + 56 + 112 = 175
e. 3 56
f. 1 112*/

void main() {
  int multiplicador = 25;
  int multiplicando = 7;
  int resultado = 0;

  print('Multiplicador\tMultiplicando');
  while (multiplicador >= 1) {
    print('$multiplicador\t\t$multiplicando');
    if (multiplicador % 2 != 0) {
      resultado += multiplicando;
    }
    multiplicador = multiplicador ~/ 2;
    multiplicando = multiplicando * 2;
  }

  print('Resultado de la multiplicación: $resultado');
}