//Un alumno desea saber cuál será su calificación final en la materia de computación. Dicha calificación
//se compone de los siguientes porcentajes: 55% del promedio de sus tres calificaciones parciales,
//30% de la calificación del examen final y 15% de la calificación de un trabajo final.

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
