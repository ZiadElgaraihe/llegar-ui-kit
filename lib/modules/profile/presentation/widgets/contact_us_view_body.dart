import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/contact_us_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/contact_us_outlined_button.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({
    super.key,
  });

  static final List<ContactUsEntity> _items = <ContactUsEntity>[
    ContactUsEntity(
      icon: AppIcons.contactUsCustomerServices,
      onPressed: () {},
      title: (context) => translate(context).customerService,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsWhatsapp,
      onPressed: () {},
      title: (context) => translate(context).whatsApp,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsWebsite,
      onPressed: () {},
      title: (context) => translate(context).website,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsFacebook,
      onPressed: () {},
      title: (context) => translate(context).facebook,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsTwitter,
      onPressed: () {},
      title: (context) => translate(context).twitter,
    ),
    ContactUsEntity(
      icon: AppIcons.contactUsInstagram,
      onPressed: () {},
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
