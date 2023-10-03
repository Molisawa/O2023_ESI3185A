import 'package:counter/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExtraTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    final backgroundColor = _getBackgroundColor(counterModel.counter);
    
    return Container(
      color: backgroundColor,

    );
  }

  Color _getBackgroundColor(int number) {
    if (number % 10 == 0 && number <= 100) {
      return Colors.green; // Cambia el color si es múltiplo de 10 hasta 100
    }
    return Colors.blue; // Color fijo
  }
}
