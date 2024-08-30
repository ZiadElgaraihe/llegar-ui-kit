import 'package:flutter/material.dart';
import 'package:llegar/config/preload_svg_images.dart';
import 'package:llegar/modules/welcome/presentation/views/welcome_view.dart';
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
    await _preloadImagesAndDelay();
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, WelcomeView.id);
  }

  /// Preloads SVG images based on the current theme and ensures that 
  /// the splash screen is displayed for a minimum duration of 4 seconds.
  /// 
  /// If the image preloading completes before 4 seconds, 
  /// it waits for the remaining time before navigating from the splash screen.
  /// 
  /// If 4 seconds elapse first, it waits for the image preloading to finish 
  /// before navigating.
  /// 
  /// This method helps maintain the splash screen visibility for a consistent 
  /// duration regardless of the image loading time.
  Future<void> _preloadImagesAndDelay() async {
    await Future.wait([
      preloadSvgImages(
        svgImages: valueBasedOnTheme<List<String>>(
          context,
          light: [
            AppImages.welcomeToLlegar,
            AppImages.secureApp,
            AppImages.makeDeal,
            AppImages.twoFactorAuth,
          ],
          dark: [
            AppImages.welcomeToLlegarDark,
            AppImages.secureAppDark,
            AppImages.makeDealDark,
            AppImages.twoFactorAuthDark,
          ],
        )!,
      ),
      Future.delayed(
        const Duration(seconds: 4),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: const SplashViewBody(),
    );
  }
}
