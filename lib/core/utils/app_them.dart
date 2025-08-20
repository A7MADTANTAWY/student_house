import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';

class AppTheme {
  // ✅ Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: kLightPrimaryColor, // هنا تستخدم اللون الأساسي
    scaffoldBackgroundColor: kLightBackgroundScaffoldColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kLightPrimaryColor,
      unselectedItemColor: Colors.grey,
      backgroundColor: kLightBackgroundScaffoldColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: kLightBackgroundScaffoldColor,
      foregroundColor: kLightTextColor,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: kLightTextColor),
      bodyMedium: TextStyle(color: kLightDescriptionColor),
    ),
  );

  // ✅ Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: kDarkPrimaryColor,
    scaffoldBackgroundColor: kDarkBackgroundScaffoldColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kDarkPrimaryColor,
      unselectedItemColor: Colors.grey,
      backgroundColor: kDarkBackgroundScaffoldColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: kDarkBackgroundScaffoldColor,
      foregroundColor: kDarkTextColor,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: kDarkTextColor),
      bodyMedium: TextStyle(color: kDarkDescriptionColor),
    ),
  );
}
