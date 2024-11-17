import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/wallet/presentation/widgets/my_wallet_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({
    super.key,
    required this.onBackPressed,
  });

  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        onBackPressed();
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: translate(context).myWallet,
          onBackPressed: onBackPressed,
        ),
        body: const MyWalletViewBody(),
      ),
    );
  }
}
