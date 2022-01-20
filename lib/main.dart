import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool stateMode = false;
  void changeMode() => setState(() {
        stateMode = !stateMode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alquinet',
      home: MainScreen(
        title: 'Alquinet',
        stateMode: stateMode,
        changeMode: changeMode,
      ),
      theme: MyTheme.getThemeLight(),
    );
  }
}

// ESTE WIDGET MUESTRA LAS VISTAS
class MainScreen extends StatefulWidget {
  final String title;
  final bool stateMode;
  final Function changeMode;
  const MainScreen({
    Key? key,
    required this.title,
    required this.stateMode,
    required this.changeMode,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late int _selectedIndex = 3;
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
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/bg_log_user.jpeg'),
              fit: BoxFit.cover,
              colorFilter: widget.stateMode
                  ? ColorFilter.mode(
                      Colors.yellow.withOpacity(0.05), BlendMode.dstATop)
                  : ColorFilter.mode(
                      Colors.yellow.withOpacity(0.05), BlendMode.dstATop),
            ),
            color: MyTheme.bgPrimary,
          ),
          child: Stack(
            children: <Widget>[
              MenuScreen(
                position: _opctionSelected,
                logout: logout,
                stateMode: widget.stateMode,
                changeMode: widget.changeMode,
                title: widget.title,
              ),
              screens(context)
            ],
          ),
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
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  // MENU DE LA VISTA PRINCIPAL
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  decoration:
                      BoxDecoration(color: MyTheme.bgPrimary),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu,
                            color: MyTheme.primary),
                        onTap: () {
                          setState(() {
                            isCollapsed
                                ? _controller.forward()
                                : _controller.reverse();

                            isCollapsed = !isCollapsed;
                          });
                        },
                      ),
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 24,
                            color: MyTheme.primary),
                      ),
                      Icon(Icons.settings,
                          color: MyTheme.primary),
                    ],
                  ),
                ),
                AppRoutes()
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
