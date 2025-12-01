/* 
Suponga que a partir de una Tonelada de maíz una planta productora obtiene M kilogramos de harina 
y N litros de aceite. La planta vende cada bulto de 24 paquetes de un kilogramo de harina en Bs. B1 
y cada caja de 15 envases de aceite en Bs. B2. Suponiendo que la planta vende todo lo que produce, 
calcular el ingreso total por la venta de cada tonelada de maíz, sabiendo además que cada kilogramo 
de harina y cada litro de aceite que restan del embalaje se venden al detal a los precios B3 y B4. 
Pruebe con: M=452, N=197, B1=132, B2=180, B3=7.50, B4=14.50.  
Respuesta esperada: 4895.
*/

void main() {
  double m = 452;   // kg de harina
  double n = 197;   // litros de aceite
  double b1 = 132;  // precio por bulto (24 kg harina)
  double b2 = 180;  // precio por caja (15 l aceite)
  double b3 = 7.50; // precio harina al detal
  double b4 = 14.50;// precio aceite al detal

  int bultos = m ~/ 24;
  double restoHarina = m % 24;

  int cajas = n ~/ 15;
  double restoAceite = n % 15;

  double ingresoHarina = (bultos * b1) + (restoHarina * b3);
  double ingresoAceite = (cajas * b2) + (restoAceite * b4);

  double total = ingresoHarina + ingresoAceite;

  print("Ingreso total: ${total.toStringAsFixed(2)}");
}

