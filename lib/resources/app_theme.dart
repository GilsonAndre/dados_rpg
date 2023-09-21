import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeLight() {
    return ThemeData(
      primaryColor: const Color(0xFFE5007B),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFE5007B),
        titleTextStyle: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      cardColor: Colors.grey[300],
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
        ),
      ),
    );
  }

  //Thema preto
  ThemeData themeDark() {
    return ThemeData(
      textTheme:
          const TextTheme(headlineSmall: TextStyle(color: Color(0xFFF1F1F1))),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFE5007B),
        titleTextStyle: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      //
      scaffoldBackgroundColor: const Color(0xFF343434),
      //
      cardColor: const Color(0xFF3B3B3B),
      //
      listTileTheme: const ListTileThemeData(
        textColor: Color(0xFFF1F1F1),
      ),
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
        ),
      ),
    );
  }
}
