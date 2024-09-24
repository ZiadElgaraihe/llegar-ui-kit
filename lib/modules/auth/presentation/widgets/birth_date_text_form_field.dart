import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class BirthDateTextFormField extends StatefulWidget {
  const BirthDateTextFormField({
    super.key,
    required this.onDatePicked,
    this.icon,
    this.validator,
  });

  final String? icon;
  final void Function(DateTime? date) onDatePicked;
  final String? Function(String?)? validator;

  @override
  State<BirthDateTextFormField> createState() => _BirthDateTextFormFieldState();
}

class _BirthDateTextFormFieldState extends State<BirthDateTextFormField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<DateTime?> _pickDate(BuildContext context) async {
    return showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(DateTime.now().year - 16, 12, 31),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      locale: BlocProvider.of<LocaleCubit>(context).locale,
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: valueBasedOnTheme<ColorScheme>(
            context,
            light: const ColorScheme.light(
              //selected year background color
              primary: AppColors.prussianBlue,
            ),
            dark: const ColorScheme.dark(
              //selected year background color
              primary: AppColors.orange,
              //Month, Year and left and right chevrons
              onSurface: AppColors.white,
            ),
          ),
        ),
        child: child!,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: _controller,
      hintText: translate(context).birthdayDate,
      readOnly: true,
      icon: widget.icon,
      validator: widget.validator,
      suffixIcon: IconButton(
        onPressed: () {
          futureDelayedNavigator(() async {
            DateTime? dateTime = await _pickDate(context);
            widget.onDatePicked(dateTime);

            if (dateTime != null) {
              _controller.text = DateFormat('dd/MM/yyyy').format(dateTime);
            }
          });
        },
        icon: SvgPicture.asset(
          AppIcons.calendar,
          height: 24,
          width: 24,
        ),
      ),
    );
  }
}
