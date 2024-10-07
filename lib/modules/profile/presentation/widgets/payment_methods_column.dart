import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/payment_method_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/payment_method_card.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class PaymentMethodsColumn extends StatelessWidget {
  const PaymentMethodsColumn({
    super.key,
    required this.items,
    required this.onChanged,
    this.groupValue,
  });

  final PaymentMethodEntity? groupValue;
  final List<PaymentMethodEntity> items;
  final void Function(PaymentMethodEntity? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < items.length; i++) ...[
          PaymentMethodCard(
            groupValue: groupValue,
            onChanged: onChanged,
            paymentMethodEntity: items[i],
          ),
          if (i != items.length - 1) AppSizes.height12,
        ]
      ],
    );
  }
}
