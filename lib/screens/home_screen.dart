import 'package:alquinet/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final int? selectedIndex;
  final String title;
  const HomeScreen({
    Key? key,
    required this.title,
    this.selectedIndex,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late int _selectedIndex = widget.selectedIndex ?? 0;
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
    print(_selectedIndex);
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
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
                  padding: const EdgeInsets.all(10.0),
                  decoration:
                      BoxDecoration(color: Theme.of(context).backgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu,
                            color: Theme.of(context).primaryColor),
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
                            color: Theme.of(context).primaryColor),
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
                ChildrenRoutesHome().appRoutes[_selectedIndex].widget,
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget footer() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.0, 1.0),
          colors: <Color>[
            Color(0xFF000000),
            Color(0xFFFF8E31),
          ],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(
                width: 250.0,
                child: Text(
                  'ALQUINET',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(
                width: 250.0,
                child: Text(
                  '© 2022 Alquinet',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(
                width: 250.0,
                child: Text(
                  'Derechos reserbados',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(
                width: 250.0,
                child: Text(
                  'Política de privacidad',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(
                width: 250.0,
                child: Text(
                  'Términos y condiciones',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Image.asset('assets/images/alquinet_logo.jpeg'),
          ),
        ],
      ),
    );
  }
  
}
