import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:llegar/app.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';
import 'package:llegar/core/presentation/manager/cubits/theme_cubit/theme_cubit.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider<ThemeCubit>(
              create: (context) => ThemeCubit()..setUpThemeMode(),
            ),
            BlocProvider<LocaleCubit>(
              create: (context) => LocaleCubit()..setUpLocale(),
            ),
          ],
          child: const Llegar(),
        ),
      ),
    ),
  );
}
