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

  /// No description provided for @addPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add Photo'**
  String get addPhoto;

  /// No description provided for @rentType.
  ///
  /// In en, this message translates to:
  /// **'Rent Type'**
  String get rentType;

  /// No description provided for @transportation.
  ///
  /// In en, this message translates to:
  /// **'Transportation'**
  String get transportation;

  /// No description provided for @property.
  ///
  /// In en, this message translates to:
  /// **'Property'**
  String get property;

  /// No description provided for @clothes.
  ///
  /// In en, this message translates to:
  /// **'Clothes'**
  String get clothes;

  /// No description provided for @electronics.
  ///
  /// In en, this message translates to:
  /// **'Electronics'**
  String get electronics;

  /// No description provided for @playAreas.
  ///
  /// In en, this message translates to:
  /// **'Play Areas'**
  String get playAreas;

  /// No description provided for @eventRentals.
  ///
  /// In en, this message translates to:
  /// **'Event Rentals'**
  String get eventRentals;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @pricePerDay.
  ///
  /// In en, this message translates to:
  /// **'Price /day'**
  String get pricePerDay;

  /// No description provided for @shippingPrice.
  ///
  /// In en, this message translates to:
  /// **'Shipping Price'**
  String get shippingPrice;

  /// No description provided for @writeYourCondition.
  ///
  /// In en, this message translates to:
  /// **'Write Your Condition'**
  String get writeYourCondition;

  /// No description provided for @notRequired.
  ///
  /// In en, this message translates to:
  /// **'Not required*'**
  String get notRequired;

  /// No description provided for @negotiable.
  ///
  /// In en, this message translates to:
  /// **'Negotiable'**
  String get negotiable;

  /// No description provided for @availability.
  ///
  /// In en, this message translates to:
  /// **'Availability'**
  String get availability;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @yourItemHasBeenAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your item has been added successfully.'**
  String get yourItemHasBeenAddedSuccessfully;

  /// No description provided for @anErrorOccurredWhileProcessingYourRequestPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while processing your request. Please try again.'**
  String get anErrorOccurredWhileProcessingYourRequestPleaseTryAgain;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @subscribeToPremium.
  ///
  /// In en, this message translates to:
  /// **'Subscribe to Premium'**
  String get subscribeToPremium;

  /// No description provided for @enjoyTheBestOffers.
  ///
  /// In en, this message translates to:
  /// **'Enjoy the best offers with features that will improve your experience of the application services'**
  String get enjoyTheBestOffers;

  /// No description provided for @perMonth.
  ///
  /// In en, this message translates to:
  /// **'/month'**
  String get perMonth;

  /// No description provided for @sharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing'**
  String get sharing;

  /// No description provided for @ofTheRentAmountWithTheApplication.
  ///
  /// In en, this message translates to:
  /// **'of the rent amount with the application'**
  String get ofTheRentAmountWithTheApplication;

  /// No description provided for @notVerifiedAccount.
  ///
  /// In en, this message translates to:
  /// **'Not verified account'**
  String get notVerifiedAccount;

  /// No description provided for @verifiedAccount.
  ///
  /// In en, this message translates to:
  /// **'Verified account'**
  String get verifiedAccount;

  /// No description provided for @topOnSearchLevel.
  ///
  /// In en, this message translates to:
  /// **'Top on search level'**
  String get topOnSearchLevel;

  /// No description provided for @daysOfSubscription.
  ///
  /// In en, this message translates to:
  /// **'Days of subscription'**
  String get daysOfSubscription;

  /// No description provided for @ads.
  ///
  /// In en, this message translates to:
  /// **'Ads'**
  String get ads;

  /// No description provided for @paymentMethods.
  ///
  /// In en, this message translates to:
  /// **'Payment Methods'**
  String get paymentMethods;

  /// No description provided for @selectThePaymentMethodYouWantToUse.
  ///
  /// In en, this message translates to:
  /// **'Select the payment method you want to use.'**
  String get selectThePaymentMethodYouWantToUse;

  /// No description provided for @myWallet.
  ///
  /// In en, this message translates to:
  /// **'My Wallet'**
  String get myWallet;

  /// No description provided for @payPal.
  ///
  /// In en, this message translates to:
  /// **'PayPal'**
  String get payPal;

  /// No description provided for @googlePay.
  ///
  /// In en, this message translates to:
  /// **'Google Pay'**
  String get googlePay;

  /// No description provided for @applePay.
  ///
  /// In en, this message translates to:
  /// **'Apple Pay'**
  String get applePay;

  /// No description provided for @addNewCard.
  ///
  /// In en, this message translates to:
  /// **'Add New Card'**
  String get addNewCard;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @expiredDate.
  ///
  /// In en, this message translates to:
  /// **'Expired Date'**
  String get expiredDate;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @cardHolder.
  ///
  /// In en, this message translates to:
  /// **'Card Holder'**
  String get cardHolder;

  /// No description provided for @pleaseInputAValidCardNumber.
  ///
  /// In en, this message translates to:
  /// **'Please input a valid card number'**
  String get pleaseInputAValidCardNumber;

  /// No description provided for @pleaseInputAValidCvv.
  ///
  /// In en, this message translates to:
  /// **'Please input a valid CVV'**
  String get pleaseInputAValidCvv;

  /// No description provided for @pleaseInputAValidDate.
  ///
  /// In en, this message translates to:
  /// **'Please input a valid date'**
  String get pleaseInputAValidDate;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @yourCardHasBeenAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your card has been added successfully.'**
  String get yourCardHasBeenAddedSuccessfully;

  /// No description provided for @reviewSummary.
  ///
  /// In en, this message translates to:
  /// **'Review Summary'**
  String get reviewSummary;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @confirmPayment.
  ///
  /// In en, this message translates to:
  /// **'Confirm Payment'**
  String get confirmPayment;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations!'**
  String get congratulations;

  /// No description provided for @youHaveSuccessfullySubscribed.
  ///
  /// In en, this message translates to:
  /// **'You have successfully subscribed 30 Days premium. Enjoy the benefits!'**
  String get youHaveSuccessfullySubscribed;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get paymentFailed;

  /// No description provided for @youHaveFailedSubscribed.
  ///
  /// In en, this message translates to:
  /// **'You have failed subscribed 30 Days premium. Because there is not enough money in your account'**
  String get youHaveFailedSubscribed;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @youDonotHaveAnOrderYet.
  ///
  /// In en, this message translates to:
  /// **'You don’t have an order yet'**
  String get youDonotHaveAnOrderYet;

  /// No description provided for @youDonotHaveAnOngoingOrdersAtThisTime.
  ///
  /// In en, this message translates to:
  /// **'You don’t have an ongoing orders at this time'**
  String get youDonotHaveAnOngoingOrdersAtThisTime;

  /// No description provided for @leaveAReview.
  ///
  /// In en, this message translates to:
  /// **'Leave a Review'**
  String get leaveAReview;

  /// No description provided for @pleaseGiveYourRatingAndAlsoYourReview.
  ///
  /// In en, this message translates to:
  /// **'Please give your rating & also your review'**
  String get pleaseGiveYourRatingAndAlsoYourReview;

  /// No description provided for @leaveYourComment.
  ///
  /// In en, this message translates to:
  /// **'Leave Your Comment'**
  String get leaveYourComment;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @money.
  ///
  /// In en, this message translates to:
  /// **'Money'**
  String get money;

  /// No description provided for @latestTopUp.
  ///
  /// In en, this message translates to:
  /// **'Latest Top Up'**
  String get latestTopUp;

  /// No description provided for @topUpWallet.
  ///
  /// In en, this message translates to:
  /// **'Top Up Wallet'**
  String get topUpWallet;

  /// No description provided for @topUp.
  ///
  /// In en, this message translates to:
  /// **'Top Up'**
  String get topUp;

  /// No description provided for @fundMyWallet.
  ///
  /// In en, this message translates to:
  /// **'Fund My Wallet'**
  String get fundMyWallet;

  /// No description provided for @enterYourFundAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter your fund amount'**
  String get enterYourFundAmount;

  /// No description provided for @topUpElectronicWallet.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet'**
  String get topUpElectronicWallet;

  /// No description provided for @topUpSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Top Up Successful!'**
  String get topUpSuccessful;

  /// No description provided for @topUpFailed.
  ///
  /// In en, this message translates to:
  /// **'Top Up Failed!'**
  String get topUpFailed;

  /// No description provided for @youHaveSuccessfullyTopUpElectronicWalletFor.
  ///
  /// In en, this message translates to:
  /// **'You have successfully top up e-wallet for'**
  String get youHaveSuccessfullyTopUpElectronicWalletFor;

  /// No description provided for @youHaveFailedToTopUpYourElectronicWallet.
  ///
  /// In en, this message translates to:
  /// **'You have failed to top up your e-wallet. Please ensure that there is sufficient balance in your account.'**
  String get youHaveFailedToTopUpYourElectronicWallet;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get goodMorning;

  /// No description provided for @goodEvening.
  ///
  /// In en, this message translates to:
  /// **'Good Evening'**
  String get goodEvening;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @specialOffers.
  ///
  /// In en, this message translates to:
  /// **'Special Offers'**
  String get specialOffers;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @topDeals.
  ///
  /// In en, this message translates to:
  /// **'Top Deals'**
  String get topDeals;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @recent.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get clearAll;

  /// No description provided for @resultsFor.
  ///
  /// In en, this message translates to:
  /// **'Results for'**
  String get resultsFor;

  /// No description provided for @found.
  ///
  /// In en, this message translates to:
  /// **'found'**
  String get found;

  /// No description provided for @notFound.
  ///
  /// In en, this message translates to:
  /// **'Not Found'**
  String get notFound;

  /// No description provided for @sorryTheKeywordYouEnteredCannotBeFound.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the Keyword you entered cannot be found, please check again or search with another keyword.'**
  String get sorryTheKeywordYouEnteredCannotBeFound;

  /// No description provided for @sortAndFilter.
  ///
  /// In en, this message translates to:
  /// **'Sort & Filter'**
  String get sortAndFilter;

  /// No description provided for @itemType.
  ///
  /// In en, this message translates to:
  /// **'Item Type'**
  String get itemType;

  /// No description provided for @itemCondition.
  ///
  /// In en, this message translates to:
  /// **'Item Condition'**
  String get itemCondition;

  /// No description provided for @newText.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newText;

  /// No description provided for @used.
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get used;

  /// No description provided for @priceRange.
  ///
  /// In en, this message translates to:
  /// **'Price Range'**
  String get priceRange;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @myWishlist.
  ///
  /// In en, this message translates to:
  /// **'My Wishlist'**
  String get myWishlist;

  /// No description provided for @yourOfferHasBeenAccepted.
  ///
  /// In en, this message translates to:
  /// **'Your offer has been accepted!'**
  String get yourOfferHasBeenAccepted;

  /// No description provided for @yourOfferHasBeenRejected.
  ///
  /// In en, this message translates to:
  /// **'Your offer has been rejected!'**
  String get yourOfferHasBeenRejected;

  /// No description provided for @congratsYourOfferHasBeenAcceptedByTheSellerFor.
  ///
  /// In en, this message translates to:
  /// **'Congrats! your offer has been accepted by the seller for'**
  String get congratsYourOfferHasBeenAcceptedByTheSellerFor;

  /// No description provided for @weAreSorryYourOfferHasBeenRejectedByTheOwner.
  ///
  /// In en, this message translates to:
  /// **'we are sorry. your offer has been rejected by the owner.'**
  String get weAreSorryYourOfferHasBeenRejectedByTheOwner;

  /// No description provided for @orderFrom.
  ///
  /// In en, this message translates to:
  /// **'Order from'**
  String get orderFrom;

  /// No description provided for @youHaveAnOrderFrom.
  ///
  /// In en, this message translates to:
  /// **'You have an order from'**
  String get youHaveAnOrderFrom;

  /// No description provided for @forYour.
  ///
  /// In en, this message translates to:
  /// **'for your'**
  String get forYour;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @yourOffer.
  ///
  /// In en, this message translates to:
  /// **'Your offer'**
  String get yourOffer;

  /// No description provided for @weAreSorryYourOfferHasBeenRejected.
  ///
  /// In en, this message translates to:
  /// **'We’re sorry, your offer has been rejected'**
  String get weAreSorryYourOfferHasBeenRejected;

  /// No description provided for @doNotWorryYouWillAlwaysBeAbleToMakeAnotherOffer.
  ///
  /// In en, this message translates to:
  /// **'Don’t worry, you will always be able to make another offer that is more suitable, so that your offer is accepted'**
  String get doNotWorryYouWillAlwaysBeAbleToMakeAnotherOffer;

  /// No description provided for @makeAnOfferAgain.
  ///
  /// In en, this message translates to:
  /// **'Make an offer again'**
  String get makeAnOfferAgain;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHome;

  /// No description provided for @congratsYourOfferHasBeenAccepted.
  ///
  /// In en, this message translates to:
  /// **'Congrats! Your offer has been accepted'**
  String get congratsYourOfferHasBeenAccepted;

  /// No description provided for @yourOfferHasBeenAcceptedByTheOwnerFor.
  ///
  /// In en, this message translates to:
  /// **'Your offer has been accepted by the owner for'**
  String get yourOfferHasBeenAcceptedByTheOwnerFor;

  /// No description provided for @proceedToCheckout.
  ///
  /// In en, this message translates to:
  /// **'Proceed to Checkout'**
  String get proceedToCheckout;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;
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
