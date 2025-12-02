/*Conociendo la masa y distancia de dos cuerpos se puede determinar la Fuerza de atracción que se
ejerce entre ambos. Se desea determinar las fuerzas de atracción ejercida entre la tierra y diversos

1
4

satélites ubicados a distintas alturas. Para lo cual la NASA le ha solicitado a usted construir un
programa que responda a los siguientes requerimientos:
a) Cuál es la mayor y menor fuerza de atracción ejercida por los satélites en estudio
b) La fuerza de atracción promedio ejercida por los satélites en estudio
c) La mayor masa de todos los satélites estudiados
d) La masa promedio de los satélites
e) La menor y mayor altura de los satélites
La fórmula para determinar la Fuerza de atracción es:

F = G m M
r
2

donde:
m: masa satélite;
M: Masa tierra (5,97 * 10 24 Kg);
r: distancia de los cuerpos;
G: Constante Gravitatoria (6,67259 * 10-11 N*m2
)
Kg2

Considere la siguiente muestra para realizar la prueba del Programa:
Satélite País Masa Altura
Kg. Mts
Canada 1 Canadá 8.300 31.200.000
Alfa 1 Chile 5.500 36.000.000
Boby 4 EE.UU. 12.000 33.450.000
Che 3 Argentina 3.350 34.200.000

ANIDAMIENTOS.*/

void main ( ){
  const double G = 6.67259e-11;
  const double M = 5.97e24;

  List<Map<String, dynamic>> satelites = [
    {'pais': 'Canadá', 'masa': 8300.0, 'altura': 31200000.0},
    {'pais': 'Chile', 'masa': 5500.0, 'altura': 36000000.0},
    {'pais': 'EE.UU.', 'masa': 12000.0, 'altura': 33450000.0},
    {'pais': 'Argentina', 'masa': 3350.0, 'altura': 34200000.0},
  ];

  double mayorFuerza = double.negativeInfinity;
  double menorFuerza = double.infinity;
  double sumaFuerzas = 0.0;
  double mayorMasa = double.negativeInfinity;
  double sumaMasas = 0.0;
  double menorAltura = double.infinity;
  double mayorAltura = double.negativeInfinity;

  for (var satelite in satelites) {
    double masa = satelite['masa'];
    double altura = satelite['altura'];
    double fuerza = (G * masa * M) / (altura * altura);

    if (fuerza > mayorFuerza) mayorFuerza = fuerza;
    if (fuerza < menorFuerza) menorFuerza = fuerza;
    sumaFuerzas += fuerza;

    if (masa > mayorMasa) mayorMasa = masa;
    sumaMasas += masa;

    if (altura < menorAltura) menorAltura = altura;
    if (altura > mayorAltura) mayorAltura = altura;
  }

  double promedioFuerza = sumaFuerzas / satelites.length;
  double promedioMasa = sumaMasas / satelites.length;

  print('Mayor fuerza de atracción: $mayorFuerza N');
  print('Menor fuerza de atracción: $menorFuerza N');
  print('Fuerza de atracción promedio: $promedioFuerza N');
  print('Mayor masa de los satélites: $mayorMasa Kg');
  print('Masa promedio de los satélites: $promedioMasa Kg');
  print('Menor altura de los satélites: $menorAltura Mts');
  print('Mayor altura de los satélites: $mayorAltura Mts');

}