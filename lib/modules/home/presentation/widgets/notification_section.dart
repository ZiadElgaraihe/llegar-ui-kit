import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';
import 'package:llegar/modules/home/domain/entities/notification_section_entity.dart';
import 'package:llegar/modules/home/presentation/widgets/notification_item_container.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:intl/intl.dart' as intl;

class NotificationSection extends StatelessWidget {
  const NotificationSection({
    super.key,
    required this.notificationSectionEntity,
  });

  final NotificationSectionEntity notificationSectionEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          (intl.DateFormat('dd MMM yyyy')
                      .format(notificationSectionEntity.date) ==
                  intl.DateFormat('dd MMM yyyy').format(DateTime.now()))
              ? translate(context).today
              : intl.DateFormat(
                  'dd MMM yyyy',
                  BlocProvider.of<LocaleCubit>(context).locale.languageCode,
                ).format(notificationSectionEntity.date),
          style: AppTextStyles.bold20(context),
        ),
        // AppSizes.height12,
        Column(
          children: List.generate(
            notificationSectionEntity.notifications.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: NotificationItemContainer(
                notification: notificationSectionEntity.notifications[index],
              ),
            ),
          ),
        ),
        AppSizes.height12,
      ],
    );
  }
}
