//Sea N y K dos enteros positivos, con K < N. Se desea escribir un programa que escriba el valor de
//N,N-1,N-2,..., y así sucesivamente hasta llegar al valor de K.

void main() {
  int N = 10; 
  int K = 4;  

  if (K >= N) {
    print("K debe ser menor que N.");
    return;
  }

  for (int i = N; i >= K; i--) {
    print(i);
  }
}