import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/modules/home/domain/entities/notification_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/enums/notification_type.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class NotificationItemContainer extends StatelessWidget {
  const NotificationItemContainer({
    super.key,
    required this.notification,
  });

  final NotificationEntity notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.antiFlashWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: (notification.notificationType ==
                    NotificationType.receivedOffer)
                ? const ProfilePhoto(
                    size: 71,
                    side: BorderSide.none,
                  )
                : Container(
                    height: 71,
                    width: 71,
                    decoration: BoxDecoration(
                      color: valueBasedOnTheme<Color>(
                        context,
                        light: AppColors.prussianBlue,
                        dark: AppColors.orange,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        (notification.notificationType ==
                                    NotificationType.offerAccepted ||
                                notification.notificationType ==
                                    NotificationType.offerRejected)
                            ? AppIcons.offer
                            : AppIcons.notification,
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                          AppColors.lavender,
                          BlendMode.srcATop,
                        ),
                      ),
                    ),
                  ),
            title: Text(
              notification.title,
              style: AppTextStyles.bold17(context),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                notification.subTitle,
                style: AppTextStyles.medium16(context).copyWith(
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          if (notification.notificationType != NotificationType.other) ...[
            AppSizes.height12,
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(155, 42),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                translate(context).viewDetails,
                style: AppTextStyles.bold17(context),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
