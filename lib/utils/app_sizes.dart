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

  ///SizedBox(height: 4)
  static const height4 = SizedBox(height: 4);
  
  ///SizedBox(height: 12)
  static const height12 = SizedBox(height: 12);

  ///SizedBox(height: 16)
  static const height16 = SizedBox(height: 16);

  ///SizedBox(height: 24)
  static const height24 = SizedBox(height: 24);

  ///SizedBox(height: 48)
  static const height48 = SizedBox(height: 48);

  ///SizedBox(width: 8)
  static const width8 = SizedBox(width: 8);

  ///SizedBox(width: 16)
  static const width16 = SizedBox(width: 16);
}
