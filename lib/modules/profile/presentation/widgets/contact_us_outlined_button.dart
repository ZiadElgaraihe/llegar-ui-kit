import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/profile/domain/entities/contact_us_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ContactUsOutlinedButton extends StatelessWidget {
  const ContactUsOutlinedButton({
    super.key,
    required this.contactUsEntity,
  });

  final ContactUsEntity contactUsEntity;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        futureDelayedNavigator(
          () {
            contactUsEntity.onPressed(context);
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            contactUsEntity.icon,
            colorFilter: valueBasedOnTheme<ColorFilter>(
              context,
              dark: const ColorFilter.mode(
                AppColors.orange,
                BlendMode.srcATop,
              ),
            ),
          ),
          AppSizes.width16,
          Text(
            contactUsEntity.title(context),
            style: AppTextStyles.bold20(context).copyWith(
              color: secondaryThemeColor(context),
            ),
          ),
        ],
      ),
    );
  }
}
