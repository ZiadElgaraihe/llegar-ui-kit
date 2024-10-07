import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ReviewSummaryView extends StatelessWidget {
  const ReviewSummaryView({
    super.key,
    required this.premiumPackageEntity,
  });

  final PremiumPackageEntity premiumPackageEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).reviewSummary,
      ),
    );
  }
}
