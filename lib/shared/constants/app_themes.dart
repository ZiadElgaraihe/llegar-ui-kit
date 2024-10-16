import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

///This class contains all app themes (light & dark themes)
abstract class AppThemes {
  static ThemeData lightTheme(BuildContext context) =>
      ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.prussianBlue),
        dividerTheme: const DividerThemeData(
          color: AppColors.antiFlashWhite,
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
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
          titleTextStyle: AppTextStyles.bold24(context).copyWith(
            color: AppColors.black,
            fontFamily: AppStrings.interFontFamily,
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.antiFlashWhite,
          errorStyle: AppTextStyles.medium10(context).copyWith(
            color: AppColors.red,
            fontFamily: AppStrings.interFontFamily,
          ),
          hintStyle: AppTextStyles.medium15(context).copyWith(
            color: AppColors.darkGrey,
            fontFamily: AppStrings.interFontFamily,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6),
          ),
          enabledBorder: OutlineInputBorder(
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
            overlayColor: AppColors.white,
            backgroundColor: AppColors.prussianBlue,
            disabledBackgroundColor: AppColors.prussianBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            textStyle: AppTextStyles.bold20(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
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
            textStyle: AppTextStyles.semiBold16(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.prussianBlue,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context).copyWith(
              color: AppColors.prussianBlue,
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.prussianBlue,
            disabledForegroundColor: AppColors.grey,
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            overlayColor: AppColors.darkGrey,
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
            textStyle: AppTextStyles.bold14(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.prussianBlue,
          ),
          confirmButtonStyle: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.prussianBlue,
          ),
          dayStyle: AppTextStyles.bold14(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
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
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          headerHelpStyle: AppTextStyles.medium14(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          headerHeadlineStyle: AppTextStyles.bold32(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          headerForegroundColor: AppColors.prussianBlue,
          yearStyle: AppTextStyles.bold16(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          yearForegroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.white;
              }
              return AppColors.prussianBlue;
            },
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: AppTextStyles.regular11(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
          ),
          unselectedLabelStyle: AppTextStyles.regular11(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
          ),
          selectedItemColor: AppColors.prussianBlue,
          unselectedItemColor: AppColors.prussianBlue,
          type: BottomNavigationBarType.fixed,
        ),
        switchTheme: SwitchThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          thumbColor: const WidgetStatePropertyAll(AppColors.white),
          trackColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.green;
            }
            return AppColors.lavender;
          }),
          trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          showDragHandle: true,
          dragHandleColor: AppColors.lightGrey,
          dragHandleSize: Size(100, 3.5),
        ),
        radioTheme: const RadioThemeData(
          fillColor: WidgetStatePropertyAll(AppColors.prussianBlue),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
        ),
        tabBarTheme: TabBarTheme(
          dividerHeight: 3,
          dividerColor: AppColors.antiFlashWhite,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: UnderlineTabIndicator(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.prussianBlue,
              width: 5,
            ),
          ),
          labelPadding: const EdgeInsets.only(bottom: 8),
          labelStyle: AppTextStyles.bold24(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          labelColor: AppColors.prussianBlue,
          unselectedLabelStyle: AppTextStyles.bold24(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          unselectedLabelColor: AppColors.black,
        ),
        listTileTheme: ListTileThemeData(
          textColor: AppColors.prussianBlue,
          titleTextStyle: AppTextStyles.semiBold20(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          subtitleTextStyle: AppTextStyles.medium14(context).copyWith(
            color: AppColors.black,
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        dialogTheme: DialogTheme(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        cardTheme: CardTheme(
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.prussianBlue,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.prussianBlue),
        dividerTheme: const DividerThemeData(
          color: AppColors.antiFlashWhite,
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
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.prussianBlue,
          elevation: 0,
          titleTextStyle: AppTextStyles.bold24(context).copyWith(
            color: AppColors.white,
            fontFamily: AppStrings.interFontFamily,
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.prussianBlue,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.antiFlashWhite,
          errorStyle: AppTextStyles.medium10(context).copyWith(
            color: AppColors.lightRed,
            fontFamily: AppStrings.interFontFamily,
          ),
          hintStyle: AppTextStyles.medium15(context).copyWith(
            color: AppColors.darkGrey,
            fontFamily: AppStrings.interFontFamily,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6),
          ),
          enabledBorder: OutlineInputBorder(
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
            overlayColor: AppColors.black,
            disabledBackgroundColor: AppColors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            textStyle: AppTextStyles.bold20(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
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
            textStyle: AppTextStyles.semiBold16(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.orange,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context).copyWith(
              color: AppColors.orange,
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.orange,
            disabledForegroundColor: AppColors.grey,
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            overlayColor: AppColors.lightGrey,
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
            textStyle: AppTextStyles.bold14(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.orange,
          ),
          confirmButtonStyle: TextButton.styleFrom(
            textStyle: AppTextStyles.bold14(context).copyWith(
              fontFamily: AppStrings.urbanistFontFamily,
            ),
            foregroundColor: AppColors.orange,
          ),
          dayStyle: AppTextStyles.bold14(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
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
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          headerHelpStyle: AppTextStyles.medium14(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          headerHeadlineStyle: AppTextStyles.bold32(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          headerForegroundColor: AppColors.orange,
          yearStyle: AppTextStyles.bold16(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          yearForegroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.prussianBlue;
              }
              return AppColors.lightGrey;
            },
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: AppTextStyles.regular11(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
          ),
          unselectedLabelStyle: AppTextStyles.regular11(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
          ),
          selectedItemColor: AppColors.orange,
          unselectedItemColor: AppColors.orange,
          type: BottomNavigationBarType.fixed,
        ),
        switchTheme: SwitchThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          thumbColor: const WidgetStatePropertyAll(AppColors.white),
          trackColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.green;
            }
            return AppColors.lavender;
          }),
          trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.prussianBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          showDragHandle: true,
          dragHandleColor: AppColors.lightGrey,
          dragHandleSize: Size(100, 3.5),
        ),
        radioTheme: const RadioThemeData(
          fillColor: WidgetStatePropertyAll(AppColors.orange),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
        ),
        tabBarTheme: TabBarTheme(
          dividerHeight: 3,
          dividerColor: AppColors.antiFlashWhite,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: UnderlineTabIndicator(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.orange,
              width: 5,
            ),
          ),
          labelPadding: const EdgeInsets.only(bottom: 8),
          labelStyle: AppTextStyles.bold24(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          labelColor: AppColors.orange,
          unselectedLabelStyle: AppTextStyles.bold24(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          unselectedLabelColor: AppColors.white,
        ),
        listTileTheme: ListTileThemeData(
          textColor: AppColors.orange,
          titleTextStyle: AppTextStyles.semiBold20(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          subtitleTextStyle: AppTextStyles.medium14(context).copyWith(
            color: AppColors.white,
            fontFamily: AppStrings.urbanistFontFamily,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        dialogTheme: DialogTheme(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        cardTheme: CardTheme(
          color: AppColors.prussianBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
}
