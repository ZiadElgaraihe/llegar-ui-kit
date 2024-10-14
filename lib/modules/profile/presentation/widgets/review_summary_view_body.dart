import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/profile/domain/entities/review_summary_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/package_container.dart';
import 'package:llegar/core/presentation/widgets/payment_method_card.dart';
import 'package:llegar/modules/profile/presentation/widgets/total_price_card.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/enums/message_type.dart';
import 'package:llegar/shared/utils/functions/show_message_dialog.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ReviewSummaryViewBody extends StatelessWidget {
  const ReviewSummaryViewBody({
    super.key,
    required this.reviewSummaryEntity,
  });

  final ReviewSummaryEntity reviewSummaryEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height12,
                PackageContainer(
                  premiumPackageEntity:
                      reviewSummaryEntity.premiumPackageEntity,
                ),
                AppSizes.height16,
                TotalPriceCard(
                  premiumPackageEntity:
                      reviewSummaryEntity.premiumPackageEntity,
                ),
                AppSizes.height16,
                PaymentMethodCard(
                  paymentMethodEntity: reviewSummaryEntity.paymentMethodEntity,
                ),
              ],
            ),
          ),
          CustomSliverFillRemainingFooter(
            buttonTitle: translate(context).confirmPayment,
            onFuturePressed: () async {
              await _onConfirmPaymentPressed(context);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _onConfirmPaymentPressed(BuildContext context) async {
    //remove this & add your logic
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;
    showMessageDialog(
      context,
      messageType: MessageType.success,
      title: translate(context).congratulations,
      message: translate(context).youHaveSuccessfullySubscribed,
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
      title: translate(context).paymentFailed,
      message: translate(context).youHaveFailedSubscribed,
    );
    */
  }
}
