import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/utils/app_sizes.dart';

class CustomSliverFillRemainingFooter extends StatelessWidget {
  const CustomSliverFillRemainingFooter({
    super.key,
    required this.buttonTitle,
    this.onFuturePressed,
    this.onPressed,
  });

  final String buttonTitle;
  final Future<void> Function()? onFuturePressed;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          const Expanded(child: AppSizes.height24),
          CustomElevatedButton(
            title: buttonTitle,
            onFuturePressed: onFuturePressed,
            onPressed: onPressed,
          ),
          AppSizes.height24,
        ],
      ),
    );
  }
}
