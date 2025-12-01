/*
Una empresa que comercializa cosméticos tiene organizados a sus vendedores en tres
departamentos y ha establecido un programa de incentivos para incrementar su productividad. El
gerente, al final del mes, pide el importe global de las ventas de los tres departamentos y aquellos
que excedan el 33% de las ventas totales se les paga una cantidad extra equivalente al 20% de su
salario mensual. Si todos los vendedores ganan lo mismo, determinar cuánto recibirán los
vendedores de los tres departamentos al finalizar el mes.

*/
import 'dart:io';

void main() {
  double d1 = double.parse(stdin.readLineSync()!);
  double d2 = double.parse(stdin.readLineSync()!);
  double d3 = double.parse(stdin.readLineSync()!);
  double salario = double.parse(stdin.readLineSync()!);

  double total = d1 + d2 + d3;
  double limite = total * 0.33;

  if (d1 > limite) salario = salario * 1.20;
  if (d2 > limite) salario = salario * 1.20;
  if (d3 > limite) salario = salario * 1.20;

  print(salario);
}
