import 'package:flutter/material.dart';

Future<T?> showCustomModalBottomSheet<T>(
  BuildContext context, {
  required Widget Function(BuildContext context) builder,
  double height = 250,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    constraints: BoxConstraints.expand(height: height),
    enableDrag: true,
    sheetAnimationStyle: AnimationStyle(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
    ),
    builder: builder,
  );
}
