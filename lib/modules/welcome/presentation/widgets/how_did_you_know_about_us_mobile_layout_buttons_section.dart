import 'package:flutter/material.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_mobile_layout_button.dart';
import 'package:llegar/utils/app_sizes.dart';

class HowDidYouKnowUsMobileLayoutButtonsSection extends StatelessWidget {
  const HowDidYouKnowUsMobileLayoutButtonsSection({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  final int? currentIndex;
  final List<HowDidYouKnowUsItemEntity> items;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < items.length; index++) ...[
          HowDidYouKnowUsMobileLayoutButton(
            howDidYouKnowUsItemEntity: items[index],
            isActive: currentIndex == index,
            onTap: () {
              onTap(index);
            },
          ),
          if (index < items.length - 1) AppSizes.height12,
        ],
      ],
    );
  }
}
