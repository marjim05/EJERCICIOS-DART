import 'dart:math';

void main() {
  chelinesAPesetas();
  dracmasAFrancos();
  pesetasADolaresYLiras();

}

void chelinesAPesetas() {
  var chelinesPesetas = 100 / 956871;
  var chelines = 50;
  var pesetas = chelines * chelinesPesetas;
  print("El valor de $chelines chelines a pesetas es: $pesetas");
}

void dracmasAFrancos() {
  var dracmasPesetas = 100 / 88607;
  var dracmas = 45;
  var dracmasTotal = dracmasPesetas * dracmas;
  int francos = Random().nextInt(100);
  var conversionFrancos = francos * dracmas;
  print("El valor dracmas $dracmas dracmas a francos franceses es: $conversionFrancos ");
}


void pesetasADolaresYLiras (){
  int pesetas = 45;
  double dolares = pesetas / 122499;
  double liras = pesetas / 0.09289;
  print("El valo de $pesetas pesetas a dolares es: $dolares y a liras es: $liras");
}