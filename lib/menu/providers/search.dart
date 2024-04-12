import 'package:first_app/menu/debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchNotifier extends StateNotifier<String> {
  final _debouncer = Debouncer();

  SearchNotifier() : super("");

  void onTyping(String txt, {Function? after}) {
    _debouncer.run(() {
      if (after != null) {
        after();
      }
      state = txt;
    });
  }

  void reset() {
    state = "";
  }

  String get clean {
    return state.trim();
  }
}

final searchProvider =
    StateNotifierProvider<SearchNotifier, String>((ref) => SearchNotifier());
