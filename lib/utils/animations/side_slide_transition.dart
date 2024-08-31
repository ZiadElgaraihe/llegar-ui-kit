import 'package:flutter/material.dart';
import 'package:llegar/utils/functions/value_based_on_locale.dart';

class SideSlideTransition extends PageRouteBuilder {
  final Widget page;
  SideSlideTransition({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            Offset begin = Offset(
              valueBasedOnLocale<double>(context, ltr: -1, rtl: 1)!,
              0,
            );
            Offset end = const Offset(0, 0);
            Tween<Offset> tween = Tween<Offset>(begin: begin, end: end);
            CurvedAnimation curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.decelerate,
            );
            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          },
        );
}
