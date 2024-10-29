import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/chat_entity.dart';
import 'package:llegar/core/domain/entities/success_view_entity.dart';
import 'package:llegar/core/presentation/views/add_new_card_view.dart';
import 'package:llegar/core/presentation/views/chat_view.dart';
import 'package:llegar/core/presentation/views/item_details_view.dart';
import 'package:llegar/core/presentation/views/item_reviews_view.dart';
import 'package:llegar/core/presentation/views/nav_bar_view.dart';
import 'package:llegar/core/presentation/views/reset_password_view.dart';
import 'package:llegar/core/presentation/views/success_view.dart';
import 'package:llegar/modules/auth/presentation/views/forget_password_view.dart';
import 'package:llegar/modules/auth/presentation/views/log_in_view.dart';
import 'package:llegar/modules/auth/presentation/views/otp_view.dart';
import 'package:llegar/modules/auth/presentation/views/sign_up_identification_view.dart';
import 'package:llegar/modules/auth/presentation/views/sign_up_profile_info_view.dart';
import 'package:llegar/modules/auth/presentation/views/sign_up_view.dart';
import 'package:llegar/modules/auth/presentation/views/social_log_in_view.dart';
import 'package:llegar/modules/home/presentation/views/checkout_payment_view.dart';
import 'package:llegar/modules/home/presentation/views/checkout_view.dart';
import 'package:llegar/modules/home/presentation/views/my_wishlist_view.dart';
import 'package:llegar/modules/home/presentation/views/notification_view.dart';
import 'package:llegar/modules/home/presentation/views/offer_result_view.dart';
import 'package:llegar/modules/home/presentation/views/search_view.dart';
import 'package:llegar/modules/home/presentation/views/shipping_address_view.dart';
import 'package:llegar/modules/home/presentation/views/special_offers_view.dart';
import 'package:llegar/modules/home/presentation/views/top_deals_view.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/domain/entities/review_summary_entity.dart';
import 'package:llegar/modules/profile/presentation/views/add_item_view.dart';
import 'package:llegar/modules/profile/presentation/views/contact_us_view.dart';
import 'package:llegar/modules/profile/presentation/views/edit_profile_view.dart';
import 'package:llegar/modules/profile/presentation/views/help_center_view.dart';
import 'package:llegar/modules/profile/presentation/views/language_view.dart';
import 'package:llegar/modules/profile/presentation/views/my_activities_view.dart';
import 'package:llegar/modules/profile/presentation/views/my_items_view.dart';
import 'package:llegar/modules/profile/presentation/views/premium_package_payment_view.dart';
import 'package:llegar/modules/profile/presentation/views/privacy_policy_view.dart';
import 'package:llegar/modules/profile/presentation/views/review_summary_view.dart';
import 'package:llegar/modules/profile/presentation/views/security_view.dart';
import 'package:llegar/modules/profile/presentation/views/subscribe_to_premium_view.dart';
import 'package:llegar/modules/wallet/presentation/views/fund_my_wallet_view.dart';
import 'package:llegar/modules/wallet/presentation/views/top_up_electronic_wallet_view.dart';
import 'package:llegar/modules/welcome/presentation/views/how_did_you_know_us_view.dart';
import 'package:llegar/modules/welcome/presentation/views/welcome_view.dart';
import 'package:llegar/shared/animations/bottom_slide_transition.dart';
import 'package:llegar/shared/animations/opacity_transition.dart';
import 'package:llegar/shared/animations/side_slide_transition.dart';
import 'package:llegar/shared/utils/enums/notification_type.dart';

