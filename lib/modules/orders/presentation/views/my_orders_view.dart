import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).myOrders,
        onBackPressed: _onBackPressed,
      ),
    );
  }

  void _onBackPressed() {
    pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
