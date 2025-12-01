// Calcular cuántas piezas se fabrican con una lámina (según su largo)
// y cuánto es el desperdicio de material en longitud.

void main() {
  double largo = 4;     // largo de la lámina en metros
  double ancho = 1.5;   // ancho de la lámina (no afecta si la pieza solo depende del largo)
  double pieza = 0.5;   // largo de cada pieza en metros

  // Cantidad de piezas completas que caben en el largo
  int piezas = (largo ~/ pieza);

  // Desperdicio de longitud que no alcanza para otra pieza
  double desperdicio = largo - (piezas * pieza);

  print("Piezas fabricadas: $piezas");
  print("Desperdicio: ${desperdicio.toStringAsFixed(2)} metros");
}
