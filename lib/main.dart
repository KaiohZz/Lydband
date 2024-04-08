import 'package:flutter/material.dart';
import 'package:lydband/pages/home.dart';
import 'package:lydband/pages/homepage.dart';
import 'pages/perfil.dart';
import 'pages/config_perfil.dart';
import 'pages/artistas.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home' : (context) => Home(),
        '/perfil' : (context) => const Perfil(),
        '/confiPerfil' : (context) => const ConfigPerfil(),
        '/artistas' : (context) => const Artistas(),
      },
    );
  }
}
