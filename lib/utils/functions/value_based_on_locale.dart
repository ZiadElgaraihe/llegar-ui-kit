import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';

///This function is responsible for checking for current locale 
///and return value depending on it
T? valueBasedOnLocale<T>(
  BuildContext context, {
  T? rtl,
  T? ltr,
}) {
  return BlocProvider.of<LocaleCubit>(context).isRightToLeft() ? rtl : ltr;
}
