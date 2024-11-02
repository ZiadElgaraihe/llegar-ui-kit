import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/core/presentation/widgets/profile_summary_view_body.dart';

class ProfileSummaryView extends StatelessWidget {
  const ProfileSummaryView({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
      ),
      body: const ProfileSummaryViewBody(),
    );
  }
}
