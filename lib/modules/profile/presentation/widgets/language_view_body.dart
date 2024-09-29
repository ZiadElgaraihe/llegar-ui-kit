import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/presentation/manager/cubits/locale_cubit/locale_cubit.dart';
import 'package:llegar/modules/profile/domain/entities/language_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/language_list_tile.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';

class LanguageViewBody extends StatefulWidget {
  const LanguageViewBody({
    super.key,
  });

  @override
  State<LanguageViewBody> createState() => _LanguageViewBodyState();
}

class _LanguageViewBodyState extends State<LanguageViewBody> {
  late Locale _groupValue;
  final List<LanguageEntity> _items = <LanguageEntity>[
    const LanguageEntity(
      title: AppStrings.english,
      value: Locale(AppStrings.englishLanguageCode),
    ),
    const LanguageEntity(
      title: AppStrings.arabic,
      value: Locale(AppStrings.arabicLanguageCode),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _groupValue = BlocProvider.of<LocaleCubit>(context).locale;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.bodyHorizontalPadding(context).left,
        vertical: 24,
      ),
      itemCount: _items.length,
      itemBuilder: (context, index) => LanguageListTile(
        groupValue: _groupValue,
        languageEntity: _items[index],
        onChanged: (value) {
          setState(() {
            _groupValue = value!;
          });
          BlocProvider.of<LocaleCubit>(context).changeLocale(locale: value!);
        },
      ),
    );
  }
}
