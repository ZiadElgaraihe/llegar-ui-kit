import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/profile_summary_entity.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/core/presentation/widgets/profile_summary_view_body.dart';

class ProfileSummaryView extends StatelessWidget {
  const ProfileSummaryView({
    super.key,
    required this.profileSummaryEntity,
  });

  final ProfileSummaryEntity profileSummaryEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: profileSummaryEntity.appBarTitle,
      ),
      body: ProfileSummaryViewBody(
        isMyItem: profileSummaryEntity.isMyItem,
      ),
    );
  }
}
