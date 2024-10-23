import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/edit_button.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';

class EditProfilePhotoSection extends StatelessWidget {
  const EditProfilePhotoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const ProfilePhoto(size: 150),
            PositionedDirectional(
              bottom: 16,
              end: 0,
              child: EditButton(
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
