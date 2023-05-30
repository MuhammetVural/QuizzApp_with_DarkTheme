
import 'package:flutter/material.dart';
import 'package:quizz_app_with_dark_theme/screens/main_menu.dart';
import 'package:quizz_app_with_dark_theme/screens/quizz_screen.dart';
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

    @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: MainMenu()
    );
  }
}



class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz App'), actions: [
        Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue){
          _themeManager.toggleTheme(newValue);

        })
      ],),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 48.0,
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    //Navigating the the Quizz Screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizzScreen(),
                        ));
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      "Start the Quizz",
                    ),
                  ),
                ),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}