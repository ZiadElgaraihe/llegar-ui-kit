import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/changing_password_process_header.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/auth/presentation/widgets/forget_password_form.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChangingPasswordProcessHeader(
                  icon: AppImages.forgetPassword,
                  subTitle: translate(context).enterYourEmailAddress,
                  title: translate(context).forgetPassword,
                ),
                AppSizes.height24,
                Text(
                  translate(context).email,
                  style: AppTextStyles.bold16(context).copyWith(
                    color: secondaryThemeColor(context),
                  ),
                ),
                AppSizes.height8,
                const ForgetPasswordForm(),
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).continueText,
          onFuturePressed: () async {
            await _onFuturePressed(context);
          },
        ),
      ],
    );
  }

  Future<void> _onFuturePressed(BuildContext context) async {
    //remove this & add your logic
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;
    Navigator.pushNamed(context, AppRoutes.otpView);
  }
}
