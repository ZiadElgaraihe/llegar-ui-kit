import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/auth/presentation/widgets/sign_up_profile_info_form.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';

class SignUpProfileInfoViewBody extends StatelessWidget {
  const SignUpProfileInfoViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SignUpProfileInfoForm(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: AppSizes.height24),
                CustomElevatedButton(
                  title: translate(context).continueText,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.signUpIdentificationView,
                    );
                  },
                ),
                AppSizes.height24,
              ],
            ),
          )
        ],
      ),
    );
  }
}
