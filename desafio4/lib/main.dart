// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'navigation.dart';
import 'state_management.dart';
import 'themes.dart';
import 'theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(ThemeData.light()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Flutter App',
          theme: themeProvider.getTheme(),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/second': (context) => const SecondPage(),
            '/counter': (context) => const CounterPage(),
            '/themes': (context) => const ThemePage(),
          },
        );
      },
    );
  }
}
