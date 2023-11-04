import 'dart:math';

int rodarDado() {
  var random = Random();
  int min = 1;
  int max = 6;
  return min + random.nextInt(max - min + 1);
}

int tresDados() {
  int roda = 0;
  int i = 1;
  while (i < 4) {
    int D = 0;
    D = rodarDado();
    roda += D;
    print("O dado $i tem o valor de $D");
    i++;
  }
  return roda;
}
