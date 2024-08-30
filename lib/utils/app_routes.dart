import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/presentation/views/welcome_view.dart';
import 'package:llegar/utils/animations/opacity_transition.dart';

///This class contains all routes
abstract class AppRoutes {
  static Route<dynamic>? generate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case WelcomeView.id:
        return OpacityTransition(
          page: const WelcomeView(),
        );
    }
    return null;
  }
}
