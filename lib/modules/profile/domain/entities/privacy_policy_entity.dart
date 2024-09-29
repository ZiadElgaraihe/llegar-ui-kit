import 'package:flutter/material.dart';

class PrivacyPolicyEntity {
  //Use String Function(BuildContext context) instead of String
  //because i need context to translate title
  final String Function(BuildContext context) title;
  //Use String Function(BuildContext context) instead of String
  //because i need context to translate details
  final String Function(BuildContext context) details;

  const PrivacyPolicyEntity({
    required this.title,
    required this.details,
  });
}
