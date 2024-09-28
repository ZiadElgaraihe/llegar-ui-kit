import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/views/nav_bar_view.dart';
import 'package:llegar/core/domain/entities/success_view_entity.dart';
import 'package:llegar/modules/auth/presentation/views/forget_password_view.dart';
import 'package:llegar/modules/auth/presentation/views/log_in_view.dart';
import 'package:llegar/modules/auth/presentation/views/otp_view.dart';
import 'package:llegar/core/presentation/views/reset_password_view.dart';
import 'package:llegar/modules/auth/presentation/views/sign_up_identification_view.dart';
import 'package:llegar/modules/auth/presentation/views/sign_up_profile_info_view.dart';
import 'package:llegar/modules/auth/presentation/views/sign_up_view.dart';
import 'package:llegar/modules/auth/presentation/views/social_log_in_view.dart';
import 'package:llegar/core/presentation/views/success_view.dart';
import 'package:llegar/modules/profile/presentation/views/contact_us_view.dart';
import 'package:llegar/modules/profile/presentation/views/privacy_policy_view.dart';
import 'package:llegar/modules/profile/presentation/views/security_view.dart';
import 'package:llegar/modules/welcome/presentation/views/how_did_you_know_us_view.dart';
import 'package:llegar/modules/welcome/presentation/views/welcome_view.dart';
import 'package:llegar/shared/animations/bottom_slide_transition.dart';
import 'package:llegar/shared/animations/opacity_transition.dart';
import 'package:llegar/shared/animations/side_slide_transition.dart';

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
  static const String signUpProfileInfoView = '/SignUpProfileInfoView';
  static const String signUpIdentificationView = '/SignUpIdentificationView';
  static const String navBarView = '/NavBarView';
  static const String securityView = '/SecurityView';
  static const String privacyPolicyView = '/PrivacyPolicyView';
  static const String contactUsView = '/ContactUsView';

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
      case signUpProfileInfoView:
        return SideSlideTransition(
          page: const SignUpProfileInfoView(),
        );
      case signUpIdentificationView:
        return SideSlideTransition(
          page: const SignUpIdentificationView(),
        );
      case navBarView:
        return BottomSlideTransition(
          page: const NavBarView(),
        );
      case securityView:
        return SideSlideTransition(
          page: const SecurityView(),
        );
      case privacyPolicyView:
        return SideSlideTransition(
          page: const PrivacyPolicyView(),
        );
      case contactUsView:
        return SideSlideTransition(
          page: const ContactUsView(),
        );
    }
    return null;
  }
}
