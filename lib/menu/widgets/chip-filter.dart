import 'package:first_app/menu/providers/chip-filter.dart';
import 'package:first_app/menu/widgets/chip-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipFilter extends ConsumerStatefulWidget {
  const ChipFilter({
    super.key,
    required this.listMenu,
  });

  final List<String> listMenu;

  @override
  ConsumerState<ChipFilter> createState() => _ChipFilterState();
}

class _ChipFilterState extends ConsumerState<ChipFilter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.listMenu.map<Widget>(
            (menu) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: ChipButton(
                  menuCode: menu,
                  onClick: () {
                    ref.read(chipFilterProvider.notifier).setFilter(menu);
                  },
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
