import 'package:flutter/material.dart';
import 'package:llegar/modules/home/domain/entities/notification_entity.dart';
import 'package:llegar/modules/home/domain/entities/notification_section_entity.dart';
import 'package:llegar/modules/home/presentation/widgets/notification_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/enums/notification_type.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class NotificationViewBody extends StatefulWidget {
  const NotificationViewBody({
    super.key,
  });

  @override
  State<NotificationViewBody> createState() => _NotificationViewBodyState();
}

class _NotificationViewBodyState extends State<NotificationViewBody> {
  late List<NotificationSectionEntity> _notifications;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _notifications = [
      NotificationSectionEntity(
        date: DateTime.now(),
        notifications: [
          NotificationEntity(
            title: translate(context).yourOfferHasBeenAccepted,
            subTitle:
                '${translate(context).congratsYourOfferHasBeenAcceptedByTheSellerFor} \$150.',
            notificationType: NotificationType.offerAccepted,
          ),
          const NotificationEntity(
            title: 'Credit Card Connected',
            subTitle: 'Credit Card has been linked',
            notificationType: NotificationType.other,
          ),
        ],
      ),
      NotificationSectionEntity(
        date: DateTime(2024, 10, 18),
        notifications: [
          NotificationEntity(
            title: '${translate(context).orderFrom} Atef Khaled!',
            subTitle:
                '${translate(context).youHaveAnOrderFrom} Atef Khaled ${translate(context).forYour} Suzuki car.',
            notificationType: NotificationType.receivedOffer,
          ),
        ],
      ),
      NotificationSectionEntity(
        date: DateTime(2024, 10, 10),
        notifications: [
          NotificationEntity(
            title: translate(context).yourOfferHasBeenRejected,
            subTitle:
                translate(context).weAreSorryYourOfferHasBeenRejectedByTheOwner,
            notificationType: NotificationType.offerRejected,
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: AppSizes.bodySymmetricPadding(context),
      itemCount: _notifications.length,
      itemBuilder: (context, index) => NotificationSection(
        notificationSectionEntity: _notifications[index],
      ),
    );
  }
}
