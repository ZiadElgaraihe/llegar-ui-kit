import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ChatInputTrailing extends StatelessWidget {
  const ChatInputTrailing({
    super.key,
    required this.showTrailing,
    required this.onSendPressed,
    required this.onMicPressed,
    required this.onPhotoPressed,
  });

  final bool showTrailing;
  final VoidCallback onSendPressed;
  final VoidCallback onMicPressed;
  final VoidCallback onPhotoPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      firstChild:
          //use SingleChildScrollView to avoid overflow error happen
          //while converting between first child and second one
          SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: Row(
          children: [
            IconButton(
              onPressed: onPhotoPressed,
              icon: SvgPicture.asset(
                AppIcons.photo,
                colorFilter: valueBasedOnTheme<ColorFilter>(
                  context,
                  dark: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcATop,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: onMicPressed,
              icon: SvgPicture.asset(
                AppIcons.mic,
                colorFilter: valueBasedOnTheme<ColorFilter>(
                  context,
                  dark: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcATop,
                  ),
                ),
                height: 32,
                width: 32,
              ),
            ),
          ],
        ),
      ),
      secondChild: IconButton(
        onPressed: onSendPressed,
        icon: Icon(
          Icons.send_rounded,
          color: valueBasedOnTheme<Color>(
            context,
            light: AppColors.prussianBlue,
            dark: AppColors.orange,
          ),
          size: 32,
        ),
      ),
      crossFadeState:
          showTrailing ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
