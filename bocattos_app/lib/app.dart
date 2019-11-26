import 'package:flutter/material.dart';
import 'package:bocattos_app/ui/screens/login.dart';
import 'package:bocattos_app/ui/theme.dart';
import 'package:bocattos_app/ui/screens/home.dart';

class BocattosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bocattos',
      theme: buildTheme(),
      initialRoute: '/login',
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}