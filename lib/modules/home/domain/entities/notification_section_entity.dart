import 'package:llegar/modules/home/domain/entities/notification_entity.dart';

class NotificationSectionEntity {
  final DateTime date;
  final List<NotificationEntity> notifications;

  const NotificationSectionEntity({
    required this.date,
    required this.notifications,
  });
}
