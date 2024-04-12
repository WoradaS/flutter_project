import 'package:flutter/material.dart';

class GroupMenu {
  const GroupMenu({
    required this.group,
    required this.listMenu,
  });

  final String group;
  final List<String> listMenu;

  String iconAssetName(String menu) {
    return "assets/Icons/CreatePallet.svg";
  }
}
