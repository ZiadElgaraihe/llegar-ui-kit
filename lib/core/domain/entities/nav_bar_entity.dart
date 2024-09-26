import 'package:flutter/material.dart';

class NavBarEntity {
  final String label;
  final String icon;
  final String activeIcon;
  final Widget page;

  const NavBarEntity({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.page,
  });
}
