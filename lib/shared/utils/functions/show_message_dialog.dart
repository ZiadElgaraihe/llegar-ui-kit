import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_alert_dialog.dart';
import 'package:llegar/shared/utils/enums/message_type.dart';

Future<void> showMessageDialog(
  BuildContext context, {
  required MessageType messageType,
  required String title,
  required String message,
}) async {
  await showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: '',
    pageBuilder: (context, animation, secondaryAnimation) => const SizedBox(),
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (context, animation, secondaryAnimation, child) =>
        ScaleTransition(
      scale: animation,
      child: CustomAlertDialog(
        message: message,
        messageType: messageType,
        title: title,
      ),
    ),
  );
}
