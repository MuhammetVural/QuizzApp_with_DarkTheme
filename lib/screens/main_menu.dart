
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:quizz_app_with_dark_theme/screens/quizz_screen.dart';
// import 'package:quizz_app_with_dark_theme/theme/theme_manager.dart';


// class MainMenu extends StatefulWidget {
//   MainMenu({Key? key}) : super(key: key);

//   @override
//   _MainMenuState createState() => _MainMenuState();
// }

// class _MainMenuState extends State<MainMenu> {

  

//   @override
//   Widget build(BuildContext context) {
//     ThemeManager _themeManager = Provider.of<ThemeManager>(context);
//     return Scaffold(
//       appBar: AppBar(title: Text('Quiz App'), actions: [
//         Switch(value: _themeManager.themeMode != ThemeMode.dark, onChanged: (newValue){
//           _themeManager.toggleTheme(newValue);

//         })
//       ],),
      
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 48.0,
//           horizontal: 12.0,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     //Navigating the the Quizz Screen
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => QuizzScreen(),
//                         ));
//                   },
//                   child: const Padding(
//                     padding:
//                         EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
//                     child: Text(
//                       "Start the Quizz",
//                     ),
//                   ),
//                 ),
//               ),
//             ),
            
//           ],
//         ),
//       ),
//     );
//   }
// }