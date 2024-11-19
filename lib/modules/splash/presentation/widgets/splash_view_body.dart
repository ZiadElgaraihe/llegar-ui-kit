import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:llegar/modules/splash/presentation/widgets/splash_logo.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: SplashLogo(),
            ),
            AppSizes.height48,
            SpinKitCircle(
              color: mainThemeColor(context),
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}
