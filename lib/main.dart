import 'package:flutter/material.dart';
import 'package:alquinet/providers/theme.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool stateMode = false;
  void changeMode() => setState(() => stateMode = !stateMode);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: const MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alquinet',
      theme: theme.getTheme(),
      initialRoute: MyRoutes.initialRoute,
      routes: MyRoutes.getAppRoutes(),
    );
  }
}
