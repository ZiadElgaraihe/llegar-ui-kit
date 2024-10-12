import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/inbox/presentation/widgets/inbox_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class InboxView extends StatelessWidget {
  const InboxView({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  final ValueNotifier<int> currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).inbox,
        onBackPressed: () {
          currentIndex.value = 0;
          pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
      ),
      body: const InboxViewBody(),
    );
  }
}
