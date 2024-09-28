import 'package:flutter/material.dart';

class ContactUsEntity {
  final String icon;
  final VoidCallback onPressed;
  final String Function(BuildContext context) title;

  const ContactUsEntity({
    required this.icon,
    required this.onPressed,
    required this.title,
  });
}
