import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/wallet/presentation/widgets/my_wallet_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).myWallet,
        onBackPressed: _onBackPressed,
      ),
      body: const MyWalletViewBody(),
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
