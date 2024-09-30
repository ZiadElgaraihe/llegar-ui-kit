import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

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
              child: Container(
                decoration: BoxDecoration(
                  color: valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.prussianBlue,
                    dark: AppColors.orange,
                  )!,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      futureDelayedNavigator(
                        () {},
                      );
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      child: SvgPicture.asset(AppIcons.pen),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
