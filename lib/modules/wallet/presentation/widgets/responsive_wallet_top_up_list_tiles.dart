import 'package:flutter/material.dart';
import 'package:llegar/modules/wallet/presentation/widgets/wallet_top_up_list_tile.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ResponsiveWalletTopUpListTiles extends StatelessWidget {
  const ResponsiveWalletTopUpListTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < AppSizes.largeBreakpoint) {
      return Column(
        children: List.generate(
          3,
          (index) => const WalletTopUpListTile(),
        ),
      );
    } else {
      return Row(
        children: [
          for (int i = 0; i < 3; i++) ...[
            const Expanded(child: WalletTopUpListTile()),
            if (i < 2) AppSizes.width24,
          ]
        ],
      );
    }
  }
}
