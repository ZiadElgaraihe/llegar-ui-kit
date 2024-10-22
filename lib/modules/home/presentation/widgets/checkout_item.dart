import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({
    super.key,
    required this.price,
    required this.title,
  });

  final String price;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: AppTextStyles.bold16(context).copyWith(
              color: AppColors.black,
            ),
          ),
        ),
        Text(
          price,
          style: AppTextStyles.bold16(context).copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
