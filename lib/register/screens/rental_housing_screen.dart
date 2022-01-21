import 'dart:ui';
import 'package:alquinet/register/widgets/form.dart';
import 'package:flutter/material.dart';

class RentalHousingScreen extends StatefulWidget {
  const RentalHousingScreen({Key? key}) : super(key: key);

  @override
  State<RentalHousingScreen> createState() => _RentalHousingScreenState();
}

class _RentalHousingScreenState extends State<RentalHousingScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_log_housing.jpeg'),
                fit: BoxFit.cover),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.indigo.withOpacity(0.2),
              ),
            ),
          ),
        ),
        MyCustomForm(
          fields: [
            Text(
              'Log rental housing',
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  textFormField(
                    'Alvaro',
                    'Name',
                    'Tu nombre',
                    const Icon(Icons.account_box_outlined),
                  ),
                  textFormField(
                    'Value',
                    'Value',
                    'Value',
                    const Icon(Icons.gite),
                  ),
                  textFormField(
                    'Direction',
                    'Direction',
                    'Direction',
                    const Icon(Icons.add_location_alt_outlined),
                  ),
                  textFormField(
                    'Description',
                    'Description',
                    'Description',
                    const Icon(Icons.description_outlined),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Submit',
                style: TextStyle(color: Theme.of(context).backgroundColor),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) => Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget textFormField(
    String hintText,
    String labelText,
    String helperText,
    Widget icon,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        autofocus: true,
        validator: (value) =>
            value != null && value.isEmpty ? 'Este campo es requerido' : null,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          icon: icon,
        ),
      ),
    );
  }
}
