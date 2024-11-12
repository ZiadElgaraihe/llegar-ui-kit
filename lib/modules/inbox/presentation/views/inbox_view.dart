import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/inbox/presentation/widgets/inbox_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class InboxView extends StatelessWidget {
  const InboxView({
    super.key,
    required this.onBackPressed,
  });

  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        onBackPressed();
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: translate(context).inbox,
          onBackPressed: onBackPressed,
        ),
        body: const InboxViewBody(),
      ),
    );
  }
}
