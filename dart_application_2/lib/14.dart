// Resolver sistema aX + bY = c y dX + eY = f usando fórmulas dadas.
void main() {
  double a = 2;
  double b = 3;
  double c = 8;
  double d = 1;
  double e = 4;
  double f = 10;

  double x = (c * e - b * f) / (a * e - b * d);
  double y = (a * f - c * d) / (a * e - b * d);

  print("X = $x");
  print("Y = $y");
}
