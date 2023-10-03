import 'package:counter/home_page.dart';
import 'package:counter/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => CounterModel(),
        child: const MyApp(title: 'contador v2',),
      ),
    ),
  );
}



