import 'package:flutter/material.dart';
import 'package:llegar/shared/utils/enums/profile_item_type.dart';

class ProfileItemEntity {
  final String icon;
  ///This property is set only if profileItemType is switchButton
  final bool? initialValue;
  ///This property is set only if profileItemType is switchButton
  final void Function(bool value)? onChanged;
  ///This property is set only if profileItemType is button or logOut
  final VoidCallback? onTap;
  final ProfileItemType profileItemType;
  final String title;

  ProfileItemEntity({
    required this.icon,
    required this.profileItemType,
    required this.title,
    this.initialValue,
    this.onChanged,
    this.onTap,
  }): assert(
    (profileItemType == ProfileItemType.switchButton && initialValue != null && onChanged != null && onTap == null) ||
    (profileItemType != ProfileItemType.switchButton && initialValue == null && onChanged == null && onTap != null),
    'ProfileItemType must have the correct properties set based on the conditions.'
  );
}
