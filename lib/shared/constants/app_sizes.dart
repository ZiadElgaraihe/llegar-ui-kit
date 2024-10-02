import 'package:flutter/material.dart';

///This class contains all sizes like breakpoints, padding, sizedBox & more
abstract class AppSizes {
  ///600
  static const double mediumtBreakpoint = 600;

  ///840
  static const double expandedBreakpoint = 840;

  ///1200
  static const double largeBreakpoint = 1200;

  ///1600
  static const double extraLargeBreakpoint = 1600;

  ///if width < 600 then padding is 16 horizontally
  ///else then padding is 24 horizontally
  ///
  ///For more information, see the spacing section:
  ///
  ///https://m3.material.io/foundations/layout/applying-layout/compact
  static EdgeInsets bodyHorizontalPadding(BuildContext context) =>
      EdgeInsets.symmetric(
        horizontal:
            MediaQuery.sizeOf(context).width < mediumtBreakpoint ? 16 : 24,
      );

  ///if width < 600 then padding is 16 horizontally
  ///else then padding is 24 horizontally, 
  ///24 vertically
  static EdgeInsets bodySymmetricPadding(BuildContext context) =>
      EdgeInsets.symmetric(
        horizontal:
            MediaQuery.sizeOf(context).width < mediumtBreakpoint ? 16 : 24,
        vertical: 24,
      );

  ///SizedBox(height: 4)
  static const height4 = SizedBox(height: 4);

  ///SizedBox(height: 8)
  static const height8 = SizedBox(height: 8);

  ///SizedBox(height: 12)
  static const height12 = SizedBox(height: 12);

  ///SizedBox(height: 16)
  static const height16 = SizedBox(height: 16);

  ///SizedBox(height: 24)
  static const height24 = SizedBox(height: 24);

  ///SizedBox(height: 48)
  static const height48 = SizedBox(height: 48);

  ///SizedBox(width: 4)
  static const width4 = SizedBox(width: 4);

  ///SizedBox(width: 8)
  static const width8 = SizedBox(width: 8);

  ///SizedBox(width: 12)
  static const width12 = SizedBox(width: 12);

  ///SizedBox(width: 16)
  static const width16 = SizedBox(width: 16);

  ///SizedBox(width: 24)
  static const width24 = SizedBox(width: 24);

  ///SizedBox(width: 36)
  static const width36 = SizedBox(width: 36);
}
