import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/modules/auth/domain/entities/success_view_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/id_photo_section.dart';
import 'package:llegar/modules/auth/presentation/widgets/live_photo_section.dart';
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
          SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height24,
                CustomTextFormField(
                  hintText: translate(context).phoneNumber,
                  keyboardType: TextInputType.phone,
                ),
                AppSizes.height12,
                const LivePhotoSection(),
                AppSizes.height12,
                const IdPhotoSection(),
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
                AppSizes.height24,
              ],
            ),
          )
        ],
      ),
    );
  }
}
