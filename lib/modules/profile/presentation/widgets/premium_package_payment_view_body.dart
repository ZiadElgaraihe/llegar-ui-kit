import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/payment_method_entity.dart';
import 'package:llegar/core/presentation/widgets/custom_payment_section.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/domain/entities/review_summary_entity.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class PremiumPackagePaymentViewBody extends StatefulWidget {
  const PremiumPackagePaymentViewBody({
    super.key,
    required this.premiumPackageEntity,
  });

  final PremiumPackageEntity premiumPackageEntity;

  @override
  State<PremiumPackagePaymentViewBody> createState() =>
      _PremiumPackagePaymentViewBodyState();
}

class _PremiumPackagePaymentViewBodyState
    extends State<PremiumPackagePaymentViewBody> {
  late PaymentMethodEntity _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomPaymentSection(
              onChanged: (paymentMethodEntity) {
                _selectedPaymentMethod = paymentMethodEntity!;
              },
            ),
          ),
          CustomSliverFillRemainingFooter(
            buttonTitle: translate(context).continueText,
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.reviewSummaryView,
                arguments: ReviewSummaryEntity(
                  premiumPackageEntity: widget.premiumPackageEntity,
                  paymentMethodEntity: _selectedPaymentMethod,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
