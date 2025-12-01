/*100 personas presentaron una prueba constituida por 3 preguntas. Se requiere desarrollar un
algoritmo o programa que permita determinar la cantidad de personas que respondieron:

9

a. correctamente las tres preguntas.
b. Correctamente solamente la primera y la segunda pregunta.
c. Correctamente solamente la primera y la tercera pregunta.
d. Correctamente solamente la segunda y la tercera pregunta.
e. Correctamente la primera pregunta por lo menos.
f. Correctamente la segunda pregunta por lo menos.
g. Correctamente la tercera pregunta por lo menos.
h. Además, cuántos no respondieron correctamente ninguna pregunta.*/

void main (){
  int a=0, b=0, c=0, d=0, e=0, f=0, g=0, h=0;

  for (int i = 1; i <= 100; i++) {
    bool p1 = (i % 2 == 0); // Respuesta correcta si el número es par
    bool p2 = (i % 3 == 0); // Respuesta correcta si el número es múltiplo de 3
    bool p3 = (i % 5 == 0); // Respuesta correcta si el número es múltiplo de 5

    if (p1 && p2 && p3) {
      a++;
    } 
    else if (p1 && p2 && !p3) {
      b++;
    } 
    else if (p1 && !p2 && p3) {
      c++;
    } 
    else if (!p1 && p2 && p3) {
      d++;
    } 
    else if (p1) {
      e++;
    } 
    else if (p2) {
      f++;
    } 
    else if (p3) {
      g++;
    } 
    else {
      h++;
    }
  }

  print("a. Correctamente las tres preguntas: $a");
  print("b. Correctamente la primera y la segunda pregunta: $b");
  print("c. Correctamente la primera y la tercera pregunta: $c");
  print("d. Correctamente la segunda y la tercera pregunta: $d");
  print("e. Correctamente la primera pregunta por lo menos: $e");
  print("f. Correctamente la segunda pregunta por lo menos: $f");
  print("g. Correctamente la tercera pregunta por lo menos: $g");
  print("h. No respondieron correctamente ninguna pregunta: $h");
}