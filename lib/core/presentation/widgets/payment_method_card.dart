import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/payment_method_entity.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key,
    this.groupValue,
    this.onChanged,
    required this.paymentMethodEntity,
  });

  final PaymentMethodEntity? groupValue;
  final void Function(PaymentMethodEntity? value)? onChanged;
  final PaymentMethodEntity paymentMethodEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) {
          onChanged!(paymentMethodEntity);
        }
      },
      child: Card(
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
                      color: secondaryThemeColor(context),
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
            trailing: (onChanged != null)
                ? Radio<PaymentMethodEntity>(
                    value: paymentMethodEntity,
                    groupValue: groupValue,
                    onChanged: onChanged,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
