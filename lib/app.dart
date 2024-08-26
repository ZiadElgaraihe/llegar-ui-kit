import 'package:flutter/material.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_themes.dart';

class Llegar extends StatelessWidget {
  const Llegar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      themeMode: AppThemes.themeMode,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
    );
  }
}
