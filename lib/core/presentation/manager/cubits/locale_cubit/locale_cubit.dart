import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleInitial());

  late Locale locale;

  //You can here store the new locale in local database
  void changeLocale({required Locale locale}) {
    this.locale = locale;

    emit(LocaleChanged());
  }

  //Add here your logic to get the app locale
  void setUpLocale() {
    locale = const Locale('en');
  }

  //In this condition add all supported languages
  //that is written from right to left (Arabic, Persian, ...)
  bool isRightToLeft() => locale.languageCode == 'ar';
}
