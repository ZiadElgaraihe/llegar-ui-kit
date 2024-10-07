import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/profile/domain/entities/payment_method_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.paymentMethodEntity,
  });

  final String? groupValue;
  final void Function(String? value) onChanged;
  final PaymentMethodEntity paymentMethodEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: SvgPicture.asset(paymentMethodEntity.icon),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  paymentMethodEntity.title,
                  style: AppTextStyles.bold20(context).copyWith(
                    color: valueBasedOnTheme<Color>(
                      context,
                      light: AppColors.black,
                      dark: AppColors.white,
                    ),
                  ),
                  textAlign: valueBasedOnLocale<TextAlign>(
                    context,
                    ltr: TextAlign.start,
                    rtl: TextAlign.end,
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ),
              if (paymentMethodEntity.walletMoney != null)
                Expanded(
                  child: Text(
                    '\$${paymentMethodEntity.walletMoney}',
                    style: AppTextStyles.bold20(context),
                    textAlign: TextAlign.end,
                  ),
                ),
            ],
          ),
          trailing: Radio<String>(
            value: paymentMethodEntity.title,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
