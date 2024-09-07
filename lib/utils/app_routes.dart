import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/domain/entities/success_view_entity.dart';
import 'package:llegar/modules/auth/presentation/views/forget_password_view.dart';
import 'package:llegar/modules/auth/presentation/views/log_in_view.dart';
import 'package:llegar/modules/auth/presentation/views/otp_view.dart';
import 'package:llegar/modules/auth/presentation/views/reset_password_view.dart';
import 'package:llegar/modules/auth/presentation/views/sign_up_view.dart';
import 'package:llegar/modules/auth/presentation/views/social_log_in_view.dart';
import 'package:llegar/modules/auth/presentation/views/success_view.dart';
import 'package:llegar/modules/welcome/presentation/views/how_did_you_know_us_view.dart';
import 'package:llegar/modules/welcome/presentation/views/welcome_view.dart';
import 'package:llegar/utils/animations/bottom_slide_transition.dart';
import 'package:llegar/utils/animations/opacity_transition.dart';
import 'package:llegar/utils/animations/side_slide_transition.dart';

///This class contains all routes
abstract class AppRoutes {
  static const String welcomeView = '/WelcomeView';
  static const String howDidYouKnowUsView = '/HowDidYouKnowUsView';
  static const String socialLogInView = '/SocialLogInView';
  static const String signUpView = '/SignUpView';
  static const String logInView = '/LogInView';
  static const String forgetPasswordView = '/ForgetPasswordView';
  static const String otpView = '/OtpView';
  static const String resetPasswordView = '/ResetPasswordView';
  static const String successView = '/SuccessView';

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
      case socialLogInView:
        return BottomSlideTransition(
          page: const SocialLogInView(),
        );
      case signUpView:
        return BottomSlideTransition(
          page: const SignUpView(),
        );
      case logInView:
        return BottomSlideTransition(
          page: const LogInView(),
        );
      case forgetPasswordView:
        return SideSlideTransition(
          page: const ForgetPasswordView(),
        );
      case otpView:
        return SideSlideTransition(
          page: const OtpView(),
        );
      case resetPasswordView:
        return SideSlideTransition(
          page: const ResetPasswordView(),
        );
      case successView:
        return BottomSlideTransition(
          page: SuccessView(
            successViewEntity: routeSettings.arguments as SuccessViewEntity,
          ),
        );
    }
    return null;
  }
}
