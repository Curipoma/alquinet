import 'dart:ui';

import 'package:alquinet/screens/screens.dart';
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
                    'Register',
                    style: MyTheme.getTheme().textTheme.headline1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: MyTheme.getTheme().textTheme.bodyText1,
                          ),
                          style: MyTheme.getTheme().textTheme.bodyText1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: MyTheme.getTheme().textTheme.bodyText1,
                          ),
                          style: MyTheme.getTheme().textTheme.bodyText1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: MyTheme.getTheme().textTheme.bodyText1,
                          ),
                          style: MyTheme.getTheme().textTheme.bodyText1,
                        ),
                        DropdownButton<String>(
                          alignment: Alignment.center,
                          dropdownColor: Theme.of(context).highlightColor,
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: MyTheme.getTheme().textTheme.bodyText1,
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
                        )
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
}
