import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';
import 'package:llegar/core/presentation/manager/cubits/theme_cubit/theme_cubit.dart';
import 'package:llegar/localization/generated/app_localizations.dart';
import 'package:llegar/modules/splash/presentation/views/splash_view.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_themes.dart';
import 'package:llegar/shared/utils/functions/preload_svg_images.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class Llegar extends StatefulWidget {
  const Llegar({super.key});

  @override
  State<Llegar> createState() => _LlegarState();
}

class _LlegarState extends State<Llegar> {
  @override
  void initState() {
    super.initState();
    preloadSvgImages(
      svgImages: valueBasedOnTheme<List<String>>(
        context,
        light: [
          AppImages.splashLogo,
        ],
        dark: [
          AppImages.splashLogoDark,
        ],
      )!,
    ).then(
      (value) {
        FlutterNativeSplash.remove();
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      themeMode: BlocProvider.of<ThemeCubit>(context, listen: true).themeMode,
      theme: AppThemes.lightTheme(context),
      darkTheme: AppThemes.darkTheme(context),
      locale: BlocProvider.of<LocaleCubit>(context, listen: true).locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: AppRoutes.generate,
      home: const SplashView(),
    );
  }
}
