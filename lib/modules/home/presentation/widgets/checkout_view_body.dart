import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/core/presentation/widgets/location_item.dart';
import 'package:llegar/modules/home/presentation/widgets/checkout_container.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodySymmetricPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    translate(context).shippingAddress,
                    style: AppTextStyles.bold20(context),
                  ),
                ),
                AppSizes.height16,
                LocationItem(
                  location: '"123 Main St, Apt 4B, Anytown, State 12345"',
                  onEditTapped: () {},
                  title: translate(context).homeLocation,
                ),
                AppSizes.height24,
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    translate(context).item,
                    style: AppTextStyles.bold20(context),
                  ),
                ),
                AppSizes.height16,
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: AppSizes.mediumtBreakpoint,
                    ),
                    child: const ItemWidget(),
                  ),
                ),
                AppSizes.height24,
                const CheckoutContainer(),
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          padding: AppSizes.bodyHorizontalPadding(context),
          buttonTitle: translate(context).continueToPayment,
          onPressed: () {
            _onContinueToPaymentPressed(context);
          },
        ),
      ],
    );
  }

  void _onContinueToPaymentPressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutPaymentView);
  }
}
