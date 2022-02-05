import 'package:flutter/material.dart';

class Tema {
  late final ThemeData escuro;
  late final ThemeData claro;

  final Color _deepVermelhoLaranja;
  final Color _laranjaCadmio;
  final Color _darkAzulArdosia;
  final Color _darkCiano;
  final Color _azulManganes;
  final Color _branco;
  final Color _brancoEncardido;

  Tema()
      : _deepVermelhoLaranja = const Color(0xffCD3700),
        _laranjaCadmio = const Color(0xffFF6103),
        _darkAzulArdosia = const Color(0xff2F4F4F),
        _darkCiano = const Color(0xff008B8B),
        _azulManganes = const Color(0xff03A89E),
        _branco = const Color(0xffffffff),
        _brancoEncardido = const Color(0xfff5f5f5) {
    escuro = ThemeData(
      colorScheme: ColorScheme(
        primary: _azulManganes,
        primaryVariant: _darkAzulArdosia,
        secondary: Colors.black45,
        secondaryVariant: Colors.black87,
        surface: Colors.black45,
        background: _brancoEncardido,
        error: _deepVermelhoLaranja,
        onPrimary: _branco,
        onSecondary: _darkAzulArdosia,
        onSurface: _azulManganes,
        onBackground: _azulManganes,
        onError: _brancoEncardido,
        brightness: Brightness.dark,
      ),
      primaryColor: _azulManganes,
      backgroundColor: _brancoEncardido,
      brightness: Brightness.dark,
      indicatorColor: _azulManganes,
      cardColor: _azulManganes,

      //backgroundColor: _brancoEncardido,
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        headline2: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        headline3: const TextStyle(
          color: Colors.white54,
          fontSize: 15,
        ),
        headline4: TextStyle(
          color: _azulManganes,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        bodyText1: TextStyle(
          color: _laranjaCadmio,
          fontWeight: FontWeight.bold,
        ),
        overline: const TextStyle(
          color: Colors.white54,
          fontWeight: FontWeight.w400,
          fontSize: 10,
        ),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        iconTheme: IconThemeData(color: _darkAzulArdosia),
        actionsIconTheme: IconThemeData(color: _azulManganes),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          primary: _darkCiano,
          backgroundColor: Colors.white10,
          shape: const BeveledRectangleBorder(),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(side: BorderSide(color: _azulManganes)),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: _azulManganes,
        unselectedLabelColor: Colors.white54,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
    claro = ThemeData(
      colorScheme: ColorScheme(
        primary: _azulManganes,
        primaryVariant: _darkAzulArdosia,
        secondary: Colors.white,
        secondaryVariant: Colors.black87,
        surface: Colors.black45,
        background: _brancoEncardido,
        error: _deepVermelhoLaranja,
        onPrimary: _branco,
        onSecondary: _darkAzulArdosia,
        onSurface: Colors.black45,
        onBackground: _azulManganes,
        onError: _brancoEncardido,
        brightness: Brightness.light,
      ),
      primaryColor: _azulManganes,
      backgroundColor: _brancoEncardido,
      brightness: Brightness.light,
      indicatorColor: _azulManganes,
      //cardColor: _azulManganes,

      //backgroundColor: _brancoEncardido,
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        headline2: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        headline3: const TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        headline4: TextStyle(
          color: _azulManganes,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        bodyText1: TextStyle(
          color: _laranjaCadmio,
          fontWeight: FontWeight.bold,
        ),
        overline: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontSize: 10,
        ),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        iconTheme: IconThemeData(color: _darkAzulArdosia),
        actionsIconTheme: IconThemeData(color: _azulManganes),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          primary: _darkCiano,
          backgroundColor: Colors.black12,
          shape: const BeveledRectangleBorder(),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(side: BorderSide(color: _azulManganes)),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: _azulManganes,
        unselectedLabelColor: Colors.black26,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
