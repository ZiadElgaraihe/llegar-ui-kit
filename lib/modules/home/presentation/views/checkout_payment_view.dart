import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/home/presentation/widgets/checkout_payment_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class CheckoutPaymentView extends StatelessWidget {
  const CheckoutPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).paymentMethods,
      ),
      body: const CheckoutPaymentViewBody(),
    );
  }
}
