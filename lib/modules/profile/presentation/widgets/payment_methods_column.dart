import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/payment_method_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/payment_method_card.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class PaymentMethodsColumn extends StatefulWidget {
  const PaymentMethodsColumn({
    super.key,
    this.canPayWithMyWallet = true,
    required this.onChanged,
  });

  ///This value will consistently remain true except during my wallet payments.
  final bool canPayWithMyWallet;
  final void Function(String? value) onChanged;

  @override
  State<PaymentMethodsColumn> createState() => _PaymentMethodsColumnState();
}

class _PaymentMethodsColumnState extends State<PaymentMethodsColumn> {
  String? _groupValue;

  // These items can be replaced with your specific payment methods
  //retrieved from the backend as a parameter.
  late List<PaymentMethodEntity> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = <PaymentMethodEntity>[
      if (widget.canPayWithMyWallet)
        PaymentMethodEntity(
          icon: valueBasedOnTheme<String>(
            context,
            light: AppIcons.wallet,
            dark: AppIcons.walletDark,
          )!,
          title: translate(context).myWallet,
          walletMoney: '420.50',
        ),
      PaymentMethodEntity(
        icon: AppIcons.paypal,
        title: translate(context).payPal,
      ),
      PaymentMethodEntity(
        icon: AppIcons.google,
        title: translate(context).googlePay,
      ),
      PaymentMethodEntity(
        icon: valueBasedOnTheme<String>(
          context,
          light: AppIcons.apple,
          dark: AppIcons.appleDark,
        )!,
        title: translate(context).applePay,
      ),
      const PaymentMethodEntity(
        icon: AppIcons.masterCard,
        title: '.... .... .... .... 4489',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < _items.length; i++) ...[
          PaymentMethodCard(
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value!;
              setState(() {});
              widget.onChanged(value);
            },
            paymentMethodEntity: _items[i],
          ),
          if (i != _items.length - 1) AppSizes.height12,
        ]
      ],
    );
  }
}
