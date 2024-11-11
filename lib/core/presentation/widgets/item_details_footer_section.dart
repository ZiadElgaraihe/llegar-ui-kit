import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemDetailsFooterSection extends StatelessWidget {
  const ItemDetailsFooterSection({
    super.key,
    required this.isMyItem,
  });

  final bool isMyItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.bodySymmetricPadding(context),
      decoration: BoxDecoration(
        border: Border.all(
          color: mainThemeColor(context),
          width: 4,
        ),
      ),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                translate(context).price,
                style: AppTextStyles.semiBold20(context).copyWith(
                  fontFamily: AppStrings.urbanistFontFamily,
                ),
              ),
              Text(
                '\$50 /${translate(context).day}',
                style: AppTextStyles.bold32(context),
              ),
            ],
          ),

          //This button will be hidden if the item is unavailable or is my item.

          //if item is negotiable use this code
          if (!isMyItem)
            SizedBox(
              width: 180,
              child: CustomElevatedButton(
                title: translate(context).makeAnOffer,
                onPressed: () {
                  _onMakeAnOfferPressed(context);
                },
              ),
            ),

          //if item is not negotiable use this code
          // SizedBox(
          //   width: 180,
          //   child: CustomElevatedButton(
          //     title: translate(context).rentNow,
          //     onFuturePressed: () async {
          //       await _onRentNowPressed(context);
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }

  void _onMakeAnOfferPressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.makeAnOfferView);
  }

  // Future<void> _onRentNowPressed(BuildContext context) async {
  //   //remove this & add your logic
  //   await Future.delayed(const Duration(seconds: 2));

  //   if (!context.mounted) return;
  //   Navigator.pushNamedAndRemoveUntil(
  //     context,
  //     AppRoutes.offerProcessingView,
  //     (route) => false,
  //   );
  // }
}
