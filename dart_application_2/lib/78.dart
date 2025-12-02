/*Una empresa comercializadora de productos cerámicos con sucursales y puntos de venta a nivel
nacional está interesada en desarrollar un software que le permita controlar sus ventas. Cada
sucursal posee un monto de venta esperado el cual debe cubrir y tiene asignados varios puntos de
venta, los cuales debe controlar. La sucursal es identificada con un código entero positivo de dos

1
6

dígitos y los puntos de venta por un código entero positivo de cuatro dígitos, en el cual los dos
primeros dígitos corresponden al código de la sucursal a la cual reporta. Los productos
comercializados por la empresa son identificados por un código que va del 1 al 3, el PVP de cada uno
es dado como constante y todos los puntos de venta, venden los 3 tipos de productos. El 10% de las
ventas brutas de cada punto de venta es repartido entre los vendedores de la misma en forma
equitativa como comisión de venta. Se requiere que desarrolle un programa que responda a lo
siguiente:
• Imprimir por punto de venta: su código, las unidades vendidas, el monto neto de la venta,
el monto pagado por comisión a los vendedores y el código del producto con menor número
de unidades vendidas.
• Calcular y mostrar por sucursal su código, descripción, el monto total vendido, el porcentaje
de venta alcanzado en función de lo esperado y el código y monto del punto de venta que
más pagó por comisión de venta.
• Calcular y mostrar el porcentaje de las sucursales que alcanzaron el monto de venta
esperado.*/

import 'dart:io';

import 'dart:io';

void main() {
  // ---- PVP de los productos ----
  const precios = [0, 10.0, 20.0, 30.0]; // indice 1,2,3

  stdout.write("Cantidad de sucursales: ");
  int cantSuc = int.parse(stdin.readLineSync()!);

  List<int> codSucursal = [];
  List<String> descSucursal = [];
  List<double> metaSucursal = [];

  // Para almacenar datos por punto de venta
  List<int> codPunto = [];
  List<int> vendedoresPunto = [];
  List<List<int>> unidadesVendidas = [];

  // Relación sucursal → puntos de venta
  List<int> puntoSucursal = [];

  // === Lectura de sucursales ===
  for (int s = 0; s < cantSuc; s++) {
    print("\n--- Sucursal ${s + 1} ---");

    stdout.write("Código de sucursal (2 dígitos): ");
    codSucursal.add(int.parse(stdin.readLineSync()!));

    stdout.write("Descripción: ");
    descSucursal.add(stdin.readLineSync()!);

    stdout.write("Monto esperado de venta: ");
    metaSucursal.add(double.parse(stdin.readLineSync()!));

    stdout.write("Cantidad de puntos de venta: ");
    int cantPuntos = int.parse(stdin.readLineSync()!);

    // ==== Lectura de puntos ====
    for (int p = 0; p < cantPuntos; p++) {
      print("\n  Punto de venta ${p + 1}:");

      stdout.write("  Código de punto (4 dígitos): ");
      int cp = int.parse(stdin.readLineSync()!);
      codPunto.add(cp);

      puntoSucursal.add(s); // guardar a qué sucursal pertenece

      stdout.write("  Cantidad de vendedores: ");
      vendedoresPunto.add(int.parse(stdin.readLineSync()!));

      List<int> unidades = [0, 0, 0, 0];
      for (int pr = 1; pr <= 3; pr++) {
        stdout.write("  Unidades vendidas del producto $pr: ");
        unidades[pr] = int.parse(stdin.readLineSync()!);
      }
      unidadesVendidas.add(unidades);
    }
  }

  print("\n\n===== REPORTE POR PUNTO DE VENTA =====");

  List<double> totalComisionPunto = [];
  List<double> totalVentaPunto = [];

  // ==== REPORTE PUNTO A PUNTO ====
  for (int i = 0; i < codPunto.length; i++) {
    double ventaBruta = 0;

    // Cálculo venta bruta
    for (int pr = 1; pr <= 3; pr++) {
      ventaBruta += unidadesVendidas[i][pr] * precios[pr];
    }

    double comision = ventaBruta * 0.10;
    double neto = ventaBruta - comision;

    totalComisionPunto.add(comision);
    totalVentaPunto.add(ventaBruta);

    // Producto menos vendido
    int prodMenos = 1;
    for (int pr = 2; pr <= 3; pr++) {
      if (unidadesVendidas[i][pr] < unidadesVendidas[i][prodMenos]) {
        prodMenos = pr;
      }
    }

    print("\nPunto de venta: ${codPunto[i]}");
    print("Unidades vendidas: P1=${unidadesVendidas[i][1]}, P2=${unidadesVendidas[i][2]}, P3=${unidadesVendidas[i][3]}");
    print("Monto neto: $neto");
    print("Comisión pagada: $comision");
    print("Producto con menor unidades vendidas: $prodMenos");
  }

  // ==== REPORTE POR SUCURSAL ====
  print("\n\n===== REPORTE POR SUCURSAL =====");

  int totalSucursalesQueCumplen = 0;

  for (int s = 0; s < cantSuc; s++) {
    double totalSucursal = 0;

    double maxComision = -1;
    int puntoMaxComision = 0;

    // buscar puntos de esta sucursal
    for (int p = 0; p < codPunto.length; p++) {
      if (puntoSucursal[p] == s) {
        totalSucursal += totalVentaPunto[p];

        if (totalComisionPunto[p] > maxComision) {
          maxComision = totalComisionPunto[p];
          puntoMaxComision = codPunto[p];
        }
      }
    }

    double porcentaje = (totalSucursal / metaSucursal[s]) * 100;

    if (totalSucursal >= metaSucursal[s]) {
      totalSucursalesQueCumplen++;
    }

    print("\nSucursal: ${codSucursal[s]}");
    print("Descripción: ${descSucursal[s]}");
    print("Total vendido: $totalSucursal");
    print("Porcentaje alcanzado: ${porcentaje.toStringAsFixed(2)}%");
    print("Punto que más comisión pagó: Código $puntoMaxComision, Comisión $maxComision");
  }

  // ==== Porcentaje de sucursales que cumplieron ====
  double porcentajeCumplimiento =
      (totalSucursalesQueCumplen / cantSuc) * 100;

  print("\n\n===== PORCENTAJE DE SUCURSALES QUE CUMPLIERON =====");
  print("Sucursales que alcanzaron la meta: $porcentajeCumplimiento%");
}
