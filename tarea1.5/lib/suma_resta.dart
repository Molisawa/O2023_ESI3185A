import 'package:counter/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '${counterModel.counter}',
          style: Theme.of(context).textTheme.headline4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                counterModel.decrement();
              },
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                counterModel.reset();
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                counterModel.increment();
              },
            ),
          ],
        ),
      ],
    );
  }
}
