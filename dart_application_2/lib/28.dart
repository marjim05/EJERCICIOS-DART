/*
Una empresa quiere hacer una compra de varias piezas de la misma clase a un fabricante de
refacciones. La empresa dependiendo del monto total de la compra, decidirá qué hacer para pagar
al fabricante. Si el monto total de la compra excede de $500000 la empresa tendrá la capacidad
de invertir de su propio dinero un 55% del monto de la compra, pedir presta al banco un 30% y el
resto lo pagará solicitando un crédito al fabricante. Si el monto total de la compra no excede de
$500000 la empresa tendrá capacidad de invertir de su propio dinero un 70% y el restante 30% lo
pagará solicitando crédito al fabricante. El fabricante cobra por concepto de intereses un 20%
sobre la cantidad que se le pague a crédito. Calcule y muestre la cantidad a invertir de los fondos
de la empresa, la cantidad a pagar a crédito, el monto a pagar por intereses y si es necesario, la
cantidad prestada al banco. 
*/
import 'dart:io';

void main() {
  double monto = double.parse(stdin.readLineSync()!);

  double empresa;
  double banco = 0;
  double credito;
  double intereses;

  if (monto > 500000) {
    empresa = monto * 0.55;
    banco = monto * 0.30;
    credito = monto * 0.15;
  } else {
    empresa = monto * 0.70;
    credito = monto * 0.30;
  }

  intereses = credito * 0.20;

  print(empresa);
  print(credito);
  print(intereses);
  print(banco);
}
