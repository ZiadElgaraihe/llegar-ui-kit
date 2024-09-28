import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/profile/domain/entities/profile_item_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_switch.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/enums/profile_item_type.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ProfileItemListTile extends StatelessWidget {
  const ProfileItemListTile({
    super.key,
    required this.profileItemEntity,
  });

  final ProfileItemEntity profileItemEntity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (profileItemEntity.profileItemType == ProfileItemType.switchButton)
          ? null
          : () {
              futureDelayedNavigator(
                () {
                  profileItemEntity.onTap!();
                },
              );
            },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      leading: (profileItemEntity.icon != null)
          ? SvgPicture.asset(
              profileItemEntity.icon!,
              colorFilter:
                  (profileItemEntity.profileItemType == ProfileItemType.logOut)
                      ? null
                      : valueBasedOnTheme<ColorFilter>(
                          context,
                          listen: true,
                          dark: const ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcATop,
                          ),
                        ),
            )
          : null,
      title: Text(
        profileItemEntity.title,
        style: AppTextStyles.semiBold20(context).copyWith(
          color: (profileItemEntity.profileItemType == ProfileItemType.logOut)
              ? AppColors.red
              : valueBasedOnTheme(
                  context,
                  listen: true,
                  light: AppColors.black,
                  dark: AppColors.white,
                ),
        ),
      ),
      trailing: (profileItemEntity.profileItemType == ProfileItemType.button)
          ? SvgPicture.asset(
              valueBasedOnLocale<String>(
                context,
                ltr: AppIcons.chevronRight,
                rtl: AppIcons.chevronLeft,
              )!,
              colorFilter: valueBasedOnTheme<ColorFilter>(
                context,
                listen: true,
                dark: const ColorFilter.mode(
                  AppColors.white,
                  BlendMode.srcATop,
                ),
              ),
            )
          : (profileItemEntity.profileItemType == ProfileItemType.switchButton)
              ? ProfileSwitch(
                  initialValue: profileItemEntity.initialValue!,
                  onChanged: profileItemEntity.onChanged!,
                )
              : null,
    );
  }
}
