import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class AmountEntryTextField extends StatefulWidget {
  const AmountEntryTextField({
    super.key,
    this.enabled,
    this.onChanged,
    this.setValue,
  });

  final bool? enabled;
  final void Function(String value)? onChanged;

  /// This method is used to set controller value
  final void Function(TextEditingController controller)? setValue;

  @override
  State<AmountEntryTextField> createState() => _AmountEntryTextFieldState();
}

class _AmountEntryTextFieldState extends State<AmountEntryTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '\$');
    _controller.addListener(_controllerListener);
    if (widget.setValue != null) {
      widget.setValue!(_controller);
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerListener);
    _controller.dispose();
    super.dispose();
  }

  void _controllerListener() {
    _enforceDollarPrefix();
  }

  /// Ensure that the user adheres to the requirement of commencing
  /// the text input with the symbol "$"
  void _enforceDollarPrefix() {
    if (!_controller.text.startsWith('\$')) {
      _controller.text = '\$${_controller.text}';
      _controller.selection = const TextSelection.collapsed(offset: 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      enabled: widget.enabled,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      keyboardType: TextInputType.number,
      style: AppTextStyles.bold48(context).copyWith(
        color: mainThemeColor(context),
      ),
      cursorHeight: 55,
      cursorColor: mainThemeColor(context),
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.allow(RegExp(r'^\$\d*\.?\d{0,2}')),
      ],
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        filled: false,
        constraints: const BoxConstraints(
          maxWidth: AppSizes.expandedBreakpoint,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40,
        ),
        enabledBorder: _getBorderStyle(context),
        focusedBorder: _getBorderStyle(context),
        disabledBorder: _getBorderStyle(context),
      ),
    );
  }

  OutlineInputBorder _getBorderStyle(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        width: 3,
        color: mainThemeColor(context),
      ),
    );
  }
}
