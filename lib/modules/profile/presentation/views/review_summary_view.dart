import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/domain/entities/review_summary_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/review_summary_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ReviewSummaryView extends StatelessWidget {
  const ReviewSummaryView({
    super.key,
    required this.reviewSummaryEntity,
  });

  final ReviewSummaryEntity reviewSummaryEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).reviewSummary,
      ),
      body: ReviewSummaryViewBody(
        reviewSummaryEntity: reviewSummaryEntity,
      ),
    );
  }
}
