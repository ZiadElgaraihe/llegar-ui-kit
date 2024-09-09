import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_animated_dropdown.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/modules/auth/presentation/widgets/birth_date_text_form_field.dart';
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
          SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height24,
                CustomTextFormField(hintText: translate(context).fullName),
                AppSizes.height12,
                CustomTextFormField(hintText: translate(context).userName),
                AppSizes.height12,
                BirthDateTextFormField(
                  onDatePicked: (date) {},
                ),
                AppSizes.height24,
                CustomAnimatedDropdown<String>(
                  hintText: translate(context).gender,
                  items: <String>[
                    translate(context).male,
                    translate(context).female,
                  ],
                ),
                AppSizes.height24,
                CustomAnimatedDropdown<String>(
                  hintText: translate(context).city,
                  items: <String>[
                    translate(context).jerusalem,
                    translate(context).baghdad,
                    translate(context).damascus,
                    translate(context).cairo,
                    translate(context).rabat,
                  ],
                ),
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
