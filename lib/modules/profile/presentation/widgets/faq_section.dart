import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/profile/presentation/widgets/faq_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: AppSizes.height24),
                const FaqTextFormField(),
                const Expanded(flex: 2, child: AppSizes.height24),
                CustomElevatedButton(
                  title: translate(context).send,
                  onFuturePressed: () async {},
                ),
                AppSizes.height24,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
