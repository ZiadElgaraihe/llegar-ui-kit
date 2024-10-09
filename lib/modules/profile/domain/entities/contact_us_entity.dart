import 'package:flutter/material.dart';

class ContactUsEntity {
  final String icon;
  final void Function(BuildContext context) onPressed;
  //Use String Function(BuildContext context) instead of String
  //because i need context to translate title
  final String Function(BuildContext context) title;

  const ContactUsEntity({
    required this.icon,
    required this.onPressed,
    required this.title,
  });
}
