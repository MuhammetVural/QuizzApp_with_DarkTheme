import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.orange;
const COLOR_ACCENT = Colors.orange;



ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: COLOR_PRIMARY,
  textTheme: const TextTheme(
    
  ),
  
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: COLOR_PRIMARY,
  foregroundColor: Colors.white
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 60,),),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )),
      backgroundColor: MaterialStateProperty.all(COLOR_PRIMARY)
    )
  )
  
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark
);