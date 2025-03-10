import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

//Using flutter_bloc to handle app theme
//you can remove flutter_bloc and use your own way
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  late ThemeMode themeMode;

  //You can here store the new theme mode in local database
  void changeThemeMode({required ThemeMode themeMode}) {
    this.themeMode = themeMode;

    emit(ThemeChanged());
  }

  //Add here your logic to get the app theme mode
  void setUpThemeMode() {
    themeMode = ThemeMode.light;
  }

  bool isLight() => themeMode == ThemeMode.light;
}
