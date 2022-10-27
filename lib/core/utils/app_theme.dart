import 'package:flutter/material.dart';

import '../assets/my_colors.dart';

class AppTheme {
  //
  final TextTheme textTheme;

  late ThemeData lightTheme;

  late ThemeData darkTheme;

  AppTheme(this.textTheme) {
    lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[50],
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
      backgroundColor: Colors.white,
      primaryColor: MyColors.mainColor,
      dialogBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(
          color: MyColors.mainColor,
        ),
      ),
      colorScheme: ColorScheme.light(
          primary: MyColors.mainColor,
          onSecondary: Colors.black,
          onPrimary: Colors.white,
          surface: Colors.black,
          onSurface: Colors.black,
          secondary: Colors.black),
      cardTheme: CardTheme(
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: MyColors.mainColor,
      ),
    );
    darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.blueGrey,
      bottomAppBarTheme: BottomAppBarTheme(color: MyColors.mainColorDark10),
      primaryColor: Colors.blueGrey,
      backgroundColor: Colors.blueGrey,
      dialogBackgroundColor: Colors.blueGrey,
      appBarTheme: AppBarTheme(
        color: Colors.blueGrey[600],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      colorScheme: ColorScheme.dark(
          primary: Colors.blueGrey,
          onSecondary: Colors.white,
          onPrimary: Colors.black,
          surface: Colors.white,
          onSurface: Colors.white,
          secondary: Colors.white),
      cardTheme: CardTheme(
        color: Colors.blueGrey[600],
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    );
  }
}
