import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:llegar/app.dart';
import 'package:llegar/config/preload_svg_images.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await preloadSvgImages();

  FlutterNativeSplash.remove();

  runApp(const Llegar());
}
