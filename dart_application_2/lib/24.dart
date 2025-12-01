/*Un hombre desea saber cuánto dinero se generará por concepto de intereses sobre la cantidad
que tiene en inversión en el banco. El decidirá reinvertir los intereses siempre y cuando éstos
excedan a $7000 y en ese caso, desea saber cuánto dinero tendrá finalmente en su cuenta.
*/
import 'dart:io';

void main() {
  double inversion;
  double interes;

  print("Inversion:");
  inversion = double.parse(stdin.readLineSync()!);

  print("Intereses generados:");
  interes = double.parse(stdin.readLineSync()!);

  if (interes > 7000) {
    inversion = inversion + interes;
  }

  print(inversion);
}
