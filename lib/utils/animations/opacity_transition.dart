import 'package:flutter/material.dart';

class OpacityTransition extends PageRouteBuilder {
  final Widget page;
  OpacityTransition({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
