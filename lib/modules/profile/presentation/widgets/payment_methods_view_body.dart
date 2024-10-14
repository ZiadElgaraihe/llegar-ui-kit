import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_payment_section.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/core/domain/entities/payment_method_entity.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/domain/entities/review_summary_entity.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class PaymentMethodsViewBody extends StatefulWidget {
  const PaymentMethodsViewBody({
    super.key,
    required this.premiumPackageEntity,
  });

  final PremiumPackageEntity premiumPackageEntity;

  @override
  State<PaymentMethodsViewBody> createState() => _PaymentMethodsViewBodyState();
}

class _PaymentMethodsViewBodyState extends State<PaymentMethodsViewBody> {
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
