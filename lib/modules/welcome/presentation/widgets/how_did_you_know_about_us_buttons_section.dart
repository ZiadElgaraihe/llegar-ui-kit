import 'package:flutter/material.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know__about_us_tablet_layout_buttons_section.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_mobile_layout_buttons_section.dart';
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
    double width = MediaQuery.sizeOf(context).width;
    return ValueListenableBuilder(
      valueListenable: currentIndexValueNotifier,
      builder: (context, currentIndex, child) =>
          (width < AppSizes.expandedBreakpoint)
              ? HowDidYouKnowUsMobileLayoutButtonsSection(
                  currentIndex: currentIndex,
                  items: items,
                  onTap: onItemSelected,
                )
              : HowDidYouKnowUsTabletLayoutButtonsSection(
                  currentIndex: currentIndex,
                  items: items,
                  onTap: onItemSelected,
                ),
    );
  }
}
