void main() {
  sendAlert();
  print(sayName());

  int sumar = sumarEnteros(4, 10);
  print('La suma es $sumar');

  print(saludar(nombre: 'Luis', texto: 'hola'));
}

void sendAlert() {
  print('01010101010101');
}

String sayName() {
  return 'Luis Cruz';
}

int sumarEnteros(int a, int b) {
  return a + b;
}

String saludar({required String texto, required String nombre}) =>
    '$texto $nombre';
