import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/home/presentation/widgets/notification_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).notification,
      ),
      body: const NotificationViewBody(),
    );
  }
}
