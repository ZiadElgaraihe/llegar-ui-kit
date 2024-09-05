import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
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
                const CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                ),
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

class ForgetPasswordProcessHeader extends StatelessWidget {
  const ForgetPasswordProcessHeader({
    super.key,
    required this.icon,
    required this.subTitle,
    required this.title,
  });

  final String icon;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSizes.height12,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            children: [
              Text(
                title,
                style: AppTextStyles.bold32(context),
              ),
              const SizedBox(width: 4),
              SvgPicture.asset(icon),
            ],
          ),
        ),
        AppSizes.height12,
        Text(
          subTitle,
          style: AppTextStyles.medium16(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            )!,
          ),
        ),
      ],
    );
  }
}
