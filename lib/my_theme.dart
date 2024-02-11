import 'package:flutter/material.dart';

class Mytheme {
  static Color blackcolor = Color(0xff242424);
  static Color primarylight = Color(0xffB7935F);
  static Color primarydark = Color(0xff141A2E);
  static Color whitecolor = Color(0xffffffff);
  static Color yellowcolor = Color(0xffFACC1D);

  static ThemeData lightmode = ThemeData(
    primaryColor: primarylight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        color: Colors.transparent,
        iconTheme: IconThemeData(color: blackcolor)),
    textTheme: TextTheme(
      titleSmall: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: blackcolor),
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
  static ThemeData darktmode = ThemeData(
    primaryColor: primarydark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        color: Colors.transparent,
        iconTheme: IconThemeData(color: whitecolor)),
    textTheme: TextTheme(
        titleSmall: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w400, color: whitecolor),
        titleLarge: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: whitecolor),
        titleMedium: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w600, color: whitecolor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowcolor,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontSize: 15,
        ),
        unselectedLabelStyle: TextStyle(fontSize: 15),
        selectedIconTheme: IconThemeData(size: 35),
        unselectedIconTheme: IconThemeData(size: 35)),
    dividerTheme: DividerThemeData(color: yellowcolor, thickness: 2, space: 2),
  );
}
