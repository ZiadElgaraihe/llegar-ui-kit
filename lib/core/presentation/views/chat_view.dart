import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/chat_entity.dart';
import 'package:llegar/core/presentation/widgets/chat_view_body.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
    required this.chatEntity,
  });

  final ChatEntity chatEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: chatEntity.appBarTitle,
        ),
        body: ChatViewBody(
          messages: chatEntity.messages,
        ),
      ),
    );
  }
}
