import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/core/presentation/widgets/profile_summary_info_list_tile.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ProfileSummaryInfoSection extends StatelessWidget {
  const ProfileSummaryInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePhoto(
          size: 156,
          side: BorderSide(
            color: mainThemeColor(context),
            width: 3,
          ),
        ),
        AppSizes.height24,
        ProfileSummaryInfoListTile(
          icon: AppIcons.creditCard,
          title: translate(context)
              .madeDeposit, // translate(context).notMadeDeposit
          isPositiveInfo: true, // false if not made a deposite
        ),
        ProfileSummaryInfoListTile(
          icon: AppIcons.paymentDollar,
          title: translate(context)
              .paymentVerified, // translate(context).paymentNotVerified
          isPositiveInfo: true, // false if payment is not verified
        ),
        ProfileSummaryInfoListTile(
          icon: AppIcons.email,
          title: translate(context)
              .emailVerified, // translate(context).emailNotVerified
          isPositiveInfo: true, // false if email is not verified
        ),
        ProfileSummaryInfoListTile(
          icon: AppIcons.profile,
          title: translate(context)
              .hasNotCompleteProfile, // translate(context).hasCompleteProfile
          isPositiveInfo: false, // true if has complete profile
        ),
        ProfileSummaryInfoListTile(
          icon: AppIcons.star,
          title: '4 (34 ${translate(context).reviews})',
          isPositiveInfo: true, // false if rating is less than 3
        ),
        AppSizes.height16,
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            translate(context).email,
            style: AppTextStyles.regular24(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
              color: secondaryThemeColor(context),
            ),
          ),
        ),
        AppSizes.height8,
        CustomTextFormField(
          enabled: false,
          controller: TextEditingController(
            text: 'llegar_test55@gmail.com',
          ),
        ),
      ],
    );
  }
}
