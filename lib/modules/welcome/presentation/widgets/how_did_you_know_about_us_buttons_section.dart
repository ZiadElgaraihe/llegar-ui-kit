import 'package:flutter/material.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_button.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class HowDidYouKnowAboutUsButtonsSection extends StatelessWidget {
  const HowDidYouKnowAboutUsButtonsSection({
    super.key,
    required this.currentIndexValueNotifier,
    required this.items,
    required this.onItemSelected,
  });

  final ValueNotifier<int?> currentIndexValueNotifier;
  final List<HowDidYouKnowUsItemEntity> items;
  final void Function(int index) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentIndexValueNotifier,
      builder: (context, currentIndex, child) => Column(
        children: [
          for (int index = 0; index < items.length; index++) ...[
            HowDidYouKnowUsButton(
              howDidYouKnowUsItemEntity: items[index],
              isActive: currentIndex == index,
              onTap: () {
                onItemSelected(index);
              },
            ),
            if (index < items.length - 1) AppSizes.height12,
          ],
        ],
      ),
    );
  }
}
