import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class WalletTopUpListTile extends StatelessWidget {
  const WalletTopUpListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 56,
        width: 56,
        decoration: const BoxDecoration(
          color: AppColors.antiFlashWhite,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppIcons.wallet,
              dark: AppIcons.walletDark,
            )!,
          ),
        ),
      ),
      title: Text(
        translate(context).topUpWallet,
        style: AppTextStyles.medium20(context).copyWith(
          fontFamily: AppStrings.interFontFamily,
        ),
      ),
      subtitle: Text(
        'Jan 14, 2023 | 03:16 PM',
        style: AppTextStyles.regular16(context).copyWith(
          fontFamily: AppStrings.interFontFamily,
          color: secondaryThemeColor(context),
        ),
      ),
      trailing: Text(
        '\$140.00',
        style: AppTextStyles.medium20(context).copyWith(
          fontFamily: AppStrings.interFontFamily,
          color: secondaryThemeColor(context),
        ),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
