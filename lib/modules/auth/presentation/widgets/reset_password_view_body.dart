import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/auth/presentation/widgets/forget_password_process_header.dart';
import 'package:llegar/modules/auth/presentation/widgets/reset_password_form.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ForgetPasswordProcessHeader(
                  icon: AppImages.createNewPassword,
                  subTitle: translate(context).saveTheNewPasswordInSafePlace,
                  title: translate(context).createNewPassword,
                ),
                AppSizes.height24,
                const ResetPasswordForm(),
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
