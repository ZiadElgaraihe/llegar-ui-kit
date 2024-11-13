import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/presentation/widgets/ans_section.dart';
import 'package:llegar/modules/profile/presentation/widgets/faq_section.dart';
import 'package:llegar/modules/profile/presentation/widgets/help_center_tab_bar.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class HelpCenterViewBody extends StatelessWidget {
  const HelpCenterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          AppSizes.height24,
          Padding(
            padding: AppSizes.bodyHorizontalPadding(context),
            child: const HelpCenterTabBar(),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                FaqSection(),
                AnsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
