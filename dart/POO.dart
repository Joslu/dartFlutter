import 'dart:convert';

void main() {
  final ironman = new Heroe(nombre: 'Iron', poder: 'tech');
  print(ironman);

  final rawJson = '{"nombre" : "Luis", "poder" : "fuego"}';

  final parsedJSON = json.decode(rawJson);

  final luisHeroe = new Heroe.fromJson(parsedJSON);

  //Acceder a propiedades
  print(luisHeroe.poder);
}

class Heroe {
  String? nombre;
  String? poder;

  //Constructor

  Heroe({required String nombre, required String poder}) {
    this.nombre = nombre;
    this.poder = poder;
  }

  //Connstrucctor con nombre

  Heroe.fromJson(dynamic parsedJSON) {
    this.nombre = parsedJSON['nombre'];
    this.poder = parsedJSON['poder'];
  }
  //Metodo
  String toString() {
    return '${this.nombre} - ${this.poder}';
  }
}
