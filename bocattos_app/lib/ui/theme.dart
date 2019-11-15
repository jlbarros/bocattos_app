import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // Vamos a definir todos nuestros estilos de
  // letra en este método:
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 40.0,
        color: const Color(0xFF807a6b),
      ),
    );
  }

  // Queremos sobreescribir un tema blue light por defecto
  final ThemeData base = ThemeData.light();

  //Luego le aplicamos los cambios a este:
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
  );
}


