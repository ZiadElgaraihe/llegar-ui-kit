import 'package:flutter/material.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_button.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/functions/translate.dart';

class HowDidYouKnowUsButtonsSection extends StatefulWidget {
  const HowDidYouKnowUsButtonsSection({
    super.key,
  });

  @override
  State<HowDidYouKnowUsButtonsSection> createState() =>
      _HowDidYouKnowUsButtonsSectionState();
}

class _HowDidYouKnowUsButtonsSectionState
    extends State<HowDidYouKnowUsButtonsSection> {
  late final List<HowDidYouKnowUsItemEntity> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = [
      HowDidYouKnowUsItemEntity(
        title: translate(context).facebook,
        icon: AppIcons.facebook,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).googleSearch,
        icon: AppIcons.google,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).appStore,
        icon: AppIcons.appStore,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).youtube,
        icon: AppIcons.youtube,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).tiktok,
        icon: AppIcons.tiktok,
      ),
    ];
  }

  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < _items.length; index++) ...[
          HowDidYouKnowUsButton(
            howDidYouKnowUsItemEntity: _items[index],
            isActive: currentIndex == index,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          if (index < _items.length - 1) const SizedBox(height: 12),
        ],
      ],
    );
  }
}
