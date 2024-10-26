import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/checkout_item.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class CheckoutContainer extends StatelessWidget {
  const CheckoutContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.antiFlashWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          CheckoutItem(
            title: translate(context).amount,
            price: '\$50',
          ),
          AppSizes.height16,
          CheckoutItem(
            title: translate(context).shipping,
            price: '-',
          ),
          AppSizes.height16,
          CheckoutItem(
            title: translate(context).commission,
            price: '\$10',
          ),
          AppSizes.height16,
          CheckoutItem(
            title: translate(context).total,
            price: '\$60',
          ),
        ],
      ),
    );
  }
}
