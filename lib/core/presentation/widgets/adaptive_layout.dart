import 'package:flutter/material.dart';
import 'package:llegar/utils/app_sizes.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.webLayout,
    this.tabletLayout,
  });

  final WidgetBuilder mobileLayout, webLayout;
  final WidgetBuilder? tabletLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= AppSizes.tabletBreakpoint) {
          return mobileLayout(context);
        } else if (constraints.maxWidth <= AppSizes.webBreakpoint) {
          if (tabletLayout != null) {
            return tabletLayout!(context);
          } else {
            return mobileLayout(context);
          }
        } else {
          return webLayout(context);
        }
      },
    );
  }
}
