import 'package:counter/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MultiplyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '${counterModel.counter}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20), // Espacio entre el Text y los botones
          ElevatedButton(
            onPressed: () {
              final result = counterModel.multiplyBy(2);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Multiplicado por 2: $result'),
                ),
              );
            },
            child: const Text('Multiplicar x2'),
          ),
          const SizedBox(height: 10), // Espacio entre los botones
          ElevatedButton(
            onPressed: () {
              final result = counterModel.multiplyBy(3);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Multiplicado por 3: $result'),
                ),
              );
            },
            child: const Text('Multiplicar x3'),
          ),
          const SizedBox(height: 10), // Espacio entre los botones
          ElevatedButton(
            onPressed: () {
              final result = counterModel.multiplyBy(5);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Multiplicado por 5: $result'),
                ),
              );
            },
            child: const Text('Multiplicar x5'),
          ),
        ],
      ),
    );
  }
}
