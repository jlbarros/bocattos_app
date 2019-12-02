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
      // Usado en el título de las recetas
      title: base.title.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 15.0,
        color: const Color(0xFF807A6B),
      ),
      // Usado para la duración de las recetas
      caption: base.caption.copyWith(
        color: const Color(0xFFCCC5AF),
      ),
    );
  }

  // Queremos sobreescribir un tema blue light por defecto
  final ThemeData base = ThemeData.light();

  //Luego le aplicamos los cambios a este:
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: const Color(0xFFFFF8E1),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    accentColor: const Color(0xFFFFF8E1),
    iconTheme: IconThemeData(
      color: const Color(0xFFCCC5AF),
      size: 20.0,
    ),
    buttonColor: Colors.white,
  );
}


