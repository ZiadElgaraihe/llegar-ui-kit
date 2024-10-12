import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/chat_entity.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/modules/inbox/presentation/widgets/inbox_item_list_tile_trailing.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';

class InboxItemListTile extends StatelessWidget {
  const InboxItemListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        _onTap(context);
      },
      leading: const ProfilePhoto(
        size: 64,
        side: BorderSide.none,
      ),
      title: Text(
        'Ahmed Fared',
        style: Theme.of(context).listTileTheme.titleTextStyle!.copyWith(
              fontFamily: AppStrings.interFontFamily,
            ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        'The image quality is incredible, and the autofocus is lightning fast. The 8K video capabilities are stunning and the IBIS is a game-changer.',
        style: Theme.of(context).listTileTheme.subtitleTextStyle!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const InboxItemListTileTrailing(),
    );
  }

  void _onTap(BuildContext context) {
    futureDelayedNavigator(
      () {
        Navigator.pushNamed(
          context,
          AppRoutes.chatView,
          arguments: ChatEntity(
            appBarTitle: 'Ahmed Fared',
            messages: [
              ChatMessage(
                user: ChatUser(id: '1'),
                text:
                    'The image quality is incredible, and the autofocus is lightning fast. The 8K video capabilities are stunning and the IBIS is a game-changer.',
                createdAt: DateTime.now(),
              ),
              ChatMessage(
                user: ChatUser(id: '1'),
                text: 'sure.',
                createdAt: DateTime.now(),
              ),
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
                user: ChatUser(id: '0'),
                text: 'can you tell more about it’s features.',
                createdAt: DateTime.now(),
              ),
              ChatMessage(
                user: ChatUser(id: '0'),
                text:
                    'Hello Ahmed, actually i want to rent eos r6 canon camera and i see your review about it.',
                createdAt: DateTime.now(),
              ),
            ],
          ),
        );
      },
    );
  }
}
