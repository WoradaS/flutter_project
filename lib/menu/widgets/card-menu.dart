import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CardMenu extends StatelessWidget {
  final String title;
  final String assetName;

  const CardMenu({
    super.key,
    required this.title,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("onTap");
      },
      hoverColor: Colors.red,
      splashColor: Colors.blue.withAlpha(30),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 56,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(10, 10, 16, 0.08),
              spreadRadius: 1,
              offset: Offset(3, 3),
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              // width: 56,
              // height: 56,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: FittedBox(
                child: SvgPicture.asset(
                  assetName,
                  width: 56,
                  height: 56,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(52, 64, 84, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
