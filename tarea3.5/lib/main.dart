import 'package:flutter/material.dart';
import 'package:tarea/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:
            const Color(0xFF201A18), // Fondo de la aplicación
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF201A18), // Color de la AppBar
          centerTitle: true, // Centra el título
        ),
      ),
      home: const HomePage(),
    );
  }
}
