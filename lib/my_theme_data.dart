import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xFFB7935F);
Color primaryDarkColor = Color(0xFF141A2E);
Color blackColor = Color(0xFF242424);
Color yellowColor = Color(0xFFFACC1D);

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      dividerColor: primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          size: 30,
          color: blackColor,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        // titleTextStyle:
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: primaryColor,
          onSecondary: primaryColor,
          error: primaryColor,
          onError: primaryColor,
          surface: primaryColor,
          onSurface: primaryColor),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ));

  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      dividerColor: yellowColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryDarkColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        // titleTextStyle:
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: primaryColor,
          onSecondary: primaryColor,
          error: primaryColor,
          onError: primaryColor,
          surface: primaryColor,
          onSurface: primaryColor),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: yellowColor,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      )  );
}
