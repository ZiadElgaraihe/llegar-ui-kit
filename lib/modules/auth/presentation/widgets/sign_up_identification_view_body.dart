import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/auth/domain/entities/success_view_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/sign_up_identification_form.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';

class SignUpIdentificationViewBody extends StatelessWidget {
  const SignUpIdentificationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SignUpIdentificationForm(),
          ),
          CustomSliverFillRemainingFooter(
            buttonTitle: translate(context).continueText,
            onFuturePressed: () async {
              //remove this & add your logic
              await Future.delayed(const Duration(seconds: 2));

              if (!context.mounted) return;
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.successView,
                (route) => false,
                arguments: SuccessViewEntity(
                  subTitle: translate(context).welcomeToLlegar,
                  title: translate(context).successfulSignUp,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
