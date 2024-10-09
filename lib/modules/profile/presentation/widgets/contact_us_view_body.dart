import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/contact_us_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/contact_us_outlined_button.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({
    super.key,
  });

  static final List<ContactUsEntity> _items = <ContactUsEntity>[
    ContactUsEntity(
      icon: AppIcons.contactUsCustomerServices,
      onPressed: (context) {
        Navigator.pushNamed(
          context,
          AppRoutes.chatView,
          arguments: translate(context).customerService,
        );
      },
      title: (context) => translate(context).customerService,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsWhatsapp,
      onPressed: (context) {},
      title: (context) => translate(context).whatsApp,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsWebsite,
      onPressed: (context) {},
      title: (context) => translate(context).website,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsFacebook,
      onPressed: (context) {},
      title: (context) => translate(context).facebook,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsTwitter,
      onPressed: (context) {},
      title: (context) => translate(context).twitter,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsInstagram,
      onPressed: (context) {},
      title: (context) => translate(context).instagram,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.bodyHorizontalPadding(context).left,
        vertical: 24,
      ),
      itemCount: _items.length,
      itemBuilder: (context, index) => ContactUsOutlinedButton(
        contactUsEntity: _items[index],
      ),
      separatorBuilder: (context, index) => AppSizes.height16,
    );
  }
}
