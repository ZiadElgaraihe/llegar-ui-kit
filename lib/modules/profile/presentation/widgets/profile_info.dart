import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_name_and_email.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OverflowBar(
      spacing: 24,
      overflowSpacing: 8,
      alignment: MainAxisAlignment.start,
      overflowAlignment: OverflowBarAlignment.center,
      children: [
        ProfilePhoto(size: 100, listenOnThemeChange: true),
        ProfileNameAndEmail(),
      ],
    );
  }
}
