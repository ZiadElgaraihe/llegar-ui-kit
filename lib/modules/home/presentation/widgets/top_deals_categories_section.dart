import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/top_deals_category_button.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class TopDealsCategoriesSection extends StatefulWidget {
  const TopDealsCategoriesSection({
    super.key,
    required this.onSelectCategory,
  });

  final void Function(String value) onSelectCategory;

  @override
  State<TopDealsCategoriesSection> createState() =>
      _TopDealsCategoriesSectionState();
}

class _TopDealsCategoriesSectionState extends State<TopDealsCategoriesSection> {
  late List<String> _items;
  late String _selectedValue;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = [
      translate(context).all,
      translate(context).property,
      translate(context).transportation,
      translate(context).playAreas,
      translate(context).clothes,
      translate(context).eventRentals,
      translate(context).electronics,
    ];

    _selectedValue = _items[0];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            start:
                (index == 0) ? AppSizes.bodyHorizontalPadding(context).left : 0,
            end: (index == (_items.length - 1))
                ? AppSizes.bodyHorizontalPadding(context).right
                : 0,
          ),
          child: TopDealsCategoryButton(
            isSelected: _selectedValue == _items[index],
            onTap: () {
              _selectedValue = _items[index];
              widget.onSelectCategory(_items[index]);
              setState(() {});
            },
            title: _items[index],
          ),
        ),
        separatorBuilder: (context, index) => AppSizes.width8,
      ),
    );
  }
}
