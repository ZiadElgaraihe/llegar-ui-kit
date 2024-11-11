import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class LocationDetailsDataSection extends StatelessWidget {
  const LocationDetailsDataSection({
    super.key,
    required this.title,
    this.controller,
  });

  final TextEditingController? controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.bold16(context),
        ),
        AppSizes.height12,
        CustomTextFormField(
          controller: controller,
        ),
      ],
    );
  }
}
