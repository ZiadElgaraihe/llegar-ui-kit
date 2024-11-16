import 'package:flutter/material.dart';

Future<T?> showCustomModalBottomSheet<T>(
  BuildContext context, {
  required Widget Function(BuildContext context) builder,
  bool isConstraintsSpecified = true,
  double height = 250,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    constraints:
        isConstraintsSpecified ? BoxConstraints.expand(height: height) : null,
    enableDrag: true,
    sheetAnimationStyle: AnimationStyle(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
    ),
    builder: builder,
  );
}
