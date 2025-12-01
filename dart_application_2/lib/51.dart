/*Calcular el término doceavo y la suma de los doce primeros términos de la sucesión: 6, 11, 16, 21.
Respuesta: a12=61, suma=402.*/

void main () {
  int termino = 0;
  int suma = 0;

  for (int n = 1; n <= 12; n++) {
    termino = 6 + (n - 1) * 5;
    suma += termino;
  }

  print("El término doceavo (a12) es: $termino");
  print("La suma de los doce primeros términos es: $suma");
}