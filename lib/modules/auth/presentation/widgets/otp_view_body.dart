import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/changing_password_process_header.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/auth/presentation/widgets/otp_form.dart';
import 'package:llegar/modules/auth/presentation/widgets/resend_code_section.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                ChangingPasswordProcessHeader(
                  icon: AppImages.youHaveGotMail,
                  subTitle: translate(context).weHaveSentTheOtpVerificationCode,
                  title: translate(context).youHaveGotMail,
                ),
                AppSizes.height24,
                const OtpForm(),
                AppSizes.height24,
                ResendCodeSection(
                  onResendCode: () async {
                    //remove this & add your logic
                    await Future.delayed(const Duration(seconds: 2));
                  },
                ),
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
    Navigator.pushNamed(context, AppRoutes.resetPasswordView);
  }
}
