import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/chat_view_body.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
    required this.appBarTitle,
  });

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: appBarTitle,
        ),
        body: const ChatViewBody(),
      ),
    );
  }
}
