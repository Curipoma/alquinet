import 'package:alquinet/providers/theme.dart';
import 'package:alquinet/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatefulWidget {
  final Function position;
  final String title;
  const MenuScreen({
    Key? key,
    required this.position,
    required this.title,
  }) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0),
              child: GestureDetector(
                onTap: () => setState(() {
                  widget.position(0);
                }),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset('assets/images/alquinet_logo.jpeg'),
                  ),
                ),
              ),
            ),
          ],
        ),
        Flexible(
          child: ListView.builder(
            itemCount: ChildrenRoutesHome().appRoutes.length,
            itemExtent: 40.0,
            itemBuilder: (context, index) => ListTile(
              onTap: () => setState(() => widget.position(index)),
              leading: Icon(
                ChildrenRoutesHome().appRoutes[index].icon,
                color: MyTheme.getTheme().primaryColor,
              ),
              title: Text(
                ChildrenRoutesHome().appRoutes[index].nameText,
                style: MyTheme.getTheme().textTheme.bodyText1,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  widget.position(1);
                }),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.app_registration_outlined,
                      color: MyTheme.getTheme().primaryColor,
                    ),
                    Text(
                      'Register',
                      style: TextStyle(color: MyTheme.getTheme().primaryColor),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  widget.position(2);
                }),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.login_outlined,
                      color: MyTheme.getTheme().primaryColor,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(color: MyTheme.getTheme().primaryColor),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.logout_outlined,
                      color: MyTheme.getTheme().primaryColor,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(color: MyTheme.getTheme().primaryColor),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => {
                  MyTheme.stateTheme = !MyTheme.stateTheme,
                  theme.setTheme(MyTheme.getTheme()),
                },
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.light_mode_outlined,
                    ),
                    Text(
                      'Mode',
                      style: TextStyle(color: MyTheme.getTheme().primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
