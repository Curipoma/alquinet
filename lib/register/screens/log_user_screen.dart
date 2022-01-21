import 'dart:ui';
import 'package:alquinet/register/widgets/form.dart';
import 'package:flutter/material.dart';

class LogUser extends StatefulWidget {
  const LogUser({Key? key}) : super(key: key);

  @override
  State<LogUser> createState() => _LogUserState();
}

class _LogUserState extends State<LogUser> {
  String dropdownValue = 'Inquilino';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_log_user.jpeg'),
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
              'Log users',
              style: Theme.of(context).textTheme.headline1,
            ),
            textFormField(
              'example@example.com',
              'Email',
              'Your email',
              const Icon(Icons.email_outlined),
            ),
            textFormField(
              'example',
              'Name',
              'Your name',
              const Icon(Icons.account_box_outlined),
            ),
            textFormField(
              '**********',
              'Password',
              'Your password',
              const Icon(Icons.password_outlined),
            ),
            DropdownButton<String>(
              alignment: Alignment.center,
              dropdownColor: Theme.of(context).highlightColor,
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: Theme.of(context).textTheme.bodyText1,
              underline: Container(
                alignment: Alignment.center,
                height: 2,
                color: Colors.grey,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Arrendatario', 'Inquilino']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Submit',
                style: TextStyle(color: Theme.of(context).backgroundColor),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) =>
                        Theme.of(context).primaryColor),
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
