import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/home/presentation/widgets/shipping_address_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ShippingAddressView extends StatelessWidget {
  const ShippingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).shippingAddress,
      ),
      body: const ShippingAddressViewBody(),
    );
  }
}

