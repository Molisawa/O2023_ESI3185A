import 'package:counter/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PrimeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    final isPrime = _isPrime(counterModel.counter);

    return Center(
      child: Text(
        isPrime ? 'Primo' : 'No Primo',
        style: TextStyle(
          color: isPrime ? Colors.green : Colors.blue,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  bool _isPrime(int number) {
    if (number <= 1) return false;
    if (number <= 3) return true;
    if (number % 2 == 0 || number % 3 == 0) return false;
    for (int i = 5; i * i <= number; i += 6) {
      if (number % i == 0 || number % (i + 2) == 0) return false;
    }
    return true;
  }
}
