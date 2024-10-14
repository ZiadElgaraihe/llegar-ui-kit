import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/wallet/presentation/widgets/fund_amount_buttons_wrap.dart';
import 'package:llegar/modules/wallet/presentation/widgets/fund_wallet_text_field.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class FundMyWalletViewBody extends StatefulWidget {
  const FundMyWalletViewBody({
    super.key,
  });

  @override
  State<FundMyWalletViewBody> createState() => _FundMyWalletViewBodyState();
}

class _FundMyWalletViewBodyState extends State<FundMyWalletViewBody> {
  late TextEditingController _controller;
  late ValueNotifier<String?> _selectedAmount;

  @override
  void initState() {
    super.initState();
    _selectedAmount = ValueNotifier(null);
    _controller = TextEditingController(text: '\$');
    _controller.addListener(_controllerListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerListener);
    _controller.dispose();
    _selectedAmount.dispose();
    super.dispose();
  }

  void _controllerListener() {
    _enforceDollarPrefix();
    _deselectAmount();
  }

  ///Ensure that the user adheres to the requirement of commencing
  ///the text input with the symbol "$"
  void _enforceDollarPrefix() {
    if (!_controller.text.startsWith('\$')) {
      _controller.text = '\$${_controller.text}';
      _controller.selection = const TextSelection.collapsed(offset: 1);
    }
  }

  /// Deselect the selected amount if the user manually changes the text
  void _deselectAmount() {
    if (_selectedAmount.value != null &&
        _controller.text != '\$${_selectedAmount.value}') {
      _selectedAmount.value = null;
    }
  }

  void _onFundAmountButtonTapped(selected) {
    _controller.text = selected;
    _selectedAmount.value = selected;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height16,
                Text(
                  translate(context).enterYourFundAmount,
                  style: AppTextStyles.bold16(context),
                ),
                AppSizes.height16,
                FundWalletTextField(
                  controller: _controller,
                ),
                AppSizes.height24,
                ValueListenableBuilder(
                  valueListenable: _selectedAmount,
                  builder: (context, selectedAmount, child) =>
                      FundAmountButtonsWrap(
                    onTap: _onFundAmountButtonTapped,
                    selectedAmount: selectedAmount,
                  ),
                ),
              ],
            ),
          ),
          CustomSliverFillRemainingFooter(
            buttonTitle: translate(context).continueText,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.topUpElectronicWalletView);
            },
          ),
        ],
      ),
    );
  }
}
