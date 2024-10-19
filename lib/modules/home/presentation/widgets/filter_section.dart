import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/options_bar.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
    required this.items,
    required this.onSelectCategory,
    required this.title,
    this.builder,
  });

  final Widget Function(String item, bool isSelected)? builder;
  final List<String> items;
  final void Function(String value) onSelectCategory;
  final String title;

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
              title,
              style: AppTextStyles.bold20(context),
            ),
          ),
          AppSizes.height12,
          OptionsBar(
            builder: builder,
            items: items,
            onSelectCategory: onSelectCategory,
          ),
        ],
      ),
    );
  }
}
