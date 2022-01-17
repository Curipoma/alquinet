// usuarios logueados
// agragar mas campos para la auth con la api

class User {
  int id;
  String rol;
  String email;
  String name;
  String password;
  String state;

  User({
    required this.id,
    required this.rol,
    required this.email,
    required this.name,
    required this.password,
    required this.state,
  });
} 
 