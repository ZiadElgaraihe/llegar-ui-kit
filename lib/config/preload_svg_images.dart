import 'package:flutter_svg/flutter_svg.dart';

///This method load svg images and cache them
///So this cache helps to avoid reloading the SVG from the asset bundle
///each time it's needed, which improves performance
Future<void> preloadSvgImages({required List<String> svgImages}) async {
  await Future.wait(svgImages.map((svgPath) {
    final loader = SvgAssetLoader(svgPath);
    return svg.cache
        .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
  }));
}
