import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/total_price_list_tile.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class TotalPriceCard extends StatelessWidget {
  const TotalPriceCard({
    super.key,
    required this.premiumPackageEntity,
  });

  final PremiumPackageEntity premiumPackageEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TotalPriceListTile(
              price: '\$${premiumPackageEntity.price}',
              title: translate(context).amount,
            ),
             TotalPriceListTile(
              price: '\$2.00',
              title: translate(context).tax,
            ),
            const Divider(),
            TotalPriceListTile(
              price:
                  '\$${(double.parse(premiumPackageEntity.price) + 2.00).toStringAsFixed(2)}',
              title: translate(context).total,
            ),
          ],
        ),
      ),
    );
  }
}
