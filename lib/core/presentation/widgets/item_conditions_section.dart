import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_condition.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ItemConditionsSection extends StatelessWidget {
  const ItemConditionsSection({
    super.key,
    required this.isMyItem,
  });

  final bool isMyItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 1; i++) ...[
          ItemCondition(
            isMyItem: isMyItem,
            onChanged: (isChecked) {},
            title:
                'If the camera is returned late, you would be charged an additional rental fee for each day or partial day that the camera is late.',
          ),
          if (i < 0) AppSizes.height12,
        ],
      ],
    );
  }
}
