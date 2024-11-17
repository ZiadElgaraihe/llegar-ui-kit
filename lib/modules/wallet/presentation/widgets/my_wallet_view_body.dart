import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/wallet/presentation/widgets/wallet_latest_top_up_section.dart';
import 'package:llegar/modules/wallet/presentation/widgets/wallet_money_section.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MyWalletViewBody extends StatelessWidget {
  const MyWalletViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: const SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height16,
                WalletMoneySection(),
                AppSizes.height24,
                WalletLatestTopUpSection()
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).topUp,
          onPressed: () {
            _onPressed(context);
          },
        ),
      ],
    );
  }

  void _onPressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fundMyWalletView);
  }
}
