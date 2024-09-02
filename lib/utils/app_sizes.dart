import 'package:flutter/material.dart';

///This class contains all sizes like breakpoints, padding, sizedBox & more
abstract class AppSizes {
  ///600
  static const double tabletBreakpoint = 600;

  ///900
  static const double webBreakpoint = 900;

  ///if width < 600 then padding is 16 horizontally
  ///else then padding is 24 horizontally
  static EdgeInsets bodyHorizontalPadding(BuildContext context) =>
      EdgeInsets.symmetric(
        horizontal:
            MediaQuery.sizeOf(context).width < tabletBreakpoint ? 16 : 24,
      );
}
