import 'package:counter/extra.dart';
import 'package:counter/mul.dart';
import 'package:counter/primo.dart';
import 'package:counter/suma_resta.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    CounterTab(),
    MultiplyTab(),
    PrimeTab(),
    ExtraTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
            label: 'Suma/Resta',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fiber_manual_record_outlined,
              color: Colors.black,
            ),
            label: 'Multiplica',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity,
              color: Colors.black,
            ),
            label: 'Primo',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.extension_rounded,
              color: Colors.black,
            ),
            label: 'Extra',
          ),
        ],
      ),
    );
  }
}
