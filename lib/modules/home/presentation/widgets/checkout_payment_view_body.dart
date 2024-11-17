import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_payment_section.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/enums/message_type.dart';
import 'package:llegar/shared/utils/functions/show_message_dialog.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class CheckoutPaymentViewBody extends StatelessWidget {
  const CheckoutPaymentViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverToBoxAdapter(
            child: CustomPaymentSection(
              onChanged: (paymentMethodEntity) {},
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).continueText,
          onFuturePressed: () async {
            await _onContinuePressed(context);
          },
        ),
      ],
    );
  }

  Future<void> _onContinuePressed(BuildContext context) async {
    //remove this & add your logic
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;
    showMessageDialog(
      context,
      messageType: MessageType.success,
      title: translate(context).rentSuccessful,
      message: translate(context).youHaveSuccessfullyMadeRent,
    ).then(
      (value) {
        if (!context.mounted) return;
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.navBarView,
          (route) => false,
        );
      },
    );

    //You can use this code in case of failure
    /*
    showMessageDialog(
      context,
      messageType: MessageType.failed,
      title: translate(context).rentFailed,
      message: translate(context).unfortunatelyTheRentalProcessCouldNotBeCompleted,
    )
    */
  }
}
