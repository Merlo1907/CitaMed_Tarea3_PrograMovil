import 'package:flutter/material.dart';
import 'screens/home_page.dart'; //Importamos la pantalla separada

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const HomeScreen(), //Punto de partida limpio
    );
  }
}