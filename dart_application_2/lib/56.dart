/*Efectuar la división de dos números enteros, utilizando el método de las restas sucesivas. Observe
el siguiente ejemplo:*/

void main() {
  int dividendo = 27;
  int divisor = 4;
  int cociente = 0;
  int residuo = dividendo;

  while (residuo >= divisor) {
    residuo -= divisor;
    cociente++;
    print(  "Residuo intermedio: $residuo");
  }

  print("Cociente: $cociente");
  print("Residuo: $residuo");
}