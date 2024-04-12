import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipFilterNotifier extends StateNotifier<List<String>> {
  ChipFilterNotifier() : super([]);

  void setFilter(String code) {
    final isContain = isContained(code);

    if (isContain) {
      state = state.where((element) => element != code).toList();
    } else {
      state = [...state, code];
    }
  }

  bool isContained(String code) {
    return state.contains(code);
  }
}

final chipFilterProvider =
    StateNotifierProvider<ChipFilterNotifier, List<String>>(
        (ref) => ChipFilterNotifier());
