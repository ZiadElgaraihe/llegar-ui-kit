import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/chat_entity.dart';
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
          arguments: ChatEntity(
              appBarTitle: translate(context).customerService,
              messages: [
                ChatMessage(
                  user: ChatUser(id: '0'),
                  medias: [
                    ChatMedia(
                      url:
                          'https://cdn.alweb.com/thumbs/photoghraphia/article/fit710x532/%D9%85%D8%A7-%D9%87%D9%8A-%D9%85%D9%83%D9%88%D9%86%D8%A7%D8%AA-%D8%A7%D9%84%D9%83%D8%A7%D9%85%D9%8A%D8%B1%D8%A7-%D8%A7%D9%84%D8%B1%D9%82%D9%85%D9%8A%D8%A9.jpg',
                      fileName: 'Camera',
                      type: MediaType.image,
                    ),
                  ],
                  createdAt: DateTime.now(),
                ),
                ChatMessage(
                  user: ChatUser(id: '1'),
                  text:
                      'Please describe the issue you\'re encountering so I can provide you with the necessary support to resolve it.',
                  createdAt: DateTime.now(),
                ),
                ChatMessage(
                  user: ChatUser(id: '1'),
                  text: 'sure.',
                  createdAt: DateTime.now(),
                ),
                ChatMessage(
                  user: ChatUser(id: '0'),
                  text: 'Could you assist me with this task, please?',
                  createdAt: DateTime.now(),
                ),
                ChatMessage(
                  user: ChatUser(id: '0'),
                  text:
                      'Hello, I seem to be experiencing some issues with my account and password.',
                  createdAt: DateTime.now(),
                ),
                ChatMessage(
                  user: ChatUser(id: '1'),
                  text:
                      'I am a technical support representative, can I assist you with anything?',
                  createdAt: DateTime.now(),
                ),
                ChatMessage(
                  user: ChatUser(id: '1'),
                  text: 'Hello.',
                  createdAt: DateTime.now(),
                ),
              ]),
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
