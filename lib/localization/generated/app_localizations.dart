import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @welcomeToLlegar.
  ///
  /// In en, this message translates to:
  /// **'Welcome to LLEGAR'**
  String get welcomeToLlegar;

  /// No description provided for @theBestRentalApp.
  ///
  /// In en, this message translates to:
  /// **'The best rental app of the century to rent any thing rentable you want every day'**
  String get theBestRentalApp;

  /// No description provided for @secureApp.
  ///
  /// In en, this message translates to:
  /// **'Secure App'**
  String get secureApp;

  /// No description provided for @donotWorryAboutYourData.
  ///
  /// In en, this message translates to:
  /// **'Don’t worry about your data we have the best security system to safe your privacy'**
  String get donotWorryAboutYourData;

  /// No description provided for @makeADeal.
  ///
  /// In en, this message translates to:
  /// **'Make a Deal'**
  String get makeADeal;

  /// No description provided for @weGuaranteeThatTheRentalProcess.
  ///
  /// In en, this message translates to:
  /// **'We guarantee that the rental process will be completed successfully.\n“We Delivere trust“'**
  String get weGuaranteeThatTheRentalProcess;

  /// No description provided for @twoFactorAuthentication.
  ///
  /// In en, this message translates to:
  /// **'Two factor authentication'**
  String get twoFactorAuthentication;

  /// No description provided for @weProvideAServiceTwoFactorAuthentication.
  ///
  /// In en, this message translates to:
  /// **'We provide a service Two factor authentication To ensure that your account is safe from hacking'**
  String get weProvideAServiceTwoFactorAuthentication;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @weDeliverTrust.
  ///
  /// In en, this message translates to:
  /// **'We deliver trust'**
  String get weDeliverTrust;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @howDidYouKnowUs.
  ///
  /// In en, this message translates to:
  /// **'How did You Know Us'**
  String get howDidYouKnowUs;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @googleSearch.
  ///
  /// In en, this message translates to:
  /// **'Google Search'**
  String get googleSearch;

  /// No description provided for @appStore.
  ///
  /// In en, this message translates to:
  /// **'App Store'**
  String get appStore;

  /// No description provided for @youtube.
  ///
  /// In en, this message translates to:
  /// **'Youtube'**
  String get youtube;

  /// No description provided for @tiktok.
  ///
  /// In en, this message translates to:
  /// **'TikTok'**
  String get tiktok;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @letUsYouIn.
  ///
  /// In en, this message translates to:
  /// **'Let\'s You in'**
  String get letUsYouIn;

  /// No description provided for @continueWithFacebook.
  ///
  /// In en, this message translates to:
  /// **'Continue with Facebook'**
  String get continueWithFacebook;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithApple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get continueWithApple;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @signInWithPassword.
  ///
  /// In en, this message translates to:
  /// **'Sign in with password'**
  String get signInWithPassword;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @doNotHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get doNotHaveAnAccount;

  /// No description provided for @createYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Your Account'**
  String get createYourAccount;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @orContinueWith.
  ///
  /// In en, this message translates to:
  /// **'or continue with'**
  String get orContinueWith;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get logIn;

  /// No description provided for @logInToYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Login to Your Account'**
  String get logInToYourAccount;

  /// No description provided for @forgetThePassword.
  ///
  /// In en, this message translates to:
  /// **'Forget the password?'**
  String get forgetThePassword;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Password'**
  String get forgetPassword;

  /// No description provided for @enterYourEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address to get an OTP Code to reset your Password'**
  String get enterYourEmailAddress;

  /// No description provided for @youHaveGotMail.
  ///
  /// In en, this message translates to:
  /// **'You’ve got mail'**
  String get youHaveGotMail;

  /// No description provided for @weHaveSentTheOtpVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'We have sent the OTP verification code to your email address. Check your email and enter the code below'**
  String get weHaveSentTheOtpVerificationCode;

  /// No description provided for @pleaseEnterValidFourDigitOtp.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid 4-digit OTP'**
  String get pleaseEnterValidFourDigitOtp;

  /// No description provided for @didNotReceiveEmail.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive email?'**
  String get didNotReceiveEmail;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resendCode;

  /// No description provided for @youCanResendCodeIn.
  ///
  /// In en, this message translates to:
  /// **'You can resend code in'**
  String get youCanResendCodeIn;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get second;

  /// No description provided for @createNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Create new password'**
  String get createNewPassword;

  /// No description provided for @saveTheNewPasswordInSafePlace.
  ///
  /// In en, this message translates to:
  /// **'Save the new password in a safe place, if you forget it then you have to do a forgot password again.'**
  String get saveTheNewPasswordInSafePlace;

  /// No description provided for @confirmTheNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm the new password'**
  String get confirmTheNewPassword;

  /// No description provided for @yourPasswordHasBeenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your password has been updated'**
  String get yourPasswordHasBeenUpdated;

  /// No description provided for @passwordChangedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Password Changed Successfully'**
  String get passwordChangedSuccessfully;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get userName;

  /// No description provided for @birthdayDate.
  ///
  /// In en, this message translates to:
  /// **'Birthday Date'**
  String get birthdayDate;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @jerusalem.
  ///
  /// In en, this message translates to:
  /// **'Jerusalem'**
  String get jerusalem;

  /// No description provided for @baghdad.
  ///
  /// In en, this message translates to:
  /// **'Baghdad'**
  String get baghdad;

  /// No description provided for @damascus.
  ///
  /// In en, this message translates to:
  /// **'Damascus'**
  String get damascus;

  /// No description provided for @cairo.
  ///
  /// In en, this message translates to:
  /// **'Cairo'**
  String get cairo;

  /// No description provided for @rabat.
  ///
  /// In en, this message translates to:
  /// **'Rabat'**
  String get rabat;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @livePhoto.
  ///
  /// In en, this message translates to:
  /// **'Live Photo'**
  String get livePhoto;

  /// No description provided for @idPhoto.
  ///
  /// In en, this message translates to:
  /// **'ID Photo'**
  String get idPhoto;

  /// No description provided for @successfulSignUp.
  ///
  /// In en, this message translates to:
  /// **'Successful Sign Up'**
  String get successfulSignUp;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @inbox.
  ///
  /// In en, this message translates to:
  /// **'Inbox'**
  String get inbox;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @joinPremium.
  ///
  /// In en, this message translates to:
  /// **'Join Premium!'**
  String get joinPremium;

  /// No description provided for @enjoyTheBestDealsWithGreatFeatures.
  ///
  /// In en, this message translates to:
  /// **'Enjoy the best deals with great features.'**
  String get enjoyTheBestDealsWithGreatFeatures;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @myActivities.
  ///
  /// In en, this message translates to:
  /// **'My Activities'**
  String get myActivities;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @helpCenter.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logOut;

  /// No description provided for @introduction.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get introduction;

  /// No description provided for @llegarIsCommittedToProtectingYourPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Llegar is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and protect your information when you use our application. By using the Services, you agree to the collection and use of information as outlined in this policy.'**
  String get llegarIsCommittedToProtectingYourPrivacy;

  /// No description provided for @typesOfDataWeCollect.
  ///
  /// In en, this message translates to:
  /// **'Types of Data We Collect'**
  String get typesOfDataWeCollect;

  /// No description provided for @weMayCollectTheFollowingTypesOfInformation.
  ///
  /// In en, this message translates to:
  /// **'We may collect the following types of information:\n\n• Personal Information: Your name, email address, phone number, postal address, IP address, and other similar identifiers.\n\n• Usage Data: Information about how you interact with our Services, such as app usage statistics, device information, and browsing behavior.\n\n• Location Data: With your consent, we may collect information about your location to enhance your experience with location-based services.\n\n• Payment Information: If applicable, we collect payment details necessary to process transactions.'**
  String get weMayCollectTheFollowingTypesOfInformation;

  /// No description provided for @useOfYourPersonalData.
  ///
  /// In en, this message translates to:
  /// **'Use of Your Personal Data'**
  String get useOfYourPersonalData;

  /// No description provided for @weUseTheInformationWeCollectTo.
  ///
  /// In en, this message translates to:
  /// **'We use the information we collect to:\n\n• Provide, operate, and maintain our Services.\n\n• Process transactions and manage your account.\n\n• Personalize user experience.\n\n• Improve and develop our Services.\n\n• Communicate with you regarding updates, promotions, and customer service inquiries.\n\n• Comply with legal obligations.'**
  String get weUseTheInformationWeCollectTo;

  /// No description provided for @disclosureOfYourPersonalData.
  ///
  /// In en, this message translates to:
  /// **'Disclosure of Your Personal Data'**
  String get disclosureOfYourPersonalData;

  /// No description provided for @weMayShareYourInformationWith.
  ///
  /// In en, this message translates to:
  /// **'We may share your information with:\n\n• Service Providers: To help us provide and maintain our Services, we may share your information with trusted third-party service providers.\n\n• Legal Compliance: We may disclose your information if required by law or to protect our legal rights.\n\n• Business Transfers: If we are involved in a merger, acquisition, or sale of assets, your information may be transferred.'**
  String get weMayShareYourInformationWith;

  /// No description provided for @dataSecurity.
  ///
  /// In en, this message translates to:
  /// **'Data Security'**
  String get dataSecurity;

  /// No description provided for @weTakeDataSecuritySeriously.
  ///
  /// In en, this message translates to:
  /// **'We take data security seriously and implement reasonable measures to protect your information. However, no method of transmission over the internet or electronic storage is completely secure, and we cannot guarantee absolute security.'**
  String get weTakeDataSecuritySeriously;

  /// No description provided for @childrenPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Children’s Privacy'**
  String get childrenPrivacy;

  /// No description provided for @ourServicesAreNotIntendedForUseByIndividuals.
  ///
  /// In en, this message translates to:
  /// **'Our Services are not intended for use by individuals under the age of 16. We do not knowingly collect personal data from children under 16.'**
  String get ourServicesAreNotIntendedForUseByIndividuals;

  /// No description provided for @changesToThisPolicy.
  ///
  /// In en, this message translates to:
  /// **'Changes to this Policy'**
  String get changesToThisPolicy;

  /// No description provided for @weMayUpdateThisPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'We may update this Privacy Policy from time to time. Any changes will be posted on this page.'**
  String get weMayUpdateThisPrivacyPolicy;

  /// No description provided for @ifYouHaveAnyQuestions.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions about this Privacy Policy, please contact us.'**
  String get ifYouHaveAnyQuestions;

  /// No description provided for @faceId.
  ///
  /// In en, this message translates to:
  /// **'Face Id'**
  String get faceId;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @areYouSureYouWantToLogOut.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get areYouSureYouWantToLogOut;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @customerService.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService;

  /// No description provided for @whatsApp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsApp;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @twitter.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @typeYourMessage.
  ///
  /// In en, this message translates to:
  /// **'Type Your Message'**
  String get typeYourMessage;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @ans.
  ///
  /// In en, this message translates to:
  /// **'ANS'**
  String get ans;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @myItems.
  ///
  /// In en, this message translates to:
  /// **'My Items'**
  String get myItems;

  /// No description provided for @myRentedItems.
  ///
  /// In en, this message translates to:
  /// **'My Rented Items'**
  String get myRentedItems;

  /// No description provided for @addItem.
  ///
  /// In en, this message translates to:
  /// **'Add Item'**
  String get addItem;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
