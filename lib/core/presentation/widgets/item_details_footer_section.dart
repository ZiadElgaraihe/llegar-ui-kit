import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemDetailsFooterSection extends StatelessWidget {
  const ItemDetailsFooterSection({
    super.key,
  });

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
          //This button will be hidden if the item is unavailable.
          SizedBox(
            width: 180,
            child: CustomElevatedButton(
              //if item is negotiable make title "translate(context).makeAnOffer"
              title: translate(context).rentNow,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
