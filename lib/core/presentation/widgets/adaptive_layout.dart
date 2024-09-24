import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

///This class's values are taken from material website
///
///https://m3.material.io/foundations/layout/applying-layout/window-size-classes
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.compactLayout,
    required this.mediumLayout,
    required this.expandedLayout,
    required this.largeLayout,
    required this.extraLargeLayout,
  });

  ///portrait phone
  final WidgetBuilder compactLayout;

  ///portrait tablet & foldable
  final WidgetBuilder mediumLayout;

  ///landscape phone, tablet, foldable & desktop
  final WidgetBuilder expandedLayout;

  ///desktop
  final WidgetBuilder largeLayout;

  ///ultra wide desktop
  final WidgetBuilder extraLargeLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //width < 600
        if (constraints.maxWidth < AppSizes.mediumtBreakpoint) {
          return compactLayout(context);
        } 
        //600 ≤ width < 840
        else if (constraints.maxWidth < AppSizes.expandedBreakpoint) {
          return mediumLayout(context);
        } 
        //840 ≤ width < 1200
        else if (constraints.maxWidth < AppSizes.largeBreakpoint) {
          return expandedLayout(context);
        } 
        //1200 ≤ width < 1600
        else if (constraints.maxWidth < AppSizes.extraLargeBreakpoint) {
          return largeLayout(context);
        } 
        //1600 ≤ width
        else {
          return extraLargeLayout(context);
        }
      },
    );
  }
}
