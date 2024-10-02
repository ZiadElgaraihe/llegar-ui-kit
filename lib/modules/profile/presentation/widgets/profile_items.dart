import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/presentation/manager/cubits/theme_cubit/theme_cubit.dart';
import 'package:llegar/modules/profile/domain/entities/profile_item_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/log_out_bottom_sheet.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_item_list_tile.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/utils/enums/profile_item_type.dart';
import 'package:llegar/shared/utils/functions/show_custom_modal_bottom_sheet.dart';
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
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.editProfileView);
        },
        profileItemType: ProfileItemType.button,
        title: translate(context).editProfile,
      ),
      ProfileItemEntity(
        icon: AppIcons.myActivities,
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.myActivitiesView);
        },
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
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.securityView);
        },
        profileItemType: ProfileItemType.button,
        title: translate(context).security,
      ),
      ProfileItemEntity(
        icon: AppIcons.translate,
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.languageView);
        },
        profileItemType: ProfileItemType.button,
        title: translate(context).language,
      ),
      ProfileItemEntity(
        icon: AppIcons.helpCenter,
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.helpCenterView);
        },
        profileItemType: ProfileItemType.button,
        title: translate(context).helpCenter,
      ),
      ProfileItemEntity(
        icon: AppIcons.privacyPolicy,
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.privacyPolicyView);
        },
        profileItemType: ProfileItemType.button,
        title: translate(context).privacyPolicy,
      ),
      ProfileItemEntity(
        icon: AppIcons.contactUs,
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.contactUsView);
        },
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
        onTap: () {
          showCustomModalBottomSheet(
            context,
            builder: (context) => const LogOutBottomSheet(),
          );
        },
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
