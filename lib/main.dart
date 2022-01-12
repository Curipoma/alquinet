import 'package:flutter/material.dart';
import 'screens/screens.dart';

<<<<<<< HEAD
import 'contratos/screens/home_screen_contratos.dart';

void main() {
  runApp(const MyApp());
}
=======
void main() => runApp(const MyApp());
>>>>>>> testing

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
      theme: MyTheme.getThemeData(stateMode),
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
<<<<<<< HEAD
  static const _widgeteOptions = <Widget>[
    HomeScreen(),
    LogClients(),
    LogLesseeScreen(),
    HomeScreenContratos(),
    RentalHousingScreen(),
  ];
  int _selectedIndex = 0;
=======
  late int _selectedIndex = 0;
>>>>>>> testing
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
<<<<<<< HEAD
      backgroundColor: const Color(0x4F2A3B5F),
      body: Stack(
        children: <Widget>[menu(context), screens(context)],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 150.0),
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: GestureDetector(
                  onTap: () {
                    _onitemTapped(0);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                    'assets/images/alquinet_logo.jpeg'),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              widget.title,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _onitemTapped(1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_box_outlined,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          'Log clients',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _onitemTapped(2);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_box_outlined,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          'Log lessee',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _onitemTapped(3);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_box_outlined,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          'Contratos',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _onitemTapped(4);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.house_outlined,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          'Log rental housing',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 250.0,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                            Text(
                              'logout',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.login,
                              color: Colors.white,
                            ),
                            Text(
                              'login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
=======
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/bg_log_housing.jpeg'),
              fit: BoxFit.cover,
              colorFilter: widget.stateMode
                  ? ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstATop)
                  : ColorFilter.mode(
                      Colors.black.withOpacity(0.05), BlendMode.dstATop),
            ),
            color: Theme.of(context).backgroundColor,
          ),
          child: Stack(
            children: <Widget>[
              MenuScreen(
                position: _opctionSelected,
                logout: logout,
                stateMode: widget.stateMode,
                changeMode: widget.changeMode,
                title: widget.title,
>>>>>>> testing
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
<<<<<<< HEAD
            child: Container(
              padding: const EdgeInsets.only(left: 0, right: 0, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 10, bottom: 10),
                    decoration: const BoxDecoration(color: Color(0xFF0A1A2F)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: const Icon(Icons.menu, color: Colors.white),
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
                          style: const TextStyle(
                              fontSize: 24, color: Colors.white),
                        ),
                        const Icon(Icons.settings, color: Colors.white),
                      ],
                    ),
=======
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  // MENU DE LA VISTA PRINCIPAL
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
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
                            color: Theme.of(context).primaryColor),
                      ),
                      Icon(Icons.settings,
                          color: Theme.of(context).primaryColor),
                    ],
>>>>>>> testing
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
