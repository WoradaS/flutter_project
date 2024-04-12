import 'package:first_app/menu/models/menu.dart';
import 'package:first_app/menu/widgets/card-menu.dart';
import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({
    super.key,
    required this.listsMenu,
  });

  final List<GroupMenu> listsMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      height: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final list in listsMenu)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Group
                Text(
                  list.group,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(16, 24, 40, 1),
                  ),
                ),
                const SizedBox(height: 16),
                // Group Menu
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  shrinkWrap: true,
                  children: [
                    for (final menu in list.listMenu)
                      CardMenu(title: menu, assetName: list.iconAssetName(menu))
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(
                  height: 1,
                  endIndent: 0,
                  color: Color.fromRGBO(228, 231, 236, 1),
                ),
                const SizedBox(height: 16),
              ],
            )
        ],
      ),
    );
  }
}
