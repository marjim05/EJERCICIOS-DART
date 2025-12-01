// 38. Recibir fecha de nacimiento y mostrar signo zodiacal y edad.
// Usar la tabla de signos dada en el enunciado.

import 'dart:io';

void main() {
  // Solicitar fecha de nacimiento al usuario
  stdout.write("Ingrese su dia de nacimiento (1-31): ");
  int dia = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su mes de nacimiento (1-12): ");
  int mes = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su ano de nacimiento: ");
  int ano = int.parse(stdin.readLineSync()!);

  // Validar fecha
  bool fechaValida = true;
  if (mes < 1 || mes > 12) fechaValida = false;
  else if (dia < 1) fechaValida = false;
  else if ((mes == 2 && dia > 29) || 
           ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && dia > 30) || 
           dia > 31) fechaValida = false;

  if (!fechaValida) {
    print("Fecha invalida.");
    return;
  }

  // Determinar signo zodiacal
  String signo = "";
  if ((mes == 11 && dia >= 22) || (mes == 12 && dia <= 21)) signo = "Sagitario";
  else if ((mes == 12 && dia >= 22) || (mes == 1 && dia <= 20)) signo = "Capricornio";
  else if ((mes == 1 && dia >= 21) || (mes == 2 && dia <= 19)) signo = "Acuario";
  else if ((mes == 2 && dia >= 20) || (mes == 3 && dia <= 19)) signo = "Piscis";
  else if ((mes == 3 && dia >= 21) || (mes == 4 && dia <= 20)) signo = "Aries";
  else if ((mes == 4 && dia >= 21) || (mes == 5 && dia <= 21)) signo = "Tauro";
  else if ((mes == 5 && dia >= 22) || (mes == 6 && dia <= 21)) signo = "Geminis";
  else if ((mes == 6 && dia >= 22) || (mes == 7 && dia <= 22)) signo = "Cancer";
  else if ((mes == 7 && dia >= 23) || (mes == 8 && dia <= 23)) signo = "Leo";
  else if ((mes == 8 && dia >= 24) || (mes == 9 && dia <= 22)) signo = "Virgo";
  else if ((mes == 9 && dia >= 23) || (mes == 10 && dia <= 22)) signo = "Libra";
  else if ((mes == 10 && dia >= 23) || (mes == 11 && dia <= 21)) signo = "Escorpion";

  // Calcular edad considerando si ya cumplio anos este año
  DateTime hoy = DateTime(2025, 11, 28); // Fecha actual
  int edad = hoy.year - ano;
  if (mes > hoy.month || (mes == hoy.month && dia > hoy.day)) {
    edad--; // Aun no cumplio anos este año
  }

  // Mostrar resultados
  print("Signo zodiacal: $signo");
  print("Edad: $edad anos");
}
