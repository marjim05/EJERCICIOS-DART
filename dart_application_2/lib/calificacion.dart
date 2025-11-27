void main() {
  var calificacionesParciales = [4.5, 3.8, 4.2];
  var calificacionFinal =
      calificacionesParciales.reduce((a, b) => a + b) /
      calificacionesParciales.length;
  var pocentajeCalificacionFinal = calificacionFinal * 0.55;

  var porcentajeExamenFinal = 4.0 * 0.30;

  var porcentajeTrabajoFinal = 4.8 * 0.15;

  print(
    "Calificacion final del estudiante: ${pocentajeCalificacionFinal + porcentajeExamenFinal + porcentajeTrabajoFinal}",
  );
}
