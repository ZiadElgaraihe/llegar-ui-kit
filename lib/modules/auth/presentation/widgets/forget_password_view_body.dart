import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/auth/presentation/widgets/forget_password_form.dart';
import 'package:llegar/modules/auth/presentation/widgets/forget_password_process_header.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ForgetPasswordProcessHeader(
                  icon: AppImages.forgetPassword,
                  subTitle: translate(context).enterYourEmailAddress,
                  title: translate(context).forgetPassword,
                ),
                AppSizes.height24,
                Text(
                  translate(context).email,
                  style: AppTextStyles.bold16(context).copyWith(
                    color: valueBasedOnTheme<Color>(
                      context,
                      light: AppColors.black,
                      dark: AppColors.white,
                    )!,
                  ),
                ),
                AppSizes.height8,
                const ForgetPasswordForm(),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: AppSizes.height24),
                CustomElevatedButton(
                  title: translate(context).continueText,
                  onFuturePressed: () async {
                    //remove this & add your logic
                    await Future.delayed(const Duration(seconds: 2));

                    if (!context.mounted) return;
                    Navigator.pushNamed(context, AppRoutes.otpView);
                  },
                ),
                AppSizes.height24,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
