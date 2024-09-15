import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/auth/presentation/widgets/sign_up_profile_info_form.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';

class SignUpProfileInfoViewBody extends StatelessWidget {
  const SignUpProfileInfoViewBody({
    super.key,
  });

  void _onPressed(BuildContext context) {
    Navigator.pushNamed(
      context,
      AppRoutes.signUpIdentificationView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SignUpProfileInfoForm(),
          ),
          CustomSliverFillRemainingFooter(
            buttonTitle: translate(context).continueText,
            onPressed: () {
              _onPressed(context);
            },
          )
        ],
      ),
    );
  }
}
