/*Una pequeña Librería de la Ciudad desea controlar los datos de los diferentes autores cuyos libros
están a la venta. Cada autor ha escrito diversos libros, pudiendo estos ser clasificados de acuerdo al
género: ciencia ficción, romance, acción, terror, novela, autoayuda y académico. Para cada texto se
conoce: código, género y número de páginas. Escriba un programa, que permita calcular y mostrar:
• Por autor:
 Apellido
 Total, de páginas escritas o Código del libro con mayor número de páginas y
cantidad de páginas.

• En General:
 Porcentaje de libros de ciencia ficción, respecto al total de libros.
 Cantidad de libros de ciencia ficción y romance que hay en existencia.
 Apellido del autor con mayor cantidad de libros escritos y cantidad de libros
escritos.*/

void main (){
  List<Map<String, dynamic>> autores = [
    {
      'apellido': 'García',
      'libros': [
        {'codigo': 'L001', 'genero': 'ciencia ficción', 'paginas': 300},
        {'codigo': 'L002', 'genero': 'romance', 'paginas': 250},
      ],
    },
    {
      'apellido': 'Pérez',
      'libros': [
        {'codigo': 'L003', 'genero': 'acción', 'paginas': 400},
        {'codigo': 'L004', 'genero': 'ciencia ficción', 'paginas': 350},
        {'codigo': 'L005', 'genero': 'terror', 'paginas': 200},
      ],
    },
  ];

  int totalLibros = 0;
  int librosCienciaFiccion = 0;
  String autorMayorLibros = '';
  int mayorCantidadLibros = 0;

  for (var autor in autores) {
    String apellido = autor['apellido'];
    int cantidadLibros = autor['libros'].length;
    int mayorPaginas = 0;
    String codigoMayor = '';

    for (var libro in autor['libros']) {
      totalLibros++;
      if (libro['genero'] == 'ciencia ficción') {
        librosCienciaFiccion++;
      }
      if (libro['paginas'] > mayorPaginas) {
        mayorPaginas = libro['paginas'];
        codigoMayor = libro['codigo'];
      }
    }

    print('Autor: $apellido');
    print('Total de páginas escritas: ${autor['libros'].fold(0, (sum, libro) => sum + libro['paginas'])}');
    print('Libro con mayor páginas: $codigoMayor ($mayorPaginas páginas)');
    print('---');

    if (cantidadLibros > mayorCantidadLibros) {
      mayorCantidadLibros = cantidadLibros;
      autorMayorLibros = apellido;
    }
  }

  double porcentajeCienciaFiccion = (librosCienciaFiccion / totalLibros) * 100;

  print('Porcentaje de libros de ciencia ficción: ${porcentajeCienciaFiccion.toStringAsFixed(2)}%');
  print('Cantidad de libros de ciencia ficción y romance: $librosCienciaFiccion + ${autores.expand((a) => a['libros']).where((l) => l['genero'] == 'romance').length}');
  print('Autor con mayor cantidad de libros escritos: $autorMayorLibros ($mayorCantidadLibros libros)');
}