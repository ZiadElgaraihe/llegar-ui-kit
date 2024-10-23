import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:llegar/core/presentation/widgets/chat_input_trailing.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({
    super.key,
    required this.messages,
  });

  final List<ChatMessage> messages;

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  late final TextEditingController _controller;
  late final ValueNotifier<bool> _showTrailing;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _showTrailing = ValueNotifier(true);

    _controller.addListener(() {
      _showTrailing.value = _controller.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DashChat(
      currentUser: ChatUser(id: '0'),
      //This function is unused.
      //A more customized approach is implemented for sending messages.
      //You can find it in inputOptions
      onSend: (message) {},
      inputOptions: _inputOptions(context),
      messageListOptions: _messageListOptions(context),
      messageOptions: _messageOptions(context),
      messages: widget.messages,
    );
  }

  InputOptions _inputOptions(BuildContext context) {
    return InputOptions(
      textController: _controller,
      cursorStyle: const CursorStyle(
        color: AppColors.prussianBlue,
      ),
      inputToolbarMargin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      inputTextStyle: AppTextStyles.medium15(context).copyWith(
        color: AppColors.black,
        fontFamily: AppStrings.interFontFamily,
      ),
      sendButtonBuilder: (send) => const SizedBox(),
      inputMaxLines: 1,
      inputTextDirection: valueBasedOnLocale<TextDirection>(
        context,
        ltr: TextDirection.ltr,
        rtl: TextDirection.rtl,
      )!,
      inputDecoration: InputDecoration(
        filled: true,
        fillColor: AppColors.antiFlashWhite,
        hintText: translate(context).message,
        hintStyle: AppTextStyles.medium15(context).copyWith(
          color: AppColors.darkGrey,
          fontFamily: AppStrings.interFontFamily,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.green,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      trailing: [
        ValueListenableBuilder(
          valueListenable: _showTrailing,
          builder: (context, showTrailing, child) => ChatInputTrailing(
            showTrailing: showTrailing,
            onSendPressed: () {
              widget.messages.insert(
                0,
                ChatMessage(
                  user: ChatUser(id: '0'),
                  text: _controller.text,
                  createdAt: DateTime.now(),
                ),
              );
              setState(() {});
              _controller.text = '';
            },
            onMicPressed: () {},
            onPhotoPressed: () {},
          ),
        ),
      ],
    );
  }

  MessageListOptions _messageListOptions(BuildContext context) {
    return MessageListOptions(
      dateSeparatorBuilder: (date) => Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
        decoration: BoxDecoration(
          color: AppColors.antiFlashWhite,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          (intl.DateFormat('yyyy-MM-dd').format(date) ==
                  intl.DateFormat('yyyy-MM-dd').format(DateTime.now()))
              ? translate(context).today
              : intl.DateFormat('yyyy-MM-dd').format(date),
          style: AppTextStyles.medium10(context),
        ),
      ),
    );
  }

  MessageOptions _messageOptions(BuildContext context) {
    return MessageOptions(
      showOtherUsersAvatar: false,
      showOtherUsersName: false,
      marginDifferentAuthor: const EdgeInsets.only(top: 16),
      marginSameAuthor: const EdgeInsets.only(top: 16),
      messagePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      messageDecorationBuilder: (message, previousMessage, nextMessage) {
        if (message.user.id == '0') {
          return BoxDecoration(
            color: mainThemeColor(context),
            borderRadius: const BorderRadiusDirectional.only(
              topStart: Radius.circular(10),
              bottomEnd: Radius.circular(10),
              bottomStart: Radius.circular(10),
            ),
          );
        } else {
          return const BoxDecoration(
            color: AppColors.antiFlashWhite,
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(10),
              bottomEnd: Radius.circular(10),
              bottomStart: Radius.circular(10),
            ),
          );
        }
      },
      messageTextBuilder: (message, previousMessage, nextMessage) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              message.text,
              style: AppTextStyles.medium14(context).copyWith(
                color:
                    message.user.id == '0' ? AppColors.white : AppColors.black,
              ),
            ),
          ),
          AppSizes.width16,
          Text(
            intl.DateFormat.Hm().format(message.createdAt),
            style: AppTextStyles.medium12(context).copyWith(
              color: message.user.id == '0' ? AppColors.white : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
