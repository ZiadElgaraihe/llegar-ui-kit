import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/wallet/presentation/widgets/fund_amount_buttons_wrap.dart';
import 'package:llegar/core/presentation/widgets/amount_entry_text_field.dart';
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
  late ValueNotifier<String?> _selectedAmount;

  @override
  void initState() {
    super.initState();
    _selectedAmount = ValueNotifier(null);
  }

  @override
  void dispose() {
    _selectedAmount.dispose();
    super.dispose();
  }

  /// Deselect the selected amount if the user manually changes the text
  void _deselectAmount(String value) {
    if (_selectedAmount.value != null &&
        '\$${_selectedAmount.value}' != value) {
      _selectedAmount.value = null;
    }
  }

  void _onFundAmountButtonTapped(String selectedAmount) {
    _selectedAmount.value = selectedAmount;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height16,
                Text(
                  translate(context).enterYourFundAmount,
                  style: AppTextStyles.bold16(context),
                ),
                AppSizes.height16,
                AmountEntryTextField(
                  onChanged: _deselectAmount,
                  setValue: _setControllerValue,
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
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).continueText,
          onPressed: () {
            _onContinuePressed(context);
          },
        ),
      ],
    );
  }

  /// Create listener to change controller text value every time
  /// _selectedAmount value changed
  void _setControllerValue(TextEditingController controller) {
    _selectedAmount.addListener(
      () {
        _selectedAmountListener(controller);
      },
    );
  }

  void _selectedAmountListener(TextEditingController controller) {
    controller.text = _selectedAmount.value ?? '';
  }

  void _onContinuePressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.topUpElectronicWalletView);
  }
}
