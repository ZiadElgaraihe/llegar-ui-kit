import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/option_button.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class OptionsBar extends StatefulWidget {
  const OptionsBar({
    super.key,
    required this.items,
    required this.onSelectCategory,
    this.builder,
  });

  final Widget Function(String item, bool isSelected)? builder;
  final List<String> items;
  final void Function(String value) onSelectCategory;

  @override
  State<OptionsBar> createState() => _OptionsBarState();
}

class _OptionsBarState extends State<OptionsBar> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.items[0];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            start:
                (index == 0) ? AppSizes.bodyHorizontalPadding(context).left : 0,
            end: (index == (widget.items.length - 1))
                ? AppSizes.bodyHorizontalPadding(context).right
                : 0,
          ),
          child: OptionButton(
            builder: widget.builder,
            isSelected: _selectedValue == widget.items[index],
            onTap: () {
              _selectedValue = widget.items[index];
              widget.onSelectCategory(widget.items[index]);
              setState(() {});
            },
            title: widget.items[index],
          ),
        ),
        separatorBuilder: (context, index) => AppSizes.width8,
      ),
    );
  }
}
