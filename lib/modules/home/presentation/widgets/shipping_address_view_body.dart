import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/home/presentation/widgets/shipping_address_choices.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ShippingAddressViewBody extends StatelessWidget {
  const ShippingAddressViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height24,
                ShippingAddressChoices(
                  onSelectAddress: (address) {},
                ),
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).confirm,
          onPressed: () {
            _onConfirmPressed(context);
          },
        ),
      ],
    );
  }

  void _onConfirmPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
