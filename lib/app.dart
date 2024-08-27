import 'package:flutter/material.dart';
import 'package:llegar/localization/generated/app_localizations.dart';
import 'package:llegar/modules/auth/presentation/views/welcome_view.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_themes.dart';

class Llegar extends StatelessWidget {
  const Llegar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      themeMode: AppThemes.themeMode,
      theme: AppThemes.lightTheme(context),
      darkTheme: AppThemes.darkTheme(context),
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const WelcomeView(),
    );
  }
}
