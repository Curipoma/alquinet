import 'package:alquinet/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late int _selectedIndex = 0;
  late bool isCollapsed = true;
  late double screenWidth, screenHeight;
  late Duration duration = const Duration(milliseconds: 175);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _opctionSelected(int index) => setState(() {
        isCollapsed ? _controller.forward() : _controller.reverse();
        isCollapsed = !isCollapsed;
        _selectedIndex = index;
      });

  void logout() {
    print('cerraste sesión');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: MyTheme.getTheme().backgroundColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            MenuScreen(
              position: _opctionSelected,
              title: widget.title,
            ),
            screens(context)
          ],
        ),
      ),
    );
  }

  Widget screens(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.8 * screenWidth,
      right: isCollapsed ? 0 : -0.8 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: isCollapsed
              ? const BorderRadius.all(Radius.circular(0))
              : const BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          // color: Colors.red,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  decoration:
                      BoxDecoration(color: MyTheme.getTheme().backgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu,
                            color: MyTheme.getTheme().primaryColor),
                        onTap: () {
                          setState(
                            () {
                              isCollapsed
                                  ? _controller.forward()
                                  : _controller.reverse();

                              isCollapsed = !isCollapsed;
                            },
                          );
                        },
                      ),
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 24,
                            color: MyTheme.getTheme().primaryColor),
                      ),
                      Icon(Icons.settings,
                          color: MyTheme.getTheme().primaryColor),
                    ],
                  ),
                ),
                ChildrenRoutesHome()
                    .appRoutes[_selectedIndex]
                    .widget, // CAMBIA DE FORMA DINÁMICA LAS VISTAS
              ],
            ),
          ),
        ),
      ),
    );
  }
}
