import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/custom_range_slider.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class FilterPriceRangeSection extends StatelessWidget {
  const FilterPriceRangeSection({
    super.key,
    required this.onChanged,
  });

  final void Function(RangeValues rangeValues) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppSizes.bodyHorizontalPadding(context),
            child: Text(
              translate(context).priceRange,
              style: AppTextStyles.bold20(context),
            ),
          ),
          AppSizes.height24,
          CustomRangeSlider(onChanged: onChanged),
        ],
      ),
    );
  }
}
