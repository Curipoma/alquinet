// casas en renta
import 'package:alquinet/register/models/house_model.dart';

class Rent extends House {
  final int value;

  Rent({
    required id,
    required name,
    required this.value,
    required direction,
    required description,
  }) : super(
            id: id, name: name, direction: direction, description: description);
}
