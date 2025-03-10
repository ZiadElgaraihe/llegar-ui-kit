import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class OtpTextField extends StatefulWidget {
  const OtpTextField({
    super.key,
    required this.onChanged,
    this.numberOfFields = 4,
  });

  final int numberOfFields;
  final void Function(String otp) onChanged;

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
        widget.numberOfFields, (index) => TextEditingController());
    _focusNodes = List.generate(widget.numberOfFields, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length == 1) {
      if (index != widget.numberOfFields - 1) {
        _focusNodes[index].nextFocus();
      } else {
        _focusNodes[index].unfocus();
      }
    } else if (value.isEmpty) {
      if (index != 0) {
        _focusNodes[index].previousFocus();
      } else {
        _focusNodes[index].unfocus();
      }
    }
    String otp = _controllers.map((controller) => controller.text).join();
    widget.onChanged(otp);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          widget.numberOfFields,
          (index) => Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: TextField(
                controller: _controllers[index],
                maxLength: 1,
                focusNode: _focusNodes[index],
                onChanged: (value) {
                  _onChanged(value, index);
                },
                textAlign: TextAlign.center,
                style: AppTextStyles.bold20(context).copyWith(
                  color: AppColors.black,
                ),
                showCursor: true,
                cursorColor: AppColors.prussianBlue,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: const InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 85,
                    maxHeight: 60,
                  ),
                  counterText: '',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
