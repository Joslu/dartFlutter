abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Esstoy volando');
}

abstract class Caminante {
  void volar() => print('Esstoy caminando');
}

abstract class Nadador {
  void volar() => print('Esstoy nadando');
}

//

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Tiburon extends Pez with Nadador {}

void main() {
  final pato = new Murcielago();
  pato.volar();
}
