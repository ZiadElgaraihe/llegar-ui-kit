import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/profile/domain/entities/payment_method_entity.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/domain/entities/review_summary_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/payment_methods_column.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

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
  late ValueNotifier<PaymentMethodEntity> _groupValue;

  // These items can be replaced with your specific payment methods
  //retrieved from the backend as a parameter.
  late List<PaymentMethodEntity> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = <PaymentMethodEntity>[
      PaymentMethodEntity(
        icon: valueBasedOnTheme<String>(
          context,
          light: AppIcons.wallet,
          dark: AppIcons.walletDark,
        )!,
        title: translate(context).myWallet,
        walletMoney: '420.50',
      ),
      PaymentMethodEntity(
        icon: AppIcons.paypal,
        title: translate(context).payPal,
      ),
      PaymentMethodEntity(
        icon: AppIcons.google,
        title: translate(context).googlePay,
      ),
      PaymentMethodEntity(
        icon: valueBasedOnTheme<String>(
          context,
          light: AppIcons.apple,
          dark: AppIcons.appleDark,
        )!,
        title: translate(context).applePay,
      ),
      const PaymentMethodEntity(
        icon: AppIcons.masterCard,
        title: '.... .... .... .... 4489',
      ),
    ];

    _groupValue = ValueNotifier<PaymentMethodEntity>(_items[0]);
  }

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
                ValueListenableBuilder(
                  valueListenable: _groupValue,
                  builder: (context, groupValue, child) => PaymentMethodsColumn(
                    items: _items,
                    groupValue: groupValue,
                    onChanged: (value) {
                      _groupValue.value = value!;
                    },
                  ),
                ),
                AppSizes.height24,
                CustomSecondaryElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.addNewCardView);
                  },
                  title: translate(context).addNewCard,
                ),
              ],
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
                  paymentMethodEntity: _groupValue.value,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
