import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/presentation/manager/cubits/theme_cubit/theme_cubit.dart';

///This function is responsible for checking for current theme 
///and return value depending on it
T? valueBasedOnTheme<T>(
  BuildContext context, {
  T? light,
  T? dark,
}) {
  return BlocProvider.of<ThemeCubit>(context).isLight() ? light : dark;
}
