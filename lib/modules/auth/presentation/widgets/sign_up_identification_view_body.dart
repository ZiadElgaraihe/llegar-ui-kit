import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/modules/auth/presentation/widgets/id_photo_section.dart';
import 'package:llegar/modules/auth/presentation/widgets/live_photo_section.dart';
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
                  onFuturePressed: () async {},
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
