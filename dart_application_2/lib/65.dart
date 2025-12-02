/*Calcular el sueldo neto de los trabajadores de una compañía sabiendo que este depende de los
siguientes datos:
• sueldo básico mensual 100000 si es obrero
• sueldo básico mensual 165500 si es administrativo
• sueldo básico mensual 250000 si es ejecutivo Las asignaciones y deducciones son:
• aporte por cada hijo hasta 5 hijos 10% del sueldo básico
• aporte por asistencia superior al 95% de los 30 días del mes 5% del sueldo básico.
• Deducción del 10% del sueldo básico para la caja de ahorros.
• Deducción para el seguro social 2% del sueldo básico
Por cada empleado debe salir un registro con el nombre y cédula, sueldo básico, aporte a la Caja de
Ahorros, seguro social y sueldo neto.*/

void main() {
  List<Empleado> empleados = [
    Empleado('Juan Perez', '12345678', 'obrero', 2),
    Empleado('Ana Gomez', '87654321', 'administrativo', 4),
    Empleado('Luis Martinez', '11223344', 'ejecutivo', 1),
  ];
  for (var emp in empleados) {
    double sueldoBasico;
    switch (emp.categoria) {
      case 'obrero':
        sueldoBasico = 100000;
        break;
      case 'administrativo':
        sueldoBasico = 165500;
        break;
      case 'ejecutivo':
        sueldoBasico = 250000;
        break;
      default:
        sueldoBasico = 0;
    }

    double aporteHijos =
        (emp.numeroHijos > 5 ? 5 : emp.numeroHijos) * 0.10 * sueldoBasico;
    double aporteAsistencia = 0.05 * sueldoBasico; // Asumiendo asistencia > 95%
    double deduccionCajaAhorros = 0.10 * sueldoBasico;
    double deduccionSeguroSocial = 0.02 * sueldoBasico;

    double sueldoNeto = sueldoBasico +
        aporteHijos +
        aporteAsistencia -
        deduccionCajaAhorros -
        deduccionSeguroSocial;

    print('Empleado: ${emp.nombre}, Cédula: ${emp.cedula}');
    print('Sueldo Básico: \$${sueldoBasico.toStringAsFixed(2)}');
    print(
        'Aporte Caja de Ahorros: \$${deduccionCajaAhorros.toStringAsFixed(2)}');
    print(
        'Deducción Seguro Social: \$${deduccionSeguroSocial.toStringAsFixed(2)}');
    print('Sueldo Neto: \$${sueldoNeto.toStringAsFixed(2)}\n');
  }


}

class   Empleado {
  String nombre;
  String cedula;
  String categoria;
  int numeroHijos;

  Empleado(this.nombre, this.cedula, this.categoria, this.numeroHijos);
}
