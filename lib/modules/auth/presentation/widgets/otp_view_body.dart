import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/presentation/widgets/forget_password_view_body.dart';
import 'package:llegar/modules/auth/presentation/widgets/otp_form.dart';
import 'package:llegar/modules/auth/presentation/widgets/resend_code_section.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                ForgetPasswordProcessHeader(
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
          )
        ],
      ),
    );
  }
}
