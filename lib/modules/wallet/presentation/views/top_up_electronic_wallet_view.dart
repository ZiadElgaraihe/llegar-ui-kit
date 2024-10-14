import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/wallet/presentation/widgets/top_up_electronic_wallet_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class TopUpElectronicWalletView extends StatelessWidget {
  const TopUpElectronicWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).topUpElectronicWallet,
      ),
      body: const TopUpElectronicWalletViewBody(),
    );
  }
}
