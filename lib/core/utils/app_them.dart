import 'package:flutter/material.dart';
import 'package:student_house/core/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // ✅ Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: kLightPrimaryColor,
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
    textTheme: GoogleFonts.poppinsTextTheme(
      const TextTheme(
        bodyLarge: TextStyle(color: kLightTextColor),
        bodyMedium: TextStyle(color: kLightDescriptionColor),
      ),
    ),
    extensions: const [
      ContainerTheme(
        backgroundColor: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
    ],
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
    textTheme: GoogleFonts.poppinsTextTheme(
      const TextTheme(
        bodyLarge: TextStyle(color: kDarkTextColor),
        bodyMedium: TextStyle(color: kDarkDescriptionColor),
      ),
    ),
    extensions: const [
      ContainerTheme(
        backgroundColor: kDarkContainerColor,
        boxShadow: [
          BoxShadow(color: Colors.black54, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
    ],
  );
}

// ✅ ThemeExtension علشان أخصص الـ Container
class ContainerTheme extends ThemeExtension<ContainerTheme> {
  final Color backgroundColor;
  final List<BoxShadow> boxShadow;

  const ContainerTheme({
    required this.backgroundColor,
    required this.boxShadow,
  });

  @override
  ContainerTheme copyWith({
    Color? backgroundColor,
    List<BoxShadow>? boxShadow,
  }) {
    return ContainerTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }

  @override
  ContainerTheme lerp(ThemeExtension<ContainerTheme>? other, double t) {
    if (other is! ContainerTheme) return this;
    return ContainerTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      boxShadow: boxShadow,
    );
  }
}
