/*Escriba un algoritmo para producir una tabla de conversión de temperatura para convertir valores
en grados Fahrenheit a su equivalente en grados Celsius, grados Kelvin y grados Rankine.
Las ecuaciones de conversión son:
C = 5(F-32) / 9
R = F + 459.67
K = C + 273.15
Donde F = temperatura en grados Fahrenheit
C = temperatura en grados Celsius
R = temperatura en grados Rankine
K = temperatura en grados Kelvin
Haga que el programa imprima encabezados para cada columna en la tabla.
Datos muestra:
de 28 a 54 oF en intervalos de 1 oF
de 450 a 950 oF en intervalos de 50 oF
de –50 a 250 oF en intervalos de 10 oF*/

void main() {
  print("Fahrenheit\tCelsius\tKelvin\tRankine");
  
  // Rango de 28 a 54 oF en intervalos de 1 oF
  for (int F = 28; F <= 54; F += 1) {
    double C = 5 * (F - 32) / 9;
    double K = C + 273.15;
    double R = F + 459.67;
    print("$F\t\t${C.toStringAsFixed(2)}\t${K.toStringAsFixed(2)}\t${R.toStringAsFixed(2)}");
  }
  
  print(""); // Línea en blanco para separar las tablas
  
  // Rango de 450 a 950 oF en intervalos de 50 oF
  for (int F = 450; F <= 950; F += 50) {
    double C = 5 * (F - 32) / 9;
    double K = C + 273.15;
    double R = F + 459.67;
    print("$F\t\t${C.toStringAsFixed(2)}\t${K.toStringAsFixed(2)}\t${R.toStringAsFixed(2)}");
  }
  
  print(""); // Línea en blanco para separar las tablas
  
  // Rango de -50 a 250 oF en intervalos de 10 oF
  for (int F = -50; F <= 250; F += 10) {
    double C = 5 * (F - 32) / 9;
    double K = C + 273.15;
    double R = F + 459.67;
    print("$F\t\t${C.toStringAsFixed(2)}\t${K.toStringAsFixed(2)}\t${R.toStringAsFixed(2)}");
  }
}