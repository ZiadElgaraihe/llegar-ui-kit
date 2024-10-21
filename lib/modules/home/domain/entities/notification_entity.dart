import 'package:llegar/shared/utils/enums/notification_type.dart';

class NotificationEntity {
  final String title;
  final String subTitle;
  final NotificationType notificationType;

  const NotificationEntity({
    required this.title,
    required this.subTitle,
    required this.notificationType,
  });
}
