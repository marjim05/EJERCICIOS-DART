/* 
41. Reforestación del bosque.
El gobierno quiere sembrar árboles en un bosque de X hectáreas.
Si el terreno es mayor a 1,000,000 m² se sembrará:
  70% pino
  20% oyamel
  10% cedro
Si el terreno es menor o igual a 1,000,000 m² se sembrará:
  50% pino
  30% oyamel
  20% cedro

Datos de siembra:
- En 10 m² caben 8 pinos
- En 15 m² caben 15 oyameles
- En 18 m² caben 10 cedros

1 hectárea = 10,000 m²

Calcular cuántos pinos, oyameles y cedros se deben sembrar.
*/

void main() {
  double hectareas = 150; // ejemplo: 150 hectáreas

  double metros = hectareas * 10000;

  double porcPino;
  double porcOyamel;
  double porcCedro;

  if (metros > 1000000) {
    porcPino = 0.70;
    porcOyamel = 0.20;
    porcCedro = 0.10;
  } else {
    porcPino = 0.50;
    porcOyamel = 0.30;
    porcCedro = 0.20;
  }

  double areaPino = metros * porcPino;
  double areaOyamel = metros * porcOyamel;
  double areaCedro = metros * porcCedro;

  int pinos = ((areaPino / 10) * 8).toInt();
  int oyameles = ((areaOyamel / 15) * 15).toInt();
  int cedros = ((areaCedro / 18) * 10).toInt();

  print("Pinos: $pinos");
  print("Oyameles: $oyameles");
  print("Cedros: $cedros");
}
