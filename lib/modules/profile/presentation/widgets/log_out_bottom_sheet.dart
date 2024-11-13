import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class LogOutBottomSheet extends StatelessWidget {
  const LogOutBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  translate(context).logOut,
                  style: AppTextStyles.bold24(context).copyWith(
                    color: AppColors.red,
                  ),
                ),
                const Divider(height: 32),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    translate(context).areYouSureYouWantToLogOut,
                    style: AppTextStyles.bold20(context),
                  ),
                ),
                const Expanded(child: AppSizes.height24),
                Row(
                  children: [
                    Flexible(
                      child: CustomSecondaryElevatedButton(
                        title: translate(context).cancel,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    AppSizes.width36,
                    Flexible(
                      child: CustomElevatedButton(
                        title: translate(context).yes,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            AppRoutes.socialLogInView,
                            (route) => false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                AppSizes.height24,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
