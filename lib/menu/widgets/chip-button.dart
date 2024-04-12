import 'package:first_app/menu/providers/chip-filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipButton extends ConsumerStatefulWidget {
  const ChipButton({
    super.key,
    required this.menuCode,
    required this.onClick,
  });

  final String menuCode;

  final void Function() onClick;

  @override
  ConsumerState<ChipButton> createState() => _ChipButtonState();
}

class _ChipButtonState extends ConsumerState<ChipButton> {
  @override
  Widget build(BuildContext context) {
    ref.watch(chipFilterProvider);

    final isSelected =
        ref.read(chipFilterProvider.notifier).isContained(widget.menuCode);

    if (isSelected) {
      return ElevatedButton(
        onPressed: widget.onClick,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(7, 78, 159, 1),
          minimumSize: Size.zero,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        ),
        child: Text(
          widget.menuCode,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      );
    }
    return OutlinedButton(
      onPressed: widget.onClick,
      style: OutlinedButton.styleFrom(
        side:
            const BorderSide(width: 2, color: Color.fromRGBO(222, 237, 254, 1)),
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),
      child: Text(
        widget.menuCode,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(7, 78, 159, 1),
          //
        ),
      ),
    );
  }
}
