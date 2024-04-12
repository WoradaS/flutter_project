import 'package:first_app/menu/providers/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Search extends ConsumerStatefulWidget {
  const Search({super.key});

  @override
  ConsumerState<Search> createState() => _SearchState();
}

class _SearchState extends ConsumerState<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: TextField(
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(228, 231, 236, 1),
            ),
            gapPadding: 2,
          ),
          prefixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.search,
            ),
          ),
          labelText: 'ค้นหา',
        ),
        onChanged: (text) {
          debugPrint("onChanged $text");
          ref.read(searchProvider.notifier).onTyping(text);
        },
      ),
    );
  }
}
