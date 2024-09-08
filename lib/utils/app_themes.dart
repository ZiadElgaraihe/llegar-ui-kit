import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_text_styles.dart';

///This class contains all app themes (light & dark themes)
abstract class AppThemes {
  static ThemeData lightTheme(BuildContext context) =>
      ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.prussianBlue),
        dividerTheme: const DividerThemeData(
          color: AppColors.black,
          thickness: 1,
          indent: 8,
          endIndent: 8,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.prussianBlue,
            fontFamily: AppStrings.urbanistFontFamily,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.antiFlashWhite,
          errorStyle: const TextStyle(
            color: AppColors.red,
            fontFamily: AppStrings.interFontFamily,
          ),
          hintStyle: AppTextStyles.medium15(context).copyWith(
            color: AppColors.darkgrey,
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
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            fixedSize: Size(MediaQuery.sizeOf(context).width, 58),
            shadowColor: AppColors.ultramarineBlue,
            backgroundColor: AppColors.prussianBlue,
            disabledBackgroundColor: AppColors.prussianBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            textStyle: AppTextStyles.bold20(context),
            foregroundColor: AppColors.white,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: const BorderSide(
              color: AppColors.prussianBlue,
              width: 2,
            ),
            textStyle: AppTextStyles.semiBold16(context),
            foregroundColor: AppColors.prussianBlue,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context).copyWith(
              color: AppColors.prussianBlue,
            ),
            foregroundColor: AppColors.prussianBlue,
            disabledForegroundColor: AppColors.grey,
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.prussianBlue;
              }
              return AppColors.white;
            },
          ),
          side: const BorderSide(
            color: AppColors.prussianBlue,
            width: 2,
          ),
          checkColor: const WidgetStatePropertyAll(AppColors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        ),
        datePickerTheme: DatePickerThemeData(
          backgroundColor: AppColors.white,
          cancelButtonStyle: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context),
            foregroundColor: AppColors.prussianBlue,
          ),
          confirmButtonStyle: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context),
            foregroundColor: AppColors.prussianBlue,
          ),
          dayStyle: AppTextStyles.bold14(context),
          dayForegroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.white;
              }
              return AppColors.black;
            },
          ),
          dayBackgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.prussianBlue;
              }
              return Colors.transparent;
            },
          ),
          weekdayStyle: AppTextStyles.bold14(context).copyWith(
            color: AppColors.black,
          ),
          headerHelpStyle: AppTextStyles.medium14(context),
          headerHeadlineStyle: AppTextStyles.bold32(context),
          headerForegroundColor: AppColors.prussianBlue,
          yearStyle: AppTextStyles.bold16(context),
          yearForegroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.white;
              }
              return AppColors.prussianBlue;
            },
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.prussianBlue,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.prussianBlue),
        dividerTheme: const DividerThemeData(
          color: AppColors.white,
          thickness: 1,
          indent: 8,
          endIndent: 8,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.orange,
            fontFamily: AppStrings.urbanistFontFamily,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.prussianBlue,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.prussianBlue,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.antiFlashWhite,
          errorStyle: TextStyle(
            color: Colors.red.shade300,
            fontFamily: AppStrings.interFontFamily,
          ),
          hintStyle: AppTextStyles.medium15(context).copyWith(
            color: AppColors.darkgrey,
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
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red.shade300,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            fixedSize: Size(MediaQuery.sizeOf(context).width, 58),
            shadowColor: AppColors.ultramarineBlue,
            backgroundColor: AppColors.orange,
            disabledBackgroundColor: AppColors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            textStyle: AppTextStyles.bold20(context),
            foregroundColor: AppColors.white,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: const BorderSide(
              color: AppColors.orange,
              width: 2,
            ),
            textStyle: AppTextStyles.semiBold16(context),
            foregroundColor: AppColors.orange,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context).copyWith(
              color: AppColors.orange,
            ),
            foregroundColor: AppColors.orange,
            disabledForegroundColor: AppColors.grey,
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.orange;
              }
              return AppColors.prussianBlue;
            },
          ),
          side: const BorderSide(
            color: AppColors.orange,
            width: 2,
          ),
          checkColor: const WidgetStatePropertyAll(AppColors.prussianBlue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        ),
        datePickerTheme: DatePickerThemeData(
          backgroundColor: AppColors.prussianBlue,
          cancelButtonStyle: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context),
            foregroundColor: AppColors.orange,
          ),
          confirmButtonStyle: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context),
            foregroundColor: AppColors.orange,
          ),
          dayStyle: AppTextStyles.bold14(context),
          dayForegroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.prussianBlue;
              }
              return AppColors.white;
            },
          ),
          dayBackgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.orange;
              }
              return Colors.transparent;
            },
          ),
          weekdayStyle: AppTextStyles.bold14(context).copyWith(
            color: AppColors.white,
          ),
          headerHelpStyle: AppTextStyles.medium14(context),
          headerHeadlineStyle: AppTextStyles.bold32(context),
          headerForegroundColor: AppColors.orange,
          yearStyle: AppTextStyles.bold16(context),
          yearForegroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.prussianBlue;
              }
              return AppColors.lightGrey;
            },
          ),
        ),
      );
}
