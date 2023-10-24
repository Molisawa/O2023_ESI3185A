// themes.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes & Styles Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is the Themes & Styles Page!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            RadioListTile(
              title: const Text('Light Theme'),
              value: ThemeData.light(),
              groupValue: themeProvider.getTheme(),
              onChanged: (value) {
                setState(() {
                  themeProvider.setTheme(value as ThemeData);
                });
              },
            ),
            RadioListTile(
              title: const Text('Dark Theme'),
              value: ThemeData.dark(),
              groupValue: themeProvider.getTheme(),
              onChanged: (value) {
                setState(() {
                  themeProvider.setTheme(value as ThemeData);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
