import 'dart:ui';

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
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).hintColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 50.0),
              child: Column(
                children: [
                  Text(
                    'Log rental housing',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Value',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Direction',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Description',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      width: 100.0,
                      height: 30.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Theme.of(context).highlightColor),
                      child: Text(
                        'Submit',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
