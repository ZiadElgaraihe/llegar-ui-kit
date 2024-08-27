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
          labelStyle: AppTextStyles.medium15(context).copyWith(
            color: AppColors.grey,
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
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            shadowColor: AppColors.ultramarineBlue,
            backgroundColor: AppColors.prussianBlue,
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
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
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.prussianBlue,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.prussianBlue),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.white,
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
          labelStyle: AppTextStyles.medium15(context).copyWith(
            color: AppColors.grey,
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
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            shadowColor: AppColors.ultramarineBlue,
            backgroundColor: AppColors.orange,
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
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
      );

  /*This Section is used for debug mode you can remove it and use your own logic*/
  static ThemeMode themeMode = ThemeMode.light;

  static bool isLight() => themeMode == ThemeMode.light;
}
