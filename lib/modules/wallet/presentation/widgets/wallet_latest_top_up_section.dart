import 'package:flutter/material.dart';
import 'package:llegar/modules/wallet/presentation/widgets/responsive_wallet_top_up_list_tiles.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class WalletLatestTopUpSection extends StatelessWidget {
  const WalletLatestTopUpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            translate(context).latestTopUp,
            style: AppTextStyles.bold20(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
            ),
          ),
        ),
        AppSizes.height16,
        const ResponsiveWalletTopUpListTiles()
      ],
    );
  }
}
