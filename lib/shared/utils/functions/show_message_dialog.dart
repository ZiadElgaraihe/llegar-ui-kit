import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_alert_dialog.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/enums/message_type.dart';
import 'package:llegar/shared/utils/functions/preload_svg_images.dart';

Future<void> showMessageDialog(
  BuildContext context, {
  required MessageType messageType,
  required String title,
  required String message,
}) async {
  /*
  Execute preloadSvgImages() before displaying the dialog 
  to ensure that the icon appears promptly without any delay. 
  Include only the necessary icon (success or failed) based on 
  the specific scenario.
  */
  await preloadSvgImages(
    svgImages: messageType == MessageType.success
        ? [AppIcons.success]
        : [AppIcons.failed],
  ).then(
    (value) async {
      if (context.mounted) {
        return await showGeneralDialog(
          context: context,
          barrierDismissible: true,
          barrierLabel: '',
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SizedBox(),
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
    },
  );
}
