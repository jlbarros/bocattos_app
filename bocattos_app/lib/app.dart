import 'package:flutter/material.dart';
import 'package:bocattos_app/ui/screens/login.dart';

class BocattosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bocattos',
      initialRoute: '/login',
      routes: {
        // Si usamos rutas de navegación, Flutter necesita
        // una ruta base. Cambiaremos esto una vez que 
        // hayamos creado una implementado de HomeScreen.
        '/': (context) => LoginScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}