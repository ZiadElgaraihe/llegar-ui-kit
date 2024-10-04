import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/enums/message_type.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.message,
    required this.messageType,
    required this.title,
  });

  final String message;
  final MessageType messageType;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(24),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              messageType == MessageType.success
                  ? AppIcons.success
                  : AppIcons.failed,
            ),
            AppSizes.height12,
            Text(
              title,
              style: AppTextStyles.bold24(context).copyWith(
                color: messageType == MessageType.success
                    ? AppColors.green
                    : AppColors.red,
              ),
              textAlign: TextAlign.center,
            ),
            AppSizes.height12,
            Text(
              message,
              style: AppTextStyles.medium16(context).copyWith(
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
            AppSizes.height24,
            CustomSecondaryElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              title: translate(context).ok,
              backgroundColor: messageType == MessageType.success
                  ? AppColors.green
                  : AppColors.red,
              foregroundColor: AppColors.white,
              textColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
