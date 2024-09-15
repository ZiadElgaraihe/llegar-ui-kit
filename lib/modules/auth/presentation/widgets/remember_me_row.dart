import 'package:flutter/material.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class RememberMeRow extends StatefulWidget {
  const RememberMeRow({
    super.key,
    this.onChanged,
  });

  final void Function(bool value)? onChanged;

  @override
  State<RememberMeRow> createState() => _RememberMeRowState();
}

class _RememberMeRowState extends State<RememberMeRow> {
  late ValueNotifier<bool> _rememberMe;

  @override
  void dispose() {
    _rememberMe.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _rememberMe = ValueNotifier<bool>(false);
  }

  void _onChanged(value) {
    _rememberMe.value = value!;
    if (widget.onChanged != null) widget.onChanged!(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValueListenableBuilder(
          valueListenable: _rememberMe,
          builder: (context, rememberMe, child) => Checkbox(
            value: rememberMe,
            onChanged: _onChanged,
          ),
        ),
        AppSizes.width8,
        Text(
          translate(context).rememberMe,
          style: AppTextStyles.medium15(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
            fontFamily: AppStrings.interFontFamily,
          ),
        ),
      ],
    );
  }
}
