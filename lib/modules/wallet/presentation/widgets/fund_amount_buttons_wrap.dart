import 'package:flutter/material.dart';
import 'package:llegar/modules/wallet/presentation/widgets/fund_amount_button.dart';

class FundAmountButtonsWrap extends StatefulWidget {
  const FundAmountButtonsWrap({
    super.key,
    required this.onTap,
    this.selectedAmount,
  });

  final void Function(String selectedAmount) onTap;
  final String? selectedAmount;

  @override
  State<FundAmountButtonsWrap> createState() => _FundAmountButtonsWrapState();
}

class _FundAmountButtonsWrapState extends State<FundAmountButtonsWrap> {
  final List<String> _amounts = [
    '10',
    '20',
    '50',
    '100',
    '150',
    '200',
    '250',
    '300',
    '350',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: List.generate(
        _amounts.length,
        (index) => FundAmountButton(
          isSelected: widget.selectedAmount == _amounts[index],
          onTap: () {
            widget.onTap(_amounts[index]);
          },
          title: _amounts[index],
        ),
      ),
    );
  }
}
