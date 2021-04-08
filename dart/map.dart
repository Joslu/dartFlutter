void main() {
  Map<String, dynamic> person = {
    'nombre': 'Luis',
    'apellidoP': 'Cruz',
    'soltero': true
  };

  print(person);
  print(person['nombre']);

  //agregar elemento a Map

  person.addAll({'appellidoM': 'Tecocoatzi'});
  print(person);
}
