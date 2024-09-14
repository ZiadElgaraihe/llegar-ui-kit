import 'package:flutter/material.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_tablet_layout_button.dart';
import 'package:llegar/utils/app_sizes.dart';

class HowDidYouKnowUsTabletLayoutButtonsSection extends StatelessWidget {
  const HowDidYouKnowUsTabletLayoutButtonsSection({
    super.key,
    this.currentIndex,
    required this.items,
    required this.onTap,
  });

  final int? currentIndex;
  final List<HowDidYouKnowUsItemEntity> items;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int index = 0; index < items.length; index++) ...[
          Expanded(
            child: HowDidYouKnowUsTabletLayoutButton(
              howDidYouKnowUsItemEntity: items[index],
              isActive: currentIndex == index,
              onTap: () {
                onTap(index);
              },
            ),
          ),
          if (index < items.length - 1) AppSizes.width12,
        ],
      ],
    );
  }
}
