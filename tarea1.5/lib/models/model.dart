import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment([int value = 1]) {
    _counter += value;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  int multiplyBy(int value) {
    _counter *= value;
    notifyListeners();
    return _counter; // Devuelve el valor actualizado
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }
}
