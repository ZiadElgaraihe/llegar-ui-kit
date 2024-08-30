import 'package:flutter/material.dart';
import 'package:llegar/config/preload_svg_images.dart';
import 'package:llegar/modules/splash/presentation/widgets/splash_view_body.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await preloadSvgImages(
      svgImages: valueBasedOnTheme<List<String>>(context, light: [
        AppImages.welcomeToLlegar,
        AppImages.secureApp,
        AppImages.makeDeal,
        AppImages.twoFactorAuth,
      ], dark: [
        AppImages.welcomeToLlegarDark,
        AppImages.secureAppDark,
        AppImages.makeDealDark,
        AppImages.twoFactorAuthDark,
      ])!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: const SplashViewBody(),
    );
  }
}
