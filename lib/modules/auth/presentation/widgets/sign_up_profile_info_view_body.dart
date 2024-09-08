import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SignUpProfileInfoViewBody extends StatelessWidget {
  const SignUpProfileInfoViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppSizes.bodyHorizontalPadding(context),
      children: [
        AppSizes.height24,
        CustomTextFormField(hintText: translate(context).fullName),
        AppSizes.height12,
        CustomTextFormField(hintText: translate(context).userName),
        AppSizes.height12,
        CustomTextFormField(
          hintText: translate(context).birthdayDate,
          readOnly: true,
          suffixIcon: IconButton(
            onPressed: () {
              futureDelayedNavigator(() {
                _pickDate(context);
              });
            },
            icon: SvgPicture.asset(
              AppIcons.calendar,
              height: 24,
              width: 24,
            ),
          ),
        ),
        AppSizes.height24,
      ],
    );
  }

  void _pickDate(BuildContext context) {
    showDatePicker(
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
}
