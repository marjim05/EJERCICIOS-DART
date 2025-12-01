/* 
Un mayorista compra a un agricultor un lote de X naranjas a Bs. Y la docena. 
Después de vender todas las naranjas a los detallistas, obtiene Bs. K. 
Calcular el porcentaje de ganancia obtenida en la inversión.

Prueba: X = 48000, Y = 6, K = 42000 → resultado: 75%
*/

void main() {
  double X = 48000;
  double Y = 6;
  double K = 42000;

  // Costo total (precio por docena)
  double costo = (X / 12) * Y;

  // Ganancia obtenida
  double ganancia = K - costo;

  // Porcentaje de ganancia
  double porcentaje = (ganancia / costo) * 100;

  print("Porcentaje de ganancia: ${porcentaje.toStringAsFixed(2)}%");
}
