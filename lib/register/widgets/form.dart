import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  final List<Widget> fields;
  const MyCustomForm({Key? key, required this.fields}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: widget.fields,
          ),
        ),
      ),
    );
  }
}
