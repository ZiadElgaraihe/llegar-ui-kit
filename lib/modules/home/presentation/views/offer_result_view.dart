import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/shared/utils/enums/notification_type.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class OfferResultView extends StatelessWidget {
  const OfferResultView({
    super.key,
    required this.notificationType,
  });

  final NotificationType notificationType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).yourOffer,
      ),
    );
  }
}
