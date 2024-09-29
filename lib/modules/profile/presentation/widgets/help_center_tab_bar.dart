import 'package:flutter/material.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class HelpCenterTabBar extends StatelessWidget {
  const HelpCenterTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  TabBar(
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 24),
      tabs: [
        Tab(
          height: 58,
          text: translate(context).faq,
        ),
        Tab(
          height: 58,
          text: translate(context).ans,
        ),
      ],
    );
  }
}
