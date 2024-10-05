import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/profile/presentation/widgets/payment_methods_column.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class PaymentMethodsViewBody extends StatelessWidget {
  const PaymentMethodsViewBody({
    super.key,
  });

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
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    translate(context).selectThePaymentMethodYouWantToUse,
                    style: AppTextStyles.medium16(context).copyWith(
                      color: valueBasedOnTheme<Color>(
                        context,
                        light: AppColors.black,
                        dark: AppColors.white,
                      ),
                    ),
                  ),
                ),
                AppSizes.height24,
                PaymentMethodsColumn(
                  onChanged: (value) {},
                ),
                AppSizes.height24,
                CustomSecondaryElevatedButton(
                  onPressed: () {},
                  title: translate(context).addNewCard,
                ),
              ],
            ),
          ),
          CustomSliverFillRemainingFooter(
            buttonTitle: translate(context).continueText,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
