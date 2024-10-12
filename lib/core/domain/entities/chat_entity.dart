import 'package:dash_chat_2/dash_chat_2.dart';

class ChatEntity {
  final String appBarTitle;
  final List<ChatMessage> messages;

  const ChatEntity({
    required this.appBarTitle,
    required this.messages,
  });
}
