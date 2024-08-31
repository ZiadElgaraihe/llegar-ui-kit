import 'package:flutter/material.dart';
import 'package:llegar/modules/welcome/presentation/views/how_did_you_know_us_view.dart';
import 'package:llegar/modules/welcome/presentation/views/welcome_view.dart';
import 'package:llegar/utils/animations/bottom_slide_transition.dart';
import 'package:llegar/utils/animations/opacity_transition.dart';

///This class contains all routes
abstract class AppRoutes {
  static Route<dynamic>? generate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case WelcomeView.id:
        return OpacityTransition(
          page: const WelcomeView(),
        );
      case HowDidYouKnowUsView.id:
        return BottomSlideTransition(
          page: const HowDidYouKnowUsView(),
        );
    }
    return null;
  }
}
