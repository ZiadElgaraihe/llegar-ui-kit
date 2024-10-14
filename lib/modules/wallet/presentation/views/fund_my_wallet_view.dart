import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/wallet/presentation/widgets/fund_my_wallet_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class FundMyWalletView extends StatelessWidget {
  const FundMyWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: translate(context).fundMyWallet,
        ),
        body: const FundMyWalletViewBody(),
      ),
    );
  }
}
