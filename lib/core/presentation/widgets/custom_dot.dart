import 'package:flutter/material.dart';
import 'package:llegar/utils/app_colors.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key,
    required this.isActive,
    required this.size,
  });

  final bool isActive;
  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: size,
      width: isActive ? size * 4 : size,
      decoration: BoxDecoration(
        color: isActive ? AppColors.prussianBlue : AppColors.lightGrey,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
