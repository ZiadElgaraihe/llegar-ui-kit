import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/auth/domain/entities/success_view_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/forget_password_process_header.dart';
import 'package:llegar/modules/auth/presentation/widgets/reset_password_form.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

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
                  subTitle: translate(context).yourPasswordHasBeenUpdated,
                  title: translate(context).passwordChangedSuccessfully,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
