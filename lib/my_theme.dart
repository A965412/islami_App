import 'package:flutter/material.dart';

class Mytheme {
  static Color blackcolor = Color(0xff242424);
  static Color primarylight = Color(0xffB7935F);

  static ThemeData lightmode = ThemeData(
    primaryColor: primarylight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:
        AppBarTheme(elevation: 0, centerTitle: true, color: Colors.transparent),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: blackcolor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackcolor,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontSize: 15,
        ),
        unselectedLabelStyle: TextStyle(fontSize: 15),
        selectedIconTheme: IconThemeData(size: 35),
        unselectedIconTheme: IconThemeData(size: 35)),
    dividerTheme: DividerThemeData(color: primarylight, thickness: 2, space: 2),
  );
}
