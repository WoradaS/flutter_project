import 'package:first_app/menu/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'แสดงทั้งหมด',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          actions: [],
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(246, 247, 249, 1),
            // color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: const MenuScreen(),
        ),
      ),
    );
  }
}
