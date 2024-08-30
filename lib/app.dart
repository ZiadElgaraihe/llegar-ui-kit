import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';
import 'package:llegar/core/presentation/manager/cubits/theme_cubit/theme_cubit.dart';
import 'package:llegar/localization/generated/app_localizations.dart';
import 'package:llegar/modules/auth/presentation/views/welcome_view.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_themes.dart';

class Llegar extends StatelessWidget {
  const Llegar({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit()..setUpThemeMode(),
        ),
        BlocProvider<LocaleCubit>(
          create: (context) => LocaleCubit()..setUpLocale(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          themeMode: BlocProvider.of<ThemeCubit>(context).themeMode,
          theme: AppThemes.lightTheme(context),
          darkTheme: AppThemes.darkTheme(context),
          locale: BlocProvider.of<LocaleCubit>(context).locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const WelcomeView(),
        );
      }),
    );
  }
}