///This class contains all routes
abstract class AppRoutes {
  static const String addItemView = '/AddItemView';
  static const String addNewCardView = '/AddNewCardView';
  static const String chatView = '/ChatView';
  static const String checkoutPaymentView = '/CheckoutPaymentView';
  static const String checkoutView = '/CheckoutView';
  static const String contactUsView = '/ContactUsView';
  static const String editProfileView = '/EditProfileView';
  static const String forgetPasswordView = '/ForgetPasswordView';
  static const String fundMyWalletView = '/FundMyWalletView';
  static const String helpCenterView = '/HelpCenterView';
  static const String howDidYouKnowUsView = '/HowDidYouKnowUsView';
  static const String itemDetailsView = '/ItemDetailsView';
  static const String itemReviewsView = '/ItemReviewsView';
  static const String languageView = '/LanguageView';
  static const String logInView = '/LogInView';
  static const String myActivitiesView = '/MyActivitiesView';
  static const String myWishlistView = '/MyWishlistView';
  static const String myitemsView = '/MyItemsView';
  static const String navBarView = '/NavBarView';
  static const String notificationView = '/NotificationView';
  static const String offerResultView = '/OfferResultView';
  static const String otpView = '/OtpView';
  static const String premiumPackagePaymentView = '/PremiumPackagePaymentView';
  static const String privacyPolicyView = '/PrivacyPolicyView';
  static const String resetPasswordView = '/ResetPasswordView';
  static const String reviewSummaryView = '/ReviewSummaryView';
  static const String searchView = '/SearchView';
  static const String securityView = '/SecurityView';
  static const String shippingAddressView = '/ShippingAddressView';
  static const String signUpIdentificationView = '/SignUpIdentificationView';
  static const String signUpProfileInfoView = '/SignUpProfileInfoView';
  static const String signUpView = '/SignUpView';
  static const String socialLogInView = '/SocialLogInView';
  static const String specialOffersView = '/SpecialOffersView';
  static const String subscribeToPremiumView = '/SubscribeToPremiumView';
  static const String successView = '/SuccessView';
  static const String topDealsView = '/TopDealsView';
  static const String topUpElectronicWalletView = '/TopUpElectronicWalletView';
  static const String welcomeView = '/WelcomeView';

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
      case editProfileView:
        return SideSlideTransition(
          page: const EditProfileView(),
        );
      case myActivitiesView:
        return SideSlideTransition(
          page: const MyActivitiesView(),
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
      case languageView:
        return SideSlideTransition(
          page: const LanguageView(),
        );
      case helpCenterView:
        return SideSlideTransition(
          page: const HelpCenterView(),
        );
      case myitemsView:
        return SideSlideTransition(
          page: MyItemsView(
            title: routeSettings.arguments as String,
          ),
        );
      case addItemView:
        return SideSlideTransition(
          page: const AddItemView(),
        );
      case subscribeToPremiumView:
        return SideSlideTransition(
          page: const SubscribeToPremiumView(),
        );
      case premiumPackagePaymentView:
        return SideSlideTransition(
          page: PremiumPackagePaymentView(
            premiumPackageEntity:
                routeSettings.arguments as PremiumPackageEntity,
          ),
        );
      case addNewCardView:
        return SideSlideTransition(
          page: const AddNewCardView(),
        );
      case reviewSummaryView:
        return SideSlideTransition(
          page: ReviewSummaryView(
            reviewSummaryEntity: routeSettings.arguments as ReviewSummaryEntity,
          ),
        );
      case chatView:
        return SideSlideTransition(
          page: ChatView(
            chatEntity: routeSettings.arguments as ChatEntity,
          ),
        );
      case fundMyWalletView:
        return SideSlideTransition(
          page: const FundMyWalletView(),
        );
      case topUpElectronicWalletView:
        return SideSlideTransition(
          page: const TopUpElectronicWalletView(),
        );
      case searchView:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SearchView(),
        );
      case myWishlistView:
        return SideSlideTransition(
          page: const MyWishlistView(),
        );
      case specialOffersView:
        return SideSlideTransition(
          page: const SpecialOffersView(),
        );
      case topDealsView:
        return SideSlideTransition(
          page: const TopDealsView(),
        );
      case notificationView:
        return SideSlideTransition(
          page: const NotificationView(),
        );
      case offerResultView:
        return SideSlideTransition(
          page: OfferResultView(
            notificationType: routeSettings.arguments as NotificationType,
          ),
        );
      case checkoutView:
        return SideSlideTransition(
          page: const CheckoutView(),
        );
      case checkoutPaymentView:
        return SideSlideTransition(
          page: const CheckoutPaymentView(),
        );
      case shippingAddressView:
        return SideSlideTransition(
          page: const ShippingAddressView(),
        );
      case itemDetailsView:
        return SideSlideTransition(
          page: ItemDetailsView(
            heroTag: routeSettings.arguments as String?,
          ),
        );
      case itemReviewsView:
        return SideSlideTransition(
          page: const ItemReviewsView(),
        );
    }
    return null;
  }
}
