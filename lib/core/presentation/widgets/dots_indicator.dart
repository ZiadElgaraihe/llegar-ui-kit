import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.length,
    required this.currentPageIndex,
    required this.dotSize,
    required this.horizontalPadding,
  });

  final int length;
  final int currentPageIndex;
  final double dotSize;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: CustomDot(
            isActive: currentPageIndex == index,
            size: dotSize,
          ),
        ),
      ),
    );
  }
}
