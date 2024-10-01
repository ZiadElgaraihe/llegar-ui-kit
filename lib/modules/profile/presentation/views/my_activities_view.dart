import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MyActivitiesView extends StatelessWidget {
  const MyActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).myActivities,
      ),
    );
  }
}