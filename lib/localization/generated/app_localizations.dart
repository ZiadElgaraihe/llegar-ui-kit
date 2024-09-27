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
