void main() {
  final cuadrado = new Cuadrado();

  // Setter
  cuadrado.lado = 100;
  print(cuadrado);

  print('El area es: ${cuadrado.area}');
}

class Cuadrado {
  double _lado = 0;

  //  Setter
  set lado(double valor) {
    if (valor <= 0) {
      throw ('El lado no puede ser menor a cero');
    }

    _lado = valor;
  }

  double get area {
    return _lado * _lado;
  }

  toString() => 'Lado: $_lado';
}
