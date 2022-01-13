import 'package:alquinet/register/models/house_model.dart';
import 'package:alquinet/register/models/rent_model.dart';
import 'package:alquinet/register/models/user_model.dart';

// arrendatarios
class Lessee extends User {
  List<House> houses;
  List<Rent> leases;
  Lessee({
    required id,
    required email,
    required name,
    required password,
    required state,
    required rol,
    required this.houses,
    required this.leases,
  }) : super(
            id: id,
            rol: rol,
            email: email,
            name: name,
            password: password,
            state: state);
}
