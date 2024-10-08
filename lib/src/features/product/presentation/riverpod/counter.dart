import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

class CountNotifier extends StateNotifier<int> {
  int id;
  int _maxLimit;

  CountNotifier(
    this.id,
    this._maxLimit,
  ) : super(1);

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

  void setValue(int value) {
    state = value.clamp(1, _maxLimit);
  }
}

final countProviderGroup = StateNotifierProvider.family
    .autoDispose<CountNotifier, int, int>((ref, param) {
  return CountNotifier(param, 1);
});

final countProvider =
    StateNotifierProvider.autoDispose<CountNotifier, int>((ref) {
  final countNotifier = CountNotifier(1, 1);
  return countNotifier;
});
