import 'package:flutter/material.dart';
import 'package:llegar/modules/welcome/presentation/views/how_did_you_know_us_view.dart';
import 'package:llegar/modules/welcome/presentation/views/welcome_view.dart';
import 'package:llegar/utils/animations/bottom_slide_transition.dart';
import 'package:llegar/utils/animations/opacity_transition.dart';

///This class contains all routes
abstract class AppRoutes {
  static const String welcomeView = '/WelcomeView';
  static const String howDidYouKnowUsView = '/HowDidYouKnowUsView';

  static Route<dynamic>? generate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case welcomeView:
        return OpacityTransition(
          page: const WelcomeView(),
        );
      case howDidYouKnowUsView:
        return BottomSlideTransition(
          page: const HowDidYouKnowUsView(),
        );
    }
    return null;
  }
}
