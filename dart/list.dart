void main() {
  // La listas son dinamica de esta forma
  List numeros = [1, 2, 3, 4, 5, 5];
  print(numeros);

  numeros.add(6);
  print(numeros);
  numeros.add('jaja');
  print(numeros);

  //Lista con tipo de dato definido
  List<double> numerosDecimal = [1.3, 934.54, 3.5];
  print(numerosDecimal);
  numerosDecimal.add(9.34);
  print(numerosDecimal);
}
