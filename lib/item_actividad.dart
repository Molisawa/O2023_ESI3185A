import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  final int index;
  final String day;
  final String lugar;

  ItemActividad({required this.index, required this.day, required this.lugar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                image: AssetImage('assets/images/image_$index.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(day, style: TextStyle(fontSize: 11)),
          Text(lugar),
        ],
      ),
    );
  }
}
