import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({
    super.key,
    required this.onChanged,
  });

  final void Function(RangeValues rangeValues) onChanged;

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _rangeValues = const RangeValues(0, 10000);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: RangeSlider(
        min: 0,
        max: 10000,
        values: _rangeValues,
        divisions: 100,
        labels: RangeLabels(
          '\$${_rangeValues.start.toInt()}',
          '\$${_rangeValues.end.toInt()}',
        ),
        onChanged: (value) {
          _rangeValues = value;
          widget.onChanged(value);
          setState(() {});
        },
      ),
    );
  }
}
