import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_images.dart';

///This method load svg images and cache them
///So this cache helps to avoid reloading the SVG from the asset bundle 
///each time it's needed, which improves performance
Future<void> preloadSvgImages() async {
  const List<String> svgImages = [
    AppImages.welcomeToLlegar,
    AppImages.secureApp,
    AppImages.makeDeal,
    AppImages.twoFactorAuth,
    AppImages.welcomeToLlegarDark,
    AppImages.secureAppDark,
    AppImages.makeDealDark,
    AppImages.twoFactorAuthDark,
  ];

  await Future.wait(svgImages.map((svgPath) {
    final loader = SvgAssetLoader(svgPath);
    return svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
  }));
}
