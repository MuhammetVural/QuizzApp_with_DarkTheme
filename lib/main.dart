
import 'package:flutter/material.dart';
import 'package:quizz_app_with_dark_theme/screens/main_menu.dart';
import 'package:quizz_app_with_dark_theme/theme/theme_constants.dart';
import 'package:quizz_app_with_dark_theme/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}
ThemeManager _themeManager = ThemeManager();
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const MainMenu()
    );
  }
}