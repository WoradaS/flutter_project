import 'package:first_app/menu/mock.dart';
import 'package:first_app/menu/widgets/chip-filter.dart';
import 'package:first_app/menu/widgets/list-menu.dart';
import 'package:first_app/menu/widgets/search.dart';
import 'package:flutter/material.dart';


class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Search(),
          SizedBox(height: 16),
          ChipFilter(listMenu: LIST_GROUP),
          SizedBox(height: 16),
          ListMenu(listsMenu: LIST_MENU),
        ],
      ),
    );
  }
}
