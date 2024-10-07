import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/payment_methods_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class PaymentMethodsView extends StatelessWidget {
  const PaymentMethodsView({
    super.key,
    required this.premiumPackageEntity,
  });

  final PremiumPackageEntity premiumPackageEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).paymentMethods,
      ),
      body: PaymentMethodsViewBody(
        premiumPackageEntity: premiumPackageEntity,
      ),
    );
  }
}
