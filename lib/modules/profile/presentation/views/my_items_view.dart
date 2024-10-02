import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/my_items_view_body.dart';

class MyItemsView extends StatelessWidget {
  const MyItemsView({
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
      body: const MyItemsViewBody(),
    );
  }
}
