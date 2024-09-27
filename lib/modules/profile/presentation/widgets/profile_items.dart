import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/presentation/manager/cubits/theme_cubit/theme_cubit.dart';
import 'package:llegar/modules/profile/domain/entities/profile_item_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_item_list_tile.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/enums/profile_item_type.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ProfileItems extends StatefulWidget {
  const ProfileItems({
    super.key,
  });

  @override
  State<ProfileItems> createState() => _ProfileItemsState();
}

class _ProfileItemsState extends State<ProfileItems> {
  late List<ProfileItemEntity> _items;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = <ProfileItemEntity>[
      ProfileItemEntity(
        icon: AppIcons.editProfile,
        onTap: () {},
        profileItemType: ProfileItemType.button,
        title: translate(context).editProfile,
      ),
      ProfileItemEntity(
        icon: AppIcons.myActivities,
        onTap: () {},
        profileItemType: ProfileItemType.button,
        title: translate(context).myActivities,
      ),
      ProfileItemEntity(
        icon: AppIcons.notification,
        initialValue: false,
        onChanged: (value) {},
        profileItemType: ProfileItemType.switchButton,
        title: translate(context).notification,
      ),
      ProfileItemEntity(
        icon: AppIcons.security,
        onTap: () {},
        profileItemType: ProfileItemType.button,
        title: translate(context).security,
      ),
      ProfileItemEntity(
        icon: AppIcons.helpCenter,
        onTap: () {},
        profileItemType: ProfileItemType.button,
        title: translate(context).helpCenter,
      ),
      ProfileItemEntity(
        icon: AppIcons.privacyPolicy,
        onTap: () {},
        profileItemType: ProfileItemType.button,
        title: translate(context).privacyPolicy,
      ),
      ProfileItemEntity(
        icon: AppIcons.contactUs,
        onTap: () {},
        profileItemType: ProfileItemType.button,
        title: translate(context).contactUs,
      ),
      ProfileItemEntity(
        icon: AppIcons.darkMode,
        initialValue: !BlocProvider.of<ThemeCubit>(context).isLight(),
        onChanged: (value) {
          BlocProvider.of<ThemeCubit>(context).changeThemeMode(
            themeMode: value ? ThemeMode.dark : ThemeMode.light,
          );
        },
        profileItemType: ProfileItemType.switchButton,
        title: translate(context).darkMode,
      ),
      ProfileItemEntity(
        icon: AppIcons.location,
        initialValue: false,
        onChanged: (value) {},
        profileItemType: ProfileItemType.switchButton,
        title: translate(context).location,
      ),
      ProfileItemEntity(
        icon: AppIcons.logOut,
        onTap: () {},
        profileItemType: ProfileItemType.logOut,
        title: translate(context).logOut,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _items
          .map(
            (item) => ProfileItemListTile(profileItemEntity: item),
          )
          .toList(),
    );
  }
}
