import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.deepOrangeAccent;
const COLOR_ACCENT = Colors.orange;



ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: COLOR_PRIMARY,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: COLOR_ACCENT
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 20),),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )),
      backgroundColor: MaterialStateProperty.all(COLOR_ACCENT)
    )
  )
  
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark
);