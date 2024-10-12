import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ReviewCommentTextFormField extends StatelessWidget {
  const ReviewCommentTextFormField({
    super.key,
    this.controller,
    this.onSaved,
  });

  final TextEditingController? controller;
  final void Function(String? newValue)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      minLines: 5,
      maxLines: 5,
      onSaved: onSaved,
      cursorColor: AppColors.prussianBlue,
      decoration: InputDecoration(
        hintText: translate(context).leaveYourComment,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.green,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
