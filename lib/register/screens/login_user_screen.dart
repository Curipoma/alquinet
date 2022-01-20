import 'dart:ui';

import 'package:alquinet/screens/screens.dart';
import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({Key? key}) : super(key: key);

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_login_user.jpeg'),
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
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: MyTheme.getTheme().backgroundColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 50.0),
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: MyTheme.getTheme().textTheme.headline1,
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
                          'Alvaro',
                          'Name',
                          'Tu nombre',
                          const Icon(Icons.password_outlined),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style:
                          TextStyle(color: MyTheme.getTheme().backgroundColor),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) =>
                                  MyTheme.getTheme().primaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
