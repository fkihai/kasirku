import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountNotifier extends StateNotifier<int> {
  int _maxLimit;

  CountNotifier(this._maxLimit) : super(1);
  void increment() {
    state++;
    if (state > _maxLimit) state = _maxLimit;
  }

  void decrement() {
    state--;
    if (state < 1) state = 1;
  }

  void setLimit(int newLimit) {
    _maxLimit = newLimit;
  }

  void reset() {
    state = 1;
  }
}

final countProvider =
    StateNotifierProvider.autoDispose<CountNotifier, int>((ref) {
  final countNotifier = CountNotifier(1);
  return countNotifier;
});
