/*
Se tienen 4 dígitos en las variables A, B, C, D que forman un entero positivo N. Se desea redondear
N a la centena más próxima y mostrar el resultado. Considere los siguientes ejemplos: Si A es 2, B
es 3, C es 6 y D es 2, entonces N es 2362 y el resultado redondeado es 2400. Si N es 2342, el
resultado redondeado será 2300 y si N es 2962, el resultado redondeado será 3000.

*/
void main() {
  int a = 2;
  int b = 3;
  int c = 6;
  int d = 2;

  int n = a * 1000 + b * 100 + c * 10 + d;
  int centena = (n % 1000) ~/ 100;

  if (centena >= 5) {
    n = n - (n % 1000) + 1000;
  } else {
    n = n - (n % 1000);
  }

  print(n);
}
